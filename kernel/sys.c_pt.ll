; ModuleID = '/llk/IR_all_yes/kernel/sys.c_pt.bc'
source_filename = "../kernel/sys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+overflowuid\22, \22a\22\09"
module asm "\09.weak\09__crc_overflowuid\09\09\09\09"
module asm "\09.long\09__crc_overflowuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22overflowuid\22\09\09\09\09\09"
module asm "__kstrtabns_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+overflowgid\22, \22a\22\09"
module asm "\09.weak\09__crc_overflowgid\09\09\09\09"
module asm "\09.long\09__crc_overflowgid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22overflowgid\22\09\09\09\09\09"
module asm "__kstrtabns_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fs_overflowuid\22, \22a\22\09"
module asm "\09.weak\09__crc_fs_overflowuid\09\09\09\09"
module asm "\09.long\09__crc_fs_overflowuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_overflowuid\22\09\09\09\09\09"
module asm "__kstrtabns_fs_overflowuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fs_overflowgid\22, \22a\22\09"
module asm "\09.weak\09__crc_fs_overflowgid\09\09\09\09"
module asm "\09.long\09__crc_fs_overflowgid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_overflowgid\22\09\09\09\09\09"
module asm "__kstrtabns_fs_overflowgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.42 = type { %struct.callback_head }
%struct.tms = type { i32, i32, i32, i32 }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rlimit64 = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.rusage = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.13 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.prctl_mm_map = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@overflowuid = dso_local global { i32, [28 x i8] } { i32 65534, [28 x i8] zeroinitializer }, align 32
@overflowgid = dso_local global { i32, [28 x i8] } { i32 65534, [28 x i8] zeroinitializer }, align 32
@__kstrtab_overflowuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_overflowuid = external dso_local constant [0 x i8], align 1
@__ksymtab_overflowuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @overflowuid to i32), ptr @__kstrtab_overflowuid, ptr @__kstrtabns_overflowuid }, section "___ksymtab+overflowuid", align 4
@__kstrtab_overflowgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_overflowgid = external dso_local constant [0 x i8], align 1
@__ksymtab_overflowgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @overflowgid to i32), ptr @__kstrtab_overflowgid, ptr @__kstrtabns_overflowgid }, section "___ksymtab+overflowgid", align 4
@fs_overflowuid = dso_local global { i32, [28 x i8] } { i32 65534, [28 x i8] zeroinitializer }, align 32
@fs_overflowgid = dso_local global { i32, [28 x i8] } { i32 65534, [28 x i8] zeroinitializer }, align 32
@__kstrtab_fs_overflowuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_overflowuid = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_overflowuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_overflowuid to i32), ptr @__kstrtab_fs_overflowuid, ptr @__kstrtabns_fs_overflowuid }, section "___ksymtab+fs_overflowuid", align 4
@__kstrtab_fs_overflowgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_overflowgid = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_overflowgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_overflowgid to i32), ptr @__kstrtab_fs_overflowgid, ptr @__kstrtabns_fs_overflowgid }, section "___ksymtab+fs_overflowgid", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_setpriority\00", [42 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__setpriority = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__setpriority, ptr @args__setpriority, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setpriority, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setpriority, i64 20) }, ptr @event_enter__setpriority, ptr @event_exit__setpriority }, align 4
@event_enter__setpriority = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setpriority, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setpriority = internal global ptr @event_enter__setpriority, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_setpriority\00", [43 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__setpriority = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setpriority, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setpriority = internal global ptr @event_exit__setpriority, section "_ftrace_events", align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_setpriority\00", [16 x i8] zeroinitializer }, align 32
@types__setpriority = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.128, ptr @.str.128, ptr @.str.128], [20 x i8] zeroinitializer }, align 32
@args__setpriority = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.131], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setpriority = internal global ptr @__syscall_meta__setpriority, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_getpriority\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__getpriority = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__getpriority, ptr @args__getpriority, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getpriority, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getpriority, i64 20) }, ptr @event_enter__getpriority, ptr @event_exit__getpriority }, align 4
@event_enter__getpriority = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpriority, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getpriority = internal global ptr @event_enter__getpriority, section "_ftrace_events", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_getpriority\00", [43 x i8] zeroinitializer }, align 32
@event_exit__getpriority = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpriority, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getpriority = internal global ptr @event_exit__getpriority, section "_ftrace_events", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_getpriority\00", [16 x i8] zeroinitializer }, align 32
@types__getpriority = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.128, ptr @.str.128], [24 x i8] zeroinitializer }, align 32
@args__getpriority = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.129, ptr @.str.130], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getpriority = internal global ptr @__syscall_meta__getpriority, section "__syscalls_metadata", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setregid\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__setregid = internal global %struct.syscall_metadata { ptr @.str.9, i32 -1, i32 2, ptr @types__setregid, ptr @args__setregid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setregid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setregid, i64 20) }, ptr @event_enter__setregid, ptr @event_exit__setregid }, align 4
@event_enter__setregid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setregid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setregid = internal global ptr @event_enter__setregid, section "_ftrace_events", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setregid\00", [46 x i8] zeroinitializer }, align 32
@event_exit__setregid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setregid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setregid = internal global ptr @event_exit__setregid, section "_ftrace_events", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setregid\00", [19 x i8] zeroinitializer }, align 32
@types__setregid = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.142, ptr @.str.142], [24 x i8] zeroinitializer }, align 32
@args__setregid = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.143, ptr @.str.144], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setregid = internal global ptr @__syscall_meta__setregid, section "__syscalls_metadata", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_setgid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__setgid = internal global %struct.syscall_metadata { ptr @.str.13, i32 -1, i32 1, ptr @types__setgid, ptr @args__setgid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setgid, i64 20) }, ptr @event_enter__setgid, ptr @event_exit__setgid }, align 4
@event_enter__setgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setgid = internal global ptr @event_enter__setgid, section "_ftrace_events", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_setgid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__setgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setgid = internal global ptr @event_exit__setgid, section "_ftrace_events", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_setgid\00", [21 x i8] zeroinitializer }, align 32
@types__setgid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.142], [28 x i8] zeroinitializer }, align 32
@args__setgid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.145], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setgid = internal global ptr @__syscall_meta__setgid, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setreuid\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__setreuid = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 2, ptr @types__setreuid, ptr @args__setreuid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setreuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setreuid, i64 20) }, ptr @event_enter__setreuid, ptr @event_exit__setreuid }, align 4
@event_enter__setreuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setreuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setreuid = internal global ptr @event_enter__setreuid, section "_ftrace_events", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setreuid\00", [46 x i8] zeroinitializer }, align 32
@event_exit__setreuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setreuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setreuid = internal global ptr @event_exit__setreuid, section "_ftrace_events", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setreuid\00", [19 x i8] zeroinitializer }, align 32
@types__setreuid = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.146, ptr @.str.146], [24 x i8] zeroinitializer }, align 32
@args__setreuid = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.147, ptr @.str.148], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setreuid = internal global ptr @__syscall_meta__setreuid, section "__syscalls_metadata", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_setuid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__setuid = internal global %struct.syscall_metadata { ptr @.str.21, i32 -1, i32 1, ptr @types__setuid, ptr @args__setuid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setuid, i64 20) }, ptr @event_enter__setuid, ptr @event_exit__setuid }, align 4
@event_enter__setuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setuid = internal global ptr @event_enter__setuid, section "_ftrace_events", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_setuid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__setuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.20 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setuid = internal global ptr @event_exit__setuid, section "_ftrace_events", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_setuid\00", [21 x i8] zeroinitializer }, align 32
@types__setuid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.146], [28 x i8] zeroinitializer }, align 32
@args__setuid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.149], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setuid = internal global ptr @__syscall_meta__setuid, section "__syscalls_metadata", align 4
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_setresuid\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__setresuid = internal global %struct.syscall_metadata { ptr @.str.25, i32 -1, i32 3, ptr @types__setresuid, ptr @args__setresuid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setresuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setresuid, i64 20) }, ptr @event_enter__setresuid, ptr @event_exit__setresuid }, align 4
@event_enter__setresuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.23 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setresuid = internal global ptr @event_enter__setresuid, section "_ftrace_events", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_setresuid\00", [45 x i8] zeroinitializer }, align 32
@event_exit__setresuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setresuid = internal global ptr @event_exit__setresuid, section "_ftrace_events", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_setresuid\00", [18 x i8] zeroinitializer }, align 32
@types__setresuid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.146, ptr @.str.146, ptr @.str.146], [20 x i8] zeroinitializer }, align 32
@args__setresuid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.147, ptr @.str.148, ptr @.str.150], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setresuid = internal global ptr @__syscall_meta__setresuid, section "__syscalls_metadata", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getresuid\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__getresuid = internal global %struct.syscall_metadata { ptr @.str.28, i32 -1, i32 3, ptr @types__getresuid, ptr @args__getresuid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getresuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getresuid, i64 20) }, ptr @event_enter__getresuid, ptr @event_exit__getresuid }, align 4
@event_enter__getresuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.26 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getresuid = internal global ptr @event_enter__getresuid, section "_ftrace_events", align 4
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getresuid\00", [45 x i8] zeroinitializer }, align 32
@event_exit__getresuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getresuid = internal global ptr @event_exit__getresuid, section "_ftrace_events", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getresuid\00", [18 x i8] zeroinitializer }, align 32
@types__getresuid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.151, ptr @.str.151, ptr @.str.151], [20 x i8] zeroinitializer }, align 32
@args__getresuid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.152, ptr @.str.153, ptr @.str.154], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getresuid = internal global ptr @__syscall_meta__getresuid, section "__syscalls_metadata", align 4
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_setresgid\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__setresgid = internal global %struct.syscall_metadata { ptr @.str.32, i32 -1, i32 3, ptr @types__setresgid, ptr @args__setresgid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setresgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setresgid, i64 20) }, ptr @event_enter__setresgid, ptr @event_exit__setresgid }, align 4
@event_enter__setresgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setresgid = internal global ptr @event_enter__setresgid, section "_ftrace_events", align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_setresgid\00", [45 x i8] zeroinitializer }, align 32
@event_exit__setresgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setresgid = internal global ptr @event_exit__setresgid, section "_ftrace_events", align 4
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_setresgid\00", [18 x i8] zeroinitializer }, align 32
@types__setresgid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.142, ptr @.str.142, ptr @.str.142], [20 x i8] zeroinitializer }, align 32
@args__setresgid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.155], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setresgid = internal global ptr @__syscall_meta__setresgid, section "__syscalls_metadata", align 4
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getresgid\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__getresgid = internal global %struct.syscall_metadata { ptr @.str.35, i32 -1, i32 3, ptr @types__getresgid, ptr @args__getresgid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getresgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getresgid, i64 20) }, ptr @event_enter__getresgid, ptr @event_exit__getresgid }, align 4
@event_enter__getresgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getresgid = internal global ptr @event_enter__getresgid, section "_ftrace_events", align 4
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getresgid\00", [45 x i8] zeroinitializer }, align 32
@event_exit__getresgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.34 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getresgid = internal global ptr @event_exit__getresgid, section "_ftrace_events", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getresgid\00", [18 x i8] zeroinitializer }, align 32
@types__getresgid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.156, ptr @.str.156, ptr @.str.156], [20 x i8] zeroinitializer }, align 32
@args__getresgid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getresgid = internal global ptr @__syscall_meta__getresgid, section "__syscalls_metadata", align 4
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setfsuid\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__setfsuid = internal global %struct.syscall_metadata { ptr @.str.38, i32 -1, i32 1, ptr @types__setfsuid, ptr @args__setfsuid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setfsuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setfsuid, i64 20) }, ptr @event_enter__setfsuid, ptr @event_exit__setfsuid }, align 4
@event_enter__setfsuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.36 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setfsuid = internal global ptr @event_enter__setfsuid, section "_ftrace_events", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setfsuid\00", [46 x i8] zeroinitializer }, align 32
@event_exit__setfsuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.37 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setfsuid = internal global ptr @event_exit__setfsuid, section "_ftrace_events", align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setfsuid\00", [19 x i8] zeroinitializer }, align 32
@types__setfsuid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.146], [28 x i8] zeroinitializer }, align 32
@args__setfsuid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.149], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setfsuid = internal global ptr @__syscall_meta__setfsuid, section "__syscalls_metadata", align 4
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setfsgid\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__setfsgid = internal global %struct.syscall_metadata { ptr @.str.41, i32 -1, i32 1, ptr @types__setfsgid, ptr @args__setfsgid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setfsgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setfsgid, i64 20) }, ptr @event_enter__setfsgid, ptr @event_exit__setfsgid }, align 4
@event_enter__setfsgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.39 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setfsgid = internal global ptr @event_enter__setfsgid, section "_ftrace_events", align 4
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setfsgid\00", [46 x i8] zeroinitializer }, align 32
@event_exit__setfsgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.40 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setfsgid = internal global ptr @event_exit__setfsgid, section "_ftrace_events", align 4
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setfsgid\00", [19 x i8] zeroinitializer }, align 32
@types__setfsgid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.142], [28 x i8] zeroinitializer }, align 32
@args__setfsgid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.145], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setfsgid = internal global ptr @__syscall_meta__setfsgid, section "__syscalls_metadata", align 4
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_getpid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__getpid = internal global %struct.syscall_metadata { ptr @.str.44, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getpid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getpid, i64 20) }, ptr @event_enter__getpid, ptr @event_exit__getpid }, align 4
@event_enter__getpid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.42 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getpid = internal global ptr @event_enter__getpid, section "_ftrace_events", align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_getpid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__getpid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.43 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getpid = internal global ptr @event_exit__getpid, section "_ftrace_events", align 4
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_getpid\00", [21 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getpid = internal global ptr @__syscall_meta__getpid, section "__syscalls_metadata", align 4
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_gettid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__gettid = internal global %struct.syscall_metadata { ptr @.str.47, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__gettid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__gettid, i64 20) }, ptr @event_enter__gettid, ptr @event_exit__gettid }, align 4
@event_enter__gettid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.45 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__gettid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__gettid = internal global ptr @event_enter__gettid, section "_ftrace_events", align 4
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_gettid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__gettid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.46 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__gettid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__gettid = internal global ptr @event_exit__gettid, section "_ftrace_events", align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_gettid\00", [21 x i8] zeroinitializer }, align 32
@__p_syscall_meta__gettid = internal global ptr @__syscall_meta__gettid, section "__syscalls_metadata", align 4
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_getppid\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__getppid = internal global %struct.syscall_metadata { ptr @.str.50, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getppid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getppid, i64 20) }, ptr @event_enter__getppid, ptr @event_exit__getppid }, align 4
@event_enter__getppid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.48 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getppid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getppid = internal global ptr @event_enter__getppid, section "_ftrace_events", align 4
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_getppid\00", [47 x i8] zeroinitializer }, align 32
@event_exit__getppid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.49 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getppid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getppid = internal global ptr @event_exit__getppid, section "_ftrace_events", align 4
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_getppid\00", [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getppid = internal global ptr @__syscall_meta__getppid, section "__syscalls_metadata", align 4
@sys_getppid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel/sys.c\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_getuid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__getuid = internal global %struct.syscall_metadata { ptr @.str.55, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getuid, i64 20) }, ptr @event_enter__getuid, ptr @event_exit__getuid }, align 4
@event_enter__getuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.53 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getuid = internal global ptr @event_enter__getuid, section "_ftrace_events", align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_getuid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__getuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.54 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getuid = internal global ptr @event_exit__getuid, section "_ftrace_events", align 4
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_getuid\00", [21 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getuid = internal global ptr @__syscall_meta__getuid, section "__syscalls_metadata", align 4
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_geteuid\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__geteuid = internal global %struct.syscall_metadata { ptr @.str.59, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__geteuid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__geteuid, i64 20) }, ptr @event_enter__geteuid, ptr @event_exit__geteuid }, align 4
@event_enter__geteuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.57 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__geteuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__geteuid = internal global ptr @event_enter__geteuid, section "_ftrace_events", align 4
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_geteuid\00", [47 x i8] zeroinitializer }, align 32
@event_exit__geteuid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.58 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__geteuid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__geteuid = internal global ptr @event_exit__geteuid, section "_ftrace_events", align 4
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_geteuid\00", [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__geteuid = internal global ptr @__syscall_meta__geteuid, section "__syscalls_metadata", align 4
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_getgid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__getgid = internal global %struct.syscall_metadata { ptr @.str.63, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getgid, i64 20) }, ptr @event_enter__getgid, ptr @event_exit__getgid }, align 4
@event_enter__getgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.61 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getgid = internal global ptr @event_enter__getgid, section "_ftrace_events", align 4
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_getgid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__getgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.62 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getgid = internal global ptr @event_exit__getgid, section "_ftrace_events", align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_getgid\00", [21 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getgid = internal global ptr @__syscall_meta__getgid, section "__syscalls_metadata", align 4
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_getegid\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__getegid = internal global %struct.syscall_metadata { ptr @.str.67, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getegid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getegid, i64 20) }, ptr @event_enter__getegid, ptr @event_exit__getegid }, align 4
@event_enter__getegid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.65 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getegid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getegid = internal global ptr @event_enter__getegid, section "_ftrace_events", align 4
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_getegid\00", [47 x i8] zeroinitializer }, align 32
@event_exit__getegid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.66 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getegid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getegid = internal global ptr @event_exit__getegid, section "_ftrace_events", align 4
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_getegid\00", [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getegid = internal global ptr @__syscall_meta__getegid, section "__syscalls_metadata", align 4
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_times\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__times = internal global %struct.syscall_metadata { ptr @.str.71, i32 -1, i32 1, ptr @types__times, ptr @args__times, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__times, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__times, i64 20) }, ptr @event_enter__times, ptr @event_exit__times }, align 4
@event_enter__times = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.69 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__times, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__times = internal global ptr @event_enter__times, section "_ftrace_events", align 4
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_times\00", [17 x i8] zeroinitializer }, align 32
@event_exit__times = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.70 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__times, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__times = internal global ptr @event_exit__times, section "_ftrace_events", align 4
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_times\00", [22 x i8] zeroinitializer }, align 32
@types__times = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.163], [28 x i8] zeroinitializer }, align 32
@args__times = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.164], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__times = internal global ptr @__syscall_meta__times, section "__syscalls_metadata", align 4
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_setpgid\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__setpgid = internal global %struct.syscall_metadata { ptr @.str.74, i32 -1, i32 2, ptr @types__setpgid, ptr @args__setpgid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setpgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setpgid, i64 20) }, ptr @event_enter__setpgid, ptr @event_exit__setpgid }, align 4
@event_enter__setpgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.72 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setpgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setpgid = internal global ptr @event_enter__setpgid, section "_ftrace_events", align 4
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_setpgid\00", [47 x i8] zeroinitializer }, align 32
@event_exit__setpgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.73 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setpgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setpgid = internal global ptr @event_exit__setpgid, section "_ftrace_events", align 4
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_setpgid\00", [20 x i8] zeroinitializer }, align 32
@types__setpgid = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.168, ptr @.str.168], [24 x i8] zeroinitializer }, align 32
@args__setpgid = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.169, ptr @.str.170], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setpgid = internal global ptr @__syscall_meta__setpgid, section "__syscalls_metadata", align 4
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_getpgid\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__getpgid = internal global %struct.syscall_metadata { ptr @.str.77, i32 -1, i32 1, ptr @types__getpgid, ptr @args__getpgid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getpgid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getpgid, i64 20) }, ptr @event_enter__getpgid, ptr @event_exit__getpgid }, align 4
@event_enter__getpgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.75 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getpgid = internal global ptr @event_enter__getpgid, section "_ftrace_events", align 4
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_getpgid\00", [47 x i8] zeroinitializer }, align 32
@event_exit__getpgid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.76 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpgid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getpgid = internal global ptr @event_exit__getpgid, section "_ftrace_events", align 4
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_getpgid\00", [20 x i8] zeroinitializer }, align 32
@types__getpgid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.168], [28 x i8] zeroinitializer }, align 32
@args__getpgid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.169], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getpgid = internal global ptr @__syscall_meta__getpgid, section "__syscalls_metadata", align 4
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_getpgrp\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__getpgrp = internal global %struct.syscall_metadata { ptr @.str.80, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getpgrp, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getpgrp, i64 20) }, ptr @event_enter__getpgrp, ptr @event_exit__getpgrp }, align 4
@event_enter__getpgrp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.78 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpgrp, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getpgrp = internal global ptr @event_enter__getpgrp, section "_ftrace_events", align 4
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_getpgrp\00", [47 x i8] zeroinitializer }, align 32
@event_exit__getpgrp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.79 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getpgrp, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getpgrp = internal global ptr @event_exit__getpgrp, section "_ftrace_events", align 4
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_getpgrp\00", [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getpgrp = internal global ptr @__syscall_meta__getpgrp, section "__syscalls_metadata", align 4
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_getsid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__getsid = internal global %struct.syscall_metadata { ptr @.str.83, i32 -1, i32 1, ptr @types__getsid, ptr @args__getsid, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getsid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getsid, i64 20) }, ptr @event_enter__getsid, ptr @event_exit__getsid }, align 4
@event_enter__getsid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.81 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getsid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getsid = internal global ptr @event_enter__getsid, section "_ftrace_events", align 4
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_getsid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__getsid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.82 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getsid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getsid = internal global ptr @event_exit__getsid, section "_ftrace_events", align 4
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_getsid\00", [21 x i8] zeroinitializer }, align 32
@types__getsid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.168], [28 x i8] zeroinitializer }, align 32
@args__getsid = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.169], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getsid = internal global ptr @__syscall_meta__getsid, section "__syscalls_metadata", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_setsid\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__setsid = internal global %struct.syscall_metadata { ptr @.str.86, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setsid, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setsid, i64 20) }, ptr @event_enter__setsid, ptr @event_exit__setsid }, align 4
@event_enter__setsid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.84 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setsid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setsid = internal global ptr @event_enter__setsid, section "_ftrace_events", align 4
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_setsid\00", [16 x i8] zeroinitializer }, align 32
@event_exit__setsid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.85 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setsid, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setsid = internal global ptr @event_exit__setsid, section "_ftrace_events", align 4
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_setsid\00", [21 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setsid = internal global ptr @__syscall_meta__setsid, section "__syscalls_metadata", align 4
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uts_sem.wait_lock\00", [46 x i8] zeroinitializer }, align 32
@uts_sem = dso_local global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.87, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @uts_sem, i64 56), ptr getelementptr (i8, ptr @uts_sem, i64 56) }, ptr @uts_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uts_sem\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_newuname\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__newuname = internal global %struct.syscall_metadata { ptr @.str.91, i32 -1, i32 1, ptr @types__newuname, ptr @args__newuname, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__newuname, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__newuname, i64 20) }, ptr @event_enter__newuname, ptr @event_exit__newuname }, align 4
@event_enter__newuname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.89 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__newuname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__newuname = internal global ptr @event_enter__newuname, section "_ftrace_events", align 4
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_newuname\00", [46 x i8] zeroinitializer }, align 32
@event_exit__newuname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.90 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__newuname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__newuname = internal global ptr @event_exit__newuname, section "_ftrace_events", align 4
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_newuname\00", [19 x i8] zeroinitializer }, align 32
@types__newuname = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.171], [28 x i8] zeroinitializer }, align 32
@args__newuname = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.172], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__newuname = internal global ptr @__syscall_meta__newuname, section "__syscalls_metadata", align 4
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_sethostname\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__sethostname = internal global %struct.syscall_metadata { ptr @.str.94, i32 -1, i32 2, ptr @types__sethostname, ptr @args__sethostname, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sethostname, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sethostname, i64 20) }, ptr @event_enter__sethostname, ptr @event_exit__sethostname }, align 4
@event_enter__sethostname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.92 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__sethostname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sethostname = internal global ptr @event_enter__sethostname, section "_ftrace_events", align 4
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_sethostname\00", [43 x i8] zeroinitializer }, align 32
@event_exit__sethostname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.93 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__sethostname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sethostname = internal global ptr @event_exit__sethostname, section "_ftrace_events", align 4
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_sethostname\00", [16 x i8] zeroinitializer }, align 32
@types__sethostname = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.175, ptr @.str.128], [24 x i8] zeroinitializer }, align 32
@args__sethostname = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.172, ptr @.str.176], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sethostname = internal global ptr @__syscall_meta__sethostname, section "__syscalls_metadata", align 4
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_gethostname\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__gethostname = internal global %struct.syscall_metadata { ptr @.str.97, i32 -1, i32 2, ptr @types__gethostname, ptr @args__gethostname, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__gethostname, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__gethostname, i64 20) }, ptr @event_enter__gethostname, ptr @event_exit__gethostname }, align 4
@event_enter__gethostname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.95 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__gethostname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__gethostname = internal global ptr @event_enter__gethostname, section "_ftrace_events", align 4
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_gethostname\00", [43 x i8] zeroinitializer }, align 32
@event_exit__gethostname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.96 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__gethostname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__gethostname = internal global ptr @event_exit__gethostname, section "_ftrace_events", align 4
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_gethostname\00", [16 x i8] zeroinitializer }, align 32
@types__gethostname = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.175, ptr @.str.128], [24 x i8] zeroinitializer }, align 32
@args__gethostname = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.172, ptr @.str.176], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__gethostname = internal global ptr @__syscall_meta__gethostname, section "__syscalls_metadata", align 4
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_setdomainname\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__setdomainname = internal global %struct.syscall_metadata { ptr @.str.100, i32 -1, i32 2, ptr @types__setdomainname, ptr @args__setdomainname, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setdomainname, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setdomainname, i64 20) }, ptr @event_enter__setdomainname, ptr @event_exit__setdomainname }, align 4
@event_enter__setdomainname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.98 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setdomainname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setdomainname = internal global ptr @event_enter__setdomainname, section "_ftrace_events", align 4
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_setdomainname\00", [41 x i8] zeroinitializer }, align 32
@event_exit__setdomainname = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.99 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setdomainname, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setdomainname = internal global ptr @event_exit__setdomainname, section "_ftrace_events", align 4
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_setdomainname\00", [46 x i8] zeroinitializer }, align 32
@types__setdomainname = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.175, ptr @.str.128], [24 x i8] zeroinitializer }, align 32
@args__setdomainname = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.172, ptr @.str.176], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setdomainname = internal global ptr @__syscall_meta__setdomainname, section "__syscalls_metadata", align 4
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getrlimit\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__getrlimit = internal global %struct.syscall_metadata { ptr @.str.103, i32 -1, i32 2, ptr @types__getrlimit, ptr @args__getrlimit, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getrlimit, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getrlimit, i64 20) }, ptr @event_enter__getrlimit, ptr @event_exit__getrlimit }, align 4
@event_enter__getrlimit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.101 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getrlimit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getrlimit = internal global ptr @event_enter__getrlimit, section "_ftrace_events", align 4
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getrlimit\00", [45 x i8] zeroinitializer }, align 32
@event_exit__getrlimit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.102 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getrlimit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getrlimit = internal global ptr @event_exit__getrlimit, section "_ftrace_events", align 4
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getrlimit\00", [18 x i8] zeroinitializer }, align 32
@types__getrlimit = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.177, ptr @.str.178], [24 x i8] zeroinitializer }, align 32
@args__getrlimit = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.179, ptr @.str.180], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getrlimit = internal global ptr @__syscall_meta__getrlimit, section "__syscalls_metadata", align 4
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_old_getrlimit\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__old_getrlimit = internal global %struct.syscall_metadata { ptr @.str.106, i32 -1, i32 2, ptr @types__old_getrlimit, ptr @args__old_getrlimit, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_getrlimit, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_getrlimit, i64 20) }, ptr @event_enter__old_getrlimit, ptr @event_exit__old_getrlimit }, align 4
@event_enter__old_getrlimit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.104 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__old_getrlimit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_getrlimit = internal global ptr @event_enter__old_getrlimit, section "_ftrace_events", align 4
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_old_getrlimit\00", [41 x i8] zeroinitializer }, align 32
@event_exit__old_getrlimit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.105 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__old_getrlimit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_getrlimit = internal global ptr @event_exit__old_getrlimit, section "_ftrace_events", align 4
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_old_getrlimit\00", [46 x i8] zeroinitializer }, align 32
@types__old_getrlimit = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.177, ptr @.str.178], [24 x i8] zeroinitializer }, align 32
@args__old_getrlimit = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.179, ptr @.str.180], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_getrlimit = internal global ptr @__syscall_meta__old_getrlimit, section "__syscalls_metadata", align 4
@sysctl_nr_open = external dso_local local_unnamed_addr global i32, align 4
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_prlimit64\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__prlimit64 = internal global %struct.syscall_metadata { ptr @.str.109, i32 -1, i32 4, ptr @types__prlimit64, ptr @args__prlimit64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__prlimit64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__prlimit64, i64 20) }, ptr @event_enter__prlimit64, ptr @event_exit__prlimit64 }, align 4
@event_enter__prlimit64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.107 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__prlimit64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__prlimit64 = internal global ptr @event_enter__prlimit64, section "_ftrace_events", align 4
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_prlimit64\00", [45 x i8] zeroinitializer }, align 32
@event_exit__prlimit64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.108 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__prlimit64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__prlimit64 = internal global ptr @event_exit__prlimit64, section "_ftrace_events", align 4
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_prlimit64\00", [18 x i8] zeroinitializer }, align 32
@types__prlimit64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.168, ptr @.str.177, ptr @.str.181, ptr @.str.182], [16 x i8] zeroinitializer }, align 32
@args__prlimit64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.169, ptr @.str.179, ptr @.str.183, ptr @.str.184], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__prlimit64 = internal global ptr @__syscall_meta__prlimit64, section "__syscalls_metadata", align 4
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_setrlimit\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__setrlimit = internal global %struct.syscall_metadata { ptr @.str.112, i32 -1, i32 2, ptr @types__setrlimit, ptr @args__setrlimit, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setrlimit, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setrlimit, i64 20) }, ptr @event_enter__setrlimit, ptr @event_exit__setrlimit }, align 4
@event_enter__setrlimit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.110 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setrlimit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setrlimit = internal global ptr @event_enter__setrlimit, section "_ftrace_events", align 4
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_setrlimit\00", [45 x i8] zeroinitializer }, align 32
@event_exit__setrlimit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.111 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setrlimit, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setrlimit = internal global ptr @event_exit__setrlimit, section "_ftrace_events", align 4
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_setrlimit\00", [18 x i8] zeroinitializer }, align 32
@types__setrlimit = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.177, ptr @.str.178], [24 x i8] zeroinitializer }, align 32
@args__setrlimit = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.179, ptr @.str.180], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setrlimit = internal global ptr @__syscall_meta__setrlimit, section "__syscalls_metadata", align 4
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getrusage\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__getrusage = internal global %struct.syscall_metadata { ptr @.str.115, i32 -1, i32 2, ptr @types__getrusage, ptr @args__getrusage, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getrusage, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getrusage, i64 20) }, ptr @event_enter__getrusage, ptr @event_exit__getrusage }, align 4
@event_enter__getrusage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.113 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getrusage, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getrusage = internal global ptr @event_enter__getrusage, section "_ftrace_events", align 4
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getrusage\00", [45 x i8] zeroinitializer }, align 32
@event_exit__getrusage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.114 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getrusage, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getrusage = internal global ptr @event_exit__getrusage, section "_ftrace_events", align 4
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getrusage\00", [18 x i8] zeroinitializer }, align 32
@types__getrusage = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.128, ptr @.str.186], [24 x i8] zeroinitializer }, align 32
@args__getrusage = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.130, ptr @.str.187], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getrusage = internal global ptr @__syscall_meta__getrusage, section "__syscalls_metadata", align 4
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_umask\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__umask = internal global %struct.syscall_metadata { ptr @.str.118, i32 -1, i32 1, ptr @types__umask, ptr @args__umask, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__umask, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__umask, i64 20) }, ptr @event_enter__umask, ptr @event_exit__umask }, align 4
@event_enter__umask = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.116 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__umask, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__umask = internal global ptr @event_enter__umask, section "_ftrace_events", align 4
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_umask\00", [17 x i8] zeroinitializer }, align 32
@event_exit__umask = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.117 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__umask, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__umask = internal global ptr @event_exit__umask, section "_ftrace_events", align 4
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_umask\00", [22 x i8] zeroinitializer }, align 32
@types__umask = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.128], [28 x i8] zeroinitializer }, align 32
@args__umask = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.188], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__umask = internal global ptr @__syscall_meta__umask, section "__syscalls_metadata", align 4
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_prctl\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__prctl = internal global %struct.syscall_metadata { ptr @.str.121, i32 -1, i32 5, ptr @types__prctl, ptr @args__prctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__prctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__prctl, i64 20) }, ptr @event_enter__prctl, ptr @event_exit__prctl }, align 4
@event_enter__prctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.119 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__prctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__prctl = internal global ptr @event_enter__prctl, section "_ftrace_events", align 4
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_prctl\00", [17 x i8] zeroinitializer }, align 32
@event_exit__prctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.120 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__prctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__prctl = internal global ptr @event_exit__prctl, section "_ftrace_events", align 4
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_prctl\00", [22 x i8] zeroinitializer }, align 32
@types__prctl = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.128, ptr @.str.189, ptr @.str.189, ptr @.str.189, ptr @.str.189], [44 x i8] zeroinitializer }, align 32
@args__prctl = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__prctl = internal global ptr @__syscall_meta__prctl, section "__syscalls_metadata", align 4
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_getcpu\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__getcpu = internal global %struct.syscall_metadata { ptr @.str.124, i32 -1, i32 3, ptr @types__getcpu, ptr @args__getcpu, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getcpu, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getcpu, i64 20) }, ptr @event_enter__getcpu, ptr @event_exit__getcpu }, align 4
@event_enter__getcpu = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.122 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getcpu, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getcpu = internal global ptr @event_enter__getcpu, section "_ftrace_events", align 4
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_getcpu\00", [16 x i8] zeroinitializer }, align 32
@event_exit__getcpu = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.123 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getcpu, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getcpu = internal global ptr @event_exit__getcpu, section "_ftrace_events", align 4
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_getcpu\00", [21 x i8] zeroinitializer }, align 32
@types__getcpu = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.196, ptr @.str.196, ptr @.str.197], [20 x i8] zeroinitializer }, align 32
@args__getcpu = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.198, ptr @.str.199, ptr @.str.200], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getcpu = internal global ptr @__syscall_meta__getcpu, section "__syscalls_metadata", align 4
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_sysinfo\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__sysinfo = internal global %struct.syscall_metadata { ptr @.str.127, i32 -1, i32 1, ptr @types__sysinfo, ptr @args__sysinfo, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__sysinfo, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__sysinfo, i64 20) }, ptr @event_enter__sysinfo, ptr @event_exit__sysinfo }, align 4
@event_enter__sysinfo = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.125 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__sysinfo, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__sysinfo = internal global ptr @event_enter__sysinfo, section "_ftrace_events", align 4
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_sysinfo\00", [47 x i8] zeroinitializer }, align 32
@event_exit__sysinfo = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.126 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__sysinfo, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__sysinfo = internal global ptr @event_exit__sysinfo, section "_ftrace_events", align 4
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_sysinfo\00", [20 x i8] zeroinitializer }, align 32
@types__sysinfo = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.201], [28 x i8] zeroinitializer }, align 32
@args__sysinfo = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.202], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__sysinfo = internal global ptr @__syscall_meta__sysinfo, section "__syscalls_metadata", align 4
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"which\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"who\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"niceval\00", [24 x i8] zeroinitializer }, align 32
@__do_sys_setpriority.__warned.132 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.133 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__do_sys_setpriority.__warned.134 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_task = external dso_local global %struct.task_struct, align 128
@__do_sys_setpriority.__warned.135 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_setpriority.__warned.136 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@set_one_prio_perm.__warned.137 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_getpriority.__warned.138 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_getpriority.__warned.139 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_getpriority.__warned.140 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_getpriority.__warned.141 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rgid\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"egid\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@root_user = external dso_local global %struct.user_struct, align 8
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ruid\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"euid\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"suid\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uid_t *\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ruidp\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"euidp\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"suidp\00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sgid\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gid_t *\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgidp\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"egidp\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgidp\00", [26 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.162 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"struct tms *\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tbuf\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pgid\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct new_utsname *\00", [43 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.6.%u%s\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct rlimit *\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resource\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rlim\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"const struct rlimit64 *\00", [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct rlimit64 *\00", [46 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"new_rlim\00", [23 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"old_rlim\00", [23 x i8] zeroinitializer }, align 32
@check_prlimit_permission.__warned.185 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct rusage *\00", [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ru\00", [29 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"option\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg2\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg3\00", [27 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg4\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg5\00", [27 x i8] zeroinitializer }, align 32
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\\`$[]\00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unsigned *\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"struct getcpu_cache *\00", [42 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpup\00", [27 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodep\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct sysinfo *\00", [47 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@nr_threads = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@__sancov_gen_cov_switch_values.205 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.207 = internal global [39 x i64] [i64 37, i64 32, i64 1, i64 2, i64 3, i64 4, i64 13, i64 14, i64 15, i64 16, i64 21, i64 22, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 60, i64 61, i64 62, i64 1398164801]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.209 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 13]
@__sancov_gen_cov_switch_values.212 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.213 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"overflowuid\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 141, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"overflowgid\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 142, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant [15 x i8] c"fs_overflowuid\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 152, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"fs_overflowgid\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 153, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"event_enter__setpriority\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"event_exit__setpriority\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [19 x i8] c"types__setpriority\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"args__setpriority\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [25 x i8] c"event_enter__getpriority\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [24 x i8] c"event_exit__getpriority\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [19 x i8] c"types__getpriority\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [18 x i8] c"args__getpriority\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 274, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"event_enter__setregid\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [21 x i8] c"event_exit__setregid\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [16 x i8] c"types__setregid\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"args__setregid\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"event_enter__setgid\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [19 x i8] c"event_exit__setgid\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [14 x i8] c"types__setgid\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"args__setgid\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [22 x i8] c"event_enter__setreuid\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [21 x i8] c"event_exit__setreuid\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [16 x i8] c"types__setreuid\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [15 x i8] c"args__setreuid\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c"event_enter__setuid\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"event_exit__setuid\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"types__setuid\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [13 x i8] c"args__setuid\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [23 x i8] c"event_enter__setresuid\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [22 x i8] c"event_exit__setresuid\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"types__setresuid\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [16 x i8] c"args__setresuid\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [23 x i8] c"event_enter__getresuid\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [22 x i8] c"event_exit__getresuid\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"types__getresuid\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [16 x i8] c"args__getresuid\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [23 x i8] c"event_enter__setresgid\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [22 x i8] c"event_exit__setresgid\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"types__setresgid\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [16 x i8] c"args__setresgid\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [23 x i8] c"event_enter__getresgid\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [22 x i8] c"event_exit__getresgid\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"types__getresgid\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [16 x i8] c"args__getresgid\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [22 x i8] c"event_enter__setfsuid\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [21 x i8] c"event_exit__setfsuid\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [16 x i8] c"types__setfsuid\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [15 x i8] c"args__setfsuid\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 874, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant [22 x i8] c"event_enter__setfsgid\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [21 x i8] c"event_exit__setfsgid\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [16 x i8] c"types__setfsgid\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [15 x i8] c"args__setfsgid\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 918, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c"event_enter__getpid\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [19 x i8] c"event_exit__getpid\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 933, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c"event_enter__gettid\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [19 x i8] c"event_exit__gettid\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 939, i32 1 }
@___asan_gen_.512 = private unnamed_addr constant [21 x i8] c"event_enter__getppid\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c"event_exit__getppid\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 950, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 955, i32 22 }
@___asan_gen_.533 = private unnamed_addr constant [20 x i8] c"event_enter__getuid\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [19 x i8] c"event_exit__getuid\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 961, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c"event_enter__geteuid\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c"event_exit__geteuid\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 967, i32 1 }
@___asan_gen_.563 = private unnamed_addr constant [20 x i8] c"event_enter__getgid\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [19 x i8] c"event_exit__getgid\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 973, i32 1 }
@___asan_gen_.578 = private unnamed_addr constant [21 x i8] c"event_enter__getegid\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [20 x i8] c"event_exit__getegid\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 979, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant [19 x i8] c"event_enter__times\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [18 x i8] c"event_exit__times\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [13 x i8] c"types__times\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [12 x i8] c"args__times\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c"event_enter__setpgid\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [20 x i8] c"event_exit__setpgid\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [15 x i8] c"types__setpgid\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [14 x i8] c"args__setpgid\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [21 x i8] c"event_enter__getpgid\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [20 x i8] c"event_exit__getpgid\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [15 x i8] c"types__getpgid\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [14 x i8] c"args__getpgid\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1147, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant [21 x i8] c"event_enter__getpgrp\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [20 x i8] c"event_exit__getpgrp\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1154, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant [20 x i8] c"event_enter__getsid\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [19 x i8] c"event_exit__getsid\00", align 1
@___asan_gen_.683 = private unnamed_addr constant [14 x i8] c"types__getsid\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [13 x i8] c"args__getsid\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1161, i32 1 }
@___asan_gen_.692 = private unnamed_addr constant [20 x i8] c"event_enter__setsid\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [19 x i8] c"event_exit__setsid\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1233, i32 1 }
@___asan_gen_.707 = private unnamed_addr constant [8 x i8] c"uts_sem\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1238, i32 1 }
@___asan_gen_.716 = private unnamed_addr constant [22 x i8] c"event_enter__newuname\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c"event_exit__newuname\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [16 x i8] c"types__newuname\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [15 x i8] c"args__newuname\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [25 x i8] c"event_enter__sethostname\00", align 1
@___asan_gen_.743 = private unnamed_addr constant [24 x i8] c"event_exit__sethostname\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [19 x i8] c"types__sethostname\00", align 1
@___asan_gen_.752 = private unnamed_addr constant [18 x i8] c"args__sethostname\00", align 1
@___asan_gen_.758 = private unnamed_addr constant [25 x i8] c"event_enter__gethostname\00", align 1
@___asan_gen_.764 = private unnamed_addr constant [24 x i8] c"event_exit__gethostname\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [19 x i8] c"types__gethostname\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [18 x i8] c"args__gethostname\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1376, i32 1 }
@___asan_gen_.779 = private unnamed_addr constant [27 x i8] c"event_enter__setdomainname\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [26 x i8] c"event_exit__setdomainname\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c"types__setdomainname\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [20 x i8] c"args__setdomainname\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1402, i32 1 }
@___asan_gen_.800 = private unnamed_addr constant [23 x i8] c"event_enter__getrlimit\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [22 x i8] c"event_exit__getrlimit\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [17 x i8] c"types__getrlimit\00", align 1
@___asan_gen_.815 = private unnamed_addr constant [16 x i8] c"args__getrlimit\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [27 x i8] c"event_enter__old_getrlimit\00", align 1
@___asan_gen_.827 = private unnamed_addr constant [26 x i8] c"event_exit__old_getrlimit\00", align 1
@___asan_gen_.833 = private unnamed_addr constant [21 x i8] c"types__old_getrlimit\00", align 1
@___asan_gen_.836 = private unnamed_addr constant [20 x i8] c"args__old_getrlimit\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1492, i32 1 }
@___asan_gen_.842 = private unnamed_addr constant [23 x i8] c"event_enter__prlimit64\00", align 1
@___asan_gen_.848 = private unnamed_addr constant [22 x i8] c"event_exit__prlimit64\00", align 1
@___asan_gen_.854 = private unnamed_addr constant [17 x i8] c"types__prlimit64\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [16 x i8] c"args__prlimit64\00", align 1
@___asan_gen_.863 = private unnamed_addr constant [23 x i8] c"event_enter__setrlimit\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [22 x i8] c"event_exit__setrlimit\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [17 x i8] c"types__setrlimit\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [16 x i8] c"args__setrlimit\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1697, i32 1 }
@___asan_gen_.884 = private unnamed_addr constant [23 x i8] c"event_enter__getrusage\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [22 x i8] c"event_exit__getrusage\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [17 x i8] c"types__getrusage\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [16 x i8] c"args__getrusage\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [19 x i8] c"event_enter__umask\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [18 x i8] c"event_exit__umask\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [13 x i8] c"types__umask\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [12 x i8] c"args__umask\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [19 x i8] c"event_enter__prctl\00", align 1
@___asan_gen_.932 = private unnamed_addr constant [18 x i8] c"event_exit__prctl\00", align 1
@___asan_gen_.938 = private unnamed_addr constant [13 x i8] c"types__prctl\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [12 x i8] c"args__prctl\00", align 1
@___asan_gen_.947 = private unnamed_addr constant [20 x i8] c"event_enter__getcpu\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [19 x i8] c"event_exit__getcpu\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [14 x i8] c"types__getcpu\00", align 1
@___asan_gen_.962 = private unnamed_addr constant [13 x i8] c"args__getcpu\00", align 1
@___asan_gen_.968 = private unnamed_addr constant [21 x i8] c"event_enter__sysinfo\00", align 1
@___asan_gen_.974 = private unnamed_addr constant [20 x i8] c"event_exit__sysinfo\00", align 1
@___asan_gen_.980 = private unnamed_addr constant [15 x i8] c"types__sysinfo\00", align 1
@___asan_gen_.983 = private unnamed_addr constant [14 x i8] c"args__sysinfo\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 204, i32 1 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 239, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 414, i32 1 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 460, i32 1 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 580, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 643, i32 1 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 723, i32 1 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 728, i32 1 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 806, i32 1 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 811, i32 1 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1062, i32 695, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1062, i32 723, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 998, i32 1 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1074, i32 230, i32 6 }
@___asan_gen_.1074 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1074, i32 214, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1077, i32 174, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1048, i32 1 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1281, i32 1 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1260, i32 22 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1275, i32 31 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1349, i32 1 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1427, i32 1 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1650, i32 1 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1824, i32 1 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 1850, i32 1 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 2337, i32 1 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 2282, i32 11 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 2616, i32 1 }
@___asan_gen_.1178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1179 = private constant [16 x i8] c"../kernel/sys.c\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1179, i32 2696, i32 1 }
@llvm.compiler.used = appending global [478 x ptr] [ptr @__event_enter__getcpu, ptr @__event_enter__getegid, ptr @__event_enter__geteuid, ptr @__event_enter__getgid, ptr @__event_enter__gethostname, ptr @__event_enter__getpgid, ptr @__event_enter__getpgrp, ptr @__event_enter__getpid, ptr @__event_enter__getppid, ptr @__event_enter__getpriority, ptr @__event_enter__getresgid, ptr @__event_enter__getresuid, ptr @__event_enter__getrlimit, ptr @__event_enter__getrusage, ptr @__event_enter__getsid, ptr @__event_enter__gettid, ptr @__event_enter__getuid, ptr @__event_enter__newuname, ptr @__event_enter__old_getrlimit, ptr @__event_enter__prctl, ptr @__event_enter__prlimit64, ptr @__event_enter__setdomainname, ptr @__event_enter__setfsgid, ptr @__event_enter__setfsuid, ptr @__event_enter__setgid, ptr @__event_enter__sethostname, ptr @__event_enter__setpgid, ptr @__event_enter__setpriority, ptr @__event_enter__setregid, ptr @__event_enter__setresgid, ptr @__event_enter__setresuid, ptr @__event_enter__setreuid, ptr @__event_enter__setrlimit, ptr @__event_enter__setsid, ptr @__event_enter__setuid, ptr @__event_enter__sysinfo, ptr @__event_enter__times, ptr @__event_enter__umask, ptr @__event_exit__getcpu, ptr @__event_exit__getegid, ptr @__event_exit__geteuid, ptr @__event_exit__getgid, ptr @__event_exit__gethostname, ptr @__event_exit__getpgid, ptr @__event_exit__getpgrp, ptr @__event_exit__getpid, ptr @__event_exit__getppid, ptr @__event_exit__getpriority, ptr @__event_exit__getresgid, ptr @__event_exit__getresuid, ptr @__event_exit__getrlimit, ptr @__event_exit__getrusage, ptr @__event_exit__getsid, ptr @__event_exit__gettid, ptr @__event_exit__getuid, ptr @__event_exit__newuname, ptr @__event_exit__old_getrlimit, ptr @__event_exit__prctl, ptr @__event_exit__prlimit64, ptr @__event_exit__setdomainname, ptr @__event_exit__setfsgid, ptr @__event_exit__setfsuid, ptr @__event_exit__setgid, ptr @__event_exit__sethostname, ptr @__event_exit__setpgid, ptr @__event_exit__setpriority, ptr @__event_exit__setregid, ptr @__event_exit__setresgid, ptr @__event_exit__setresuid, ptr @__event_exit__setreuid, ptr @__event_exit__setrlimit, ptr @__event_exit__setsid, ptr @__event_exit__setuid, ptr @__event_exit__sysinfo, ptr @__event_exit__times, ptr @__event_exit__umask, ptr @__ksymtab_fs_overflowgid, ptr @__ksymtab_fs_overflowuid, ptr @__ksymtab_overflowgid, ptr @__ksymtab_overflowuid, ptr @__p_syscall_meta__getcpu, ptr @__p_syscall_meta__getegid, ptr @__p_syscall_meta__geteuid, ptr @__p_syscall_meta__getgid, ptr @__p_syscall_meta__gethostname, ptr @__p_syscall_meta__getpgid, ptr @__p_syscall_meta__getpgrp, ptr @__p_syscall_meta__getpid, ptr @__p_syscall_meta__getppid, ptr @__p_syscall_meta__getpriority, ptr @__p_syscall_meta__getresgid, ptr @__p_syscall_meta__getresuid, ptr @__p_syscall_meta__getrlimit, ptr @__p_syscall_meta__getrusage, ptr @__p_syscall_meta__getsid, ptr @__p_syscall_meta__gettid, ptr @__p_syscall_meta__getuid, ptr @__p_syscall_meta__newuname, ptr @__p_syscall_meta__old_getrlimit, ptr @__p_syscall_meta__prctl, ptr @__p_syscall_meta__prlimit64, ptr @__p_syscall_meta__setdomainname, ptr @__p_syscall_meta__setfsgid, ptr @__p_syscall_meta__setfsuid, ptr @__p_syscall_meta__setgid, ptr @__p_syscall_meta__sethostname, ptr @__p_syscall_meta__setpgid, ptr @__p_syscall_meta__setpriority, ptr @__p_syscall_meta__setregid, ptr @__p_syscall_meta__setresgid, ptr @__p_syscall_meta__setresuid, ptr @__p_syscall_meta__setreuid, ptr @__p_syscall_meta__setrlimit, ptr @__p_syscall_meta__setsid, ptr @__p_syscall_meta__setuid, ptr @__p_syscall_meta__sysinfo, ptr @__p_syscall_meta__times, ptr @__p_syscall_meta__umask, ptr @__syscall_meta__getcpu, ptr @__syscall_meta__getegid, ptr @__syscall_meta__geteuid, ptr @__syscall_meta__getgid, ptr @__syscall_meta__gethostname, ptr @__syscall_meta__getpgid, ptr @__syscall_meta__getpgrp, ptr @__syscall_meta__getpid, ptr @__syscall_meta__getppid, ptr @__syscall_meta__getpriority, ptr @__syscall_meta__getresgid, ptr @__syscall_meta__getresuid, ptr @__syscall_meta__getrlimit, ptr @__syscall_meta__getrusage, ptr @__syscall_meta__getsid, ptr @__syscall_meta__gettid, ptr @__syscall_meta__getuid, ptr @__syscall_meta__newuname, ptr @__syscall_meta__old_getrlimit, ptr @__syscall_meta__prctl, ptr @__syscall_meta__prlimit64, ptr @__syscall_meta__setdomainname, ptr @__syscall_meta__setfsgid, ptr @__syscall_meta__setfsuid, ptr @__syscall_meta__setgid, ptr @__syscall_meta__sethostname, ptr @__syscall_meta__setpgid, ptr @__syscall_meta__setpriority, ptr @__syscall_meta__setregid, ptr @__syscall_meta__setresgid, ptr @__syscall_meta__setresuid, ptr @__syscall_meta__setreuid, ptr @__syscall_meta__setrlimit, ptr @__syscall_meta__setsid, ptr @__syscall_meta__setuid, ptr @__syscall_meta__sysinfo, ptr @__syscall_meta__times, ptr @__syscall_meta__umask, ptr @event_enter__getcpu, ptr @event_enter__getegid, ptr @event_enter__geteuid, ptr @event_enter__getgid, ptr @event_enter__gethostname, ptr @event_enter__getpgid, ptr @event_enter__getpgrp, ptr @event_enter__getpid, ptr @event_enter__getppid, ptr @event_enter__getpriority, ptr @event_enter__getresgid, ptr @event_enter__getresuid, ptr @event_enter__getrlimit, ptr @event_enter__getrusage, ptr @event_enter__getsid, ptr @event_enter__gettid, ptr @event_enter__getuid, ptr @event_enter__newuname, ptr @event_enter__old_getrlimit, ptr @event_enter__prctl, ptr @event_enter__prlimit64, ptr @event_enter__setdomainname, ptr @event_enter__setfsgid, ptr @event_enter__setfsuid, ptr @event_enter__setgid, ptr @event_enter__sethostname, ptr @event_enter__setpgid, ptr @event_enter__setpriority, ptr @event_enter__setregid, ptr @event_enter__setresgid, ptr @event_enter__setresuid, ptr @event_enter__setreuid, ptr @event_enter__setrlimit, ptr @event_enter__setsid, ptr @event_enter__setuid, ptr @event_enter__sysinfo, ptr @event_enter__times, ptr @event_enter__umask, ptr @event_exit__getcpu, ptr @event_exit__getegid, ptr @event_exit__geteuid, ptr @event_exit__getgid, ptr @event_exit__gethostname, ptr @event_exit__getpgid, ptr @event_exit__getpgrp, ptr @event_exit__getpid, ptr @event_exit__getppid, ptr @event_exit__getpriority, ptr @event_exit__getresgid, ptr @event_exit__getresuid, ptr @event_exit__getrlimit, ptr @event_exit__getrusage, ptr @event_exit__getsid, ptr @event_exit__gettid, ptr @event_exit__getuid, ptr @event_exit__newuname, ptr @event_exit__old_getrlimit, ptr @event_exit__prctl, ptr @event_exit__prlimit64, ptr @event_exit__setdomainname, ptr @event_exit__setfsgid, ptr @event_exit__setfsuid, ptr @event_exit__setgid, ptr @event_exit__sethostname, ptr @event_exit__setpgid, ptr @event_exit__setpriority, ptr @event_exit__setregid, ptr @event_exit__setresgid, ptr @event_exit__setresuid, ptr @event_exit__setreuid, ptr @event_exit__setrlimit, ptr @event_exit__setsid, ptr @event_exit__setuid, ptr @event_exit__sysinfo, ptr @event_exit__times, ptr @event_exit__umask, ptr @overflowuid, ptr @overflowgid, ptr @fs_overflowuid, ptr @fs_overflowgid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__setpriority, ptr @args__setpriority, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__getpriority, ptr @args__getpriority, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @types__setregid, ptr @args__setregid, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @types__setgid, ptr @args__setgid, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__setreuid, ptr @args__setreuid, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @types__setuid, ptr @args__setuid, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @types__setresuid, ptr @args__setresuid, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @types__getresuid, ptr @args__getresuid, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @types__setresgid, ptr @args__setresgid, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @types__getresgid, ptr @args__getresgid, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @types__setfsuid, ptr @args__setfsuid, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @types__setfsgid, ptr @args__setfsgid, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @types__times, ptr @args__times, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @types__setpgid, ptr @args__setpgid, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @types__getpgid, ptr @args__getpgid, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @types__getsid, ptr @args__getsid, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @uts_sem, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @types__newuname, ptr @args__newuname, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @types__sethostname, ptr @args__sethostname, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @types__gethostname, ptr @args__gethostname, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @types__setdomainname, ptr @args__setdomainname, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @types__getrlimit, ptr @args__getrlimit, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @types__old_getrlimit, ptr @args__old_getrlimit, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @types__prlimit64, ptr @args__prlimit64, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @types__setrlimit, ptr @args__setrlimit, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @types__getrusage, ptr @args__getrusage, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @types__umask, ptr @args__umask, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @types__prctl, ptr @args__prctl, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @types__getcpu, ptr @args__getcpu, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @types__sysinfo, ptr @args__sysinfo, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202], section "llvm.metadata"
@0 = internal global [322 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overflowuid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overflowgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_overflowuid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_overflowgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setpriority to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setpriority to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setpriority to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setpriority to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getpriority to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getpriority to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getpriority to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getpriority to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setregid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setregid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setregid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setregid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setreuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setreuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setreuid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setreuid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setuid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setuid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setresuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setresuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setresuid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setresuid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getresuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getresuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getresuid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getresuid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setresgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setresgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setresgid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setresgid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getresgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getresgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getresgid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getresgid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setfsuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setfsuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setfsuid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setfsuid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setfsgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setfsgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setfsgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setfsgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getpid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getpid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__gettid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__gettid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getppid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getppid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__geteuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__geteuid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getegid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getegid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__times to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__times to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__times to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__times to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setpgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setpgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setpgid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setpgid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getpgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getpgid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getpgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getpgid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getpgrp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getpgrp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getsid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getsid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getsid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getsid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setsid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setsid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uts_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__newuname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__newuname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__newuname to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__newuname to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sethostname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sethostname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sethostname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sethostname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__gethostname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__gethostname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__gethostname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__gethostname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setdomainname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setdomainname to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setdomainname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setdomainname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getrlimit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getrlimit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getrlimit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getrlimit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_getrlimit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_getrlimit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_getrlimit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_getrlimit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__prlimit64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__prlimit64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__prlimit64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__prlimit64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setrlimit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setrlimit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setrlimit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setrlimit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getrusage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getrusage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getrusage to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getrusage to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__umask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__umask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__umask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__umask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__prctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__prctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__prctl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__prctl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getcpu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getcpu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getcpu to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getcpu to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__sysinfo to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__sysinfo to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__sysinfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__sysinfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_setpriority = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_setpriority
@sys_getpriority = dso_local alias i32 (i32, i32), ptr @__se_sys_getpriority
@sys_setregid = dso_local alias i32 (i32, i32), ptr @__se_sys_setregid
@sys_setgid = dso_local alias i32 (i32), ptr @__se_sys_setgid
@sys_setreuid = dso_local alias i32 (i32, i32), ptr @__se_sys_setreuid
@sys_setuid = dso_local alias i32 (i32), ptr @__se_sys_setuid
@sys_setresuid = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_setresuid
@sys_getresuid = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresuid
@sys_setresgid = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_setresgid
@sys_getresgid = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresgid
@sys_setfsuid = dso_local alias i32 (i32), ptr @__se_sys_setfsuid
@sys_setfsgid = dso_local alias i32 (i32), ptr @__se_sys_setfsgid
@sys_times = dso_local alias i32 (ptr), ptr @__se_sys_times
@sys_setpgid = dso_local alias i32 (i32, i32), ptr @__se_sys_setpgid
@sys_getpgid = dso_local alias i32 (i32), ptr @__se_sys_getpgid
@sys_getsid = dso_local alias i32 (i32), ptr @__se_sys_getsid
@sys_newuname = dso_local alias i32 (ptr), ptr @__se_sys_newuname
@sys_sethostname = dso_local alias i32 (ptr, i32), ptr @__se_sys_sethostname
@sys_gethostname = dso_local alias i32 (ptr, i32), ptr @__se_sys_gethostname
@sys_setdomainname = dso_local alias i32 (ptr, i32), ptr @__se_sys_setdomainname
@sys_getrlimit = dso_local alias i32 (i32, ptr), ptr @__se_sys_getrlimit
@sys_old_getrlimit = dso_local alias i32 (i32, ptr), ptr @__se_sys_old_getrlimit
@sys_prlimit64 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_prlimit64
@sys_setrlimit = dso_local alias i32 (i32, ptr), ptr @__se_sys_setrlimit
@sys_getrusage = dso_local alias i32 (i32, ptr), ptr @__se_sys_getrusage
@sys_umask = dso_local alias i32 (i32), ptr @__se_sys_umask
@sys_prctl = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_prctl
@sys_getcpu = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getcpu
@sys_sysinfo = dso_local alias i32 (ptr), ptr @__se_sys_sysinfo

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setpriority(i32 noundef %which, i32 noundef %who, i32 noundef %niceval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %which)
  %6 = icmp ugt i32 %which, 2
  br i1 %6, label %entry.__do_sys_setpriority.exit_crit_edge, label %if.end.i

entry.__do_sys_setpriority.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_setpriority.exit

if.end.i:                                         ; preds = %entry
  %7 = tail call i32 @llvm.smax.i32(i32 %niceval, i32 -20) #11
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 19) #11
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %11 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %which, label %rcu_read_lock.exit.i.out_unlock.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb18.i
    i32 2, label %sw.bb106.i
  ]

rcu_read_lock.exit.i.out_unlock.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

sw.bb.i:                                          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool.not.i = icmp eq i32 %who, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call ptr @find_task_by_vpid(i32 noundef %who) #11
  br label %if.end13.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then9.i
  %p.0.i = phi ptr [ %call10.i, %if.then9.i ], [ %13, %if.else.i ]
  %tobool14.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool14.not.i, label %if.end13.i.out_unlock.i_crit_edge, label %if.then15.i

if.end13.i.out_unlock.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call fastcc i32 @set_one_prio(ptr noundef nonnull %p.0.i, i32 noundef %8, i32 noundef -3) #11
  br label %out_unlock.i

sw.bb18.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool19.not.i = icmp eq i32 %who, 0
  br i1 %tobool19.not.i, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call ptr @find_vpid(i32 noundef %who) #11
  br label %if.end26.i

if.else22.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %16 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else22.i, %if.then20.i
  %pgrp.0.i = phi ptr [ %call21.i, %if.then20.i ], [ %19, %if.else22.i ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  %cmp28.not.i = icmp eq ptr %pgrp.0.i, null
  br i1 %cmp28.not.i, label %if.end26.i.do.end105.i_crit_edge, label %do.body30.i

if.end26.i.do.end105.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105.i

do.body30.i:                                      ; preds = %if.end26.i
  %call31.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i, label %do.body30.i.do.end40.i_crit_edge

do.body30.i.do.end40.i_crit_edge:                 ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

land.lhs.true.i:                                  ; preds = %do.body30.i
  %call33.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.do.end40.i_crit_edge, label %land.lhs.true35.i

land.lhs.true.i.do.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

land.lhs.true35.i:                                ; preds = %land.lhs.true.i
  %.b273.i = load i1, ptr @__do_sys_setpriority.__warned.132, align 1
  br i1 %.b273.i, label %land.lhs.true35.i.do.end40.i_crit_edge, label %if.then37.i

land.lhs.true35.i.do.end40.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

if.then37.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_setpriority.__warned.132, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 239, ptr noundef nonnull @.str.133) #11
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then37.i, %land.lhs.true35.i.do.end40.i_crit_edge, %land.lhs.true.i.do.end40.i_crit_edge, %do.body30.i.do.end40.i_crit_edge
  %arrayidx.i = getelementptr %struct.pid, ptr %pgrp.0.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool47.not.i = icmp eq ptr %21, null
  %add.ptr.i = getelementptr i8, ptr %21, i32 -1380
  %tobool49.not329333.i = icmp eq ptr %add.ptr.i, null
  %tobool49.not329.i = or i1 %tobool47.not.i, %tobool49.not329333.i
  br i1 %tobool49.not329.i, label %do.end40.i.do.end105.i_crit_edge, label %do.end40.i.for.body.i_crit_edge

do.end40.i.for.body.i_crit_edge:                  ; preds = %do.end40.i
  br label %for.body.i

do.end40.i.do.end105.i_crit_edge:                 ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %do.end40.i.for.body.i_crit_edge
  %p.1331.i = phi ptr [ %add.ptr98.i, %for.end.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end40.i.for.body.i_crit_edge ]
  %error.0330.i = phi i32 [ %error.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ -3, %do.end40.i.for.body.i_crit_edge ]
  %call51.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true53.i, label %for.body.i.do.end61.i_crit_edge

for.body.i.do.end61.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

land.lhs.true53.i:                                ; preds = %for.body.i
  %call54.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %land.lhs.true53.i.do.end61.i_crit_edge, label %land.lhs.true56.i

land.lhs.true53.i.do.end61.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

land.lhs.true56.i:                                ; preds = %land.lhs.true53.i
  %.b265272.i = load i1, ptr @__do_sys_setpriority.__warned.134, align 1
  br i1 %.b265272.i, label %land.lhs.true56.i.do.end61.i_crit_edge, label %if.then58.i

land.lhs.true56.i.do.end61.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

if.then58.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_setpriority.__warned.134, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 239, ptr noundef nonnull @.str.133) #11
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.then58.i, %land.lhs.true56.i.do.end61.i_crit_edge, %land.lhs.true53.i.do.end61.i_crit_edge, %for.body.i.do.end61.i_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.1331.i, i32 0, i32 111
  %22 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %thread_head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn271323.i = load volatile ptr, ptr %thread_head.i, align 4
  %cmp72.not325.i = icmp eq ptr %.pn271323.i, %thread_head.i
  br i1 %cmp72.not325.i, label %do.end61.i.for.end.i_crit_edge, label %do.end61.i.for.body73.i_crit_edge

do.end61.i.for.body73.i_crit_edge:                ; preds = %do.end61.i
  br label %for.body73.i

do.end61.i.for.end.i_crit_edge:                   ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body73.i:                                     ; preds = %for.body73.i.for.body73.i_crit_edge, %do.end61.i.for.body73.i_crit_edge
  %.pn271327.i = phi ptr [ %.pn271.i, %for.body73.i.for.body73.i_crit_edge ], [ %.pn271323.i, %do.end61.i.for.body73.i_crit_edge ]
  %error.1326.i = phi i32 [ %call74.i, %for.body73.i.for.body73.i_crit_edge ], [ %error.0330.i, %do.end61.i.for.body73.i_crit_edge ]
  %p.2.i = getelementptr i8, ptr %.pn271327.i, i32 -1404
  %call74.i = tail call fastcc i32 @set_one_prio(ptr noundef %p.2.i, i32 noundef %8, i32 noundef %error.1326.i) #11
  %25 = ptrtoint ptr %.pn271327.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn271.i = load volatile ptr, ptr %.pn271327.i, align 4
  %26 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %signal.i, align 16
  %thread_head71.i = getelementptr inbounds %struct.signal_struct, ptr %27, i32 0, i32 3
  %cmp72.not.i = icmp eq ptr %.pn271.i, %thread_head71.i
  br i1 %cmp72.not.i, label %for.body73.i.for.end.i_crit_edge, label %for.body73.i.for.body73.i_crit_edge

for.body73.i.for.body73.i_crit_edge:              ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body73.i

for.body73.i.for.end.i_crit_edge:                 ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body73.i.for.end.i_crit_edge, %do.end61.i.for.end.i_crit_edge
  %error.1.lcssa.i = phi i32 [ %error.0330.i, %do.end61.i.for.end.i_crit_edge ], [ %call74.i, %for.body73.i.for.end.i_crit_edge ]
  %arrayidx90.i = getelementptr %struct.task_struct, ptr %p.1331.i, i32 0, i32 79, i32 2
  %28 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx90.i, align 4
  %tobool94.not.i = icmp eq ptr %29, null
  %add.ptr98.i = getelementptr i8, ptr %29, i32 -1380
  %tobool49.not334.i = icmp eq ptr %add.ptr98.i, null
  %tobool49.not.i = or i1 %tobool94.not.i, %tobool49.not334.i
  br i1 %tobool49.not.i, label %for.end.i.do.end105.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.do.end105.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105.i

do.end105.i:                                      ; preds = %for.end.i.do.end105.i_crit_edge, %do.end40.i.do.end105.i_crit_edge, %if.end26.i.do.end105.i_crit_edge
  %error.2.i = phi i32 [ -3, %if.end26.i.do.end105.i_crit_edge ], [ -3, %do.end40.i.do.end105.i_crit_edge ], [ %error.1.lcssa.i, %for.end.i.do.end105.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  br label %out_unlock.i

sw.bb106.i:                                       ; preds = %rcu_read_lock.exit.i
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %30 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ns.i, align 4
  %call108.i = tail call i32 @make_kuid(ptr noundef %31, i32 noundef %who) #11
  %user109.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %32 = ptrtoint ptr %user109.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool110.not.i = icmp eq i32 %who, 0
  %uid112.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %uid112.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %uid.sroa.0.0.copyload.i = load i32, ptr %uid112.i, align 4
  br i1 %tobool110.not.i, label %sw.bb106.i.if.end125.i_crit_edge, label %if.else113.i

sw.bb106.i.if.end125.i_crit_edge:                 ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.i

if.else113.i:                                     ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call108.i, i32 %uid.sroa.0.0.copyload.i)
  %cmp.i.i = icmp eq i32 %call108.i, %uid.sroa.0.0.copyload.i
  br i1 %cmp.i.i, label %if.else113.i.if.end125.i_crit_edge, label %if.then118.i

if.else113.i.if.end125.i_crit_edge:               ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.i

if.then118.i:                                     ; preds = %if.else113.i
  %.fca.0.insert217.i = insertvalue [1 x i32] poison, i32 %call108.i, 0
  %call120.i = tail call ptr @find_user([1 x i32] %.fca.0.insert217.i) #11
  %tobool121.not.i = icmp eq ptr %call120.i, null
  br i1 %tobool121.not.i, label %if.then118.i.out_unlock.i_crit_edge, label %if.then118.i.if.end125.i_crit_edge

if.then118.i.if.end125.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125.i

if.then118.i.out_unlock.i_crit_edge:              ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end125.i:                                      ; preds = %if.then118.i.if.end125.i_crit_edge, %if.else113.i.if.end125.i_crit_edge, %sw.bb106.i.if.end125.i_crit_edge
  %uid.sroa.0.0.i = phi i32 [ %call108.i, %if.else113.i.if.end125.i_crit_edge ], [ %call108.i, %if.then118.i.if.end125.i_crit_edge ], [ %uid.sroa.0.0.copyload.i, %sw.bb106.i.if.end125.i_crit_edge ]
  %user.0.i = phi ptr [ %33, %if.else113.i.if.end125.i_crit_edge ], [ %call120.i, %if.then118.i.if.end125.i_crit_edge ], [ %33, %sw.bb106.i.if.end125.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %35 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr135318.i = getelementptr i8, ptr %35, i32 -1136
  %cmp136.not319.i = icmp eq ptr %add.ptr135318.i, @init_task
  br i1 %cmp136.not319.i, label %if.end125.i.for.end204.i_crit_edge, label %if.end125.i.do.body138.i_crit_edge

if.end125.i.do.body138.i_crit_edge:               ; preds = %if.end125.i
  br label %do.body138.i

if.end125.i.for.end204.i_crit_edge:               ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end204.i

for.cond126.loopexit.i:                           ; preds = %for.inc193.i.for.cond126.loopexit.i_crit_edge, %do.end149.i.for.cond126.loopexit.i_crit_edge
  %error.4.lcssa.i = phi i32 [ %error.3320.i, %do.end149.i.for.cond126.loopexit.i_crit_edge ], [ %error.5.i, %for.inc193.i.for.cond126.loopexit.i_crit_edge ]
  %36 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %38, align 16
  %add.ptr135.i = getelementptr i8, ptr %37, i32 -1136
  %cmp136.not.i = icmp eq ptr %add.ptr135.i, @init_task
  br i1 %cmp136.not.i, label %for.cond126.loopexit.i.for.end204.i_crit_edge, label %for.cond126.loopexit.i.do.body138.i_crit_edge

for.cond126.loopexit.i.do.body138.i_crit_edge:    ; preds = %for.cond126.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138.i

for.cond126.loopexit.i.for.end204.i_crit_edge:    ; preds = %for.cond126.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end204.i

do.body138.i:                                     ; preds = %for.cond126.loopexit.i.do.body138.i_crit_edge, %if.end125.i.do.body138.i_crit_edge
  %38 = phi ptr [ %37, %for.cond126.loopexit.i.do.body138.i_crit_edge ], [ %35, %if.end125.i.do.body138.i_crit_edge ]
  %error.3320.i = phi i32 [ %error.4.lcssa.i, %for.cond126.loopexit.i.do.body138.i_crit_edge ], [ -3, %if.end125.i.do.body138.i_crit_edge ]
  %call139.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool140.not.i, label %land.lhs.true141.i, label %do.body138.i.do.end149.i_crit_edge

do.body138.i.do.end149.i_crit_edge:               ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149.i

land.lhs.true141.i:                               ; preds = %do.body138.i
  %call142.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %land.lhs.true141.i.do.end149.i_crit_edge, label %land.lhs.true144.i

land.lhs.true141.i.do.end149.i_crit_edge:         ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149.i

land.lhs.true144.i:                               ; preds = %land.lhs.true141.i
  %.b266269.i = load i1, ptr @__do_sys_setpriority.__warned.135, align 1
  br i1 %.b266269.i, label %land.lhs.true144.i.do.end149.i_crit_edge, label %if.then146.i

land.lhs.true144.i.do.end149.i_crit_edge:         ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end149.i

if.then146.i:                                     ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_setpriority.__warned.135, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 254, ptr noundef nonnull @.str.133) #11
  br label %do.end149.i

do.end149.i:                                      ; preds = %if.then146.i, %land.lhs.true144.i.do.end149.i_crit_edge, %land.lhs.true141.i.do.end149.i_crit_edge, %do.body138.i.do.end149.i_crit_edge
  %signal155.i = getelementptr i8, ptr %38, i32 544
  %39 = ptrtoint ptr %signal155.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %signal155.i, align 16
  %thread_head156.i = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %thread_head156.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn311.i = load volatile ptr, ptr %thread_head156.i, align 4
  %cmp164.not314.i = icmp eq ptr %.pn311.i, %thread_head156.i
  br i1 %cmp164.not314.i, label %do.end149.i.for.cond126.loopexit.i_crit_edge, label %do.end149.i.for.body165.i_crit_edge

do.end149.i.for.body165.i_crit_edge:              ; preds = %do.end149.i
  br label %for.body165.i

do.end149.i.for.cond126.loopexit.i_crit_edge:     ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond126.loopexit.i

for.body165.i:                                    ; preds = %for.inc193.i.for.body165.i_crit_edge, %do.end149.i.for.body165.i_crit_edge
  %.pn316.i = phi ptr [ %.pn.i, %for.inc193.i.for.body165.i_crit_edge ], [ %.pn311.i, %do.end149.i.for.body165.i_crit_edge ]
  %error.4315.i = phi i32 [ %error.5.i, %for.inc193.i.for.body165.i_crit_edge ], [ %error.3320.i, %do.end149.i.for.body165.i_crit_edge ]
  %p.3317.i = getelementptr i8, ptr %.pn316.i, i32 -1404
  %42 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i275.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i275.i to ptr
  %preempt_count.i.i.i.i276.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i276.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i276.i, align 4
  %add.i.i.i277.i = add i32 %45, 1
  store volatile i32 %add.i.i.i277.i, ptr %preempt_count.i.i.i.i276.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i278.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i278.i, label %for.body165.i.rcu_read_lock.exit285.i_crit_edge, label %land.lhs.true.i281.i

for.body165.i.rcu_read_lock.exit285.i_crit_edge:  ; preds = %for.body165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit285.i

land.lhs.true.i281.i:                             ; preds = %for.body165.i
  %call1.i279.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i279.i)
  %tobool.not.i280.i = icmp eq i32 %call1.i279.i, 0
  br i1 %tobool.not.i280.i, label %land.lhs.true.i281.i.rcu_read_lock.exit285.i_crit_edge, label %land.lhs.true2.i283.i

land.lhs.true.i281.i.rcu_read_lock.exit285.i_crit_edge: ; preds = %land.lhs.true.i281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit285.i

land.lhs.true2.i283.i:                            ; preds = %land.lhs.true.i281.i
  %.b4.i282.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i282.i, label %land.lhs.true2.i283.i.rcu_read_lock.exit285.i_crit_edge, label %if.then.i284.i

land.lhs.true2.i283.i.rcu_read_lock.exit285.i_crit_edge: ; preds = %land.lhs.true2.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit285.i

if.then.i284.i:                                   ; preds = %land.lhs.true2.i283.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit285.i

rcu_read_lock.exit285.i:                          ; preds = %if.then.i284.i, %land.lhs.true2.i283.i.rcu_read_lock.exit285.i_crit_edge, %land.lhs.true.i281.i.rcu_read_lock.exit285.i_crit_edge, %for.body165.i.rcu_read_lock.exit285.i_crit_edge
  %real_cred.i = getelementptr i8, ptr %.pn316.i, i32 208
  %46 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %real_cred.i, align 4
  %call171.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %tobool172.not.i = icmp eq i32 %call171.i, 0
  br i1 %tobool172.not.i, label %land.lhs.true173.i, label %rcu_read_lock.exit285.i.do.end181.i_crit_edge

rcu_read_lock.exit285.i.do.end181.i_crit_edge:    ; preds = %rcu_read_lock.exit285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end181.i

land.lhs.true173.i:                               ; preds = %rcu_read_lock.exit285.i
  %call174.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %tobool175.not.i = icmp eq i32 %call174.i, 0
  br i1 %tobool175.not.i, label %land.lhs.true173.i.do.end181.i_crit_edge, label %land.lhs.true176.i

land.lhs.true173.i.do.end181.i_crit_edge:         ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end181.i

land.lhs.true176.i:                               ; preds = %land.lhs.true173.i
  %.b267268.i = load i1, ptr @__do_sys_setpriority.__warned.136, align 1
  br i1 %.b267268.i, label %land.lhs.true176.i.do.end181.i_crit_edge, label %if.then178.i

land.lhs.true176.i.do.end181.i_crit_edge:         ; preds = %land.lhs.true176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end181.i

if.then178.i:                                     ; preds = %land.lhs.true176.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_setpriority.__warned.136, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 255, ptr noundef nonnull @.str.52) #11
  br label %do.end181.i

do.end181.i:                                      ; preds = %if.then178.i, %land.lhs.true176.i.do.end181.i_crit_edge, %land.lhs.true173.i.do.end181.i_crit_edge, %rcu_read_lock.exit285.i.do.end181.i_crit_edge
  %uid183.i = getelementptr inbounds %struct.cred, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %uid183.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid183.i, align 4
  %call.i286.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i286.i, label %do.end181.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i289.i

do.end181.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i289.i:                             ; preds = %do.end181.i
  %call1.i287.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i287.i)
  %tobool.not.i288.i = icmp eq i32 %call1.i287.i, 0
  br i1 %tobool.not.i288.i, label %land.lhs.true.i289.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i291.i

land.lhs.true.i289.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i291.i:                            ; preds = %land.lhs.true.i289.i
  %.b4.i290.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i290.i, label %land.lhs.true2.i291.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i292.i

land.lhs.true2.i291.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i291.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i292.i:                                   ; preds = %land.lhs.true2.i291.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i292.i, %land.lhs.true2.i291.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i289.i.rcu_read_unlock.exit.i_crit_edge, %do.end181.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %49 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i293.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i293.i to ptr
  %preempt_count.i.i.i.i294.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i294.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i294.i, align 4
  %sub.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i294.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %___val.sroa.0.0.copyload.i, i32 %uid.sroa.0.0.i)
  %cmp.i295.i = icmp eq i32 %___val.sroa.0.0.copyload.i, %uid.sroa.0.0.i
  br i1 %cmp.i295.i, label %land.lhs.true187.i, label %rcu_read_unlock.exit.i.for.inc193.i_crit_edge

rcu_read_unlock.exit.i.for.inc193.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc193.i

land.lhs.true187.i:                               ; preds = %rcu_read_unlock.exit.i
  %call.i296.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p.3317.i, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296.i)
  %tobool189.not.i = icmp eq i32 %call.i296.i, 0
  br i1 %tobool189.not.i, label %land.lhs.true187.i.for.inc193.i_crit_edge, label %if.then190.i

land.lhs.true187.i.for.inc193.i_crit_edge:        ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc193.i

if.then190.i:                                     ; preds = %land.lhs.true187.i
  call void @__sanitizer_cov_trace_pc() #13
  %call191.i = tail call fastcc i32 @set_one_prio(ptr noundef %p.3317.i, i32 noundef %8, i32 noundef %error.4315.i) #11
  br label %for.inc193.i

for.inc193.i:                                     ; preds = %if.then190.i, %land.lhs.true187.i.for.inc193.i_crit_edge, %rcu_read_unlock.exit.i.for.inc193.i_crit_edge
  %error.5.i = phi i32 [ %call191.i, %if.then190.i ], [ %error.4315.i, %land.lhs.true187.i.for.inc193.i_crit_edge ], [ %error.4315.i, %rcu_read_unlock.exit.i.for.inc193.i_crit_edge ]
  %53 = ptrtoint ptr %.pn316.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i = load volatile ptr, ptr %.pn316.i, align 4
  %54 = ptrtoint ptr %signal155.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %signal155.i, align 16
  %thread_head163.i = getelementptr inbounds %struct.signal_struct, ptr %55, i32 0, i32 3
  %cmp164.not.i = icmp eq ptr %.pn.i, %thread_head163.i
  br i1 %cmp164.not.i, label %for.inc193.i.for.cond126.loopexit.i_crit_edge, label %for.inc193.i.for.body165.i_crit_edge

for.inc193.i.for.body165.i_crit_edge:             ; preds = %for.inc193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body165.i

for.inc193.i.for.cond126.loopexit.i_crit_edge:    ; preds = %for.inc193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond126.loopexit.i

for.end204.i:                                     ; preds = %for.cond126.loopexit.i.for.end204.i_crit_edge, %if.end125.i.for.end204.i_crit_edge
  %error.3.lcssa.i = phi i32 [ -3, %if.end125.i.for.end204.i_crit_edge ], [ %error.4.lcssa.i, %for.cond126.loopexit.i.for.end204.i_crit_edge ]
  %56 = ptrtoint ptr %uid112.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack.i = load i32, ptr %uid112.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.sroa.0.0.i, i32 %.unpack.i)
  %cmp.i297.i = icmp eq i32 %uid.sroa.0.0.i, %.unpack.i
  br i1 %cmp.i297.i, label %for.end204.i.out_unlock.i_crit_edge, label %if.then209.i

for.end204.i.out_unlock.i_crit_edge:              ; preds = %for.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.then209.i:                                     ; preds = %for.end204.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_uid(ptr noundef %user.0.i) #11
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.then209.i, %for.end204.i.out_unlock.i_crit_edge, %if.then118.i.out_unlock.i_crit_edge, %do.end105.i, %if.then15.i, %if.end13.i.out_unlock.i_crit_edge, %rcu_read_lock.exit.i.out_unlock.i_crit_edge
  %error.6.i = phi i32 [ -3, %rcu_read_lock.exit.i.out_unlock.i_crit_edge ], [ %error.3.lcssa.i, %for.end204.i.out_unlock.i_crit_edge ], [ %error.3.lcssa.i, %if.then209.i ], [ -3, %if.then118.i.out_unlock.i_crit_edge ], [ %error.2.i, %do.end105.i ], [ %call16.i, %if.then15.i ], [ -3, %if.end13.i.out_unlock.i_crit_edge ]
  %call.i298.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i298.i, label %out_unlock.i.rcu_read_unlock.exit308.i_crit_edge, label %land.lhs.true.i301.i

out_unlock.i.rcu_read_unlock.exit308.i_crit_edge: ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit308.i

land.lhs.true.i301.i:                             ; preds = %out_unlock.i
  %call1.i299.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i299.i)
  %tobool.not.i300.i = icmp eq i32 %call1.i299.i, 0
  br i1 %tobool.not.i300.i, label %land.lhs.true.i301.i.rcu_read_unlock.exit308.i_crit_edge, label %land.lhs.true2.i303.i

land.lhs.true.i301.i.rcu_read_unlock.exit308.i_crit_edge: ; preds = %land.lhs.true.i301.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit308.i

land.lhs.true2.i303.i:                            ; preds = %land.lhs.true.i301.i
  %.b4.i302.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i302.i, label %land.lhs.true2.i303.i.rcu_read_unlock.exit308.i_crit_edge, label %if.then.i304.i

land.lhs.true2.i303.i.rcu_read_unlock.exit308.i_crit_edge: ; preds = %land.lhs.true2.i303.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit308.i

if.then.i304.i:                                   ; preds = %land.lhs.true2.i303.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit308.i

rcu_read_unlock.exit308.i:                        ; preds = %if.then.i304.i, %land.lhs.true2.i303.i.rcu_read_unlock.exit308.i_crit_edge, %land.lhs.true.i301.i.rcu_read_unlock.exit308.i_crit_edge, %out_unlock.i.rcu_read_unlock.exit308.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %57 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i305.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i305.i to ptr
  %preempt_count.i.i.i.i306.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i306.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i306.i, align 4
  %sub.i.i.i307.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i307.i, ptr %preempt_count.i.i.i.i306.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %__do_sys_setpriority.exit

__do_sys_setpriority.exit:                        ; preds = %rcu_read_unlock.exit308.i, %entry.__do_sys_setpriority.exit_crit_edge
  %error.7.i = phi i32 [ -22, %entry.__do_sys_setpriority.exit_crit_edge ], [ %error.6.i, %rcu_read_unlock.exit308.i ]
  ret i32 %error.7.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getpriority(i32 noundef %which, i32 noundef %who) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %which)
  %6 = icmp ugt i32 %which, 2
  br i1 %6, label %entry.__do_sys_getpriority.exit_crit_edge, label %if.end.i

entry.__do_sys_getpriority.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getpriority.exit

if.end.i:                                         ; preds = %entry
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %9 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %which, label %rcu_read_lock.exit.i.out_unlock.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb17.i
    i32 2, label %sw.bb109.i
  ]

rcu_read_lock.exit.i.out_unlock.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

sw.bb.i:                                          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool.not.i = icmp eq i32 %who, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call ptr @find_task_by_vpid(i32 noundef %who) #11
  br label %if.end8.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then4.i
  %p.0.i = phi ptr [ %call5.i, %if.then4.i ], [ %11, %if.else.i ]
  %tobool9.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool9.not.i, label %if.end8.i.out_unlock.i_crit_edge, label %if.then10.i

if.end8.i.out_unlock.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %static_prio.i.i = getelementptr inbounds %struct.task_struct, ptr %p.0.i, i32 0, i32 14
  %12 = ptrtoint ptr %static_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %static_prio.i.i, align 4
  %add.i.i = sub i32 140, %13
  %14 = tail call i32 @llvm.smax.i32(i32 %add.i.i, i32 -3) #11
  br label %out_unlock.i

sw.bb17.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool18.not.i = icmp eq i32 %who, 0
  br i1 %tobool18.not.i, label %if.else21.i, label %if.then19.i

if.then19.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call ptr @find_vpid(i32 noundef %who) #11
  br label %if.end25.i

if.else21.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 111
  %17 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 22, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else21.i, %if.then19.i
  %pgrp.0.i = phi ptr [ %call20.i, %if.then19.i ], [ %20, %if.else21.i ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  %cmp27.not.i = icmp eq ptr %pgrp.0.i, null
  br i1 %cmp27.not.i, label %if.end25.i.do.end108.i_crit_edge, label %do.body29.i

if.end25.i.do.end108.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108.i

do.body29.i:                                      ; preds = %if.end25.i
  %call30.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i, label %do.body29.i.do.end39.i_crit_edge

do.body29.i.do.end39.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i

land.lhs.true.i:                                  ; preds = %do.body29.i
  %call32.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i.do.end39.i_crit_edge, label %land.lhs.true34.i

land.lhs.true.i.do.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i

land.lhs.true34.i:                                ; preds = %land.lhs.true.i
  %.b287.i = load i1, ptr @__do_sys_getpriority.__warned.138, align 1
  br i1 %.b287.i, label %land.lhs.true34.i.do.end39.i_crit_edge, label %if.then36.i

land.lhs.true34.i.do.end39.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i

if.then36.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_getpriority.__warned.138, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 305, ptr noundef nonnull @.str.133) #11
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then36.i, %land.lhs.true34.i.do.end39.i_crit_edge, %land.lhs.true.i.do.end39.i_crit_edge, %do.body29.i.do.end39.i_crit_edge
  %arrayidx.i = getelementptr %struct.pid, ptr %pgrp.0.i, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool46.not.i = icmp eq ptr %22, null
  %add.ptr.i = getelementptr i8, ptr %22, i32 -1380
  %tobool48.not352356.i = icmp eq ptr %add.ptr.i, null
  %tobool48.not352.i = or i1 %tobool46.not.i, %tobool48.not352356.i
  br i1 %tobool48.not352.i, label %do.end39.i.do.end108.i_crit_edge, label %do.end39.i.for.body.i_crit_edge

do.end39.i.for.body.i_crit_edge:                  ; preds = %do.end39.i
  br label %for.body.i

do.end39.i.do.end108.i_crit_edge:                 ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %do.end39.i.for.body.i_crit_edge
  %p.1354.i = phi ptr [ %add.ptr101.i, %for.end.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end39.i.for.body.i_crit_edge ]
  %retval2.0353.i = phi i32 [ %retval2.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ -3, %do.end39.i.for.body.i_crit_edge ]
  %call50.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %for.body.i.do.end60.i_crit_edge

for.body.i.do.end60.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

land.lhs.true52.i:                                ; preds = %for.body.i
  %call53.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.end60.i_crit_edge, label %land.lhs.true55.i

land.lhs.true52.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

land.lhs.true55.i:                                ; preds = %land.lhs.true52.i
  %.b279286.i = load i1, ptr @__do_sys_getpriority.__warned.139, align 1
  br i1 %.b279286.i, label %land.lhs.true55.i.do.end60.i_crit_edge, label %if.then57.i

land.lhs.true55.i.do.end60.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i

if.then57.i:                                      ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_getpriority.__warned.139, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 305, ptr noundef nonnull @.str.133) #11
  br label %do.end60.i

do.end60.i:                                       ; preds = %if.then57.i, %land.lhs.true55.i.do.end60.i_crit_edge, %land.lhs.true52.i.do.end60.i_crit_edge, %for.body.i.do.end60.i_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.1354.i, i32 0, i32 111
  %23 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %thread_head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn285347.i = load volatile ptr, ptr %thread_head.i, align 4
  %cmp71.not348.i = icmp eq ptr %.pn285347.i, %thread_head.i
  br i1 %cmp71.not348.i, label %do.end60.i.for.end.i_crit_edge, label %do.end60.i.for.body72.i_crit_edge

do.end60.i.for.body72.i_crit_edge:                ; preds = %do.end60.i
  br label %for.body72.i

do.end60.i.for.end.i_crit_edge:                   ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body72.i:                                     ; preds = %for.body72.i.for.body72.i_crit_edge, %do.end60.i.for.body72.i_crit_edge
  %.pn285350.i = phi ptr [ %.pn285.i, %for.body72.i.for.body72.i_crit_edge ], [ %.pn285347.i, %do.end60.i.for.body72.i_crit_edge ]
  %retval2.1349.i = phi i32 [ %28, %for.body72.i.for.body72.i_crit_edge ], [ %retval2.0353.i, %do.end60.i.for.body72.i_crit_edge ]
  %static_prio.i303.i = getelementptr i8, ptr %.pn285350.i, i32 -1344
  %26 = ptrtoint ptr %static_prio.i303.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %static_prio.i303.i, align 4
  %add.i305.i = sub i32 140, %27
  %28 = tail call i32 @llvm.smax.i32(i32 %add.i305.i, i32 %retval2.1349.i) #11
  %29 = ptrtoint ptr %.pn285350.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn285.i = load volatile ptr, ptr %.pn285350.i, align 4
  %cmp71.not.i = icmp eq ptr %.pn285.i, %thread_head.i
  br i1 %cmp71.not.i, label %for.body72.i.for.end.i_crit_edge, label %for.body72.i.for.body72.i_crit_edge

for.body72.i.for.body72.i_crit_edge:              ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body72.i

for.body72.i.for.end.i_crit_edge:                 ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body72.i.for.end.i_crit_edge, %do.end60.i.for.end.i_crit_edge
  %retval2.1.lcssa.i = phi i32 [ %retval2.0353.i, %do.end60.i.for.end.i_crit_edge ], [ %28, %for.body72.i.for.end.i_crit_edge ]
  %arrayidx93.i = getelementptr %struct.task_struct, ptr %p.1354.i, i32 0, i32 79, i32 2
  %30 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx93.i, align 4
  %tobool97.not.i = icmp eq ptr %31, null
  %add.ptr101.i = getelementptr i8, ptr %31, i32 -1380
  %tobool48.not357.i = icmp eq ptr %add.ptr101.i, null
  %tobool48.not.i = or i1 %tobool97.not.i, %tobool48.not357.i
  br i1 %tobool48.not.i, label %for.end.i.do.end108.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.do.end108.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108.i

do.end108.i:                                      ; preds = %for.end.i.do.end108.i_crit_edge, %do.end39.i.do.end108.i_crit_edge, %if.end25.i.do.end108.i_crit_edge
  %retval2.3.i = phi i32 [ -3, %if.end25.i.do.end108.i_crit_edge ], [ -3, %do.end39.i.do.end108.i_crit_edge ], [ %retval2.1.lcssa.i, %for.end.i.do.end108.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  br label %out_unlock.i

sw.bb109.i:                                       ; preds = %rcu_read_lock.exit.i
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %32 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user_ns.i, align 4
  %call111.i = tail call i32 @make_kuid(ptr noundef %33, i32 noundef %who) #11
  %user112.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %34 = ptrtoint ptr %user112.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool113.not.i = icmp eq i32 %who, 0
  %uid115.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %uid115.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %uid.sroa.0.0.copyload.i = load i32, ptr %uid115.i, align 4
  br i1 %tobool113.not.i, label %sw.bb109.i.if.end128.i_crit_edge, label %if.else116.i

sw.bb109.i.if.end128.i_crit_edge:                 ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

if.else116.i:                                     ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call111.i, i32 %uid.sroa.0.0.copyload.i)
  %cmp.i.i = icmp eq i32 %call111.i, %uid.sroa.0.0.copyload.i
  br i1 %cmp.i.i, label %if.else116.i.if.end128.i_crit_edge, label %if.then121.i

if.else116.i.if.end128.i_crit_edge:               ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

if.then121.i:                                     ; preds = %if.else116.i
  %.fca.0.insert230.i = insertvalue [1 x i32] poison, i32 %call111.i, 0
  %call123.i = tail call ptr @find_user([1 x i32] %.fca.0.insert230.i) #11
  %tobool124.not.i = icmp eq ptr %call123.i, null
  br i1 %tobool124.not.i, label %if.then121.i.out_unlock.i_crit_edge, label %if.then121.i.if.end128.i_crit_edge

if.then121.i.if.end128.i_crit_edge:               ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

if.then121.i.out_unlock.i_crit_edge:              ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end128.i:                                      ; preds = %if.then121.i.if.end128.i_crit_edge, %if.else116.i.if.end128.i_crit_edge, %sw.bb109.i.if.end128.i_crit_edge
  %uid.sroa.0.0.i = phi i32 [ %call111.i, %if.else116.i.if.end128.i_crit_edge ], [ %call111.i, %if.then121.i.if.end128.i_crit_edge ], [ %uid.sroa.0.0.copyload.i, %sw.bb109.i.if.end128.i_crit_edge ]
  %user.0.i = phi ptr [ %35, %if.else116.i.if.end128.i_crit_edge ], [ %call123.i, %if.then121.i.if.end128.i_crit_edge ], [ %35, %sw.bb109.i.if.end128.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %37 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr138342.i = getelementptr i8, ptr %37, i32 -1136
  %cmp139.not343.i = icmp eq ptr %add.ptr138342.i, @init_task
  br i1 %cmp139.not343.i, label %if.end128.i.for.end211.i_crit_edge, label %if.end128.i.do.body141.i_crit_edge

if.end128.i.do.body141.i_crit_edge:               ; preds = %if.end128.i
  br label %do.body141.i

if.end128.i.for.end211.i_crit_edge:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end211.i

for.cond129.loopexit.i:                           ; preds = %for.inc200.i.for.cond129.loopexit.i_crit_edge, %do.end152.i.for.cond129.loopexit.i_crit_edge
  %retval2.5.lcssa.i = phi i32 [ %retval2.4344.i, %do.end152.i.for.cond129.loopexit.i_crit_edge ], [ %retval2.6.i, %for.inc200.i.for.cond129.loopexit.i_crit_edge ]
  %38 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %40, align 16
  %add.ptr138.i = getelementptr i8, ptr %39, i32 -1136
  %cmp139.not.i = icmp eq ptr %add.ptr138.i, @init_task
  br i1 %cmp139.not.i, label %for.cond129.loopexit.i.for.end211.i_crit_edge, label %for.cond129.loopexit.i.do.body141.i_crit_edge

for.cond129.loopexit.i.do.body141.i_crit_edge:    ; preds = %for.cond129.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body141.i

for.cond129.loopexit.i.for.end211.i_crit_edge:    ; preds = %for.cond129.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end211.i

do.body141.i:                                     ; preds = %for.cond129.loopexit.i.do.body141.i_crit_edge, %if.end128.i.do.body141.i_crit_edge
  %40 = phi ptr [ %39, %for.cond129.loopexit.i.do.body141.i_crit_edge ], [ %37, %if.end128.i.do.body141.i_crit_edge ]
  %retval2.4344.i = phi i32 [ %retval2.5.lcssa.i, %for.cond129.loopexit.i.do.body141.i_crit_edge ], [ -3, %if.end128.i.do.body141.i_crit_edge ]
  %call142.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %land.lhs.true144.i, label %do.body141.i.do.end152.i_crit_edge

do.body141.i.do.end152.i_crit_edge:               ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end152.i

land.lhs.true144.i:                               ; preds = %do.body141.i
  %call145.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  br i1 %tobool146.not.i, label %land.lhs.true144.i.do.end152.i_crit_edge, label %land.lhs.true147.i

land.lhs.true144.i.do.end152.i_crit_edge:         ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end152.i

land.lhs.true147.i:                               ; preds = %land.lhs.true144.i
  %.b280283.i = load i1, ptr @__do_sys_getpriority.__warned.140, align 1
  br i1 %.b280283.i, label %land.lhs.true147.i.do.end152.i_crit_edge, label %if.then149.i

land.lhs.true147.i.do.end152.i_crit_edge:         ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end152.i

if.then149.i:                                     ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_getpriority.__warned.140, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 322, ptr noundef nonnull @.str.133) #11
  br label %do.end152.i

do.end152.i:                                      ; preds = %if.then149.i, %land.lhs.true147.i.do.end152.i_crit_edge, %land.lhs.true144.i.do.end152.i_crit_edge, %do.body141.i.do.end152.i_crit_edge
  %signal158.i = getelementptr i8, ptr %40, i32 544
  %41 = ptrtoint ptr %signal158.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %signal158.i, align 16
  %thread_head159.i = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %thread_head159.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn335.i = load volatile ptr, ptr %thread_head159.i, align 4
  %cmp167.not338.i = icmp eq ptr %.pn335.i, %thread_head159.i
  br i1 %cmp167.not338.i, label %do.end152.i.for.cond129.loopexit.i_crit_edge, label %do.end152.i.for.body168.i_crit_edge

do.end152.i.for.body168.i_crit_edge:              ; preds = %do.end152.i
  br label %for.body168.i

do.end152.i.for.cond129.loopexit.i_crit_edge:     ; preds = %do.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond129.loopexit.i

for.body168.i:                                    ; preds = %for.inc200.i.for.body168.i_crit_edge, %do.end152.i.for.body168.i_crit_edge
  %.pn340.i = phi ptr [ %.pn.i, %for.inc200.i.for.body168.i_crit_edge ], [ %.pn335.i, %do.end152.i.for.body168.i_crit_edge ]
  %retval2.5339.i = phi i32 [ %retval2.6.i, %for.inc200.i.for.body168.i_crit_edge ], [ %retval2.4344.i, %do.end152.i.for.body168.i_crit_edge ]
  %p.3341.i = getelementptr i8, ptr %.pn340.i, i32 -1404
  %44 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i292.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i292.i to ptr
  %preempt_count.i.i.i.i293.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i293.i, align 4
  %add.i.i.i294.i = add i32 %47, 1
  store volatile i32 %add.i.i.i294.i, ptr %preempt_count.i.i.i.i293.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i295.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i295.i, label %for.body168.i.rcu_read_lock.exit302.i_crit_edge, label %land.lhs.true.i298.i

for.body168.i.rcu_read_lock.exit302.i_crit_edge:  ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit302.i

land.lhs.true.i298.i:                             ; preds = %for.body168.i
  %call1.i296.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i296.i)
  %tobool.not.i297.i = icmp eq i32 %call1.i296.i, 0
  br i1 %tobool.not.i297.i, label %land.lhs.true.i298.i.rcu_read_lock.exit302.i_crit_edge, label %land.lhs.true2.i300.i

land.lhs.true.i298.i.rcu_read_lock.exit302.i_crit_edge: ; preds = %land.lhs.true.i298.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit302.i

land.lhs.true2.i300.i:                            ; preds = %land.lhs.true.i298.i
  %.b4.i299.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i299.i, label %land.lhs.true2.i300.i.rcu_read_lock.exit302.i_crit_edge, label %if.then.i301.i

land.lhs.true2.i300.i.rcu_read_lock.exit302.i_crit_edge: ; preds = %land.lhs.true2.i300.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit302.i

if.then.i301.i:                                   ; preds = %land.lhs.true2.i300.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit302.i

rcu_read_lock.exit302.i:                          ; preds = %if.then.i301.i, %land.lhs.true2.i300.i.rcu_read_lock.exit302.i_crit_edge, %land.lhs.true.i298.i.rcu_read_lock.exit302.i_crit_edge, %for.body168.i.rcu_read_lock.exit302.i_crit_edge
  %real_cred.i = getelementptr i8, ptr %.pn340.i, i32 208
  %48 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %real_cred.i, align 4
  %call174.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %tobool175.not.i = icmp eq i32 %call174.i, 0
  br i1 %tobool175.not.i, label %land.lhs.true176.i, label %rcu_read_lock.exit302.i.do.end184.i_crit_edge

rcu_read_lock.exit302.i.do.end184.i_crit_edge:    ; preds = %rcu_read_lock.exit302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end184.i

land.lhs.true176.i:                               ; preds = %rcu_read_lock.exit302.i
  %call177.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i)
  %tobool178.not.i = icmp eq i32 %call177.i, 0
  br i1 %tobool178.not.i, label %land.lhs.true176.i.do.end184.i_crit_edge, label %land.lhs.true179.i

land.lhs.true176.i.do.end184.i_crit_edge:         ; preds = %land.lhs.true176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end184.i

land.lhs.true179.i:                               ; preds = %land.lhs.true176.i
  %.b281282.i = load i1, ptr @__do_sys_getpriority.__warned.141, align 1
  br i1 %.b281282.i, label %land.lhs.true179.i.do.end184.i_crit_edge, label %if.then181.i

land.lhs.true179.i.do.end184.i_crit_edge:         ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end184.i

if.then181.i:                                     ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__do_sys_getpriority.__warned.141, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 323, ptr noundef nonnull @.str.52) #11
  br label %do.end184.i

do.end184.i:                                      ; preds = %if.then181.i, %land.lhs.true179.i.do.end184.i_crit_edge, %land.lhs.true176.i.do.end184.i_crit_edge, %rcu_read_lock.exit302.i.do.end184.i_crit_edge
  %uid186.i = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %uid186.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid186.i, align 4
  %call.i306.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i306.i, label %do.end184.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i309.i

do.end184.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %do.end184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i309.i:                             ; preds = %do.end184.i
  %call1.i307.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i307.i)
  %tobool.not.i308.i = icmp eq i32 %call1.i307.i, 0
  br i1 %tobool.not.i308.i, label %land.lhs.true.i309.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i311.i

land.lhs.true.i309.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i309.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i311.i:                            ; preds = %land.lhs.true.i309.i
  %.b4.i310.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i310.i, label %land.lhs.true2.i311.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i312.i

land.lhs.true2.i311.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i311.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i312.i:                                   ; preds = %land.lhs.true2.i311.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i312.i, %land.lhs.true2.i311.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i309.i.rcu_read_unlock.exit.i_crit_edge, %do.end184.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %51 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i313.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i313.i to ptr
  %preempt_count.i.i.i.i314.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i314.i, align 4
  %sub.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i314.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %___val.sroa.0.0.copyload.i, i32 %uid.sroa.0.0.i)
  %cmp.i315.i = icmp eq i32 %___val.sroa.0.0.copyload.i, %uid.sroa.0.0.i
  br i1 %cmp.i315.i, label %land.lhs.true190.i, label %rcu_read_unlock.exit.i.for.inc200.i_crit_edge

rcu_read_unlock.exit.i.for.inc200.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

land.lhs.true190.i:                               ; preds = %rcu_read_unlock.exit.i
  %call.i316.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p.3341.i, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316.i)
  %tobool192.not.i = icmp eq i32 %call.i316.i, 0
  br i1 %tobool192.not.i, label %land.lhs.true190.i.for.inc200.i_crit_edge, label %if.then193.i

land.lhs.true190.i.for.inc200.i_crit_edge:        ; preds = %land.lhs.true190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

if.then193.i:                                     ; preds = %land.lhs.true190.i
  call void @__sanitizer_cov_trace_pc() #13
  %static_prio.i317.i = getelementptr i8, ptr %.pn340.i, i32 -1344
  %55 = ptrtoint ptr %static_prio.i317.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %static_prio.i317.i, align 4
  %add.i319.i = sub i32 140, %56
  %57 = tail call i32 @llvm.smax.i32(i32 %add.i319.i, i32 %retval2.5339.i) #11
  br label %for.inc200.i

for.inc200.i:                                     ; preds = %if.then193.i, %land.lhs.true190.i.for.inc200.i_crit_edge, %rcu_read_unlock.exit.i.for.inc200.i_crit_edge
  %retval2.6.i = phi i32 [ %retval2.5339.i, %land.lhs.true190.i.for.inc200.i_crit_edge ], [ %retval2.5339.i, %rcu_read_unlock.exit.i.for.inc200.i_crit_edge ], [ %57, %if.then193.i ]
  %58 = ptrtoint ptr %.pn340.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i = load volatile ptr, ptr %.pn340.i, align 4
  %59 = ptrtoint ptr %signal158.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %signal158.i, align 16
  %thread_head166.i = getelementptr inbounds %struct.signal_struct, ptr %60, i32 0, i32 3
  %cmp167.not.i = icmp eq ptr %.pn.i, %thread_head166.i
  br i1 %cmp167.not.i, label %for.inc200.i.for.cond129.loopexit.i_crit_edge, label %for.inc200.i.for.body168.i_crit_edge

for.inc200.i.for.body168.i_crit_edge:             ; preds = %for.inc200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body168.i

for.inc200.i.for.cond129.loopexit.i_crit_edge:    ; preds = %for.inc200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond129.loopexit.i

for.end211.i:                                     ; preds = %for.cond129.loopexit.i.for.end211.i_crit_edge, %if.end128.i.for.end211.i_crit_edge
  %retval2.4.lcssa.i = phi i32 [ -3, %if.end128.i.for.end211.i_crit_edge ], [ %retval2.5.lcssa.i, %for.cond129.loopexit.i.for.end211.i_crit_edge ]
  %61 = ptrtoint ptr %uid115.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack.i = load i32, ptr %uid115.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.sroa.0.0.i, i32 %.unpack.i)
  %cmp.i320.i = icmp eq i32 %uid.sroa.0.0.i, %.unpack.i
  br i1 %cmp.i320.i, label %for.end211.i.out_unlock.i_crit_edge, label %if.then216.i

for.end211.i.out_unlock.i_crit_edge:              ; preds = %for.end211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.then216.i:                                     ; preds = %for.end211.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_uid(ptr noundef %user.0.i) #11
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.then216.i, %for.end211.i.out_unlock.i_crit_edge, %if.then121.i.out_unlock.i_crit_edge, %do.end108.i, %if.then10.i, %if.end8.i.out_unlock.i_crit_edge, %rcu_read_lock.exit.i.out_unlock.i_crit_edge
  %retval2.7.i = phi i32 [ -3, %rcu_read_lock.exit.i.out_unlock.i_crit_edge ], [ %retval2.4.lcssa.i, %for.end211.i.out_unlock.i_crit_edge ], [ %retval2.4.lcssa.i, %if.then216.i ], [ -3, %if.then121.i.out_unlock.i_crit_edge ], [ %retval2.3.i, %do.end108.i ], [ -3, %if.end8.i.out_unlock.i_crit_edge ], [ %14, %if.then10.i ]
  %call.i321.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i321.i, label %out_unlock.i.rcu_read_unlock.exit331.i_crit_edge, label %land.lhs.true.i324.i

out_unlock.i.rcu_read_unlock.exit331.i_crit_edge: ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit331.i

land.lhs.true.i324.i:                             ; preds = %out_unlock.i
  %call1.i322.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i322.i)
  %tobool.not.i323.i = icmp eq i32 %call1.i322.i, 0
  br i1 %tobool.not.i323.i, label %land.lhs.true.i324.i.rcu_read_unlock.exit331.i_crit_edge, label %land.lhs.true2.i326.i

land.lhs.true.i324.i.rcu_read_unlock.exit331.i_crit_edge: ; preds = %land.lhs.true.i324.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit331.i

land.lhs.true2.i326.i:                            ; preds = %land.lhs.true.i324.i
  %.b4.i325.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i325.i, label %land.lhs.true2.i326.i.rcu_read_unlock.exit331.i_crit_edge, label %if.then.i327.i

land.lhs.true2.i326.i.rcu_read_unlock.exit331.i_crit_edge: ; preds = %land.lhs.true2.i326.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit331.i

if.then.i327.i:                                   ; preds = %land.lhs.true2.i326.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit331.i

rcu_read_unlock.exit331.i:                        ; preds = %if.then.i327.i, %land.lhs.true2.i326.i.rcu_read_unlock.exit331.i_crit_edge, %land.lhs.true.i324.i.rcu_read_unlock.exit331.i_crit_edge, %out_unlock.i.rcu_read_unlock.exit331.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %62 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i328.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i328.i to ptr
  %preempt_count.i.i.i.i329.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i329.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i329.i, align 4
  %sub.i.i.i330.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i330.i, ptr %preempt_count.i.i.i.i329.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %__do_sys_getpriority.exit

__do_sys_getpriority.exit:                        ; preds = %rcu_read_unlock.exit331.i, %entry.__do_sys_getpriority.exit_crit_edge
  %retval.0.i = phi i32 [ %retval2.7.i, %rcu_read_unlock.exit331.i ], [ -22, %entry.__do_sys_getpriority.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setregid(i32 noundef %rgid, i32 noundef %egid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %rgid) #11
  %call6 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %egid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rgid)
  %cmp.not = icmp eq i32 %rgid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i = icmp ne i32 %call4, -1
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %egid)
  %cmp10.not = icmp eq i32 %egid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i143 = icmp ne i32 %call6, -1
  %or.cond151 = select i1 %cmp10.not, i1 true, i1 %cmp.i143
  br i1 %or.cond151, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred25 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred25, align 16
  br i1 %cmp.not, label %if.end41, label %if.then27

if.then27:                                        ; preds = %do.end21
  %gid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack141 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack141, i32 %call4)
  %cmp.i144 = icmp eq i32 %.unpack141, %call4
  br i1 %cmp.i144, label %if.then27.if.end41.thread_crit_edge, label %lor.lhs.false

if.then27.if.end41.thread_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.thread

lor.lhs.false:                                    ; preds = %if.then27
  %egid31 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 9
  %13 = ptrtoint ptr %egid31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack142 = load i32, ptr %egid31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack142, i32 %call4)
  %cmp.i145 = icmp eq i32 %.unpack142, %call4
  br i1 %cmp.i145, label %lor.lhs.false.if.end41.thread_crit_edge, label %lor.lhs.false35

lor.lhs.false.if.end41.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.thread

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %user_ns36 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns36, align 4
  %call37 = tail call zeroext i1 @ns_capable_setid(ptr noundef %15, i32 noundef 6) #11
  br i1 %call37, label %lor.lhs.false35.if.end41.thread_crit_edge, label %lor.lhs.false35.error_crit_edge

lor.lhs.false35.error_crit_edge:                  ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false35.if.end41.thread_crit_edge:        ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.thread

if.end41:                                         ; preds = %do.end21
  br i1 %cmp10.not, label %if.end41.if.end76_crit_edge, label %if.end41.if.then43_crit_edge

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.end41.if.end76_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.end41.thread:                                  ; preds = %lor.lhs.false35.if.end41.thread_crit_edge, %lor.lhs.false.if.end41.thread_crit_edge, %if.then27.if.end41.thread_crit_edge
  %gid39 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 5
  %16 = ptrtoint ptr %gid39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4, ptr %gid39, align 4
  br i1 %cmp10.not, label %if.end41.thread.if.then73_crit_edge, label %if.end41.thread.if.then43_crit_edge

if.end41.thread.if.then43_crit_edge:              ; preds = %if.end41.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.end41.thread.if.then73_crit_edge:              ; preds = %if.end41.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.then43:                                        ; preds = %if.end41.thread.if.then43_crit_edge, %if.end41.if.then43_crit_edge
  %gid44 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %gid44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack138 = load i32, ptr %gid44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack138, i32 %call6)
  %cmp.i146 = icmp eq i32 %.unpack138, %call6
  br i1 %cmp.i146, label %if.then43.if.end64.thread_crit_edge, label %lor.lhs.false48

if.then43.if.end64.thread_crit_edge:              ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.thread

lor.lhs.false48:                                  ; preds = %if.then43
  %egid49 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 9
  %18 = ptrtoint ptr %egid49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack139 = load i32, ptr %egid49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack139, i32 %call6)
  %cmp.i147 = icmp eq i32 %.unpack139, %call6
  br i1 %cmp.i147, label %lor.lhs.false48.if.end64.thread_crit_edge, label %lor.lhs.false53

lor.lhs.false48.if.end64.thread_crit_edge:        ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.thread

lor.lhs.false53:                                  ; preds = %lor.lhs.false48
  %sgid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  %19 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack140 = load i32, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack140, i32 %call6)
  %cmp.i148 = icmp eq i32 %.unpack140, %call6
  br i1 %cmp.i148, label %lor.lhs.false53.if.end64.thread_crit_edge, label %lor.lhs.false57

lor.lhs.false53.if.end64.thread_crit_edge:        ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.thread

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %user_ns58 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %20 = ptrtoint ptr %user_ns58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns58, align 4
  %call59 = tail call zeroext i1 @ns_capable_setid(ptr noundef %21, i32 noundef 6) #11
  br i1 %call59, label %lor.lhs.false57.if.end64.thread_crit_edge, label %lor.lhs.false57.error_crit_edge

lor.lhs.false57.error_crit_edge:                  ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false57.if.end64.thread_crit_edge:        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.thread

if.end64.thread:                                  ; preds = %lor.lhs.false57.if.end64.thread_crit_edge, %lor.lhs.false53.if.end64.thread_crit_edge, %lor.lhs.false48.if.end64.thread_crit_edge, %if.then43.if.end64.thread_crit_edge
  %egid61 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 9
  %22 = ptrtoint ptr %egid61 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call6, ptr %egid61, align 4
  br i1 %cmp.not, label %land.lhs.true68, label %if.end64.thread.if.then73_crit_edge

if.end64.thread.if.then73_crit_edge:              ; preds = %if.end64.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

land.lhs.true68:                                  ; preds = %if.end64.thread
  %23 = ptrtoint ptr %gid44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %gid44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack)
  %cmp.i149 = icmp eq i32 %call6, %.unpack
  br i1 %cmp.i149, label %land.lhs.true68.if.end76_crit_edge, label %land.lhs.true68.if.then73_crit_edge

land.lhs.true68.if.then73_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

land.lhs.true68.if.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then73:                                        ; preds = %land.lhs.true68.if.then73_crit_edge, %if.end64.thread.if.then73_crit_edge, %if.end41.thread.if.then73_crit_edge
  %sgid74 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 7
  %egid75 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 9
  %24 = ptrtoint ptr %egid75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %egid75, align 4
  %26 = ptrtoint ptr %sgid74 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sgid74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %land.lhs.true68.if.end76_crit_edge, %if.end41.if.end76_crit_edge
  %fsgid = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 11
  %egid77 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 9
  %27 = ptrtoint ptr %egid77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %egid77, align 4
  %29 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fsgid, align 4
  %call78 = tail call i32 @security_task_fix_setgid(ptr noundef nonnull %call16, ptr noundef %11, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end76.error_crit_edge, label %if.end81

if.end76.error_crit_edge:                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %call82 = tail call i32 @commit_creds(ptr noundef nonnull %call16) #11
  br label %cleanup

error:                                            ; preds = %if.end76.error_crit_edge, %lor.lhs.false57.error_crit_edge, %lor.lhs.false35.error_crit_edge
  %retval2.0 = phi i32 [ %call78, %if.end76.error_crit_edge ], [ -1, %lor.lhs.false57.error_crit_edge ], [ -1, %lor.lhs.false35.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call16) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end81, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %error ], [ %call82, %if.end81 ], [ -12, %if.end15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_setid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_fix_setgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setregid(i32 noundef %rgid, i32 noundef %egid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setregid(i32 noundef %rgid, i32 noundef %egid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setgid(i32 noundef %gid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %gid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred16, align 16
  %user_ns17 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns17, align 4
  %call18 = tail call zeroext i1 @ns_capable_setid(ptr noundef %13, i32 noundef 6) #11
  br i1 %call18, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %gid20 = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 5
  %egid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 9
  %sgid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 7
  %fsgid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 11
  %14 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call4, ptr %fsgid, align 4
  %15 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4, ptr %sgid, align 4
  br label %if.end34

if.else:                                          ; preds = %do.end12
  %gid21 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %gid21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %gid21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack)
  %cmp.i66 = icmp eq i32 %call4, %.unpack
  br i1 %cmp.i66, label %if.else.if.then29_crit_edge, label %lor.lhs.false

if.else.if.then29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.else
  %sgid25 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  %17 = ptrtoint ptr %sgid25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack65 = load i32, ptr %sgid25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack65)
  %cmp.i67 = icmp eq i32 %call4, %.unpack65
  br i1 %cmp.i67, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.else.if.then29_crit_edge
  %egid30 = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 9
  %fsgid31 = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 11
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.then19
  %fsgid31.sink = phi ptr [ %fsgid31, %if.then29 ], [ %egid, %if.then19 ]
  %egid30.sink = phi ptr [ %egid30, %if.then29 ], [ %gid20, %if.then19 ]
  %18 = ptrtoint ptr %fsgid31.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call4, ptr %fsgid31.sink, align 4
  %19 = ptrtoint ptr %egid30.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4, ptr %egid30.sink, align 4
  %call35 = tail call i32 @security_task_fix_setgid(ptr noundef nonnull %call7, ptr noundef %11, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.end34.error_crit_edge, label %if.end37

if.end34.error_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end37:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 @commit_creds(ptr noundef nonnull %call7) #11
  br label %cleanup

error:                                            ; preds = %if.end34.error_crit_edge, %lor.lhs.false.error_crit_edge
  %retval2.0 = phi i32 [ %call35, %if.end34.error_crit_edge ], [ -1, %lor.lhs.false.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %error ], [ %call38, %if.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgid(i32 noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setgid(i32 noundef %gid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setreuid(i32 noundef %ruid, i32 noundef %euid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %ruid) #11
  %call6 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %euid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ruid)
  %cmp.not = icmp eq i32 %ruid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i = icmp ne i32 %call4, -1
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %euid)
  %cmp10.not = icmp eq i32 %euid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i166 = icmp ne i32 %call6, -1
  %or.cond180 = select i1 %cmp10.not, i1 true, i1 %cmp.i166
  br i1 %or.cond180, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred25 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred25, align 16
  br i1 %cmp.not, label %do.end21.if.end42_crit_edge, label %if.then27

do.end21.if.end42_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then27:                                        ; preds = %do.end21
  %uid = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call4, ptr %uid, align 4
  %uid28 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %uid28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack164 = load i32, ptr %uid28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack164, i32 %call4)
  %cmp.i167 = icmp eq i32 %.unpack164, %call4
  br i1 %cmp.i167, label %if.then27.if.end42_crit_edge, label %land.lhs.true32

if.then27.if.end42_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true32:                                  ; preds = %if.then27
  %euid33 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %euid33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack165 = load i32, ptr %euid33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack165, i32 %call4)
  %cmp.i168 = icmp eq i32 %.unpack165, %call4
  br i1 %cmp.i168, label %land.lhs.true32.if.end42_crit_edge, label %land.lhs.true37

land.lhs.true32.if.end42_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %user_ns38 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %15 = ptrtoint ptr %user_ns38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ns38, align 4
  %call39 = tail call zeroext i1 @ns_capable_setid(ptr noundef %16, i32 noundef 7) #11
  br i1 %call39, label %land.lhs.true37.if.end42_crit_edge, label %land.lhs.true37.error_crit_edge

land.lhs.true37.error_crit_edge:                  ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true37.if.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true37.if.end42_crit_edge, %land.lhs.true32.if.end42_crit_edge, %if.then27.if.end42_crit_edge, %do.end21.if.end42_crit_edge
  br i1 %cmp10.not, label %if.end42.if.end64_crit_edge, label %if.then44

if.end42.if.end64_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then44:                                        ; preds = %if.end42
  %euid45 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 8
  %17 = ptrtoint ptr %euid45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6, ptr %euid45, align 4
  %uid46 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %uid46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack161 = load i32, ptr %uid46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack161, i32 %call6)
  %cmp.i169 = icmp eq i32 %.unpack161, %call6
  br i1 %cmp.i169, label %if.then44.if.end64_crit_edge, label %land.lhs.true50

if.then44.if.end64_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true50:                                  ; preds = %if.then44
  %euid51 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 8
  %19 = ptrtoint ptr %euid51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack162 = load i32, ptr %euid51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack162, i32 %call6)
  %cmp.i170 = icmp eq i32 %.unpack162, %call6
  br i1 %cmp.i170, label %land.lhs.true50.if.end64_crit_edge, label %land.lhs.true55

land.lhs.true50.if.end64_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %suid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack163 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack163, i32 %call6)
  %cmp.i171 = icmp eq i32 %.unpack163, %call6
  br i1 %cmp.i171, label %land.lhs.true55.if.end64_crit_edge, label %land.lhs.true59

land.lhs.true55.if.end64_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %user_ns60 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %21 = ptrtoint ptr %user_ns60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %user_ns60, align 4
  %call61 = tail call zeroext i1 @ns_capable_setid(ptr noundef %22, i32 noundef 7) #11
  br i1 %call61, label %land.lhs.true59.if.end64_crit_edge, label %land.lhs.true59.error_crit_edge

land.lhs.true59.error_crit_edge:                  ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true59.if.end64_crit_edge, %land.lhs.true55.if.end64_crit_edge, %land.lhs.true50.if.end64_crit_edge, %if.then44.if.end64_crit_edge, %if.end42.if.end64_crit_edge
  %uid65 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 4
  %uid66 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %23 = ptrtoint ptr %uid65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %uid65, align 4
  %24 = ptrtoint ptr %uid66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack159 = load i32, ptr %uid66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack159)
  %cmp.i172 = icmp eq i32 %.unpack, %.unpack159
  br i1 %cmp.i172, label %if.end64.if.end75_crit_edge, label %if.then70

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then70:                                        ; preds = %if.end64
  %25 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call.i = tail call ptr @alloc_uid([1 x i32] %25) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then70.error_crit_edge, label %set_user.exit

if.then70.error_crit_edge:                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

set_user.exit:                                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %user.i = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 24
  %26 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user.i, align 4
  tail call void @free_uid(ptr noundef %27) #11
  %28 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %user.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %set_user.exit, %if.end64.if.end75_crit_edge
  br i1 %cmp.not, label %lor.lhs.false, label %if.end75.if.then83_crit_edge

if.end75.if.then83_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

lor.lhs.false:                                    ; preds = %if.end75
  br i1 %cmp10.not, label %lor.lhs.false.if.end86_crit_edge, label %land.lhs.true78

lor.lhs.false.if.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

land.lhs.true78:                                  ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %uid66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack160 = load i32, ptr %uid66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack160)
  %cmp.i173 = icmp eq i32 %call6, %.unpack160
  br i1 %cmp.i173, label %land.lhs.true78.if.end86_crit_edge, label %land.lhs.true78.if.then83_crit_edge

land.lhs.true78.if.then83_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

land.lhs.true78.if.end86_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then83:                                        ; preds = %land.lhs.true78.if.then83_crit_edge, %if.end75.if.then83_crit_edge
  %suid84 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 6
  %euid85 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 8
  %30 = ptrtoint ptr %euid85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %euid85, align 4
  %32 = ptrtoint ptr %suid84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %suid84, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %land.lhs.true78.if.end86_crit_edge, %lor.lhs.false.if.end86_crit_edge
  %fsuid = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 10
  %euid87 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 8
  %33 = ptrtoint ptr %euid87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %euid87, align 4
  %35 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fsuid, align 4
  %call88 = tail call i32 @security_task_fix_setuid(ptr noundef nonnull %call16, ptr noundef %11, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end86.error_crit_edge, label %if.end91

if.end86.error_crit_edge:                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end91:                                         ; preds = %if.end86
  %call92 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %call16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end91.error_crit_edge, label %if.end95

if.end91.error_crit_edge:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end95:                                         ; preds = %if.end91
  %ucounts.i = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 26
  %36 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ucounts.i, align 4
  %38 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 99
  %42 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cred.i, align 16
  %ucounts2.i = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 26
  %44 = ptrtoint ptr %ucounts2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ucounts2.i, align 4
  %cmp.i174 = icmp eq ptr %37, %45
  br i1 %cmp.i174, label %if.end95.flag_nproc_exceeded.exit_crit_edge, label %if.end.i175

if.end95.flag_nproc_exceeded.exit_crit_edge:      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %flag_nproc_exceeded.exit

if.end.i175:                                      ; preds = %if.end95
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 111
  %46 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %47, i32 0, i32 51, i32 6
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %call5.i = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %37, i32 noundef 12, i32 noundef %49) #11
  br i1 %call5.i, label %land.lhs.true.i, label %if.end.i175.if.else.i_crit_edge

if.end.i175.if.else.i_crit_edge:                  ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i175
  %user.i176 = getelementptr inbounds %struct.cred, ptr %call16, i32 0, i32 24
  %50 = ptrtoint ptr %user.i176 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user.i176, align 4
  %cmp6.not.i = icmp eq ptr %51, @root_user
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %55, 4096
  store i32 %or.i, ptr %flags.i, align 4
  br label %flag_nproc_exceeded.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i175.if.else.i_crit_edge
  %56 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i, align 8
  %flags12.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags12.i, align 4
  %and.i177 = and i32 %59, -4097
  store i32 %and.i177, ptr %flags12.i, align 4
  br label %flag_nproc_exceeded.exit

flag_nproc_exceeded.exit:                         ; preds = %if.else.i, %if.then7.i, %if.end95.flag_nproc_exceeded.exit_crit_edge
  %call96 = tail call i32 @commit_creds(ptr noundef nonnull %call16) #11
  br label %cleanup

error:                                            ; preds = %if.end91.error_crit_edge, %if.end86.error_crit_edge, %if.then70.error_crit_edge, %land.lhs.true59.error_crit_edge, %land.lhs.true37.error_crit_edge
  %retval2.0 = phi i32 [ %call88, %if.end86.error_crit_edge ], [ %call92, %if.end91.error_crit_edge ], [ -1, %land.lhs.true59.error_crit_edge ], [ -1, %land.lhs.true37.error_crit_edge ], [ -11, %if.then70.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call16) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %flag_nproc_exceeded.exit, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %error ], [ %call96, %flag_nproc_exceeded.exit ], [ -12, %if.end15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_fix_setuid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setreuid(i32 noundef %ruid, i32 noundef %euid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setreuid(i32 noundef %ruid, i32 noundef %euid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setuid(i32 noundef %uid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %uid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end12:                                         ; preds = %if.end
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred16, align 16
  %user_ns17 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns17, align 4
  %call18 = tail call zeroext i1 @ns_capable_setid(ptr noundef %13, i32 noundef 7) #11
  br i1 %call18, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.end12
  %suid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 6
  %uid20 = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 4
  %14 = ptrtoint ptr %uid20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call4, ptr %uid20, align 4
  %15 = ptrtoint ptr %suid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4, ptr %suid, align 4
  %uid21 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %uid21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack85 = load i32, ptr %uid21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack85)
  %cmp.i86 = icmp eq i32 %call4, %.unpack85
  br i1 %cmp.i86, label %if.then19.if.end40_crit_edge, label %if.then25

if.then19.if.end40_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then25:                                        ; preds = %if.then19
  %17 = insertvalue [1 x i32] undef, i32 %call4, 0
  %call.i = tail call ptr @alloc_uid([1 x i32] %17) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then25.error_crit_edge, label %set_user.exit

if.then25.error_crit_edge:                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

set_user.exit:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %user.i = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 24
  %18 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user.i, align 4
  tail call void @free_uid(ptr noundef %19) #11
  %20 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %user.i, align 4
  br label %if.end40

if.else:                                          ; preds = %do.end12
  %uid30 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %uid30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %uid30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack)
  %cmp.i87 = icmp eq i32 %call4, %.unpack
  br i1 %cmp.i87, label %if.else.if.end40_crit_edge, label %land.lhs.true

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %if.else
  %suid34 = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 6
  %22 = ptrtoint ptr %suid34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack84 = load i32, ptr %suid34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack84)
  %cmp.i88 = icmp eq i32 %call4, %.unpack84
  br i1 %cmp.i88, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true.error_crit_edge

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.else.if.end40_crit_edge, %set_user.exit, %if.then19.if.end40_crit_edge
  %fsuid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 10
  %euid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 8
  %23 = ptrtoint ptr %euid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call4, ptr %euid, align 4
  %24 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call4, ptr %fsuid, align 4
  %call41 = tail call i32 @security_task_fix_setuid(ptr noundef nonnull %call7, ptr noundef %11, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.error_crit_edge, label %if.end44

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %call7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.error_crit_edge, label %if.end48

if.end44.error_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end48:                                         ; preds = %if.end44
  %ucounts.i = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 26
  %25 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ucounts.i, align 4
  %27 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 99
  %31 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cred.i, align 16
  %ucounts2.i = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 26
  %33 = ptrtoint ptr %ucounts2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ucounts2.i, align 4
  %cmp.i89 = icmp eq ptr %26, %34
  br i1 %cmp.i89, label %if.end48.flag_nproc_exceeded.exit_crit_edge, label %if.end.i90

if.end48.flag_nproc_exceeded.exit_crit_edge:      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %flag_nproc_exceeded.exit

if.end.i90:                                       ; preds = %if.end48
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 111
  %35 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %36, i32 0, i32 51, i32 6
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %call5.i = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %26, i32 noundef 12, i32 noundef %38) #11
  br i1 %call5.i, label %land.lhs.true.i, label %if.end.i90.if.else.i_crit_edge

if.end.i90.if.else.i_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i90
  %user.i91 = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 24
  %39 = ptrtoint ptr %user.i91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user.i91, align 4
  %cmp6.not.i = icmp eq ptr %40, @root_user
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %44, 4096
  store i32 %or.i, ptr %flags.i, align 4
  br label %flag_nproc_exceeded.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i90.if.else.i_crit_edge
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %flags12.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags12.i, align 4
  %and.i92 = and i32 %48, -4097
  store i32 %and.i92, ptr %flags12.i, align 4
  br label %flag_nproc_exceeded.exit

flag_nproc_exceeded.exit:                         ; preds = %if.else.i, %if.then7.i, %if.end48.flag_nproc_exceeded.exit_crit_edge
  %call49 = tail call i32 @commit_creds(ptr noundef nonnull %call7) #11
  br label %cleanup

error:                                            ; preds = %if.end44.error_crit_edge, %if.end40.error_crit_edge, %land.lhs.true.error_crit_edge, %if.then25.error_crit_edge
  %retval2.0 = phi i32 [ %call41, %if.end40.error_crit_edge ], [ %call45, %if.end44.error_crit_edge ], [ -1, %land.lhs.true.error_crit_edge ], [ -11, %if.then25.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %flag_nproc_exceeded.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %error ], [ %call49, %flag_nproc_exceeded.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setuid(i32 noundef %uid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setuid(i32 noundef %uid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setresuid(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %ruid) #11
  %call6 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %euid) #11
  %call9 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %suid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ruid)
  %cmp.not = icmp eq i32 %ruid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i = icmp ne i32 %call4, -1
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %euid)
  %cmp13.not = icmp eq i32 %euid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i217 = icmp ne i32 %call6, -1
  %or.cond235 = select i1 %cmp13.not, i1 true, i1 %cmp.i217
  br i1 %or.cond235, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %suid)
  %cmp19.not = icmp eq i32 %suid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp.i218 = icmp ne i32 %call9, -1
  %or.cond236 = select i1 %cmp19.not, i1 true, i1 %cmp.i218
  br i1 %or.cond236, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call25 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %if.end24.cleanup_crit_edge, label %do.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred34 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred34, align 16
  %user_ns35 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns35, align 4
  %call36 = tail call zeroext i1 @ns_capable_setid(ptr noundef %13, i32 noundef 7) #11
  br i1 %call36, label %do.end30.if.end91_crit_edge, label %if.then37

do.end30.if.end91_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then37:                                        ; preds = %do.end30
  br i1 %cmp.not, label %if.then37.if.end54_crit_edge, label %land.lhs.true39

if.then37.if.end54_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true39:                                  ; preds = %if.then37
  %uid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack214 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack214)
  %cmp.i219 = icmp eq i32 %call4, %.unpack214
  br i1 %cmp.i219, label %land.lhs.true39.if.end54_crit_edge, label %land.lhs.true43

land.lhs.true39.if.end54_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %euid44 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 8
  %15 = ptrtoint ptr %euid44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack215 = load i32, ptr %euid44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack215)
  %cmp.i220 = icmp eq i32 %call4, %.unpack215
  br i1 %cmp.i220, label %land.lhs.true43.if.end54_crit_edge, label %land.lhs.true48

land.lhs.true43.if.end54_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %suid49 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %suid49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack216 = load i32, ptr %suid49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack216)
  %cmp.i221 = icmp eq i32 %call4, %.unpack216
  br i1 %cmp.i221, label %land.lhs.true48.if.end54_crit_edge, label %land.lhs.true48.error_crit_edge

land.lhs.true48.error_crit_edge:                  ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true48.if.end54_crit_edge, %land.lhs.true43.if.end54_crit_edge, %land.lhs.true39.if.end54_crit_edge, %if.then37.if.end54_crit_edge
  br i1 %cmp13.not, label %if.end54.if.end72_crit_edge, label %land.lhs.true56

if.end54.if.end72_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true56:                                  ; preds = %if.end54
  %uid57 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %uid57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack211 = load i32, ptr %uid57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack211)
  %cmp.i222 = icmp eq i32 %call6, %.unpack211
  br i1 %cmp.i222, label %land.lhs.true56.if.end72_crit_edge, label %land.lhs.true61

land.lhs.true56.if.end72_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %euid62 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %euid62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack212 = load i32, ptr %euid62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack212)
  %cmp.i223 = icmp eq i32 %call6, %.unpack212
  br i1 %cmp.i223, label %land.lhs.true61.if.end72_crit_edge, label %land.lhs.true66

land.lhs.true61.if.end72_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %suid67 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %suid67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack213 = load i32, ptr %suid67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack213)
  %cmp.i224 = icmp eq i32 %call6, %.unpack213
  br i1 %cmp.i224, label %land.lhs.true66.if.end72_crit_edge, label %land.lhs.true66.error_crit_edge

land.lhs.true66.error_crit_edge:                  ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true66.if.end72_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true66.if.end72_crit_edge, %land.lhs.true61.if.end72_crit_edge, %land.lhs.true56.if.end72_crit_edge, %if.end54.if.end72_crit_edge
  br i1 %cmp19.not, label %if.end72.if.end91_crit_edge, label %land.lhs.true74

if.end72.if.end91_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.lhs.true74:                                  ; preds = %if.end72
  %uid75 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %uid75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack208 = load i32, ptr %uid75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %.unpack208)
  %cmp.i225 = icmp eq i32 %call9, %.unpack208
  br i1 %cmp.i225, label %land.lhs.true74.if.end91_crit_edge, label %land.lhs.true79

land.lhs.true74.if.end91_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.lhs.true79:                                  ; preds = %land.lhs.true74
  %euid80 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 8
  %21 = ptrtoint ptr %euid80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack209 = load i32, ptr %euid80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %.unpack209)
  %cmp.i226 = icmp eq i32 %call9, %.unpack209
  br i1 %cmp.i226, label %land.lhs.true79.if.end91_crit_edge, label %land.lhs.true84

land.lhs.true79.if.end91_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.lhs.true84:                                  ; preds = %land.lhs.true79
  %suid85 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %suid85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack210 = load i32, ptr %suid85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %.unpack210)
  %cmp.i227 = icmp eq i32 %call9, %.unpack210
  br i1 %cmp.i227, label %land.lhs.true84.if.end91_crit_edge, label %land.lhs.true84.error_crit_edge

land.lhs.true84.error_crit_edge:                  ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true84.if.end91_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true84.if.end91_crit_edge, %land.lhs.true79.if.end91_crit_edge, %land.lhs.true74.if.end91_crit_edge, %if.end72.if.end91_crit_edge, %do.end30.if.end91_crit_edge
  br i1 %cmp.not, label %if.end91.if.end105_crit_edge, label %if.then93

if.end91.if.end105_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then93:                                        ; preds = %if.end91
  %uid94 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 4
  %23 = ptrtoint ptr %uid94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call4, ptr %uid94, align 4
  %uid95 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %uid95 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack = load i32, ptr %uid95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack)
  %cmp.i228 = icmp eq i32 %call4, %.unpack
  br i1 %cmp.i228, label %if.then93.if.end105_crit_edge, label %if.then99

if.then93.if.end105_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then99:                                        ; preds = %if.then93
  %25 = insertvalue [1 x i32] undef, i32 %call4, 0
  %call.i = tail call ptr @alloc_uid([1 x i32] %25) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then99.error_crit_edge, label %set_user.exit

if.then99.error_crit_edge:                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

set_user.exit:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  %user.i = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 24
  %26 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user.i, align 4
  tail call void @free_uid(ptr noundef %27) #11
  %28 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %user.i, align 4
  br label %if.end105

if.end105:                                        ; preds = %set_user.exit, %if.then93.if.end105_crit_edge, %if.end91.if.end105_crit_edge
  br i1 %cmp13.not, label %if.end105.if.end109_crit_edge, label %if.then107

if.end105.if.end109_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %euid108 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 8
  %29 = ptrtoint ptr %euid108 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call6, ptr %euid108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end105.if.end109_crit_edge
  br i1 %cmp19.not, label %if.end109.if.end113_crit_edge, label %if.then111

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %suid112 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 6
  %30 = ptrtoint ptr %suid112 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call9, ptr %suid112, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end109.if.end113_crit_edge
  %fsuid = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 10
  %euid114 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 8
  %31 = ptrtoint ptr %euid114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %euid114, align 4
  %33 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %fsuid, align 4
  %call115 = tail call i32 @security_task_fix_setuid(ptr noundef nonnull %call25, ptr noundef %11, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end113.error_crit_edge, label %if.end118

if.end113.error_crit_edge:                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end118:                                        ; preds = %if.end113
  %call119 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %call25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end118.error_crit_edge, label %if.end122

if.end118.error_crit_edge:                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end122:                                        ; preds = %if.end118
  %ucounts.i = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 26
  %34 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ucounts.i, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 99
  %40 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred.i, align 16
  %ucounts2.i = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %ucounts2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ucounts2.i, align 4
  %cmp.i229 = icmp eq ptr %35, %43
  br i1 %cmp.i229, label %if.end122.flag_nproc_exceeded.exit_crit_edge, label %if.end.i230

if.end122.flag_nproc_exceeded.exit_crit_edge:     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %flag_nproc_exceeded.exit

if.end.i230:                                      ; preds = %if.end122
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 111
  %44 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %45, i32 0, i32 51, i32 6
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %call5.i = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %35, i32 noundef 12, i32 noundef %47) #11
  br i1 %call5.i, label %land.lhs.true.i, label %if.end.i230.if.else.i_crit_edge

if.end.i230.if.else.i_crit_edge:                  ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i230
  %user.i231 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 24
  %48 = ptrtoint ptr %user.i231 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %user.i231, align 4
  %cmp6.not.i = icmp eq ptr %49, @root_user
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %53, 4096
  store i32 %or.i, ptr %flags.i, align 4
  br label %flag_nproc_exceeded.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i230.if.else.i_crit_edge
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %flags12.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags12.i, align 4
  %and.i232 = and i32 %57, -4097
  store i32 %and.i232, ptr %flags12.i, align 4
  br label %flag_nproc_exceeded.exit

flag_nproc_exceeded.exit:                         ; preds = %if.else.i, %if.then7.i, %if.end122.flag_nproc_exceeded.exit_crit_edge
  %call123 = tail call i32 @commit_creds(ptr noundef nonnull %call25) #11
  br label %cleanup

error:                                            ; preds = %if.end118.error_crit_edge, %if.end113.error_crit_edge, %if.then99.error_crit_edge, %land.lhs.true84.error_crit_edge, %land.lhs.true66.error_crit_edge, %land.lhs.true48.error_crit_edge
  %retval2.0 = phi i32 [ %call115, %if.end113.error_crit_edge ], [ %call119, %if.end118.error_crit_edge ], [ -1, %land.lhs.true84.error_crit_edge ], [ -1, %land.lhs.true66.error_crit_edge ], [ -1, %land.lhs.true48.error_crit_edge ], [ -11, %if.then99.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %flag_nproc_exceeded.exit, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %error ], [ %call123, %flag_nproc_exceeded.exit ], [ -12, %if.end24.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresuid(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setresuid(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresuid(i32 noundef %ruidp, i32 noundef %euidp, i32 noundef %suidp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ruidp to ptr
  %1 = inttoptr i32 %suidp to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i73.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i73.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred1.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i, align 4
  %uid.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call3.i = tail call i32 @from_kuid_munged(ptr noundef %9, [1 x i32] %11) #11
  %12 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i, align 4
  %euid5.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %euid5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack63.i = load i32, ptr %euid5.i, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack63.i, 0
  %call7.i = tail call i32 @from_kuid_munged(ptr noundef %13, [1 x i32] %15) #11
  %16 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns.i, align 4
  %suid9.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %suid9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack64.i = load i32, ptr %suid9.i, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack64.i, 0
  %call11.i = tail call i32 @from_kuid_munged(ptr noundef %17, [1 x i32] %19) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 738) #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !630
  %and.i.i = and i32 %22, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call3.i, i32 -1226833921) #11, !srcloc !633
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__do_sys_getresuid.exit_crit_edge

entry.__do_sys_getresuid.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getresuid.exit

if.then.i:                                        ; preds = %entry
  %24 = inttoptr i32 %euidp to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 740) #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i65.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i65.i to ptr
  %cpu_domain.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66.i) #3, !srcloc !630
  %and.i67.i = and i32 %27, -13
  %or.i68.i = or i32 %and.i67.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %24, i32 %call7.i, i32 -1226833921) #11, !srcloc !634
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool33.not.i = icmp eq i32 %28, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.then.i.__do_sys_getresuid.exit_crit_edge

if.then.i.__do_sys_getresuid.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getresuid.exit

if.then34.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 742) #11
  %29 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i69.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i69.i to ptr
  %cpu_domain.i.i70.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i70.i) #3, !srcloc !630
  %and.i71.i = and i32 %31, -13
  %or.i72.i = or i32 %and.i71.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i72.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %call11.i, i32 -1226833921) #11, !srcloc !635
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %__do_sys_getresuid.exit

__do_sys_getresuid.exit:                          ; preds = %if.then34.i, %if.then.i.__do_sys_getresuid.exit_crit_edge, %entry.__do_sys_getresuid.exit_crit_edge
  %retval.0.i = phi i32 [ %32, %if.then34.i ], [ %23, %entry.__do_sys_getresuid.exit_crit_edge ], [ %28, %if.then.i.__do_sys_getresuid.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setresgid(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %rgid) #11
  %call6 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %egid) #11
  %call9 = tail call i32 @make_kgid(ptr noundef %7, i32 noundef %sgid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rgid)
  %cmp.not = icmp eq i32 %rgid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i = icmp ne i32 %call4, -1
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %egid)
  %cmp13.not = icmp eq i32 %egid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i192 = icmp ne i32 %call6, -1
  %or.cond203 = select i1 %cmp13.not, i1 true, i1 %cmp.i192
  br i1 %or.cond203, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sgid)
  %cmp19.not = icmp eq i32 %sgid, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp.i193 = icmp ne i32 %call9, -1
  %or.cond204 = select i1 %cmp19.not, i1 true, i1 %cmp.i193
  br i1 %or.cond204, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call25 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %if.end24.cleanup_crit_edge, label %do.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred34 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred34, align 16
  %user_ns35 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns35, align 4
  %call36 = tail call zeroext i1 @ns_capable_setid(ptr noundef %13, i32 noundef 6) #11
  br i1 %call36, label %do.end30.if.end91_crit_edge, label %if.then37

do.end30.if.end91_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then37:                                        ; preds = %do.end30
  br i1 %cmp.not, label %if.then37.if.end54_crit_edge, label %land.lhs.true39

if.then37.if.end54_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true39:                                  ; preds = %if.then37
  %gid = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack189 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack189)
  %cmp.i194 = icmp eq i32 %call4, %.unpack189
  br i1 %cmp.i194, label %land.lhs.true39.if.end54_crit_edge, label %land.lhs.true43

land.lhs.true39.if.end54_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %egid44 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 9
  %15 = ptrtoint ptr %egid44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack190 = load i32, ptr %egid44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack190)
  %cmp.i195 = icmp eq i32 %call4, %.unpack190
  br i1 %cmp.i195, label %land.lhs.true43.if.end54_crit_edge, label %land.lhs.true48

land.lhs.true43.if.end54_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %sgid49 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %sgid49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack191 = load i32, ptr %sgid49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack191)
  %cmp.i196 = icmp eq i32 %call4, %.unpack191
  br i1 %cmp.i196, label %land.lhs.true48.if.end54_crit_edge, label %land.lhs.true48.error_crit_edge

land.lhs.true48.error_crit_edge:                  ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true48.if.end54_crit_edge, %land.lhs.true43.if.end54_crit_edge, %land.lhs.true39.if.end54_crit_edge, %if.then37.if.end54_crit_edge
  br i1 %cmp13.not, label %if.end54.if.end72_crit_edge, label %land.lhs.true56

if.end54.if.end72_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true56:                                  ; preds = %if.end54
  %gid57 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %gid57 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack186 = load i32, ptr %gid57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack186)
  %cmp.i197 = icmp eq i32 %call6, %.unpack186
  br i1 %cmp.i197, label %land.lhs.true56.if.end72_crit_edge, label %land.lhs.true61

land.lhs.true56.if.end72_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %egid62 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 9
  %18 = ptrtoint ptr %egid62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack187 = load i32, ptr %egid62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack187)
  %cmp.i198 = icmp eq i32 %call6, %.unpack187
  br i1 %cmp.i198, label %land.lhs.true61.if.end72_crit_edge, label %land.lhs.true66

land.lhs.true61.if.end72_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %sgid67 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  %19 = ptrtoint ptr %sgid67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack188 = load i32, ptr %sgid67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %.unpack188)
  %cmp.i199 = icmp eq i32 %call6, %.unpack188
  br i1 %cmp.i199, label %land.lhs.true66.if.end72_crit_edge, label %land.lhs.true66.error_crit_edge

land.lhs.true66.error_crit_edge:                  ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true66.if.end72_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true66.if.end72_crit_edge, %land.lhs.true61.if.end72_crit_edge, %land.lhs.true56.if.end72_crit_edge, %if.end54.if.end72_crit_edge
  br i1 %cmp19.not, label %if.end72.if.end91_crit_edge, label %land.lhs.true74

if.end72.if.end91_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.lhs.true74:                                  ; preds = %if.end72
  %gid75 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %gid75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %gid75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %.unpack)
  %cmp.i200 = icmp eq i32 %call9, %.unpack
  br i1 %cmp.i200, label %land.lhs.true74.if.end91_crit_edge, label %land.lhs.true79

land.lhs.true74.if.end91_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.lhs.true79:                                  ; preds = %land.lhs.true74
  %egid80 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 9
  %21 = ptrtoint ptr %egid80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack184 = load i32, ptr %egid80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %.unpack184)
  %cmp.i201 = icmp eq i32 %call9, %.unpack184
  br i1 %cmp.i201, label %land.lhs.true79.if.end91_crit_edge, label %land.lhs.true84

land.lhs.true79.if.end91_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.lhs.true84:                                  ; preds = %land.lhs.true79
  %sgid85 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 7
  %22 = ptrtoint ptr %sgid85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack185 = load i32, ptr %sgid85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %.unpack185)
  %cmp.i202 = icmp eq i32 %call9, %.unpack185
  br i1 %cmp.i202, label %land.lhs.true84.if.end91_crit_edge, label %land.lhs.true84.error_crit_edge

land.lhs.true84.error_crit_edge:                  ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true84.if.end91_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true84.if.end91_crit_edge, %land.lhs.true79.if.end91_crit_edge, %land.lhs.true74.if.end91_crit_edge, %if.end72.if.end91_crit_edge, %do.end30.if.end91_crit_edge
  br i1 %cmp.not, label %if.end91.if.end95_crit_edge, label %if.then93

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %gid94 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 5
  %23 = ptrtoint ptr %gid94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call4, ptr %gid94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91.if.end95_crit_edge
  br i1 %cmp13.not, label %if.end95.if.end99_crit_edge, label %if.then97

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %egid98 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 9
  %24 = ptrtoint ptr %egid98 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call6, ptr %egid98, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end95.if.end99_crit_edge
  br i1 %cmp19.not, label %if.end99.if.end103_crit_edge, label %if.then101

if.end99.if.end103_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %sgid102 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 7
  %25 = ptrtoint ptr %sgid102 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call9, ptr %sgid102, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end99.if.end103_crit_edge
  %fsgid = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 11
  %egid104 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 9
  %26 = ptrtoint ptr %egid104 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %egid104, align 4
  %28 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fsgid, align 4
  %call105 = tail call i32 @security_task_fix_setgid(ptr noundef nonnull %call25, ptr noundef %11, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end103.error_crit_edge, label %if.end108

if.end103.error_crit_edge:                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end108:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = tail call i32 @commit_creds(ptr noundef nonnull %call25) #11
  br label %cleanup

error:                                            ; preds = %if.end103.error_crit_edge, %land.lhs.true84.error_crit_edge, %land.lhs.true66.error_crit_edge, %land.lhs.true48.error_crit_edge
  %retval2.0 = phi i32 [ %call105, %if.end103.error_crit_edge ], [ -1, %land.lhs.true84.error_crit_edge ], [ -1, %land.lhs.true66.error_crit_edge ], [ -1, %land.lhs.true48.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call25) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end108, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0, %error ], [ %call109, %if.end108 ], [ -12, %if.end24.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresgid(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setresgid(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresgid(i32 noundef %rgidp, i32 noundef %egidp, i32 noundef %sgidp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rgidp to ptr
  %1 = inttoptr i32 %sgidp to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i69.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i69.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred1.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i, align 4
  %gid.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i = load i32, ptr %gid.i, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call3.i = tail call i32 @from_kgid_munged(ptr noundef %9, [1 x i32] %11) #11
  %12 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i, align 4
  %egid5.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %egid5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack59.i = load i32, ptr %egid5.i, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack59.i, 0
  %call7.i = tail call i32 @from_kgid_munged(ptr noundef %13, [1 x i32] %15) #11
  %16 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns.i, align 4
  %sgid9.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %sgid9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack60.i = load i32, ptr %sgid9.i, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack60.i, 0
  %call11.i = tail call i32 @from_kgid_munged(ptr noundef %17, [1 x i32] %19) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 821) #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !630
  %and.i.i = and i32 %22, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call3.i, i32 -1226833921) #11, !srcloc !636
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__do_sys_getresgid.exit_crit_edge

entry.__do_sys_getresgid.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getresgid.exit

if.then.i:                                        ; preds = %entry
  %24 = inttoptr i32 %egidp to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 823) #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i61.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i61.i to ptr
  %cpu_domain.i.i62.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i62.i) #3, !srcloc !630
  %and.i63.i = and i32 %27, -13
  %or.i64.i = or i32 %and.i63.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i64.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %24, i32 %call7.i, i32 -1226833921) #11, !srcloc !637
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool33.not.i = icmp eq i32 %28, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.then.i.__do_sys_getresgid.exit_crit_edge

if.then.i.__do_sys_getresgid.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getresgid.exit

if.then34.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 825) #11
  %29 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i65.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i65.i to ptr
  %cpu_domain.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66.i) #3, !srcloc !630
  %and.i67.i = and i32 %31, -13
  %or.i68.i = or i32 %and.i67.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %call11.i, i32 -1226833921) #11, !srcloc !638
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %__do_sys_getresgid.exit

__do_sys_getresgid.exit:                          ; preds = %if.then34.i, %if.then.i.__do_sys_getresgid.exit_crit_edge, %entry.__do_sys_getresgid.exit_crit_edge
  %retval2.0.i = phi i32 [ %23, %entry.__do_sys_getresgid.exit_crit_edge ], [ %28, %if.then.i.__do_sys_getresgid.exit_crit_edge ], [ %32, %if.then34.i ]
  ret i32 %retval2.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setfsuid(i32 noundef %uid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %fsuid, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %9) #11
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kuid(ptr noundef %11, i32 noundef %uid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %uid11 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %uid11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack82 = load i32, ptr %uid11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack82)
  %cmp.i87 = icmp eq i32 %call4, %.unpack82
  br i1 %cmp.i87, label %if.end10.if.then30_crit_edge, label %lor.lhs.false

if.end10.if.then30_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end10
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack83 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack83)
  %cmp.i88 = icmp eq i32 %call4, %.unpack83
  br i1 %cmp.i88, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false18

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %suid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack84 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack84)
  %cmp.i89 = icmp eq i32 %call4, %.unpack84
  br i1 %cmp.i89, label %lor.lhs.false18.if.then30_crit_edge, label %lor.lhs.false22

lor.lhs.false18.if.then30_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %15 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack85 = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack85)
  %cmp.i90 = icmp eq i32 %call4, %.unpack85
  br i1 %cmp.i90, label %lor.lhs.false22.if.then30_crit_edge, label %lor.lhs.false27

lor.lhs.false22.if.then30_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false27:                                  ; preds = %lor.lhs.false22
  %16 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns, align 4
  %call29 = tail call zeroext i1 @ns_capable_setid(ptr noundef %17, i32 noundef 7) #11
  br i1 %call29, label %lor.lhs.false27.if.then30_crit_edge, label %lor.lhs.false27.if.end41_crit_edge

lor.lhs.false27.if.end41_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %lor.lhs.false22.if.then30_crit_edge, %lor.lhs.false18.if.then30_crit_edge, %lor.lhs.false.if.then30_crit_edge, %if.end10.if.then30_crit_edge
  %18 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack86 = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack86)
  %cmp.i91 = icmp eq i32 %call4, %.unpack86
  br i1 %cmp.i91, label %if.then30.if.end41_crit_edge, label %if.then35

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then35:                                        ; preds = %if.then30
  %fsuid36 = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 10
  %19 = ptrtoint ptr %fsuid36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4, ptr %fsuid36, align 4
  %call37 = tail call i32 @security_task_fix_setuid(ptr noundef nonnull %call8, ptr noundef %5, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp eq i32 %call37, 0
  br i1 %cmp, label %change_okay, label %if.then35.if.end41_crit_edge

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.then30.if.end41_crit_edge, %lor.lhs.false27.if.end41_crit_edge
  tail call void @abort_creds(ptr noundef nonnull %call8) #11
  br label %cleanup

change_okay:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 @commit_creds(ptr noundef nonnull %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %change_okay, %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsuid(i32 noundef %uid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setfsuid(i32 noundef %uid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sys_setfsgid(i32 noundef %gid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %fsgid, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %9) #11
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %call4 = tail call i32 @make_kgid(ptr noundef %11, i32 noundef %gid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %gid11 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %gid11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack82 = load i32, ptr %gid11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack82)
  %cmp.i87 = icmp eq i32 %call4, %.unpack82
  br i1 %cmp.i87, label %if.end10.if.then30_crit_edge, label %lor.lhs.false

if.end10.if.then30_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end10
  %egid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack83 = load i32, ptr %egid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack83)
  %cmp.i88 = icmp eq i32 %call4, %.unpack83
  br i1 %cmp.i88, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false18

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %sgid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack84 = load i32, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack84)
  %cmp.i89 = icmp eq i32 %call4, %.unpack84
  br i1 %cmp.i89, label %lor.lhs.false18.if.then30_crit_edge, label %lor.lhs.false22

lor.lhs.false18.if.then30_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %15 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack85 = load i32, ptr %fsgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack85)
  %cmp.i90 = icmp eq i32 %call4, %.unpack85
  br i1 %cmp.i90, label %lor.lhs.false22.if.then30_crit_edge, label %lor.lhs.false27

lor.lhs.false22.if.then30_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false27:                                  ; preds = %lor.lhs.false22
  %16 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_ns, align 4
  %call29 = tail call zeroext i1 @ns_capable_setid(ptr noundef %17, i32 noundef 6) #11
  br i1 %call29, label %lor.lhs.false27.if.then30_crit_edge, label %lor.lhs.false27.if.end41_crit_edge

lor.lhs.false27.if.end41_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %lor.lhs.false22.if.then30_crit_edge, %lor.lhs.false18.if.then30_crit_edge, %lor.lhs.false.if.then30_crit_edge, %if.end10.if.then30_crit_edge
  %18 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack86 = load i32, ptr %fsgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %.unpack86)
  %cmp.i91 = icmp eq i32 %call4, %.unpack86
  br i1 %cmp.i91, label %if.then30.if.end41_crit_edge, label %if.then35

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then35:                                        ; preds = %if.then30
  %fsgid36 = getelementptr inbounds %struct.cred, ptr %call8, i32 0, i32 11
  %19 = ptrtoint ptr %fsgid36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4, ptr %fsgid36, align 4
  %call37 = tail call i32 @security_task_fix_setgid(ptr noundef nonnull %call8, ptr noundef %5, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp eq i32 %call37, 0
  br i1 %cmp, label %change_okay, label %if.then35.if.end41_crit_edge

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.then30.if.end41_crit_edge, %lor.lhs.false27.if.end41_crit_edge
  tail call void @abort_creds(ptr noundef nonnull %call8) #11
  br label %cleanup

change_okay:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 @commit_creds(ptr noundef nonnull %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %change_okay, %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsgid(i32 noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sys_setfsgid(i32 noundef %gid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getpid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 1, ptr noundef null) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_gettid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 0, ptr noundef null) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getppid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 71
  %8 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %real_parent, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @sys_getppid.__warned, align 1
  br i1 %.b11, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @sys_getppid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 955, ptr noundef nonnull @.str.52) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %call.i12 = tail call i32 @__task_pid_nr_ns(ptr noundef %9, i32 noundef 1, ptr noundef null) #11
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i13, label %do.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

do.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %do.end8
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %do.end8.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %10 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i20 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %call.i12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getuid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_geteuid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getgid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getegid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_times(i32 noundef %tbuf) #0 align 64 {
entry:
  %tgutime.i.i = alloca i64, align 8
  %tgstime.i.i = alloca i64, align 8
  %tmp.i = alloca %struct.tms, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tbuf to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tbuf)
  %tobool.not.i = icmp eq i32 %tbuf, 0
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %if.then.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #11
  %1 = getelementptr inbounds %struct.tms, ptr %tmp.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tms, ptr %tmp.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.tms, ptr %tmp.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tgutime.i.i) #11
  %4 = ptrtoint ptr %tgutime.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %tgutime.i.i, align 8, !annotation !639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tgstime.i.i) #11
  %5 = ptrtoint ptr %tgstime.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %tgstime.i.i, align 8, !annotation !639
  %6 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  call void @thread_group_cputime_adjusted(ptr noundef %9, ptr noundef nonnull %tgutime.i.i, ptr noundef nonnull %tgstime.i.i) #11
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i.i, align 16
  %cutime3.i.i = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %cutime3.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cutime3.i.i, align 8
  %cstime7.i.i = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 31
  %16 = ptrtoint ptr %cstime7.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cstime7.i.i, align 8
  %18 = ptrtoint ptr %tgutime.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tgutime.i.i, align 8
  %call8.i.i = call i64 @nsec_to_clock_t(i64 noundef %19) #11
  %conv.i.i = trunc i64 %call8.i.i to i32
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i.i, ptr %tmp.i, align 4
  %21 = ptrtoint ptr %tgstime.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tgstime.i.i, align 8
  %call9.i.i = call i64 @nsec_to_clock_t(i64 noundef %22) #11
  %conv10.i.i = trunc i64 %call9.i.i to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv10.i.i, ptr %1, align 4
  %call11.i.i = call i64 @nsec_to_clock_t(i64 noundef %15) #11
  %conv12.i.i = trunc i64 %call11.i.i to i32
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv12.i.i, ptr %2, align 4
  %call13.i.i = call i64 @nsec_to_clock_t(i64 noundef %17) #11
  %conv14.i.i = trunc i64 %call13.i.i to i32
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv14.i.i, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tgstime.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tgutime.i.i) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.copy_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i

if.then.i.copy_to_user.exit.thread.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 16, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge

if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %if.end.i.i.i.copy_to_user.exit.thread.i_crit_edge, %if.then.i.copy_to_user.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  br label %__do_sys_times.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef 16) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %0, ptr noundef nonnull %tmp.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool1.not.i = icmp eq i32 %call.i12.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  br i1 %tobool1.not.i, label %copy_to_user.exit.i.do.end.i_crit_edge, label %copy_to_user.exit.i.__do_sys_times.exit_crit_edge

copy_to_user.exit.i.__do_sys_times.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_times.exit

copy_to_user.exit.i.do.end.i_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %copy_to_user.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call4.i = call i64 @get_jiffies_64() #11
  %call5.i = call i64 @jiffies_64_to_clock_t(i64 noundef %call4.i) #11
  %conv.i = trunc i64 %call5.i to i32
  br label %__do_sys_times.exit

__do_sys_times.exit:                              ; preds = %do.end.i, %copy_to_user.exit.i.__do_sys_times.exit_crit_edge, %copy_to_user.exit.thread.i
  %retval.1.i = phi i32 [ -14, %copy_to_user.exit.i.__do_sys_times.exit_crit_edge ], [ %conv.i, %do.end.i ], [ -14, %copy_to_user.exit.thread.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setpgid(i32 noundef %pid, i32 noundef %pgid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %group_leader1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %group_leader1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_leader1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pid)
  %tobool.not.i = icmp eq i32 %pid, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i83.i = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 0, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %pid.addr.0.i = phi i32 [ %pid, %entry.if.end.i_crit_edge ], [ %call.i83.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgid)
  %tobool3.not.i = icmp eq i32 %pgid, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 %pid.addr.0.i, i32 %pgid
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.i = icmp slt i32 %spec.select.i, 0
  br i1 %cmp.i, label %if.end.i.__do_sys_setpgid.exit_crit_edge, label %if.end7.i

if.end.i.__do_sys_setpgid.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_setpgid.exit

if.end7.i:                                        ; preds = %if.end.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end7.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end7.i.rcu_read_lock.exit.i_crit_edge
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #11
  %call8.i = tail call ptr @find_task_by_vpid(i32 noundef %pid.addr.0.i) #11
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %rcu_read_lock.exit.i.out.i_crit_edge, label %if.end11.i

rcu_read_lock.exit.i.out.i_crit_edge:             ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end11.i:                                       ; preds = %rcu_read_lock.exit.i
  %exit_signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 59
  %10 = ptrtoint ptr %exit_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %exit_signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.i = icmp sgt i32 %11, -1
  br i1 %cmp.i.i, label %if.end14.i, label %if.end11.i.out.i_crit_edge

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end14.i:                                       ; preds = %if.end11.i
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 71
  %12 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %real_parent.i, align 4
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 111
  %14 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal.i.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %16 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i84.i = icmp eq ptr %15, %17
  br i1 %cmp.i84.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end14.i
  %signal.i85.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i85.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i85.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 22, i32 3
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx.i87.i = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 22, i32 3
  %22 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i87.i, align 4
  %cmp19.not.i = icmp eq ptr %21, %23
  br i1 %cmp19.not.i, label %if.end21.i, label %if.then16.i.out.i_crit_edge

if.then16.i.out.i_crit_edge:                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end21.i:                                       ; preds = %if.then16.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %if.end21.i.out.i_crit_edge, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.else.i:                                        ; preds = %if.end14.i
  %cmp25.not.i = icmp eq ptr %call8.i, %5
  br i1 %cmp25.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i.if.end28.i_crit_edge, %if.end21.i.if.end28.i_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 111
  %26 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %signal.i, align 16
  %leader.i = getelementptr inbounds %struct.signal_struct, ptr %27, i32 0, i32 24
  %28 = ptrtoint ptr %leader.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leader.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool29.not.i = icmp eq i32 %29, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end28.i.out.i_crit_edge

if.end28.i.out.i_crit_edge:                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end31.i:                                       ; preds = %if.end28.i
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %call8.i, i32 0, i32 78
  %30 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %thread_pid.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %pid.addr.0.i)
  %cmp33.not.i = icmp eq i32 %spec.select.i, %pid.addr.0.i
  br i1 %cmp33.not.i, label %if.end31.i.if.end43.i_crit_edge, label %if.then34.i

if.end31.i.if.end43.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then34.i:                                      ; preds = %if.end31.i
  %call35.i = tail call ptr @find_vpid(i32 noundef %spec.select.i) #11
  %call36.i = tail call ptr @pid_task(ptr noundef %call35.i, i32 noundef 2) #11
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.then34.i.out.i_crit_edge, label %lor.lhs.false.i

if.then34.i.out.i_crit_edge:                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

lor.lhs.false.i:                                  ; preds = %if.then34.i
  %signal.i88.i = getelementptr inbounds %struct.task_struct, ptr %call36.i, i32 0, i32 111
  %32 = ptrtoint ptr %signal.i88.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %signal.i88.i, align 16
  %arrayidx.i89.i = getelementptr %struct.signal_struct, ptr %33, i32 0, i32 22, i32 3
  %34 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i89.i, align 4
  %36 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %signal1.i.i, align 16
  %arrayidx.i91.i = getelementptr %struct.signal_struct, ptr %37, i32 0, i32 22, i32 3
  %38 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i91.i, align 4
  %cmp40.not.i = icmp eq ptr %35, %39
  br i1 %cmp40.not.i, label %lor.lhs.false.i.if.end43.i_crit_edge, label %lor.lhs.false.i.out.i_crit_edge

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

lor.lhs.false.i.if.end43.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %lor.lhs.false.i.if.end43.i_crit_edge, %if.end31.i.if.end43.i_crit_edge
  %pgrp.0.i = phi ptr [ %31, %if.end31.i.if.end43.i_crit_edge ], [ %call35.i, %lor.lhs.false.i.if.end43.i_crit_edge ]
  %call44.i = tail call i32 @security_task_setpgid(ptr noundef nonnull %call8.i, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end43.i.out.i_crit_edge

if.end43.i.out.i_crit_edge:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end47.i:                                       ; preds = %if.end43.i
  %40 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %signal.i, align 16
  %arrayidx.i93.i = getelementptr %struct.signal_struct, ptr %41, i32 0, i32 22, i32 2
  %42 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i93.i, align 8
  %cmp49.not.i = icmp eq ptr %43, %pgrp.0.i
  br i1 %cmp49.not.i, label %if.end47.i.out.i_crit_edge, label %if.then50.i

if.end47.i.out.i_crit_edge:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @change_pid(ptr noundef nonnull %call8.i, i32 noundef 2, ptr noundef %pgrp.0.i) #11
  br label %out.i

out.i:                                            ; preds = %if.then50.i, %if.end47.i.out.i_crit_edge, %if.end43.i.out.i_crit_edge, %lor.lhs.false.i.out.i_crit_edge, %if.then34.i.out.i_crit_edge, %if.end28.i.out.i_crit_edge, %if.else.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge, %if.then16.i.out.i_crit_edge, %if.end11.i.out.i_crit_edge, %rcu_read_lock.exit.i.out.i_crit_edge
  %err.0.i = phi i32 [ -1, %if.then16.i.out.i_crit_edge ], [ -1, %if.end28.i.out.i_crit_edge ], [ %call44.i, %if.end43.i.out.i_crit_edge ], [ -13, %if.end21.i.out.i_crit_edge ], [ -3, %if.else.i.out.i_crit_edge ], [ -22, %if.end11.i.out.i_crit_edge ], [ -3, %rcu_read_lock.exit.i.out.i_crit_edge ], [ 0, %if.then50.i ], [ 0, %if.end47.i.out.i_crit_edge ], [ -1, %if.then34.i.out.i_crit_edge ], [ -1, %lor.lhs.false.i.out.i_crit_edge ]
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #11
  %call.i94.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i94.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i97.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i97.i:                              ; preds = %out.i
  %call1.i95.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95.i)
  %tobool.not.i96.i = icmp eq i32 %call1.i95.i, 0
  br i1 %tobool.not.i96.i, label %land.lhs.true.i97.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i99.i

land.lhs.true.i97.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i99.i:                             ; preds = %land.lhs.true.i97.i
  %.b4.i98.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98.i, label %land.lhs.true2.i99.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i100.i

land.lhs.true2.i99.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i100.i:                                   ; preds = %land.lhs.true2.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i100.i, %land.lhs.true2.i99.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i97.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %44 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i101.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i101.i to ptr
  %preempt_count.i.i.i.i102.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i102.i, align 4
  %sub.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i102.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %__do_sys_setpgid.exit

__do_sys_setpgid.exit:                            ; preds = %rcu_read_unlock.exit.i, %if.end.i.__do_sys_setpgid.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %rcu_read_unlock.exit.i ], [ -22, %if.end.i.__do_sys_setpgid.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getpgid(i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @do_getpgid(i32 noundef %pid) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getpgrp() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_getpgid(i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_getpgid(i32 noundef %pid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pid)
  %tobool.not = icmp eq i32 %pid, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  br label %if.end14

if.else:                                          ; preds = %rcu_read_lock.exit
  %call3 = tail call ptr @find_task_by_vpid(i32 noundef %pid) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else.out_crit_edge, label %if.end

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %if.else
  %signal.i21 = getelementptr inbounds %struct.task_struct, ptr %call3, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i21, align 16
  %arrayidx.i22 = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i22, align 8
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @security_task_getpgid(ptr noundef nonnull %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.then
  %grp.0 = phi ptr [ %15, %if.end9.if.end14_crit_edge ], [ %11, %if.then ]
  %call15 = tail call i32 @pid_vnr(ptr noundef %grp.0) #11
  br label %out

out:                                              ; preds = %if.end14, %if.end9.out_crit_edge, %if.end.out_crit_edge, %if.else.out_crit_edge
  %retval1.0 = phi i32 [ %call10, %if.end9.out_crit_edge ], [ %call15, %if.end14 ], [ -3, %if.end.out_crit_edge ], [ -3, %if.else.out_crit_edge ]
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i23, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %out
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %16 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i30 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getsid(i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pid)
  %tobool.not.i = icmp eq i32 %pid, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  br label %if.end14.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call ptr @find_task_by_vpid(i32 noundef %pid) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.else.i.out.i_crit_edge, label %if.end.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i:                                         ; preds = %if.else.i
  %signal.i21.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i21.i, align 16
  %arrayidx.i22.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 3
  %14 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i22.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %if.end.i.out.i_crit_edge, label %if.end9.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @security_task_getsid(ptr noundef nonnull %call3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end14.i_crit_edge, label %if.end9.i.out.i_crit_edge

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end9.i.if.end14.i_crit_edge, %if.then.i
  %sid.0.i = phi ptr [ %15, %if.end9.i.if.end14.i_crit_edge ], [ %11, %if.then.i ]
  %call15.i = tail call i32 @pid_vnr(ptr noundef %sid.0.i) #11
  br label %out.i

out.i:                                            ; preds = %if.end14.i, %if.end9.i.out.i_crit_edge, %if.end.i.out.i_crit_edge, %if.else.i.out.i_crit_edge
  %retval1.0.i = phi i32 [ %call10.i, %if.end9.i.out.i_crit_edge ], [ %call15.i, %if.end14.i ], [ -3, %if.end.i.out.i_crit_edge ], [ -3, %if.else.i.out.i_crit_edge ]
  %call.i23.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i23.i, label %out.i.__do_sys_getsid.exit_crit_edge, label %land.lhs.true.i26.i

out.i.__do_sys_getsid.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getsid.exit

land.lhs.true.i26.i:                              ; preds = %out.i
  %call1.i24.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i.__do_sys_getsid.exit_crit_edge, label %land.lhs.true2.i28.i

land.lhs.true.i26.i.__do_sys_getsid.exit_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getsid.exit

land.lhs.true2.i28.i:                             ; preds = %land.lhs.true.i26.i
  %.b4.i27.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27.i, label %land.lhs.true2.i28.i.__do_sys_getsid.exit_crit_edge, label %if.then.i29.i

land.lhs.true2.i28.i.__do_sys_getsid.exit_crit_edge: ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getsid.exit

if.then.i29.i:                                    ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %__do_sys_getsid.exit

__do_sys_getsid.exit:                             ; preds = %if.then.i29.i, %land.lhs.true2.i28.i.__do_sys_getsid.exit_crit_edge, %land.lhs.true.i26.i.__do_sys_getsid.exit_crit_edge, %out.i.__do_sys_getsid.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %16 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i30.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i30.i to ptr
  %preempt_count.i.i.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i31.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i31.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_setsid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %group_leader1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %group_leader1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_leader1, align 4
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread_pid.i, align 16
  %call3 = tail call i32 @pid_vnr(ptr noundef %7) #11
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #11
  %signal = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %leader = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %leader to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @pid_task(ptr noundef %7, i32 noundef 2) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end7, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal, align 16
  %leader9 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %leader9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %leader9, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 75
  %19 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %group_leader.i, align 4
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 111
  %21 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %22, i32 0, i32 22, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.not.i = icmp eq ptr %24, %7
  br i1 %cmp.not.i, label %if.end7.if.end.i_crit_edge, label %if.then.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @change_pid(ptr noundef %20, i32 noundef 3, ptr noundef %7) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end7.if.end.i_crit_edge
  %25 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i13.i = getelementptr %struct.signal_struct, ptr %26, i32 0, i32 22, i32 2
  %27 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i13.i, align 8
  %cmp3.not.i = icmp eq ptr %28, %7
  br i1 %cmp3.not.i, label %if.end.i.out_crit_edge, label %if.then4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @change_pid(ptr noundef %20, i32 noundef 2, ptr noundef %7) #11
  br label %out

out.thread:                                       ; preds = %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #11
  br label %if.end11

out:                                              ; preds = %if.then4.i, %if.end.i.out_crit_edge
  tail call void @proc_clear_tty(ptr noundef %5) #11
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then10, label %out.if.end11_crit_edge

out.if.end11_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @proc_sid_connector(ptr noundef %5) #11
  tail call void @sched_autogroup_create_attach(ptr noundef %5) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %out.if.end11_crit_edge, %out.thread
  %err.022 = phi i32 [ -1, %out.thread ], [ %call3, %if.then10 ], [ %call3, %out.if.end11_crit_edge ]
  ret i32 %err.022
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_clear_tty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sid_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_autogroup_create_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_setsid() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksys_setsid()
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newuname(i32 noundef %name) #0 align 64 {
entry:
  %buf.i.i = alloca [65 x i8], align 1
  %tmp.i = alloca %struct.new_utsname, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %tmp.i) #11
  tail call void @down_read(ptr noundef nonnull @uts_sem) #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 110
  %5 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uts_ns.i.i, align 4
  %9 = call ptr @memcpy(ptr %tmp.i, ptr %8, i32 390)
  tail call void @up_read(ptr noundef nonnull @uts_sem) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %entry.__do_sys_newuname.exit_crit_edge, label %if.end.i.i.i

entry.__do_sys_newuname.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_newuname.exit

if.end.i.i.i:                                     ; preds = %entry
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 390, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_newuname.exit_crit_edge

if.end.i.i.i.__do_sys_newuname.exit_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_newuname.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef 390) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %tmp.i, i32 noundef 390) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %copy_to_user.exit.i.__do_sys_newuname.exit_crit_edge

copy_to_user.exit.i.__do_sys_newuname.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_newuname.exit

if.end.i:                                         ; preds = %copy_to_user.exit.i
  %release.i = getelementptr inbounds %struct.new_utsname, ptr %0, i32 0, i32 2
  %11 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i7.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i7.i to ptr
  %task.i8.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i8.i, align 8
  %personality.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 62
  %15 = ptrtoint ptr %personality.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %personality.i.i, align 32
  %and.i.i = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.override_release.exit.thread.i_crit_edge, label %if.then.i.i

if.end.i.override_release.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %override_release.exit.thread.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf.i.i) #11
  %17 = call ptr @memset(ptr %buf.i.i, i32 0, i32 65)
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end14.i.i, %if.then.i.i
  %ndots.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %ndots.14.i.i, %if.end14.i.i ]
  %rest.0.i.i = phi ptr [ @.str.173, %if.then.i.i ], [ %incdec.ptr.i.i, %if.end14.i.i ]
  %18 = ptrtoint ptr %rest.0.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rest.0.i.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %19, label %if.end.i.i [
    i8 0, label %while.cond.i.i.cond.end22.i.i_crit_edge
    i8 46, label %land.lhs.true.i.i
  ]

while.cond.i.i.cond.end22.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22.i.i

land.lhs.true.i.i:                                ; preds = %while.cond.i.i
  %inc.i.i = add i32 %ndots.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp3.i.i = icmp sgt i32 %inc.i.i, 2
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.cond.end22.i.i_crit_edge, label %land.lhs.true.i.i.if.end14.i.i_crit_edge

land.lhs.true.i.i.if.end14.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

land.lhs.true.i.i.cond.end22.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22.i.i

if.end.i.i:                                       ; preds = %while.cond.i.i
  %conv6.i.i = zext i8 %19 to i32
  %21 = add nsw i32 %conv6.i.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %21)
  %22 = icmp ult i32 %21, -10
  br i1 %22, label %if.end.i.i.cond.end22.i.i_crit_edge, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.end.i.i.cond.end22.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i.if.end14.i.i_crit_edge, %land.lhs.true.i.i.if.end14.i.i_crit_edge
  %ndots.14.i.i = phi i32 [ %ndots.0.i.i, %if.end.i.i.if.end14.i.i_crit_edge ], [ %inc.i.i, %land.lhs.true.i.i.if.end14.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %rest.0.i.i, i32 1
  br label %while.cond.i.i

cond.end22.i.i:                                   ; preds = %if.end.i.i.cond.end22.i.i_crit_edge, %land.lhs.true.i.i.cond.end22.i.i_crit_edge, %while.cond.i.i.cond.end22.i.i_crit_edge
  %call24.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf.i.i, i32 noundef 65, ptr noundef nonnull @.str.174, i32 noundef 77, ptr noundef %rest.0.i.i) #11
  %add.i.i = add i32 %call24.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %add.i.i, 65
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.then.i.i.i.i.i, !prof !641

if.then3.i.i.i.i:                                 ; preds = %cond.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.165, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.166, i32 noundef 65, i32 noundef %add.i.i) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf.i.i) #11
  br label %__do_sys_newuname.exit

if.then.i.i.i.i.i:                                ; preds = %cond.end22.i.i
  call void @__check_object_size(ptr noundef nonnull %buf.i.i, i32 noundef %add.i.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i9.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i9.i, label %if.then.i.i.i.i.i.override_release.exit.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.i.override_release.exit.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %override_release.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.i
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %release.i, i32 %add.i.i, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.override_release.exit.i_crit_edge

if.end.i.i.i.i.override_release.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %override_release.exit.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf.i.i, i32 noundef %add.i.i) #11
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %release.i, ptr noundef nonnull %buf.i.i, i32 noundef %add.i.i) #11
  br label %override_release.exit.i

override_release.exit.i:                          ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.override_release.exit.i_crit_edge, %if.then.i.i.i.i.i.override_release.exit.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %add.i.i, %if.then.i.i.i.i.i.override_release.exit.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %add.i.i, %if.end.i.i.i.i.override_release.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool3.not.i = icmp eq i32 %n.addr.0.i.i.i, 0
  br i1 %tobool3.not.i, label %override_release.exit.i.override_release.exit.thread.i_crit_edge, label %override_release.exit.i.__do_sys_newuname.exit_crit_edge

override_release.exit.i.__do_sys_newuname.exit_crit_edge: ; preds = %override_release.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_newuname.exit

override_release.exit.i.override_release.exit.thread.i_crit_edge: ; preds = %override_release.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %override_release.exit.thread.i

override_release.exit.thread.i:                   ; preds = %override_release.exit.i.override_release.exit.thread.i_crit_edge, %if.end.i.override_release.exit.thread.i_crit_edge
  br label %__do_sys_newuname.exit

__do_sys_newuname.exit:                           ; preds = %override_release.exit.thread.i, %override_release.exit.i.__do_sys_newuname.exit_crit_edge, %if.then3.i.i.i.i, %copy_to_user.exit.i.__do_sys_newuname.exit_crit_edge, %if.end.i.i.i.__do_sys_newuname.exit_crit_edge, %entry.__do_sys_newuname.exit_crit_edge
  %retval.0.i = phi i32 [ -14, %copy_to_user.exit.i.__do_sys_newuname.exit_crit_edge ], [ 0, %override_release.exit.thread.i ], [ -14, %override_release.exit.i.__do_sys_newuname.exit_crit_edge ], [ -14, %if.then3.i.i.i.i ], [ -14, %entry.__do_sys_newuname.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_newuname.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %tmp.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sethostname(i32 noundef %name, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp.i) #11
  %1 = call ptr @memset(ptr %tmp.i, i32 255, i32 64)
  %2 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uts_ns.i, align 4
  %user_ns.i = getelementptr inbounds %struct.uts_namespace, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 21) #11
  br i1 %call1.i, label %if.end.i, label %entry.__do_sys_sethostname.exit_crit_edge

entry.__do_sys_sethostname.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_sethostname.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len)
  %12 = icmp ugt i32 %len, 64
  br i1 %12, label %if.end.i.__do_sys_sethostname.exit_crit_edge, label %if.then.i.i.i.i

if.end.i.__do_sys_sethostname.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_sethostname.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__check_object_size(ptr noundef nonnull %tmp.i, i32 noundef %len, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %len, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !643

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef %len) #11
  %14 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !630
  %and.i.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %0, i32 noundef %len) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %len, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %len, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.then6.i, label %if.then11.i.i.i, !prof !643

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %len, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %__do_sys_sethostname.exit

if.then6.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @down_write(ptr noundef nonnull @uts_sem) #11
  %18 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 110
  %22 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uts_ns.i.i, align 4
  %nodename.i = getelementptr inbounds %struct.new_utsname, ptr %25, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %nodename.i, ptr %tmp.i, i32 %len)
  %add.ptr.i = getelementptr i8, ptr %nodename.i, i32 %len
  %sub.i = sub nuw nsw i32 65, %len
  %27 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  call void @uts_proc_notify(i32 noundef 3) #11
  call void @up_write(ptr noundef nonnull @uts_sem) #11
  br label %__do_sys_sethostname.exit

__do_sys_sethostname.exit:                        ; preds = %if.then6.i, %if.then11.i.i.i, %if.end.i.__do_sys_sethostname.exit_crit_edge, %entry.__do_sys_sethostname.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__do_sys_sethostname.exit_crit_edge ], [ -22, %if.end.i.__do_sys_sethostname.exit_crit_edge ], [ 0, %if.then6.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_gethostname(i32 noundef %name, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %tmp.i) #11
  %1 = call ptr @memset(ptr %tmp.i, i32 255, i32 65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.i = icmp slt i32 %len, 0
  br i1 %cmp.i, label %entry.__do_sys_gethostname.exit_crit_edge, label %if.end.i

entry.__do_sys_gethostname.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_gethostname.exit

if.end.i:                                         ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @uts_sem) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uts_ns.i.i, align 4
  %nodename.i = getelementptr inbounds %struct.new_utsname, ptr %9, i32 0, i32 1
  %call1.i = tail call i32 @strlen(ptr noundef %nodename.i) #15
  %add.i = add i32 %call1.i, 1
  %10 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 %len) #11
  %11 = call ptr @memcpy(ptr %tmp.i, ptr %nodename.i, i32 %10)
  tail call void @up_read(ptr noundef nonnull @uts_sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %10)
  %cmp1.i.i.i = icmp ugt i32 %10, 65
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.i, !prof !641

if.then3.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.165, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.166, i32 noundef 65, i32 noundef %10) #11
  br label %__do_sys_gethostname.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__check_object_size(ptr noundef nonnull %tmp.i, i32 noundef %10, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %10, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef %10) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %tmp.i, i32 noundef %10) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %10, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %10, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %__do_sys_gethostname.exit

__do_sys_gethostname.exit:                        ; preds = %copy_to_user.exit.i, %if.then3.i.i.i, %entry.__do_sys_gethostname.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_gethostname.exit_crit_edge ], [ -14, %if.then3.i.i.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %tmp.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setdomainname(i32 noundef %name, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp.i) #11
  %1 = call ptr @memset(ptr %tmp.i, i32 255, i32 64)
  %2 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uts_ns.i, align 4
  %user_ns.i = getelementptr inbounds %struct.uts_namespace, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 21) #11
  br i1 %call1.i, label %if.end.i, label %entry.__do_sys_setdomainname.exit_crit_edge

entry.__do_sys_setdomainname.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_setdomainname.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len)
  %12 = icmp ugt i32 %len, 64
  br i1 %12, label %if.end.i.__do_sys_setdomainname.exit_crit_edge, label %if.then.i.i.i.i

if.end.i.__do_sys_setdomainname.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_setdomainname.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__check_object_size(ptr noundef nonnull %tmp.i, i32 noundef %len, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %len, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !643

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef %len) #11
  %14 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !630
  %and.i.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %0, i32 noundef %len) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %len, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %len, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.then6.i, label %if.then11.i.i.i, !prof !643

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %len, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %__do_sys_setdomainname.exit

if.then6.i:                                       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @down_write(ptr noundef nonnull @uts_sem) #11
  %18 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 110
  %22 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uts_ns.i.i, align 4
  %domainname.i = getelementptr inbounds %struct.new_utsname, ptr %25, i32 0, i32 5
  %26 = call ptr @memcpy(ptr %domainname.i, ptr %tmp.i, i32 %len)
  %add.ptr.i = getelementptr i8, ptr %domainname.i, i32 %len
  %sub.i = sub nuw nsw i32 65, %len
  %27 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  call void @uts_proc_notify(i32 noundef 4) #11
  call void @up_write(ptr noundef nonnull @uts_sem) #11
  br label %__do_sys_setdomainname.exit

__do_sys_setdomainname.exit:                      ; preds = %if.then6.i, %if.then11.i.i.i, %if.end.i.__do_sys_setdomainname.exit_crit_edge, %entry.__do_sys_setdomainname.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__do_sys_setdomainname.exit_crit_edge ], [ -22, %if.end.i.__do_sys_setdomainname.exit_crit_edge ], [ 0, %if.then6.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getrlimit(i32 noundef %resource, i32 noundef %rlim) #0 align 64 {
entry:
  %value.i = alloca %struct.rlimit, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rlim to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value.i) #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %resource)
  %cmp.i.i = icmp ugt i32 %resource, 15
  br i1 %cmp.i.i, label %entry.__do_sys_getrlimit.exit_crit_edge, label %if.end.i.i

entry.__do_sys_getrlimit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getrlimit.exit

if.end.i.i:                                       ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 112
  %5 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sighand.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %6, null
  br i1 %tobool12.not.i.i, label %do_prlimit.exit.i, label %if.then.i

do_prlimit.exit.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  br label %__do_sys_getrlimit.exit

if.then.i:                                        ; preds = %if.end.i.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 111
  %7 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal.i.i, align 16
  %rlim15.i.i = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 51
  %add.ptr.i.i = getelementptr %struct.rlimit, ptr %rlim15.i.i, i32 %resource
  %group_leader.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 75
  %9 = ptrtoint ptr %group_leader.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group_leader.i.i, align 4
  %alloc_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i.i) #11
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr.i.i, align 4
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %value.i, align 8
  %14 = ptrtoint ptr %group_leader.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group_leader.i.i, align 4
  %alloc_lock.i81.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i81.i.i) #11
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.__do_sys_getrlimit.exit_crit_edge, label %if.end.i.i.i

if.then.i.__do_sys_getrlimit.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getrlimit.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_getrlimit.exit_crit_edge

if.end.i.i.i.__do_sys_getrlimit.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getrlimit.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %value.i, i32 noundef 8) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %value.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 0, i32 -14
  br label %__do_sys_getrlimit.exit

__do_sys_getrlimit.exit:                          ; preds = %copy_to_user.exit.i, %if.end.i.i.i.__do_sys_getrlimit.exit_crit_edge, %if.then.i.__do_sys_getrlimit.exit_crit_edge, %do_prlimit.exit.i, %entry.__do_sys_getrlimit.exit_crit_edge
  %ret.0.i = phi i32 [ -3, %do_prlimit.exit.i ], [ -22, %entry.__do_sys_getrlimit.exit_crit_edge ], [ -14, %if.then.i.__do_sys_getrlimit.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_getrlimit.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value.i) #11
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_getrlimit(i32 noundef %resource, i32 noundef %rlim) #0 align 64 {
entry:
  %x.i = alloca %struct.rlimit, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rlim to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x.i) #11
  %1 = getelementptr inbounds %struct.rlimit, ptr %x.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %resource)
  %cmp.i = icmp ugt i32 %resource, 15
  br i1 %cmp.i, label %entry.__do_sys_old_getrlimit.exit_crit_edge, label %if.end.i

entry.__do_sys_old_getrlimit.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_old_getrlimit.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %resource, i32 16) #11, !srcloc !644
  %and.i = and i32 %2, %resource
  %3 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 75
  %7 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group_leader.i, align 4
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #11
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 111
  %11 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 51, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i, align 8
  %15 = ptrtoint ptr %x.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %x.i, align 8
  %group_leader10.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 75
  %16 = ptrtoint ptr %group_leader10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group_leader10.i, align 4
  %alloc_lock.i23.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i23.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp11.i = icmp slt i64 %14, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2147483647, ptr %x.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i.if.end14.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp15.i = icmp slt i32 %20, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end14.i.if.end8.i.i.i_crit_edge

if.end14.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2147483647, ptr %1, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then16.i, %if.end14.i.if.end8.i.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end8.i.i.i.__do_sys_old_getrlimit.exit_crit_edge, label %if.end.i.i.i

if.end8.i.i.i.__do_sys_old_getrlimit.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_old_getrlimit.exit

if.end.i.i.i:                                     ; preds = %if.end8.i.i.i
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_old_getrlimit.exit_crit_edge

if.end.i.i.i.__do_sys_old_getrlimit.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_old_getrlimit.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %x.i, i32 noundef 8) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %x.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %__do_sys_old_getrlimit.exit

__do_sys_old_getrlimit.exit:                      ; preds = %copy_to_user.exit.i, %if.end.i.i.i.__do_sys_old_getrlimit.exit_crit_edge, %if.end8.i.i.i.__do_sys_old_getrlimit.exit_crit_edge, %entry.__do_sys_old_getrlimit.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_old_getrlimit.exit_crit_edge ], [ -14, %if.end8.i.i.i.__do_sys_old_getrlimit.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_old_getrlimit.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_prlimit(ptr noundef %tsk, i32 noundef %resource, ptr noundef %new_rlim, ptr noundef writeonly %old_rlim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %resource)
  %cmp = icmp ugt i32 %resource, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %new_rlim, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %0 = ptrtoint ptr %new_rlim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rlim, align 4
  %rlim_max = getelementptr inbounds %struct.rlimit, ptr %new_rlim, i32 0, i32 1
  %2 = ptrtoint ptr %rlim_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlim_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3 = icmp ugt i32 %1, %3
  br i1 %cmp3, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %resource)
  %cmp6 = icmp eq i32 %resource, 7
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_nr_open to i32))
  %4 = load i32, ptr @sysctl_nr_open, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp8 = icmp ugt i32 %3, %4
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  %sighand = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 112
  %5 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sighand, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end11
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal, align 16
  %rlim15 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 51
  %add.ptr = getelementptr %struct.rlimit, ptr %rlim15, i32 %resource
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 75
  %9 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group_leader, align 4
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #11
  br i1 %tobool.not, label %if.end14.if.then30_crit_edge, label %if.then17

if.end14.if.then30_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then17:                                        ; preds = %if.end14
  %rlim_max18 = getelementptr inbounds %struct.rlimit, ptr %new_rlim, i32 0, i32 1
  %11 = ptrtoint ptr %rlim_max18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rlim_max18, align 4
  %rlim_max19 = getelementptr %struct.rlimit, ptr %rlim15, i32 %resource, i32 1
  %13 = ptrtoint ptr %rlim_max19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rlim_max19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp20 = icmp ugt i32 %12, %14
  br i1 %cmp20, label %land.lhs.true21, label %if.then17.if.end28_crit_edge

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true21:                                  ; preds = %if.then17
  %call = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call, label %land.lhs.true21.if.end28_crit_edge, label %land.lhs.true21.out.critedge_crit_edge

land.lhs.true21.out.critedge_crit_edge:           ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.critedge

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true21.if.end28_crit_edge, %if.then17.if.end28_crit_edge
  %call26 = tail call i32 @security_task_setrlimit(ptr noundef %tsk, i32 noundef %resource, ptr noundef nonnull %new_rlim) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool29.not = icmp eq i32 %call26, 0
  br i1 %tobool29.not, label %if.end28.if.then30_crit_edge, label %if.end28.out.critedge_crit_edge

if.end28.out.critedge_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.critedge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.end14.if.then30_crit_edge
  %tobool31.not = icmp eq ptr %old_rlim, null
  br i1 %tobool31.not, label %if.then30.if.end33_crit_edge, label %if.then32

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %add.ptr, align 4
  %17 = ptrtoint ptr %old_rlim to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %old_rlim, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30.if.end33_crit_edge
  br i1 %tobool.not, label %land.lhs.true40.critedge, label %if.then35

if.then35:                                        ; preds = %if.end33
  %18 = ptrtoint ptr %new_rlim to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %new_rlim, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %add.ptr, align 4
  %21 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %group_leader, align 4
  %alloc_lock.i80 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resource)
  %cmp43 = icmp eq i32 %resource, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true40.critedge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group_leader, align 4
  %alloc_lock.i81 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i81) #11
  br label %out

land.lhs.true44:                                  ; preds = %if.then35
  %25 = ptrtoint ptr %new_rlim to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %new_rlim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp46.not = icmp eq i32 %26, -1
  br i1 %cmp46.not, label %land.lhs.true44.out_crit_edge, label %if.then47

land.lhs.true44.out_crit_edge:                    ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @update_rlimit_cpu(ptr noundef %tsk, i32 noundef %26) #11
  br label %out

out.critedge:                                     ; preds = %if.end28.out.critedge_crit_edge, %land.lhs.true21.out.critedge_crit_edge
  %retval1.188 = phi i32 [ %call26, %if.end28.out.critedge_crit_edge ], [ -1, %land.lhs.true21.out.critedge_crit_edge ]
  %27 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %group_leader, align 4
  %alloc_lock.i82 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i82) #11
  br label %out

out:                                              ; preds = %out.critedge, %if.then47, %land.lhs.true44.out_crit_edge, %land.lhs.true40.critedge, %if.then35.out_crit_edge, %if.end11.out_crit_edge
  %retval1.2 = phi i32 [ 0, %if.then47 ], [ 0, %land.lhs.true44.out_crit_edge ], [ 0, %if.then35.out_crit_edge ], [ -3, %if.end11.out_crit_edge ], [ %retval1.188, %out.critedge ], [ 0, %land.lhs.true40.critedge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setrlimit(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rlimit_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_prlimit64(i32 noundef %pid, i32 noundef %resource, i32 noundef %new_rlim, i32 noundef %old_rlim) #0 align 64 {
entry:
  %old64.i = alloca %struct.rlimit64, align 8
  %new64.i = alloca %struct.rlimit64, align 8
  %old.i = alloca %struct.rlimit, align 4
  %new.i = alloca %struct.rlimit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %new_rlim to ptr
  %1 = inttoptr i32 %old_rlim to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %old64.i) #11
  %2 = getelementptr inbounds %struct.rlimit64, ptr %old64.i, i32 0, i32 1
  %3 = call ptr @memset(ptr %old64.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new64.i) #11
  %4 = getelementptr inbounds %struct.rlimit64, ptr %new64.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %new64.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old.i) #11
  %6 = ptrtoint ptr %old.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %old.i, align 4, !annotation !639
  %7 = getelementptr inbounds %struct.rlimit, ptr %old.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new.i) #11
  %9 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %new.i, align 4, !annotation !639
  %10 = getelementptr inbounds %struct.rlimit, ptr %new.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !639
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_rlim)
  %tobool.not.i = icmp eq i32 %old_rlim, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select.i = zext i1 %not.tobool.not.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_rlim)
  %tobool1.not.i = icmp eq i32 %new_rlim, 0
  br i1 %tobool1.not.i, label %entry.if.end7.i_crit_edge, label %if.end8.i.i.i

entry.if.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.end8.i.i.i:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 16, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !643

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new64.i, i32 noundef 16) #11
  %13 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !630
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new64.i, ptr noundef nonnull %0, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end5.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !643

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i117.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i117.i
  %add.ptr.i.i.i = getelementptr i8, ptr %new64.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i117.i)
  br label %__do_sys_prlimit64.exit

if.end5.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %new64.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %new64.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %18)
  %cmp.i.i71.i = icmp ugt i64 %18, 4294967294
  %conv.i.i = trunc i64 %18 to i32
  %spec.select.i.i = select i1 %cmp.i.i71.i, i32 -1, i32 %conv.i.i
  %19 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i.i, ptr %new.i, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %21)
  %cmp.i18.i.i = icmp ugt i64 %21, 4294967294
  %conv9.i.i = trunc i64 %21 to i32
  %spec.select19.i.i = select i1 %cmp.i18.i.i, i32 -1, i32 %conv9.i.i
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select19.i.i, ptr %10, align 4
  %or6.i = or i32 %spec.select.i, 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end5.i, %entry.if.end7.i_crit_edge
  %checkflags.1.i = phi i32 [ %or6.i, %if.end5.i ], [ %spec.select.i, %entry.if.end7.i_crit_edge ]
  %23 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !628
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end7.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 696, ptr noundef nonnull @.str.161) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end7.i.rcu_read_lock.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pid)
  %tobool8.not.i = icmp eq i32 %pid, 0
  br i1 %tobool8.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call ptr @find_task_by_vpid(i32 noundef %pid) #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %call9.i, %cond.true.i ], [ %30, %cond.false.i ]
  %tobool11.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %cond.end.i
  %call.i72.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i72.i, label %if.then12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i75.i

if.then12.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i75.i:                              ; preds = %if.then12.i
  %call1.i73.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call1.i73.i, 0
  br i1 %tobool.not.i74.i, label %land.lhs.true.i75.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i77.i

land.lhs.true.i75.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i77.i:                             ; preds = %land.lhs.true.i75.i
  %.b4.i76.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76.i, label %land.lhs.true2.i77.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i78.i

land.lhs.true2.i77.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i78.i:                                    ; preds = %land.lhs.true2.i77.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i78.i, %land.lhs.true2.i77.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i75.i.rcu_read_unlock.exit.i_crit_edge, %if.then12.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %31 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i79.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i79.i to ptr
  %preempt_count.i.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i80.i, align 4
  %sub.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i80.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %__do_sys_prlimit64.exit

if.end13.i:                                       ; preds = %cond.end.i
  %35 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %task1.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task1.i.i, align 8
  %cred2.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 99
  %39 = ptrtoint ptr %cred2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cred2.i.i, align 16
  %cmp.i.i = icmp eq ptr %38, %cond.i
  br i1 %cmp.i.i, label %if.end13.i.if.end17.i_crit_edge, label %if.end.i.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end.i.i:                                       ; preds = %if.end13.i
  %real_cred.i.i = getelementptr inbounds %struct.task_struct, ptr %cond.i, i32 0, i32 98
  %41 = ptrtoint ptr %real_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %real_cred.i.i, align 4
  %call10.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i81.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i81.i, label %land.lhs.true.i82.i, label %if.end.i.i.do.end18.i.i_crit_edge

if.end.i.i.do.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i.i

land.lhs.true.i82.i:                              ; preds = %if.end.i.i
  %call11.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %land.lhs.true.i82.i.do.end18.i.i_crit_edge, label %land.lhs.true13.i.i

land.lhs.true.i82.i.do.end18.i.i_crit_edge:       ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true.i82.i
  %.b80.i.i = load i1, ptr @check_prlimit_permission.__warned.185, align 1
  br i1 %.b80.i.i, label %land.lhs.true13.i.i.do.end18.i.i_crit_edge, label %if.then15.i.i

land.lhs.true13.i.i.do.end18.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_prlimit_permission.__warned.185, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 1637, ptr noundef nonnull @.str.52) #11
  br label %do.end18.i.i

do.end18.i.i:                                     ; preds = %if.then15.i.i, %land.lhs.true13.i.i.do.end18.i.i_crit_edge, %land.lhs.true.i82.i.do.end18.i.i_crit_edge, %if.end.i.i.do.end18.i.i_crit_edge
  %uid.i.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 4
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack.i.i = load i32, ptr %uid.i.i, align 4
  %44 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack69.i.i = load i32, ptr %euid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %.unpack69.i.i)
  %cmp.i.i83.i = icmp eq i32 %.unpack.i.i, %.unpack69.i.i
  br i1 %cmp.i.i83.i, label %land.lhs.true22.i.i, label %do.end18.i.i.land.lhs.true48.i.i_crit_edge

do.end18.i.i.land.lhs.true48.i.i_crit_edge:       ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.i.i

land.lhs.true22.i.i:                              ; preds = %do.end18.i.i
  %suid.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %suid.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack71.i.i = load i32, ptr %suid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %.unpack71.i.i)
  %cmp.i85.i.i = icmp eq i32 %.unpack.i.i, %.unpack71.i.i
  br i1 %cmp.i85.i.i, label %land.lhs.true27.i.i, label %land.lhs.true22.i.i.land.lhs.true48.i.i_crit_edge

land.lhs.true22.i.i.land.lhs.true48.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.i.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true22.i.i
  %uid29.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 4
  %46 = ptrtoint ptr %uid29.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack73.i.i = load i32, ptr %uid29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %.unpack73.i.i)
  %cmp.i86.i.i = icmp eq i32 %.unpack.i.i, %.unpack73.i.i
  br i1 %cmp.i86.i.i, label %land.lhs.true33.i.i, label %land.lhs.true27.i.i.land.lhs.true48.i.i_crit_edge

land.lhs.true27.i.i.land.lhs.true48.i.i_crit_edge: ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.i.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true27.i.i
  %gid.i.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 5
  %egid.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 9
  %47 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack74.i.i = load i32, ptr %gid.i.i, align 4
  %48 = ptrtoint ptr %egid.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack75.i.i = load i32, ptr %egid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack74.i.i, i32 %.unpack75.i.i)
  %cmp.i87.i.i = icmp eq i32 %.unpack74.i.i, %.unpack75.i.i
  br i1 %cmp.i87.i.i, label %land.lhs.true37.i.i, label %land.lhs.true33.i.i.land.lhs.true48.i.i_crit_edge

land.lhs.true33.i.i.land.lhs.true48.i.i_crit_edge: ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.i.i

land.lhs.true37.i.i:                              ; preds = %land.lhs.true33.i.i
  %sgid.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 7
  %49 = ptrtoint ptr %sgid.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack77.i.i = load i32, ptr %sgid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack74.i.i, i32 %.unpack77.i.i)
  %cmp.i88.i.i = icmp eq i32 %.unpack74.i.i, %.unpack77.i.i
  br i1 %cmp.i88.i.i, label %land.rhs.i.i, label %land.lhs.true37.i.i.land.lhs.true48.i.i_crit_edge

land.lhs.true37.i.i.land.lhs.true48.i.i_crit_edge: ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true37.i.i
  %gid43.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 5
  %50 = ptrtoint ptr %gid43.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack79.i.i = load i32, ptr %gid43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack74.i.i, i32 %.unpack79.i.i)
  %cmp.i89.i.i = icmp eq i32 %.unpack74.i.i, %.unpack79.i.i
  br i1 %cmp.i89.i.i, label %land.rhs.i.i.check_prlimit_permission.exit.i_crit_edge, label %land.rhs.i.i.land.lhs.true48.i.i_crit_edge

land.rhs.i.i.land.lhs.true48.i.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.i.i

land.rhs.i.i.check_prlimit_permission.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_prlimit_permission.exit.i

land.lhs.true48.i.i:                              ; preds = %land.rhs.i.i.land.lhs.true48.i.i_crit_edge, %land.lhs.true37.i.i.land.lhs.true48.i.i_crit_edge, %land.lhs.true33.i.i.land.lhs.true48.i.i_crit_edge, %land.lhs.true27.i.i.land.lhs.true48.i.i_crit_edge, %land.lhs.true22.i.i.land.lhs.true48.i.i_crit_edge, %do.end18.i.i.land.lhs.true48.i.i_crit_edge
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 25
  %51 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ns.i.i, align 4
  %call49.i.i = call zeroext i1 @ns_capable(ptr noundef %52, i32 noundef 24) #11
  br i1 %call49.i.i, label %land.lhs.true48.i.i.check_prlimit_permission.exit.i_crit_edge, label %land.lhs.true48.i.i.if.then16.i_crit_edge

land.lhs.true48.i.i.if.then16.i_crit_edge:        ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

land.lhs.true48.i.i.check_prlimit_permission.exit.i_crit_edge: ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_prlimit_permission.exit.i

check_prlimit_permission.exit.i:                  ; preds = %land.lhs.true48.i.i.check_prlimit_permission.exit.i_crit_edge, %land.rhs.i.i.check_prlimit_permission.exit.i_crit_edge
  %call52.i.i = call i32 @security_task_prlimit(ptr noundef %40, ptr noundef %42, i32 noundef %checkflags.1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool15.not.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool15.not.i, label %check_prlimit_permission.exit.i.if.end17.i_crit_edge, label %check_prlimit_permission.exit.i.if.then16.i_crit_edge

check_prlimit_permission.exit.i.if.then16.i_crit_edge: ; preds = %check_prlimit_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

check_prlimit_permission.exit.i.if.end17.i_crit_edge: ; preds = %check_prlimit_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then16.i:                                      ; preds = %check_prlimit_permission.exit.i.if.then16.i_crit_edge, %land.lhs.true48.i.i.if.then16.i_crit_edge
  %retval.0.i125.i = phi i32 [ %call52.i.i, %check_prlimit_permission.exit.i.if.then16.i_crit_edge ], [ -1, %land.lhs.true48.i.i.if.then16.i_crit_edge ]
  %call.i84.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i84.i, label %if.then16.i.rcu_read_unlock.exit94.i_crit_edge, label %land.lhs.true.i87.i

if.then16.i.rcu_read_unlock.exit94.i_crit_edge:   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit94.i

land.lhs.true.i87.i:                              ; preds = %if.then16.i
  %call1.i85.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85.i)
  %tobool.not.i86.i = icmp eq i32 %call1.i85.i, 0
  br i1 %tobool.not.i86.i, label %land.lhs.true.i87.i.rcu_read_unlock.exit94.i_crit_edge, label %land.lhs.true2.i89.i

land.lhs.true.i87.i.rcu_read_unlock.exit94.i_crit_edge: ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit94.i

land.lhs.true2.i89.i:                             ; preds = %land.lhs.true.i87.i
  %.b4.i88.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88.i, label %land.lhs.true2.i89.i.rcu_read_unlock.exit94.i_crit_edge, label %if.then.i90.i

land.lhs.true2.i89.i.rcu_read_unlock.exit94.i_crit_edge: ; preds = %land.lhs.true2.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit94.i

if.then.i90.i:                                    ; preds = %land.lhs.true2.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit94.i

rcu_read_unlock.exit94.i:                         ; preds = %if.then.i90.i, %land.lhs.true2.i89.i.rcu_read_unlock.exit94.i_crit_edge, %land.lhs.true.i87.i.rcu_read_unlock.exit94.i_crit_edge, %if.then16.i.rcu_read_unlock.exit94.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %53 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i91.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i91.i to ptr
  %preempt_count.i.i.i.i92.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i92.i, align 4
  %sub.i.i.i93.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i93.i, ptr %preempt_count.i.i.i.i92.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %__do_sys_prlimit64.exit

if.end17.i:                                       ; preds = %check_prlimit_permission.exit.i.if.end17.i_crit_edge, %if.end13.i.if.end17.i_crit_edge
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %cond.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #11
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #11, !srcloc !645
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !641

if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end17.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %58 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !643

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end17.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  %call.i95.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i95.i, label %get_task_struct.exit.i.rcu_read_unlock.exit105.i_crit_edge, label %land.lhs.true.i98.i

get_task_struct.exit.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit105.i

land.lhs.true.i98.i:                              ; preds = %get_task_struct.exit.i
  %call1.i96.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call1.i96.i, 0
  br i1 %tobool.not.i97.i, label %land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge, label %land.lhs.true2.i100.i

land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit105.i

land.lhs.true2.i100.i:                            ; preds = %land.lhs.true.i98.i
  %.b4.i99.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99.i, label %land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge, label %if.then.i101.i

land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %land.lhs.true2.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit105.i

if.then.i101.i:                                   ; preds = %land.lhs.true2.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.160, i32 noundef 724, ptr noundef nonnull @.str.162) #11
  br label %rcu_read_unlock.exit105.i

rcu_read_unlock.exit105.i:                        ; preds = %if.then.i101.i, %land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge, %land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge, %get_task_struct.exit.i.rcu_read_unlock.exit105.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !629
  %59 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i102.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i102.i to ptr
  %preempt_count.i.i.i.i103.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i103.i, align 4
  %sub.i.i.i104.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i104.i, ptr %preempt_count.i.i.i.i103.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %new..i = select i1 %tobool1.not.i, ptr null, ptr %new.i
  %cond28.i = select i1 %tobool.not.i, ptr null, ptr %old.i
  %call29.i = call i32 @do_prlimit(ptr noundef nonnull %cond.i, i32 noundef %resource, ptr noundef %new..i, ptr noundef %cond28.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp ne i32 %call29.i, 0
  %brmerge.i = or i1 %tobool.not.i, %tobool30.not.i
  br i1 %brmerge.i, label %rcu_read_unlock.exit105.i.if.end37.i_crit_edge, label %if.then32.i

rcu_read_unlock.exit105.i.if.end37.i_crit_edge:   ; preds = %rcu_read_unlock.exit105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then32.i:                                      ; preds = %rcu_read_unlock.exit105.i
  %63 = ptrtoint ptr %old.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %old.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i106.i = icmp eq i32 %64, -1
  %conv.i107.i = zext i32 %64 to i64
  %storemerge.i.i = select i1 %cmp.i106.i, i64 -1, i64 %conv.i107.i
  %65 = ptrtoint ptr %old64.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %storemerge.i.i, ptr %old64.i, align 8
  %66 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp4.i.i = icmp eq i32 %67, -1
  %conv10.i.i = zext i32 %67 to i64
  %spec.select.i109.i = select i1 %cmp4.i.i, i64 -1, i64 %conv10.i.i
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %spec.select.i109.i, ptr %2, align 8
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i64.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i64.i, label %if.then32.i.if.end37.i_crit_edge, label %if.end.i.i68.i

if.then32.i.if.end37.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.end.i.i68.i:                                   ; preds = %if.then32.i
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 16, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i66.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i66.i)
  %cmp.i6.i67.i = icmp eq i32 %asmresult.i.i66.i, 0
  br i1 %cmp.i6.i67.i, label %copy_to_user.exit.i, label %if.end.i.i68.i.if.end37.i_crit_edge

if.end.i.i68.i.if.end37.i_crit_edge:              ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i69.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %old64.i, i32 noundef 16) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %old64.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool34.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select128.i = select i1 %tobool34.not.i, i32 0, i32 -14
  br label %if.end37.i

if.end37.i:                                       ; preds = %copy_to_user.exit.i, %if.end.i.i68.i.if.end37.i_crit_edge, %if.then32.i.if.end37.i_crit_edge, %rcu_read_unlock.exit105.i.if.end37.i_crit_edge
  %ret.0.i = phi i32 [ %call29.i, %rcu_read_unlock.exit105.i.if.end37.i_crit_edge ], [ -14, %if.then32.i.if.end37.i_crit_edge ], [ -14, %if.end.i.i68.i.if.end37.i_crit_edge ], [ %spec.select128.i, %copy_to_user.exit.i ]
  %call.i.i.i.i.i.i111.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !646
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #11
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #11, !srcloc !647
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i113.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i112.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i112.i, label %if.end5.i.i.i.i.i.__do_sys_prlimit64.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !643

if.end5.i.i.i.i.i.__do_sys_prlimit64.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prlimit64.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #11
  br label %__do_sys_prlimit64.exit

if.then.i113.i:                                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !648
  call void @__put_task_struct(ptr noundef nonnull %cond.i) #11
  br label %__do_sys_prlimit64.exit

__do_sys_prlimit64.exit:                          ; preds = %if.then.i113.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__do_sys_prlimit64.exit_crit_edge, %rcu_read_unlock.exit94.i, %rcu_read_unlock.exit.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %retval.0.i125.i, %rcu_read_unlock.exit94.i ], [ -3, %rcu_read_unlock.exit.i ], [ %ret.0.i, %if.end5.i.i.i.i.i.__do_sys_prlimit64.exit_crit_edge ], [ %ret.0.i, %if.then10.i.i.i.i.i ], [ %ret.0.i, %if.then.i113.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new64.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %old64.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setrlimit(i32 noundef %resource, i32 noundef %rlim) #0 align 64 {
entry:
  %new_rlim.i = alloca %struct.rlimit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rlim to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_rlim.i) #11
  %1 = ptrtoint ptr %new_rlim.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %new_rlim.i, align 4, !annotation !639
  %2 = getelementptr inbounds %struct.rlimit, ptr %new_rlim.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !639
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %entry.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.then11.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !643

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_rlim.i, i32 noundef 8) #11
  %5 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !630
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_rlim.i, ptr noundef %0, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !643

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %entry.if.then11.i.i.i_crit_edge
  %res.0.i.i5.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %entry.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i5.i
  %add.ptr.i.i.i = getelementptr i8, ptr %new_rlim.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i5.i)
  br label %__do_sys_setrlimit.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %call2.i = call i32 @do_prlimit(ptr noundef %12, i32 noundef %resource, ptr noundef nonnull %new_rlim.i, ptr noundef null) #11
  br label %__do_sys_setrlimit.exit

__do_sys_setrlimit.exit:                          ; preds = %if.end.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_rlim.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @getrusage(ptr noundef %p, i32 noundef %who, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %tgutime = alloca i64, align 8
  %tgstime = alloca i64, align 8
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %tmp = alloca %struct.__kernel_old_timeval, align 8
  %tmp52 = alloca %struct.__kernel_old_timeval, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tgutime) #11
  %1 = ptrtoint ptr %tgutime to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tgutime, align 8, !annotation !639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tgstime) #11
  %2 = ptrtoint ptr %tgstime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tgstime, align 8, !annotation !639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %utime) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stime) #11
  %3 = call ptr @memset(ptr %r, i32 0, i32 72)
  %4 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %stime, align 8
  %5 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %utime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %who)
  %cmp = icmp eq i32 %who, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  call void @task_cputime_adjusted(ptr noundef %9, ptr noundef nonnull %utime, ptr noundef nonnull %stime) #11
  %nvcsw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 90
  %10 = ptrtoint ptr %nvcsw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvcsw.i, align 16
  %ru_nvcsw.i = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 14
  %12 = ptrtoint ptr %ru_nvcsw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ru_nvcsw.i, align 4
  %add.i = add i32 %13, %11
  store i32 %add.i, ptr %ru_nvcsw.i, align 4
  %nivcsw.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 91
  %14 = ptrtoint ptr %nivcsw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nivcsw.i, align 4
  %ru_nivcsw.i = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 15
  %16 = ptrtoint ptr %ru_nivcsw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ru_nivcsw.i, align 4
  %add1.i = add i32 %17, %15
  store i32 %add1.i, ptr %ru_nivcsw.i, align 4
  %min_flt.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 94
  %18 = ptrtoint ptr %min_flt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_flt.i, align 8
  %ru_minflt.i = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 6
  %20 = ptrtoint ptr %ru_minflt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ru_minflt.i, align 4
  %add2.i = add i32 %21, %19
  store i32 %add2.i, ptr %ru_minflt.i, align 4
  %maj_flt.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 95
  %22 = ptrtoint ptr %maj_flt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maj_flt.i, align 4
  %ru_majflt.i = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 7
  %24 = ptrtoint ptr %ru_majflt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ru_majflt.i, align 4
  %add3.i = add i32 %25, %23
  store i32 %add3.i, ptr %ru_majflt.i, align 4
  %read_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 4
  %26 = ptrtoint ptr %read_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %read_bytes.i.i, align 8
  %shr.i.i = lshr i64 %27, 9
  %conv.i.i = trunc i64 %shr.i.i to i32
  %ru_inblock.i = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 9
  %28 = ptrtoint ptr %ru_inblock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ru_inblock.i, align 4
  %add4.i = add i32 %29, %conv.i.i
  store i32 %add4.i, ptr %ru_inblock.i, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 155, i32 5
  %30 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %write_bytes.i.i, align 8
  %shr.i17.i = lshr i64 %31, 9
  %conv.i18.i = trunc i64 %shr.i17.i to i32
  %ru_oublock.i = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 10
  %32 = ptrtoint ptr %ru_oublock.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ru_oublock.i, align 4
  %add6.i = add i32 %33, %conv.i18.i
  store i32 %add6.i, ptr %ru_oublock.i, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %34 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %signal, align 16
  %maxrss1 = getelementptr inbounds %struct.signal_struct, ptr %35, i32 0, i32 47
  %36 = ptrtoint ptr %maxrss1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxrss1, align 8
  br label %out

if.end:                                           ; preds = %entry
  %call.i = call ptr @__lock_task_sighand(ptr noundef %p, ptr noundef nonnull %flags) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %38 = zext i32 %who to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %who, label %do.body46 [
    i32 -2, label %if.end4.sw.bb_crit_edge
    i32 -1, label %if.end4.sw.bb_crit_edge138
    i32 0, label %if.end4.sw.bb17_crit_edge
  ]

if.end4.sw.bb17_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

if.end4.sw.bb_crit_edge138:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge138
  %signal5 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %39 = ptrtoint ptr %signal5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %signal5, align 16
  %cutime = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 30
  %41 = ptrtoint ptr %cutime to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %cutime, align 8
  %43 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %utime, align 8
  %cstime = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 31
  %44 = ptrtoint ptr %cstime to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cstime, align 8
  %46 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %stime, align 8
  %cnvcsw = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 37
  %47 = ptrtoint ptr %cnvcsw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cnvcsw, align 8
  %ru_nvcsw = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 14
  %49 = ptrtoint ptr %ru_nvcsw to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ru_nvcsw, align 4
  %50 = load ptr, ptr %signal5, align 16
  %cnivcsw = getelementptr inbounds %struct.signal_struct, ptr %50, i32 0, i32 38
  %51 = ptrtoint ptr %cnivcsw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cnivcsw, align 4
  %ru_nivcsw = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 15
  %53 = ptrtoint ptr %ru_nivcsw to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ru_nivcsw, align 4
  %54 = load ptr, ptr %signal5, align 16
  %cmin_flt = getelementptr inbounds %struct.signal_struct, ptr %54, i32 0, i32 41
  %55 = ptrtoint ptr %cmin_flt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmin_flt, align 8
  %ru_minflt = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 6
  %57 = ptrtoint ptr %ru_minflt to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ru_minflt, align 4
  %58 = load ptr, ptr %signal5, align 16
  %cmaj_flt = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 42
  %59 = ptrtoint ptr %cmaj_flt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmaj_flt, align 4
  %ru_majflt = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 7
  %61 = ptrtoint ptr %ru_majflt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ru_majflt, align 4
  %62 = load ptr, ptr %signal5, align 16
  %cinblock = getelementptr inbounds %struct.signal_struct, ptr %62, i32 0, i32 45
  %63 = ptrtoint ptr %cinblock to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cinblock, align 8
  %ru_inblock = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 9
  %65 = ptrtoint ptr %ru_inblock to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ru_inblock, align 4
  %66 = load ptr, ptr %signal5, align 16
  %coublock = getelementptr inbounds %struct.signal_struct, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %coublock to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %coublock, align 4
  %ru_oublock = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 10
  %69 = ptrtoint ptr %ru_oublock to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ru_oublock, align 4
  %70 = load ptr, ptr %signal5, align 16
  %cmaxrss = getelementptr inbounds %struct.signal_struct, ptr %70, i32 0, i32 48
  %71 = ptrtoint ptr %cmaxrss to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cmaxrss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %who)
  %cmp14 = icmp eq i32 %who, -1
  br i1 %cmp14, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.bb17_crit_edge

sw.bb.sw.bb17_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb17:                                          ; preds = %sw.bb.sw.bb17_crit_edge, %if.end4.sw.bb17_crit_edge
  %maxrss.0 = phi i32 [ %who, %if.end4.sw.bb17_crit_edge ], [ %72, %sw.bb.sw.bb17_crit_edge ]
  call void @thread_group_cputime_adjusted(ptr noundef %p, ptr noundef nonnull %tgutime, ptr noundef nonnull %tgstime) #11
  %73 = ptrtoint ptr %tgutime to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tgutime, align 8
  %75 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %utime, align 8
  %add = add i64 %76, %74
  store i64 %add, ptr %utime, align 8
  %77 = ptrtoint ptr %tgstime to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tgstime, align 8
  %79 = ptrtoint ptr %stime to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %stime, align 8
  %add18 = add i64 %80, %78
  store i64 %add18, ptr %stime, align 8
  %signal19 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %81 = ptrtoint ptr %signal19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %signal19, align 16
  %nvcsw = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 35
  %83 = ptrtoint ptr %nvcsw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nvcsw, align 8
  %ru_nvcsw20 = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 14
  %85 = ptrtoint ptr %ru_nvcsw20 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ru_nvcsw20, align 4
  %add21 = add i32 %86, %84
  store i32 %add21, ptr %ru_nvcsw20, align 4
  %87 = load ptr, ptr %signal19, align 16
  %nivcsw = getelementptr inbounds %struct.signal_struct, ptr %87, i32 0, i32 36
  %88 = ptrtoint ptr %nivcsw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nivcsw, align 4
  %ru_nivcsw23 = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 15
  %90 = ptrtoint ptr %ru_nivcsw23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ru_nivcsw23, align 4
  %add24 = add i32 %91, %89
  store i32 %add24, ptr %ru_nivcsw23, align 4
  %92 = load ptr, ptr %signal19, align 16
  %min_flt = getelementptr inbounds %struct.signal_struct, ptr %92, i32 0, i32 39
  %93 = ptrtoint ptr %min_flt to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %min_flt, align 8
  %ru_minflt26 = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 6
  %95 = ptrtoint ptr %ru_minflt26 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ru_minflt26, align 4
  %add27 = add i32 %96, %94
  store i32 %add27, ptr %ru_minflt26, align 4
  %97 = load ptr, ptr %signal19, align 16
  %maj_flt = getelementptr inbounds %struct.signal_struct, ptr %97, i32 0, i32 40
  %98 = ptrtoint ptr %maj_flt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %maj_flt, align 4
  %ru_majflt29 = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 7
  %100 = ptrtoint ptr %ru_majflt29 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ru_majflt29, align 4
  %add30 = add i32 %101, %99
  store i32 %add30, ptr %ru_majflt29, align 4
  %102 = load ptr, ptr %signal19, align 16
  %inblock = getelementptr inbounds %struct.signal_struct, ptr %102, i32 0, i32 43
  %103 = ptrtoint ptr %inblock to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %inblock, align 8
  %ru_inblock32 = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 9
  %105 = ptrtoint ptr %ru_inblock32 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ru_inblock32, align 4
  %add33 = add i32 %106, %104
  store i32 %add33, ptr %ru_inblock32, align 4
  %107 = load ptr, ptr %signal19, align 16
  %oublock = getelementptr inbounds %struct.signal_struct, ptr %107, i32 0, i32 44
  %108 = ptrtoint ptr %oublock to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %oublock, align 4
  %ru_oublock35 = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 10
  %110 = ptrtoint ptr %ru_oublock35 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ru_oublock35, align 4
  %add36 = add i32 %111, %109
  store i32 %add36, ptr %ru_oublock35, align 4
  %112 = load ptr, ptr %signal19, align 16
  %maxrss38 = getelementptr inbounds %struct.signal_struct, ptr %112, i32 0, i32 47
  %113 = ptrtoint ptr %maxrss38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %maxrss38, align 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %sw.bb17
  %t.0 = phi ptr [ %p, %sw.bb17 ], [ %add.ptr.i, %do.body.do.body_crit_edge ]
  %nvcsw.i113 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 90
  %115 = ptrtoint ptr %nvcsw.i113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nvcsw.i113, align 16
  %117 = ptrtoint ptr %ru_nvcsw20 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ru_nvcsw20, align 4
  %add.i115 = add i32 %118, %116
  store i32 %add.i115, ptr %ru_nvcsw20, align 4
  %nivcsw.i116 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 91
  %119 = ptrtoint ptr %nivcsw.i116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nivcsw.i116, align 4
  %121 = ptrtoint ptr %ru_nivcsw23 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ru_nivcsw23, align 4
  %add1.i118 = add i32 %122, %120
  store i32 %add1.i118, ptr %ru_nivcsw23, align 4
  %min_flt.i119 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 94
  %123 = ptrtoint ptr %min_flt.i119 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %min_flt.i119, align 8
  %125 = ptrtoint ptr %ru_minflt26 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ru_minflt26, align 4
  %add2.i121 = add i32 %126, %124
  store i32 %add2.i121, ptr %ru_minflt26, align 4
  %maj_flt.i122 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 95
  %127 = ptrtoint ptr %maj_flt.i122 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %maj_flt.i122, align 4
  %129 = ptrtoint ptr %ru_majflt29 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ru_majflt29, align 4
  %add3.i124 = add i32 %130, %128
  store i32 %add3.i124, ptr %ru_majflt29, align 4
  %read_bytes.i.i125 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 155, i32 4
  %131 = ptrtoint ptr %read_bytes.i.i125 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %read_bytes.i.i125, align 8
  %shr.i.i126 = lshr i64 %132, 9
  %conv.i.i127 = trunc i64 %shr.i.i126 to i32
  %133 = ptrtoint ptr %ru_inblock32 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ru_inblock32, align 4
  %add4.i129 = add i32 %134, %conv.i.i127
  store i32 %add4.i129, ptr %ru_inblock32, align 4
  %write_bytes.i.i130 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 155, i32 5
  %135 = ptrtoint ptr %write_bytes.i.i130 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %write_bytes.i.i130, align 8
  %shr.i17.i131 = lshr i64 %136, 9
  %conv.i18.i132 = trunc i64 %shr.i17.i131 to i32
  %137 = ptrtoint ptr %ru_oublock35 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ru_oublock35, align 4
  %add6.i134 = add i32 %138, %conv.i18.i132
  store i32 %add6.i134, ptr %ru_oublock35, align 4
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 80
  %139 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile ptr, ptr %thread_group.i, align 4
  %add.ptr.i = getelementptr i8, ptr %140, i32 -1396
  %cmp45.not = icmp eq ptr %add.ptr.i, %p
  br i1 %cmp45.not, label %sw.epilog.loopexit, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body46:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1805, 0\0A.popsection", ""() #11, !srcloc !649
  unreachable

sw.epilog.loopexit:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %141 = call i32 @llvm.umax.i32(i32 %maxrss.0, i32 %114)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.bb.sw.epilog_crit_edge
  %maxrss.2 = phi i32 [ %72, %sw.bb.sw.epilog_crit_edge ], [ %141, %sw.epilog.loopexit ]
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %142 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sighand.i, align 4
  %144 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %143, i32 noundef %145) #11
  br label %out

out:                                              ; preds = %sw.epilog, %if.then
  %maxrss.3 = phi i32 [ %37, %if.then ], [ %maxrss.2, %sw.epilog ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  %146 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %utime, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp, i64 noundef %147) #11
  %148 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %tmp, align 8
  %150 = ptrtoint ptr %r to i32
  call void @__asan_storeN_noabort(i32 %150, i32 8)
  store i64 %149, ptr %r, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  %ru_stime = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp52) #11
  %151 = ptrtoint ptr %stime to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %stime, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp52, i64 noundef %152) #11
  %153 = ptrtoint ptr %tmp52 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %tmp52, align 8
  %155 = ptrtoint ptr %ru_stime to i32
  call void @__asan_storeN_noabort(i32 %155, i32 8)
  store i64 %154, ptr %ru_stime, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %who)
  %cmp53.not = icmp eq i32 %who, -1
  br i1 %cmp53.not, label %out.if.end59_crit_edge, label %if.then54

out.if.end59_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then54:                                        ; preds = %out
  %call55 = call ptr @get_task_mm(ptr noundef %p) #11
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.then54.if.end59_crit_edge, label %if.then57

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %hiwater_rss.i.i = getelementptr inbounds %struct.anon.13, ptr %call55, i32 0, i32 17
  %156 = ptrtoint ptr %hiwater_rss.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %hiwater_rss.i.i, align 8
  %rss_stat.i.i.i.i = getelementptr inbounds %struct.anon.13, ptr %call55, i32 0, i32 40
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i.i, i32 noundef 4) #11
  %158 = ptrtoint ptr %rss_stat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %rss_stat.i.i.i.i, align 4
  %160 = call i32 @llvm.smax.i32(i32 %159, i32 0) #11
  %arrayidx.i.i.i.i = getelementptr %struct.anon.13, ptr %call55, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i.i, i32 noundef 4) #11
  %161 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %163 = call i32 @llvm.smax.i32(i32 %162, i32 0) #11
  %add.i.i.i = add nuw i32 %163, %160
  %arrayidx.i9.i.i.i = getelementptr %struct.anon.13, ptr %call55, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i.i, i32 noundef 4) #11
  %164 = ptrtoint ptr %arrayidx.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %arrayidx.i9.i.i.i, align 4
  %166 = call i32 @llvm.smax.i32(i32 %165, i32 0) #11
  %add3.i.i.i = add i32 %add.i.i.i, %166
  %167 = call i32 @llvm.umax.i32(i32 %157, i32 %add3.i.i.i) #11
  %168 = call i32 @llvm.umax.i32(i32 %maxrss.3, i32 %167)
  call void @mmput(ptr noundef nonnull %call55) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then54.if.end59_crit_edge, %out.if.end59_crit_edge
  %maxrss.5 = phi i32 [ %maxrss.3, %out.if.end59_crit_edge ], [ %maxrss.3, %if.then54.if.end59_crit_edge ], [ %168, %if.then57 ]
  %mul = shl i32 %maxrss.5, 2
  %ru_maxrss = getelementptr inbounds %struct.rusage, ptr %r, i32 0, i32 2
  %169 = ptrtoint ptr %ru_maxrss to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %mul, ptr %ru_maxrss, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stime) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %utime) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tgstime) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tgutime) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getrusage(i32 noundef %who, i32 noundef %ru) #0 align 64 {
entry:
  %r.i = alloca %struct.rusage, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ru to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %r.i) #11
  %1 = call ptr @memset(ptr %r.i, i32 255, i32 72)
  %2 = zext i32 %who to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %who, label %entry.__do_sys_getrusage.exit_crit_edge [
    i32 0, label %entry.if.end.i_crit_edge
    i32 -1, label %entry.if.end.i_crit_edge1
    i32 1, label %entry.if.end.i_crit_edge2
  ]

entry.if.end.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

entry.if.end.i_crit_edge1:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

entry.__do_sys_getrusage.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getrusage.exit

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge1, %entry.if.end.i_crit_edge2
  %3 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  call void @getrusage(ptr noundef %6, i32 noundef %who, ptr noundef nonnull %r.i) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end.i.__do_sys_getrusage.exit_crit_edge, label %if.end.i.i.i

if.end.i.__do_sys_getrusage.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getrusage.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 72, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_getrusage.exit_crit_edge

if.end.i.i.i.__do_sys_getrusage.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getrusage.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r.i, i32 noundef 72) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %r.i, i32 noundef 72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %__do_sys_getrusage.exit

__do_sys_getrusage.exit:                          ; preds = %copy_to_user.exit.i, %if.end.i.i.i.__do_sys_getrusage.exit_crit_edge, %if.end.i.__do_sys_getrusage.exit_crit_edge, %entry.__do_sys_getrusage.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_getrusage.exit_crit_edge ], [ -14, %if.end.i.__do_sys_getrusage.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_getrusage.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %r.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_umask(i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs.i, align 128
  %umask.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %umask.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !650
  %and.i = and i32 %mask, 511
  tail call void @llvm.prefetch.p0(ptr %umask.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %and.i, ptr %umask.i) #11, !srcloc !651
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !652
  ret i32 %asmresult.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_prctl_spec_ctrl_get(ptr noundef %t, i32 noundef %which) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_prctl_spec_ctrl_set(ptr noundef %t, i32 noundef %which, i32 noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_prctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #0 align 64 {
entry:
  %user_auxv.i = alloca [42 x i32], align 4
  %prctl_map.i.i = alloca %struct.prctl_mm_map, align 8
  %user_auxv.i.i = alloca [42 x i32], align 4
  %prctl_map.i = alloca %struct.prctl_mm_map, align 8
  %comm.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i508.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i508.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm.i) #11
  %4 = getelementptr inbounds [16 x i8], ptr %comm.i, i32 0, i32 15
  %5 = call ptr @memset(ptr %comm.i, i32 255, i32 16)
  %call1.i = tail call i32 @security_task_prctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, -38
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_prctl.exit_crit_edge

entry.__do_sys_prctl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end.i:                                         ; preds = %entry
  %6 = zext i32 %option to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %option, label %if.end.i.sw.epilog358.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb11.i
    i32 1398164801, label %sw.bb355.i
    i32 62, label %sw.bb353.i
    i32 52, label %sw.bb246.i
    i32 58, label %sw.bb332.i
    i32 57, label %sw.bb304.i
    i32 56, label %sw.bb294.i
    i32 13, label %sw.bb23.i
    i32 14, label %sw.bb24.i
    i32 15, label %sw.bb28.i
    i32 16, label %do.end37.i
    i32 55, label %sw.bb286.i
    i32 61, label %sw.bb276.i
    i32 21, label %sw.bb48.i
    i32 22, label %sw.bb50.i
    i32 60, label %sw.bb270.i
    i32 54, label %sw.bb262.i
    i32 31, label %sw.bb54.i
    i32 32, label %sw.bb56.i
    i32 30, label %sw.bb58.i
    i32 29, label %sw.bb67.i
    i32 33, label %sw.bb82.i
    i32 34, label %sw.bb125.i
    i32 35, label %sw.bb145.i
    i32 40, label %sw.bb147.i
    i32 36, label %sw.bb149.i
    i32 37, label %sw.bb155.i
    i32 38, label %sw.bb174.i
    i32 39, label %sw.bb186.i
    i32 42, label %sw.bb201.i
    i32 41, label %sw.bb219.i
    i32 43, label %if.end.i.__do_sys_prctl.exit_crit_edge
    i32 44, label %if.end.i.__do_sys_prctl.exit_crit_edge47
    i32 53, label %sw.bb255.i
  ]

if.end.i.__do_sys_prctl.exit_crit_edge47:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end.i.__do_sys_prctl.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end.i.sw.epilog358.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %arg2)
  %cmp.i.i = icmp ugt i32 %arg2, 64
  br i1 %cmp.i.i, label %sw.bb.i.sw.epilog358.i_crit_edge, label %if.end4.i

sw.bb.i.sw.epilog358.i_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

if.end4.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdeath_signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 60
  %7 = ptrtoint ptr %pdeath_signal.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %arg2, ptr %pdeath_signal.i, align 8
  br label %sw.epilog358.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = inttoptr i32 %arg2 to ptr
  %pdeath_signal6.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 60
  %9 = ptrtoint ptr %pdeath_signal6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdeath_signal6.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 2358) #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !630
  %and.i.i = and i32 %13, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %10, i32 -1226833921) #11, !srcloc !653
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %sw.epilog358.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %15 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mm.i, align 8
  %flags.i.i = getelementptr inbounds %struct.anon.13, ptr %16, i32 0, i32 43
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 8
  %and.i.i.i = and i32 %18, 3
  br label %sw.epilog358.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg2)
  %switch.i = icmp ult i32 %arg2, 2
  br i1 %switch.i, label %if.end15.i, label %sw.bb11.i.sw.epilog358.i_crit_edge

sw.bb11.i.sw.epilog358.i_crit_edge:               ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

if.end15.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %mm16.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %19 = ptrtoint ptr %mm16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm16.i, align 8
  tail call void @set_dumpable(ptr noundef %20, i32 noundef %arg2) #11
  br label %sw.epilog358.i

sw.bb23.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb24.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg2)
  %cmp25.not.i = icmp eq i32 %arg2, 0
  %spec.select.i = select i1 %cmp25.not.i, i32 0, i32 -22
  br label %sw.epilog358.i

sw.bb28.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %4, align 1
  %22 = inttoptr i32 %arg2 to ptr
  %call29.i = call i32 @strncpy_from_user(ptr noundef nonnull %comm.i, ptr noundef %22, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %sw.bb28.i.__do_sys_prctl.exit_crit_edge, label %if.end32.i

sw.bb28.i.__do_sys_prctl.exit_crit_edge:          ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end32.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__set_task_comm(ptr noundef %3, ptr noundef nonnull %comm.i, i1 noundef zeroext false) #11
  call void @proc_comm_connector(ptr noundef %3) #11
  br label %sw.epilog358.i

do.end37.i:                                       ; preds = %if.end.i
  %call40.i = call ptr @__get_task_comm(ptr noundef nonnull %comm.i, i32 noundef 16, ptr noundef %3) #11
  %23 = inttoptr i32 %arg2 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %do.end37.i.__do_sys_prctl.exit_crit_edge, label %if.end.i.i.i

do.end37.i.__do_sys_prctl.exit_crit_edge:         ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end.i.i.i:                                     ; preds = %do.end37.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 16, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_prctl.exit_crit_edge

if.end.i.i.i.__do_sys_prctl.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %comm.i, i32 noundef 16) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %comm.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool43.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool43.not.i, label %copy_to_user.exit.i.sw.epilog358.i_crit_edge, label %copy_to_user.exit.i.__do_sys_prctl.exit_crit_edge

copy_to_user.exit.i.__do_sys_prctl.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

copy_to_user.exit.i.sw.epilog358.i_crit_edge:     ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb48.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call49.i = tail call i32 @prctl_get_seccomp() #11
  br label %sw.epilog358.i

sw.bb50.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = inttoptr i32 %arg3 to ptr
  %call51.i = tail call i32 @prctl_set_seccomp(i32 noundef %arg2, ptr noundef %25) #11
  br label %sw.epilog358.i

sw.bb54.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call55.i = tail call i32 @perf_event_task_disable() #11
  br label %sw.epilog358.i

sw.bb56.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call57.i = tail call i32 @perf_event_task_enable() #11
  br label %sw.epilog358.i

sw.bb58.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %timer_slack_ns.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 189
  %28 = ptrtoint ptr %timer_slack_ns.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timer_slack_ns.i, align 8
  %30 = tail call i64 @llvm.umin.i64(i64 %29, i64 4294967295) #11
  %31 = trunc i64 %30 to i32
  br label %sw.epilog358.i

sw.bb67.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg2)
  %cmp68.i = icmp eq i32 %arg2, 0
  br i1 %cmp68.i, label %if.then70.i, label %if.else76.i

if.then70.i:                                      ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %default_timer_slack_ns.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 190
  %34 = ptrtoint ptr %default_timer_slack_ns.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %default_timer_slack_ns.i, align 32
  %timer_slack_ns75.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 189
  %36 = ptrtoint ptr %timer_slack_ns75.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %timer_slack_ns75.i, align 8
  br label %sw.epilog358.i

if.else76.i:                                      ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv77.i = zext i32 %arg2 to i64
  %37 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i, align 8
  %timer_slack_ns80.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 189
  %39 = ptrtoint ptr %timer_slack_ns80.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv77.i, ptr %timer_slack_ns80.i, align 8
  br label %sw.epilog358.i

sw.bb82.i:                                        ; preds = %if.end.i
  %or.i = or i32 %arg5, %arg4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool83.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %sw.bb82.i.__do_sys_prctl.exit_crit_edge

sw.bb82.i.__do_sys_prctl.exit_crit_edge:          ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end85.i:                                       ; preds = %sw.bb82.i
  %40 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %arg2, label %if.end85.i.__do_sys_prctl.exit_crit_edge [
    i32 0, label %sw.bb86.i
    i32 1, label %sw.bb93.i
  ]

if.end85.i.__do_sys_prctl.exit_crit_edge:         ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

sw.bb86.i:                                        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg3)
  %cmp87.not.i = icmp eq i32 %arg3, 0
  br i1 %cmp87.not.i, label %if.end90.i, label %sw.bb86.i.__do_sys_prctl.exit_crit_edge

sw.bb86.i.__do_sys_prctl.exit_crit_edge:          ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end90.i:                                       ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %44, -129
  store i32 %and.i, ptr %flags.i, align 4
  br label %sw.epilog358.i

sw.bb93.i:                                        ; preds = %if.end85.i
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %flags96.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags96.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags96.i, align 4
  %or97.i = or i32 %48, 128
  store i32 %or97.i, ptr %flags96.i, align 4
  %49 = zext i32 %arg3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %arg3, label %sw.bb93.i.__do_sys_prctl.exit_crit_edge [
    i32 1, label %if.then100.i
    i32 0, label %if.then108.i
    i32 2, label %if.then116.i
  ]

sw.bb93.i.__do_sys_prctl.exit_crit_edge:          ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.then100.i:                                     ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i, align 8
  %flags103.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %flags103.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags103.i, align 4
  %or104.i = or i32 %53, 134217728
  store i32 %or104.i, ptr %flags103.i, align 4
  br label %sw.epilog358.i

if.then108.i:                                     ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %flags111.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %flags111.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags111.i, align 4
  %and112.i = and i32 %57, -134217729
  store i32 %and112.i, ptr %flags111.i, align 4
  br label %sw.epilog358.i

if.then116.i:                                     ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i, align 8
  %flags119.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %flags119.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags119.i, align 4
  %and120.i = and i32 %61, -134217857
  store i32 %and120.i, ptr %flags119.i, align 4
  br label %sw.epilog358.i

sw.bb125.i:                                       ; preds = %if.end.i
  %or126.i = or i32 %arg5, %arg4
  %or127.i = or i32 %or126.i, %arg2
  %or128.i = or i32 %or127.i, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or128.i)
  %tobool129.not.i = icmp eq i32 %or128.i, 0
  br i1 %tobool129.not.i, label %if.end131.i, label %sw.bb125.i.__do_sys_prctl.exit_crit_edge

sw.bb125.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end131.i:                                      ; preds = %sw.bb125.i
  %62 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i, align 8
  %flags134.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %flags134.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags134.i, align 4
  %and135.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.end131.i.sw.epilog358.i_crit_edge, label %if.then137.i

if.end131.i.sw.epilog358.i_crit_edge:             ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

if.then137.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  %and141.i = lshr i32 %65, 27
  %and141.lobit.i = and i32 %and141.i, 1
  br label %sw.epilog358.i

sw.bb145.i:                                       ; preds = %if.end.i
  %66 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i7 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i7 to ptr
  %task.i8 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i8, align 8
  %mm1.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 53
  %70 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mm1.i, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %prctl_map.i) #11
  %72 = getelementptr inbounds i8, ptr %prctl_map.i, i32 88
  %73 = call ptr @memset(ptr %72, i32 0, i32 16)
  %74 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32, [4 x i8] }, ptr %prctl_map.i, i32 0, i32 13
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg5)
  %tobool.not.i = icmp eq i32 %arg5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb145.i.prctl_set_mm.exit_crit_edge

sw.bb145.i.prctl_set_mm.exit_crit_edge:           ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm.exit

lor.lhs.false.i:                                  ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg4)
  %tobool2.not.i = icmp eq i32 %arg4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %arg2)
  %cmp6.not.i = icmp eq i32 %arg2, 15
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end.i10_crit_edge, label %switch.early.test.i

lor.lhs.false.i.if.end.i10_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

switch.early.test.i:                              ; preds = %lor.lhs.false.i
  %76 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %arg2, label %switch.early.test.i.prctl_set_mm.exit_crit_edge [
    i32 15, label %switch.early.test.i.if.end.i10_crit_edge
    i32 14, label %switch.early.test.i.if.end.i10_crit_edge48
    i32 12, label %switch.early.test.i.if.end.i10_crit_edge49
  ]

switch.early.test.i.if.end.i10_crit_edge49:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

switch.early.test.i.if.end.i10_crit_edge48:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

switch.early.test.i.if.end.i10_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

switch.early.test.i.prctl_set_mm.exit_crit_edge:  ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm.exit

if.end.i10:                                       ; preds = %switch.early.test.i.if.end.i10_crit_edge, %switch.early.test.i.if.end.i10_crit_edge48, %switch.early.test.i.if.end.i10_crit_edge49, %lor.lhs.false.i.if.end.i10_crit_edge
  %77 = and i32 %arg2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %77)
  %switch.i9 = icmp eq i32 %77, 14
  br i1 %switch.i9, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i10
  %78 = inttoptr i32 %arg3 to ptr
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %prctl_map.i.i) #11
  %79 = call ptr @memset(ptr %prctl_map.i.i, i32 0, i32 104)
  %80 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32, [4 x i8] }, ptr %prctl_map.i.i, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %80, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %user_auxv.i.i) #11
  %82 = call ptr @memset(ptr %user_auxv.i.i, i32 255, i32 168)
  %83 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i128.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i128.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i, align 8
  %mm1.i.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 53
  %87 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mm1.i.i, align 8
  br i1 %cmp6.not.i, label %if.then.i.i12, label %if.end.i.i

if.then.i.i12:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 1967) #11
  %89 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 4
  %91 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #3, !srcloc !630
  %and.i.i.i11 = and i32 %91, -13
  %or.i.i.i = or i32 %and.i.i.i11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %92 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %78, i32 104, i32 -1226833921) #11, !srcloc !654
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %prctl_set_mm_map.exit.i

if.end.i.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %arg4)
  %cmp10.not.i.i = icmp eq i32 %arg4, 104
  br i1 %cmp10.not.i.i, label %if.end8.i.i.i.i, label %if.end.i.i.prctl_set_mm_map.exit.i_crit_edge

if.end.i.i.prctl_set_mm_map.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm_map.exit.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i.i.i13 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i13, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %78, i32 104, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !643

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prctl_map.i.i, i32 noundef 104) #11
  %94 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 4
  %96 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #3, !srcloc !630
  %and.i.i.i.i.i.i = and i32 %96, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %prctl_map.i.i, ptr noundef %78, i32 noundef 104) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end15.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !643

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i131.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 104, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 104, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 104, %res.0.i.i131.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %prctl_map.i.i, i32 %sub.i.i.i.i
  %97 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i131.i.i)
  br label %prctl_set_mm_map.exit.i

if.end15.i.i:                                     ; preds = %if.end.i.i.i.i
  %call16.i.i = call fastcc i32 @validate_prctl_map_addr(ptr noundef nonnull %prctl_map.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end19.i.i, label %if.end15.i.i.prctl_set_mm_map.exit.i_crit_edge

if.end15.i.i.prctl_set_mm_map.exit.i_crit_edge:   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm_map.exit.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %auxv_size.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 12
  %98 = ptrtoint ptr %auxv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %auxv_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool20.not.i.i = icmp eq i32 %99, 0
  br i1 %tobool20.not.i.i, label %if.end19.i.i.if.end35.i.i_crit_edge, label %if.then21.i.i

if.end19.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  %auxv.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 11
  %100 = ptrtoint ptr %auxv.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %auxv.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %101, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 168, i32 %99)
  %cmp24.i.i = icmp ugt i32 %99, 168
  %or.cond.i.i = select i1 %tobool22.not.i.i, i1 true, i1 %cmp24.i.i
  br i1 %or.cond.i.i, label %if.then21.i.i.prctl_set_mm_map.exit.i_crit_edge, label %if.end26.i.i

if.then21.i.i.prctl_set_mm_map.exit.i_crit_edge:  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm_map.exit.i

if.end26.i.i:                                     ; preds = %if.then21.i.i
  %102 = call ptr @memset(ptr %user_auxv.i.i, i32 0, i32 168)
  call void @__check_object_size(ptr noundef nonnull %user_auxv.i.i, i32 noundef %99, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i109.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i109.i.i, label %if.end26.i.i.if.then11.i.i125.i.i_crit_edge, label %land.lhs.true.i.i112.i.i

if.end26.i.i.if.then11.i.i125.i.i_crit_edge:      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i125.i.i

land.lhs.true.i.i112.i.i:                         ; preds = %if.end26.i.i
  %103 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %101, i32 %99, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i110.i.i = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i110.i.i)
  %cmp.i6.i111.i.i = icmp eq i32 %asmresult.i.i110.i.i, 0
  br i1 %cmp.i6.i111.i.i, label %if.end.i.i122.i.i, label %land.lhs.true.i.i112.i.i.if.then11.i.i125.i.i_crit_edge, !prof !643

land.lhs.true.i.i112.i.i.if.then11.i.i125.i.i_crit_edge: ; preds = %land.lhs.true.i.i112.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i125.i.i

if.end.i.i122.i.i:                                ; preds = %land.lhs.true.i.i112.i.i
  %call.i.i.i113.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_auxv.i.i, i32 noundef %99) #11
  %104 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i114.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i114.i.i to ptr
  %cpu_domain.i.i.i.i.i115.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i115.i.i) #3, !srcloc !630
  %and.i.i.i.i116.i.i = and i32 %106, -13
  %or.i.i.i.i117.i.i = or i32 %and.i.i.i.i116.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i117.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i118.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_auxv.i.i, ptr noundef nonnull %101, i32 noundef %99) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i118.i.i)
  %tobool4.not.i.i121.i.i = icmp eq i32 %call1.i.i.i118.i.i, 0
  br i1 %tobool4.not.i.i121.i.i, label %if.end33.i.i, label %if.end.i.i122.i.i.if.then11.i.i125.i.i_crit_edge, !prof !643

if.end.i.i122.i.i.if.then11.i.i125.i.i_crit_edge: ; preds = %if.end.i.i122.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i125.i.i

if.then11.i.i125.i.i:                             ; preds = %if.end.i.i122.i.i.if.then11.i.i125.i.i_crit_edge, %land.lhs.true.i.i112.i.i.if.then11.i.i125.i.i_crit_edge, %if.end26.i.i.if.then11.i.i125.i.i_crit_edge
  %res.0.i.i120136.i.i = phi i32 [ %call1.i.i.i118.i.i, %if.end.i.i122.i.i.if.then11.i.i125.i.i_crit_edge ], [ %99, %if.end26.i.i.if.then11.i.i125.i.i_crit_edge ], [ %99, %land.lhs.true.i.i112.i.i.if.then11.i.i125.i.i_crit_edge ]
  %sub.i.i123.i.i = sub i32 %99, %res.0.i.i120136.i.i
  %add.ptr.i.i124.i.i = getelementptr i8, ptr %user_auxv.i.i, i32 %sub.i.i123.i.i
  %107 = call ptr @memset(ptr %add.ptr.i.i124.i.i, i32 0, i32 %res.0.i.i120136.i.i)
  br label %prctl_set_mm_map.exit.i

if.end33.i.i:                                     ; preds = %if.end.i.i122.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr inbounds [42 x i32], ptr %user_auxv.i.i, i32 0, i32 40
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %arrayidx.i.i, align 4
  %arrayidx34.i.i = getelementptr inbounds [42 x i32], ptr %user_auxv.i.i, i32 0, i32 41
  %109 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %arrayidx34.i.i, align 4
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.end33.i.i, %if.end19.i.i.if.end35.i.i_crit_edge
  %110 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp36.not.i.i = icmp eq i32 %111, -1
  br i1 %cmp36.not.i.i, label %if.end35.i.i.if.end53.i.i_crit_edge, label %do.end41.i.i

if.end35.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i.i

do.end41.i.i:                                     ; preds = %if.end35.i.i
  %112 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 99
  %114 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cred.i.i, align 16
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %115, i32 0, i32 25
  %116 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %user_ns.i.i, align 4
  %call.i45 = call zeroext i1 @ns_capable(ptr noundef %117, i32 noundef 40) #11
  br i1 %call.i45, label %do.end41.i.i.if.end47.i.i_crit_edge, label %checkpoint_restore_ns_capable.exit

do.end41.i.i.if.end47.i.i_crit_edge:              ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

checkpoint_restore_ns_capable.exit:               ; preds = %do.end41.i.i
  %call1.i46 = call zeroext i1 @ns_capable(ptr noundef %117, i32 noundef 21) #11
  br i1 %call1.i46, label %checkpoint_restore_ns_capable.exit.if.end47.i.i_crit_edge, label %checkpoint_restore_ns_capable.exit.prctl_set_mm_map.exit.i_crit_edge

checkpoint_restore_ns_capable.exit.prctl_set_mm_map.exit.i_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm_map.exit.i

checkpoint_restore_ns_capable.exit.if.end47.i.i_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %checkpoint_restore_ns_capable.exit.if.end47.i.i_crit_edge, %do.end41.i.i.if.end47.i.i_crit_edge
  %118 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %80, align 8
  %call49.i.i = call fastcc i32 @prctl_set_mm_exe_file(ptr noundef %88, i32 noundef %119) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end47.i.i.if.end53.i.i_crit_edge, label %if.end47.i.i.prctl_set_mm_map.exit.i_crit_edge

if.end47.i.i.prctl_set_mm_map.exit.i_crit_edge:   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm_map.exit.i

if.end47.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.end47.i.i.if.end53.i.i_crit_edge, %if.end35.i.i.if.end53.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i.i40)) #11
          to label %__mmap_lock_trace_start_locking.exit.i42 [label %if.then.i.i40], !srcloc !655

if.then.i.i40:                                    ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %88, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i42

__mmap_lock_trace_start_locking.exit.i42:         ; preds = %if.then.i.i40, %if.end53.i.i
  %mmap_lock.i41 = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 15
  call void @down_read(ptr noundef %mmap_lock.i41) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i3.i43)) #11
          to label %mmap_read_lock.exit44 [label %if.then.i3.i43], !srcloc !655

if.then.i3.i43:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i42
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %88, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %mmap_read_lock.exit44

mmap_read_lock.exit44:                            ; preds = %if.then.i3.i43, %__mmap_lock_trace_start_locking.exit.i42
  %arg_lock.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 27
  call void @_raw_spin_lock(ptr noundef %arg_lock.i.i) #11
  %120 = ptrtoint ptr %prctl_map.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %prctl_map.i.i, align 8
  %conv.i.i = trunc i64 %121 to i32
  %start_code54.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 28
  %122 = ptrtoint ptr %start_code54.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv.i.i, ptr %start_code54.i.i, align 4
  %end_code.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %end_code.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %end_code.i.i, align 8
  %conv55.i.i = trunc i64 %124 to i32
  %end_code56.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 29
  %125 = ptrtoint ptr %end_code56.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv55.i.i, ptr %end_code56.i.i, align 8
  %start_data.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %start_data.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %start_data.i.i, align 8
  %conv57.i.i = trunc i64 %127 to i32
  %start_data58.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 30
  %128 = ptrtoint ptr %start_data58.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv57.i.i, ptr %start_data58.i.i, align 4
  %end_data.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %end_data.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %end_data.i.i, align 8
  %conv59.i.i = trunc i64 %130 to i32
  %end_data60.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 31
  %131 = ptrtoint ptr %end_data60.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv59.i.i, ptr %end_data60.i.i, align 8
  %start_brk.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 4
  %132 = ptrtoint ptr %start_brk.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %start_brk.i.i, align 8
  %conv61.i.i = trunc i64 %133 to i32
  %start_brk62.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 32
  %134 = ptrtoint ptr %start_brk62.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv61.i.i, ptr %start_brk62.i.i, align 4
  %brk.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 5
  %135 = ptrtoint ptr %brk.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %brk.i.i, align 8
  %conv63.i.i = trunc i64 %136 to i32
  %brk64.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 33
  %137 = ptrtoint ptr %brk64.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv63.i.i, ptr %brk64.i.i, align 8
  %start_stack.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 6
  %138 = ptrtoint ptr %start_stack.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %start_stack.i.i, align 8
  %conv65.i.i = trunc i64 %139 to i32
  %start_stack66.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 34
  %140 = ptrtoint ptr %start_stack66.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv65.i.i, ptr %start_stack66.i.i, align 4
  %arg_start.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 7
  %141 = ptrtoint ptr %arg_start.i.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arg_start.i.i, align 8
  %conv67.i.i = trunc i64 %142 to i32
  %arg_start68.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 35
  %143 = ptrtoint ptr %arg_start68.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv67.i.i, ptr %arg_start68.i.i, align 8
  %arg_end.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 8
  %144 = ptrtoint ptr %arg_end.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arg_end.i.i, align 8
  %conv69.i.i = trunc i64 %145 to i32
  %arg_end70.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 36
  %146 = ptrtoint ptr %arg_end70.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv69.i.i, ptr %arg_end70.i.i, align 4
  %env_start.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 9
  %147 = ptrtoint ptr %env_start.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %env_start.i.i, align 8
  %conv71.i.i = trunc i64 %148 to i32
  %env_start72.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 37
  %149 = ptrtoint ptr %env_start72.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv71.i.i, ptr %env_start72.i.i, align 8
  %env_end.i.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i.i, i32 0, i32 10
  %150 = ptrtoint ptr %env_end.i.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %env_end.i.i, align 8
  %conv73.i.i = trunc i64 %151 to i32
  %env_end74.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 38
  %152 = ptrtoint ptr %env_end74.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv73.i.i, ptr %env_end74.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %arg_lock.i.i) #11
  %153 = ptrtoint ptr %auxv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %auxv_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool77.not.i.i = icmp eq i32 %154, 0
  br i1 %tobool77.not.i.i, label %mmap_read_lock.exit44.if.end81.i.i_crit_edge, label %if.then78.i.i

mmap_read_lock.exit44.if.end81.i.i_crit_edge:     ; preds = %mmap_read_lock.exit44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i.i

if.then78.i.i:                                    ; preds = %mmap_read_lock.exit44
  call void @__sanitizer_cov_trace_pc() #13
  %saved_auxv.i.i = getelementptr inbounds %struct.anon.13, ptr %88, i32 0, i32 39
  %155 = call ptr @memcpy(ptr %saved_auxv.i.i, ptr %user_auxv.i.i, i32 168)
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.then78.i.i, %mmap_read_lock.exit44.if.end81.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i.i37)) #11
          to label %mmap_read_unlock.exit39 [label %if.then.i.i37], !srcloc !655

if.then.i.i37:                                    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_released(ptr noundef %88, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit39

mmap_read_unlock.exit39:                          ; preds = %if.then.i.i37, %if.end81.i.i
  call void @up_read(ptr noundef %mmap_lock.i41) #11
  br label %prctl_set_mm_map.exit.i

prctl_set_mm_map.exit.i:                          ; preds = %mmap_read_unlock.exit39, %if.end47.i.i.prctl_set_mm_map.exit.i_crit_edge, %checkpoint_restore_ns_capable.exit.prctl_set_mm_map.exit.i_crit_edge, %if.then11.i.i125.i.i, %if.then21.i.i.prctl_set_mm_map.exit.i_crit_edge, %if.end15.i.i.prctl_set_mm_map.exit.i_crit_edge, %if.then11.i.i.i.i, %if.end.i.i.prctl_set_mm_map.exit.i_crit_edge, %if.then.i.i12
  %retval.0.i.i = phi i32 [ %92, %if.then.i.i12 ], [ 0, %mmap_read_unlock.exit39 ], [ -22, %if.end.i.i.prctl_set_mm_map.exit.i_crit_edge ], [ %call16.i.i, %if.end15.i.i.prctl_set_mm_map.exit.i_crit_edge ], [ -22, %if.then21.i.i.prctl_set_mm_map.exit.i_crit_edge ], [ -1, %checkpoint_restore_ns_capable.exit.prctl_set_mm_map.exit.i_crit_edge ], [ %call49.i.i, %if.end47.i.i.prctl_set_mm_map.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i125.i.i ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %user_auxv.i.i) #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %prctl_map.i.i) #11
  br label %prctl_set_mm.exit

if.end12.i:                                       ; preds = %if.end.i10
  %call13.i = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call13.i, label %if.end15.i14, label %if.end12.i.prctl_set_mm.exit_crit_edge

if.end12.i.prctl_set_mm.exit_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm.exit

if.end15.i14:                                     ; preds = %if.end12.i
  %156 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %arg2, label %if.end23.i [
    i32 13, label %if.then17.i
    i32 12, label %if.then21.i
  ]

if.then17.i:                                      ; preds = %if.end15.i14
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call fastcc i32 @prctl_set_mm_exe_file(ptr noundef %71, i32 noundef %arg3) #11
  br label %prctl_set_mm.exit

if.then21.i:                                      ; preds = %if.end15.i14
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %user_auxv.i) #11
  %157 = call ptr @memset(ptr %user_auxv.i, i32 0, i32 168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 168, i32 %arg4)
  %cmp.i25 = icmp ugt i32 %arg4, 168
  br i1 %cmp.i25, label %if.then21.i.prctl_set_auxv.exit_crit_edge, label %if.end.i26

if.then21.i.prctl_set_auxv.exit_crit_edge:        ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_auxv.exit

if.end.i26:                                       ; preds = %if.then21.i
  %158 = inttoptr i32 %arg3 to ptr
  call void @__check_object_size(ptr noundef nonnull %user_auxv.i, i32 noundef %arg4, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 156) #11
  %call.i.i.i27 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i27, label %if.end.i26.if.end.i.i.i33_crit_edge, label %land.lhs.true.i.i.i

if.end.i26.if.end.i.i.i33_crit_edge:              ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i33

land.lhs.true.i.i.i:                              ; preds = %if.end.i26
  %159 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %158, i32 %arg4, i32 -1226833920) #14, !srcloc !642
  %asmresult.i.i.i29 = extractvalue { i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i29)
  %cmp.i6.i.i30 = icmp eq i32 %asmresult.i.i.i29, 0
  br i1 %cmp.i6.i.i30, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i33_crit_edge, !prof !643

land.lhs.true.i.i.i.if.end.i.i.i33_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i33

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_auxv.i, i32 noundef %arg4) #11
  %160 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i.i.i.i = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 4
  %162 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !630
  %and.i.i.i.i.i32 = and i32 %162, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i32, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_auxv.i, ptr noundef %158, i32 noundef %arg4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #11, !srcloc !631
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %if.end.i.i.i33

if.end.i.i.i33:                                   ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i33_crit_edge, %if.end.i26.if.end.i.i.i33_crit_edge
  %res.0.i.i.i = phi i32 [ %arg4, %if.end.i26.if.end.i.i.i33_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %arg4, %land.lhs.true.i.i.i.if.end.i.i.i33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end2.i, label %if.then11.i.i.i, !prof !643

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = sub i32 %arg4, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %user_auxv.i, i32 %sub.i.i.i
  %163 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %prctl_set_auxv.exit

if.end2.i:                                        ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr inbounds [42 x i32], ptr %user_auxv.i, i32 0, i32 40
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr inbounds [42 x i32], ptr %user_auxv.i, i32 0, i32 41
  %165 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %arrayidx3.i, align 4
  %166 = call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i34 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i.i34 to ptr
  %task.i35 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %task.i35 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task.i35, align 8
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #11
  %saved_auxv.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 39
  %170 = call ptr @memcpy(ptr %saved_auxv.i, ptr %user_auxv.i, i32 %arg4)
  %171 = ptrtoint ptr %task.i35 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %task.i35, align 8
  %alloc_lock.i11.i = getelementptr inbounds %struct.task_struct, ptr %172, i32 0, i32 127
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i11.i) #11
  br label %prctl_set_auxv.exit

prctl_set_auxv.exit:                              ; preds = %if.end2.i, %if.then11.i.i.i, %if.then21.i.prctl_set_auxv.exit_crit_edge
  %retval.0.i36 = phi i32 [ 0, %if.end2.i ], [ -22, %if.then21.i.prctl_set_auxv.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %user_auxv.i) #11
  br label %prctl_set_mm.exit

if.end23.i:                                       ; preds = %if.end15.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %arg3)
  %cmp24.i = icmp ugt i32 %arg3, -1226833921
  br i1 %cmp24.i, label %if.end23.i.prctl_set_mm.exit_crit_edge, label %lor.lhs.false25.i

if.end23.i.prctl_set_mm.exit_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm.exit

lor.lhs.false25.i:                                ; preds = %if.end23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %173 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %arg3)
  %cmp26.i = icmp ugt i32 %173, %arg3
  br i1 %cmp26.i, label %lor.lhs.false25.i.prctl_set_mm.exit_crit_edge, label %if.end28.i

lor.lhs.false25.i.prctl_set_mm.exit_crit_edge:    ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %prctl_set_mm.exit

if.end28.i:                                       ; preds = %lor.lhs.false25.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i.i22)) #11
          to label %__mmap_lock_trace_start_locking.exit.i24 [label %if.then.i.i22], !srcloc !655

if.then.i.i22:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %71, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i24

__mmap_lock_trace_start_locking.exit.i24:         ; preds = %if.then.i.i22, %if.end28.i
  %mmap_lock.i23 = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i23) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i3.i)) #11
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !655

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %71, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i24
  %call29.i15 = tail call ptr @find_vma(ptr noundef %71, i32 noundef %arg3) #11
  %arg_lock.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %arg_lock.i) #11
  %start_code.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 28
  %174 = ptrtoint ptr %start_code.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %start_code.i, align 4
  %conv.i = zext i32 %175 to i64
  %176 = ptrtoint ptr %prctl_map.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %conv.i, ptr %prctl_map.i, align 8
  %end_code.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 29
  %177 = ptrtoint ptr %end_code.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %end_code.i, align 8
  %conv31.i = zext i32 %178 to i64
  %end_code32.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 1
  %179 = ptrtoint ptr %end_code32.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv31.i, ptr %end_code32.i, align 8
  %start_data.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 30
  %180 = ptrtoint ptr %start_data.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %start_data.i, align 4
  %conv33.i = zext i32 %181 to i64
  %start_data34.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 2
  %182 = ptrtoint ptr %start_data34.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %conv33.i, ptr %start_data34.i, align 8
  %end_data.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 31
  %183 = ptrtoint ptr %end_data.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %end_data.i, align 8
  %conv35.i = zext i32 %184 to i64
  %end_data36.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 3
  %185 = ptrtoint ptr %end_data36.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv35.i, ptr %end_data36.i, align 8
  %start_brk.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 32
  %186 = ptrtoint ptr %start_brk.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %start_brk.i, align 4
  %conv37.i = zext i32 %187 to i64
  %start_brk38.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 4
  %188 = ptrtoint ptr %start_brk38.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %conv37.i, ptr %start_brk38.i, align 8
  %brk.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 33
  %189 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %brk.i, align 8
  %conv39.i = zext i32 %190 to i64
  %brk40.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 5
  %191 = ptrtoint ptr %brk40.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %conv39.i, ptr %brk40.i, align 8
  %start_stack.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 34
  %192 = ptrtoint ptr %start_stack.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %start_stack.i, align 4
  %conv41.i = zext i32 %193 to i64
  %start_stack42.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 6
  %194 = ptrtoint ptr %start_stack42.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %conv41.i, ptr %start_stack42.i, align 8
  %arg_start.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 35
  %195 = ptrtoint ptr %arg_start.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arg_start.i, align 8
  %conv43.i = zext i32 %196 to i64
  %arg_start44.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 7
  %197 = ptrtoint ptr %arg_start44.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %conv43.i, ptr %arg_start44.i, align 8
  %arg_end.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 36
  %198 = ptrtoint ptr %arg_end.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arg_end.i, align 4
  %conv45.i = zext i32 %199 to i64
  %arg_end46.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 8
  %200 = ptrtoint ptr %arg_end46.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %conv45.i, ptr %arg_end46.i, align 8
  %env_start.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 37
  %201 = ptrtoint ptr %env_start.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %env_start.i, align 8
  %conv47.i = zext i32 %202 to i64
  %env_start48.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 9
  %203 = ptrtoint ptr %env_start48.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %conv47.i, ptr %env_start48.i, align 8
  %env_end.i = getelementptr inbounds %struct.anon.13, ptr %71, i32 0, i32 38
  %204 = ptrtoint ptr %env_end.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %env_end.i, align 4
  %conv49.i = zext i32 %205 to i64
  %env_end50.i = getelementptr inbounds %struct.prctl_mm_map, ptr %prctl_map.i, i32 0, i32 10
  %206 = ptrtoint ptr %env_end50.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %conv49.i, ptr %env_end50.i, align 8
  %207 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %arg2, label %mmap_read_lock.exit.out.i_crit_edge [
    i32 1, label %sw.bb.i16
    i32 2, label %sw.bb53.i
    i32 3, label %sw.bb56.i17
    i32 4, label %sw.bb59.i
    i32 5, label %sw.bb62.i
    i32 6, label %sw.bb65.i
    i32 7, label %sw.bb68.i
    i32 8, label %sw.bb71.i
    i32 9, label %sw.bb74.i
    i32 10, label %sw.bb77.i
    i32 11, label %sw.bb80.i
  ]

mmap_read_lock.exit.out.i_crit_edge:              ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

sw.bb.i16:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv51.i = zext i32 %arg3 to i64
  %208 = ptrtoint ptr %prctl_map.i to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %conv51.i, ptr %prctl_map.i, align 8
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv54.i = zext i32 %arg3 to i64
  %209 = ptrtoint ptr %end_code32.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %conv54.i, ptr %end_code32.i, align 8
  br label %sw.epilog.i

sw.bb56.i17:                                      ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv57.i = zext i32 %arg3 to i64
  %210 = ptrtoint ptr %start_data34.i to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %conv57.i, ptr %start_data34.i, align 8
  br label %sw.epilog.i

sw.bb59.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv60.i = zext i32 %arg3 to i64
  %211 = ptrtoint ptr %end_data36.i to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %conv60.i, ptr %end_data36.i, align 8
  br label %sw.epilog.i

sw.bb62.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv63.i = zext i32 %arg3 to i64
  %212 = ptrtoint ptr %start_stack42.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %conv63.i, ptr %start_stack42.i, align 8
  br label %sw.epilog.i

sw.bb65.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv66.i = zext i32 %arg3 to i64
  %213 = ptrtoint ptr %start_brk38.i to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %conv66.i, ptr %start_brk38.i, align 8
  br label %sw.epilog.i

sw.bb68.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv69.i = zext i32 %arg3 to i64
  %214 = ptrtoint ptr %brk40.i to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %conv69.i, ptr %brk40.i, align 8
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv72.i = zext i32 %arg3 to i64
  %215 = ptrtoint ptr %arg_start44.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv72.i, ptr %arg_start44.i, align 8
  br label %sw.epilog.i

sw.bb74.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv75.i = zext i32 %arg3 to i64
  %216 = ptrtoint ptr %arg_end46.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %conv75.i, ptr %arg_end46.i, align 8
  br label %sw.epilog.i

sw.bb77.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv78.i = zext i32 %arg3 to i64
  %217 = ptrtoint ptr %env_start48.i to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 %conv78.i, ptr %env_start48.i, align 8
  br label %sw.epilog.i

sw.bb80.i:                                        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv81.i = zext i32 %arg3 to i64
  %218 = ptrtoint ptr %env_end50.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %conv81.i, ptr %env_end50.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb80.i, %sw.bb77.i, %sw.bb74.i, %sw.bb71.i, %sw.bb68.i, %sw.bb65.i, %sw.bb62.i, %sw.bb59.i, %sw.bb56.i17, %sw.bb53.i, %sw.bb.i16
  %call83.i = call fastcc i32 @validate_prctl_map_addr(ptr noundef nonnull %prctl_map.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %sw.epilog.i.out.i_crit_edge

sw.epilog.i.out.i_crit_edge:                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end86.i:                                       ; preds = %sw.epilog.i
  %219 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %arg2, label %if.end86.i.sw.epilog91.i_crit_edge [
    i32 5, label %if.end86.i.sw.bb87.i_crit_edge
    i32 8, label %if.end86.i.sw.bb87.i_crit_edge50
    i32 9, label %if.end86.i.sw.bb87.i_crit_edge51
    i32 10, label %if.end86.i.sw.bb87.i_crit_edge52
    i32 11, label %if.end86.i.sw.bb87.i_crit_edge53
  ]

if.end86.i.sw.bb87.i_crit_edge53:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb87.i

if.end86.i.sw.bb87.i_crit_edge52:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb87.i

if.end86.i.sw.bb87.i_crit_edge51:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb87.i

if.end86.i.sw.bb87.i_crit_edge50:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb87.i

if.end86.i.sw.bb87.i_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb87.i

if.end86.i.sw.epilog91.i_crit_edge:               ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog91.i

sw.bb87.i:                                        ; preds = %if.end86.i.sw.bb87.i_crit_edge, %if.end86.i.sw.bb87.i_crit_edge50, %if.end86.i.sw.bb87.i_crit_edge51, %if.end86.i.sw.bb87.i_crit_edge52, %if.end86.i.sw.bb87.i_crit_edge53
  %tobool88.not.i = icmp eq ptr %call29.i15, null
  br i1 %tobool88.not.i, label %sw.bb87.i.out.i_crit_edge, label %sw.bb87.i.sw.epilog91.i_crit_edge

sw.bb87.i.sw.epilog91.i_crit_edge:                ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog91.i

sw.bb87.i.out.i_crit_edge:                        ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

sw.epilog91.i:                                    ; preds = %sw.bb87.i.sw.epilog91.i_crit_edge, %if.end86.i.sw.epilog91.i_crit_edge
  %220 = ptrtoint ptr %prctl_map.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %prctl_map.i, align 8
  %conv93.i = trunc i64 %221 to i32
  %222 = ptrtoint ptr %start_code.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv93.i, ptr %start_code.i, align 4
  %223 = ptrtoint ptr %end_code32.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %end_code32.i, align 8
  %conv96.i = trunc i64 %224 to i32
  %225 = ptrtoint ptr %end_code.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %conv96.i, ptr %end_code.i, align 8
  %226 = ptrtoint ptr %start_data34.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %start_data34.i, align 8
  %conv99.i = trunc i64 %227 to i32
  %228 = ptrtoint ptr %start_data.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %conv99.i, ptr %start_data.i, align 4
  %229 = ptrtoint ptr %end_data36.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %end_data36.i, align 8
  %conv102.i = trunc i64 %230 to i32
  %231 = ptrtoint ptr %end_data.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %conv102.i, ptr %end_data.i, align 8
  %232 = ptrtoint ptr %start_brk38.i to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %start_brk38.i, align 8
  %conv105.i = trunc i64 %233 to i32
  %234 = ptrtoint ptr %start_brk.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv105.i, ptr %start_brk.i, align 4
  %235 = ptrtoint ptr %brk40.i to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %brk40.i, align 8
  %conv108.i = trunc i64 %236 to i32
  %237 = ptrtoint ptr %brk.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %conv108.i, ptr %brk.i, align 8
  %238 = ptrtoint ptr %start_stack42.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %start_stack42.i, align 8
  %conv111.i = trunc i64 %239 to i32
  %240 = ptrtoint ptr %start_stack.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %conv111.i, ptr %start_stack.i, align 4
  %241 = ptrtoint ptr %arg_start44.i to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %arg_start44.i, align 8
  %conv114.i = trunc i64 %242 to i32
  %243 = ptrtoint ptr %arg_start.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv114.i, ptr %arg_start.i, align 8
  %244 = ptrtoint ptr %arg_end46.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %arg_end46.i, align 8
  %conv117.i = trunc i64 %245 to i32
  %246 = ptrtoint ptr %arg_end.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %conv117.i, ptr %arg_end.i, align 4
  %247 = ptrtoint ptr %env_start48.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %env_start48.i, align 8
  %conv120.i = trunc i64 %248 to i32
  %249 = ptrtoint ptr %env_start.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %conv120.i, ptr %env_start.i, align 8
  %250 = ptrtoint ptr %env_end50.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %env_end50.i, align 8
  %conv123.i = trunc i64 %251 to i32
  %252 = ptrtoint ptr %env_end.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv123.i, ptr %env_end.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog91.i, %sw.bb87.i.out.i_crit_edge, %sw.epilog.i.out.i_crit_edge, %mmap_read_lock.exit.out.i_crit_edge
  %error.0.i18 = phi i32 [ -22, %mmap_read_lock.exit.out.i_crit_edge ], [ %call83.i, %sw.epilog.i.out.i_crit_edge ], [ 0, %sw.epilog91.i ], [ -14, %sw.bb87.i.out.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %arg_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i.i20)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i20], !srcloc !655

if.then.i.i20:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %71, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i20, %out.i
  tail call void @up_read(ptr noundef %mmap_lock.i23) #11
  br label %prctl_set_mm.exit

prctl_set_mm.exit:                                ; preds = %mmap_read_unlock.exit, %lor.lhs.false25.i.prctl_set_mm.exit_crit_edge, %if.end23.i.prctl_set_mm.exit_crit_edge, %prctl_set_auxv.exit, %if.then17.i, %if.end12.i.prctl_set_mm.exit_crit_edge, %prctl_set_mm_map.exit.i, %switch.early.test.i.prctl_set_mm.exit_crit_edge, %sw.bb145.i.prctl_set_mm.exit_crit_edge
  %retval.0.i19 = phi i32 [ %retval.0.i.i, %prctl_set_mm_map.exit.i ], [ %call18.i, %if.then17.i ], [ %retval.0.i36, %prctl_set_auxv.exit ], [ %error.0.i18, %mmap_read_unlock.exit ], [ -22, %switch.early.test.i.prctl_set_mm.exit_crit_edge ], [ -22, %sw.bb145.i.prctl_set_mm.exit_crit_edge ], [ -1, %if.end12.i.prctl_set_mm.exit_crit_edge ], [ -22, %lor.lhs.false25.i.prctl_set_mm.exit_crit_edge ], [ -22, %if.end23.i.prctl_set_mm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %prctl_map.i) #11
  br label %sw.epilog358.i

sw.bb147.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %253 = inttoptr i32 %arg2 to ptr
  %clear_child_tid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 84
  %254 = ptrtoint ptr %clear_child_tid.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %clear_child_tid.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 2233) #11
  %256 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i3 = and i32 %256, -16384
  %257 = inttoptr i32 %and.i.i.i.i3 to ptr
  %cpu_domain.i.i.i4 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 4
  %258 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i4) #3, !srcloc !630
  %and.i.i5 = and i32 %258, -13
  %or.i.i6 = or i32 %and.i.i5, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i6) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %259 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %253, ptr %255, i32 -1226833921) #11, !srcloc !656
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %258) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %sw.epilog358.i

sw.bb149.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg2)
  %tobool150.not.i = icmp eq i32 %arg2, 0
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %260 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %signal.i, align 16
  %is_child_subreaper.i = getelementptr inbounds %struct.signal_struct, ptr %261, i32 0, i32 14
  %262 = ptrtoint ptr %is_child_subreaper.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %bf.load.i = load i8, ptr %is_child_subreaper.i, align 8
  %bf.shl.i = select i1 %tobool150.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %is_child_subreaper.i, align 8
  br i1 %tobool150.not.i, label %sw.bb149.i.sw.epilog358.i_crit_edge, label %if.end154.i

sw.bb149.i.sw.epilog358.i_crit_edge:              ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

if.end154.i:                                      ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @walk_process_tree(ptr noundef %3, ptr noundef nonnull @propagate_has_child_subreaper, ptr noundef null) #11
  br label %sw.epilog358.i

sw.bb155.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %263 = inttoptr i32 %arg2 to ptr
  %signal160.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %264 = ptrtoint ptr %signal160.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %signal160.i, align 16
  %is_child_subreaper161.i = getelementptr inbounds %struct.signal_struct, ptr %265, i32 0, i32 14
  %266 = ptrtoint ptr %is_child_subreaper161.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %bf.load162.i = load i8, ptr %is_child_subreaper161.i, align 8
  %bf.lshr.i = lshr i8 %bf.load162.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 2495) #11
  %267 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i504.i = and i32 %267, -16384
  %268 = inttoptr i32 %and.i.i.i504.i to ptr
  %cpu_domain.i.i505.i = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 4
  %269 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i505.i) #3, !srcloc !630
  %and.i506.i = and i32 %269, -13
  %or.i507.i = or i32 %and.i506.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i507.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %270 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %263, i32 %bf.cast.i, i32 -1226833921) #11, !srcloc !657
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %269) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %sw.epilog358.i

sw.bb174.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg2)
  %cmp175.not.i = icmp eq i32 %arg2, 1
  %271 = or i32 %arg5, %arg4
  %272 = or i32 %271, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %273 = icmp eq i32 %272, 0
  %274 = and i1 %cmp175.not.i, %273
  br i1 %274, label %if.end183.i, label %sw.bb174.i.__do_sys_prctl.exit_crit_edge

sw.bb174.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb174.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end183.i:                                      ; preds = %sw.bb174.i
  call void @__sanitizer_cov_trace_pc() #13
  %275 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %task.i, align 8
  %atomic_flags.i.i = getelementptr inbounds %struct.task_struct, ptr %276, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 0, ptr noundef %atomic_flags.i.i) #11
  br label %sw.epilog358.i

sw.bb186.i:                                       ; preds = %if.end.i
  %277 = or i32 %arg5, %arg4
  %278 = or i32 %277, %arg2
  %279 = or i32 %278, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %if.end195.i, label %sw.bb186.i.__do_sys_prctl.exit_crit_edge

sw.bb186.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end195.i:                                      ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #13
  %281 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %task.i, align 8
  %atomic_flags.i509.i = getelementptr inbounds %struct.task_struct, ptr %282, i32 0, i32 66
  %283 = ptrtoint ptr %atomic_flags.i509.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load volatile i32, ptr %atomic_flags.i509.i, align 4
  %and1.i.i.i = and i32 %284, 1
  br label %__do_sys_prctl.exit

sw.bb201.i:                                       ; preds = %if.end.i
  %285 = or i32 %arg5, %arg4
  %286 = or i32 %285, %arg2
  %287 = or i32 %286, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %if.end210.i, label %sw.bb201.i.__do_sys_prctl.exit_crit_edge

sw.bb201.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb201.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end210.i:                                      ; preds = %sw.bb201.i
  call void @__sanitizer_cov_trace_pc() #13
  %mm211.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %289 = ptrtoint ptr %mm211.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mm211.i, align 8
  %flags212.i = getelementptr inbounds %struct.anon.13, ptr %290, i32 0, i32 43
  %291 = ptrtoint ptr %flags212.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %flags212.i, align 4
  %293 = lshr i32 %292, 24
  %.lobit.i = and i32 %293, 1
  br label %sw.epilog358.i

sw.bb219.i:                                       ; preds = %if.end.i
  %294 = or i32 %arg5, %arg4
  %295 = or i32 %294, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %if.end226.i, label %sw.bb219.i.__do_sys_prctl.exit_crit_edge

sw.bb219.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end226.i:                                      ; preds = %sw.bb219.i
  %mm227.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %297 = ptrtoint ptr %mm227.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %mm227.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i.i1)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i1], !srcloc !655

if.then.i.i1:                                     ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %298, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i1, %if.end226.i
  %mmap_lock.i2 = getelementptr inbounds %struct.anon.13, ptr %298, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i2) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i4.i)) #11
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !655

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %298, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #11
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool229.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool229.not.i, label %if.end231.i, label %mmap_write_lock_killable.exit.__do_sys_prctl.exit_crit_edge

mmap_write_lock_killable.exit.__do_sys_prctl.exit_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end231.i:                                      ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg2)
  %tobool232.not.i = icmp eq i32 %arg2, 0
  %299 = ptrtoint ptr %mm227.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mm227.i, align 8
  %flags238.i = getelementptr inbounds %struct.anon.13, ptr %300, i32 0, i32 43
  br i1 %tobool232.not.i, label %if.else236.i, label %if.then233.i

if.then233.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 24, ptr noundef %flags238.i) #11
  br label %if.end239.i

if.else236.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %flags238.i) #11
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.else236.i, %if.then233.i
  %301 = ptrtoint ptr %mm227.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mm227.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__se_sys_prctl, %if.then.i.i)) #11
          to label %mmap_write_unlock.exit [label %if.then.i.i], !srcloc !655

if.then.i.i:                                      ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %302, i1 noundef zeroext true) #11
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i, %if.end239.i
  %mmap_lock.i = getelementptr inbounds %struct.anon.13, ptr %302, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i) #11
  br label %sw.epilog358.i

sw.bb246.i:                                       ; preds = %if.end.i
  %303 = or i32 %arg5, %arg4
  %304 = or i32 %303, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %if.end253.i, label %sw.bb246.i.__do_sys_prctl.exit_crit_edge

sw.bb246.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end253.i:                                      ; preds = %sw.bb246.i
  call void @__sanitizer_cov_trace_pc() #13
  %call254.i = tail call i32 @arch_prctl_spec_ctrl_get(ptr noundef %3, i32 noundef %arg2) #11
  br label %sw.epilog358.i

sw.bb255.i:                                       ; preds = %if.end.i
  %306 = or i32 %arg5, %arg4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %if.end260.i, label %sw.bb255.i.__do_sys_prctl.exit_crit_edge

sw.bb255.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end260.i:                                      ; preds = %sw.bb255.i
  call void @__sanitizer_cov_trace_pc() #13
  %call261.i = tail call i32 @arch_prctl_spec_ctrl_set(ptr noundef %3, i32 noundef %arg2, i32 noundef %arg3) #11
  br label %sw.epilog358.i

sw.bb262.i:                                       ; preds = %if.end.i
  %308 = or i32 %arg5, %arg4
  %309 = or i32 %308, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %sw.bb262.i.sw.epilog358.i_crit_edge, label %sw.bb262.i.__do_sys_prctl.exit_crit_edge

sw.bb262.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb262.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

sw.bb262.i.sw.epilog358.i_crit_edge:              ; preds = %sw.bb262.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb270.i:                                       ; preds = %if.end.i
  %311 = or i32 %arg5, %arg4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %sw.bb270.i.sw.epilog358.i_crit_edge, label %sw.bb270.i.__do_sys_prctl.exit_crit_edge

sw.bb270.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb270.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

sw.bb270.i.sw.epilog358.i_crit_edge:              ; preds = %sw.bb270.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb276.i:                                       ; preds = %if.end.i
  %313 = or i32 %arg5, %arg4
  %314 = or i32 %313, %arg2
  %315 = or i32 %314, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %sw.bb276.i.sw.epilog358.i_crit_edge, label %sw.bb276.i.__do_sys_prctl.exit_crit_edge

sw.bb276.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

sw.bb276.i.sw.epilog358.i_crit_edge:              ; preds = %sw.bb276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb286.i:                                       ; preds = %if.end.i
  %317 = or i32 %arg5, %arg4
  %318 = or i32 %317, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %sw.bb286.i.sw.epilog358.i_crit_edge, label %sw.bb286.i.__do_sys_prctl.exit_crit_edge

sw.bb286.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb286.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

sw.bb286.i.sw.epilog358.i_crit_edge:              ; preds = %sw.bb286.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb294.i:                                       ; preds = %if.end.i
  %320 = or i32 %arg5, %arg4
  %321 = or i32 %320, %arg2
  %322 = or i32 %321, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %sw.bb294.i.sw.epilog358.i_crit_edge, label %sw.bb294.i.__do_sys_prctl.exit_crit_edge

sw.bb294.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb294.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

sw.bb294.i.sw.epilog358.i_crit_edge:              ; preds = %sw.bb294.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog358.i

sw.bb304.i:                                       ; preds = %if.end.i
  %call305.i = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call305.i, label %if.end307.i, label %sw.bb304.i.__do_sys_prctl.exit_crit_edge

sw.bb304.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb304.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end307.i:                                      ; preds = %sw.bb304.i
  %324 = or i32 %arg5, %arg4
  %325 = or i32 %324, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %if.end314.i, label %if.end307.i.__do_sys_prctl.exit_crit_edge

if.end307.i.__do_sys_prctl.exit_crit_edge:        ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end314.i:                                      ; preds = %if.end307.i
  %327 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %327, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %arg2, label %if.end314.i.__do_sys_prctl.exit_crit_edge [
    i32 1, label %if.then317.i
    i32 0, label %if.then324.i
  ]

if.end314.i.__do_sys_prctl.exit_crit_edge:        ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.then317.i:                                     ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #13
  %328 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %task.i, align 8
  %flags320.i = getelementptr inbounds %struct.task_struct, ptr %329, i32 0, i32 3
  %330 = ptrtoint ptr %flags320.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %flags320.i, align 4
  %or321.i = or i32 %331, 1572864
  store i32 %or321.i, ptr %flags320.i, align 4
  br label %sw.epilog358.i

if.then324.i:                                     ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #13
  %332 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %task.i, align 8
  %flags327.i = getelementptr inbounds %struct.task_struct, ptr %333, i32 0, i32 3
  %334 = ptrtoint ptr %flags327.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %flags327.i, align 4
  %and328.i = and i32 %335, -1572865
  store i32 %and328.i, ptr %flags327.i, align 4
  br label %sw.epilog358.i

sw.bb332.i:                                       ; preds = %if.end.i
  %call333.i = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call333.i, label %if.end335.i, label %sw.bb332.i.__do_sys_prctl.exit_crit_edge

sw.bb332.i.__do_sys_prctl.exit_crit_edge:         ; preds = %sw.bb332.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end335.i:                                      ; preds = %sw.bb332.i
  %336 = or i32 %arg5, %arg4
  %337 = or i32 %336, %arg2
  %338 = or i32 %337, %arg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %if.end344.i, label %if.end335.i.__do_sys_prctl.exit_crit_edge

if.end335.i.__do_sys_prctl.exit_crit_edge:        ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_prctl.exit

if.end344.i:                                      ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #13
  %340 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %task.i, align 8
  %flags347.i = getelementptr inbounds %struct.task_struct, ptr %341, i32 0, i32 3
  %342 = ptrtoint ptr %flags347.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %flags347.i, align 4
  %and348.i = and i32 %343, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and348.i)
  %cmp349.i = icmp eq i32 %and348.i, 1572864
  %conv350.i = zext i1 %cmp349.i to i32
  br label %sw.epilog358.i

sw.bb353.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call354.i = tail call i32 @sched_core_share_pid(i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #11
  br label %sw.epilog358.i

sw.bb355.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call356.i = tail call fastcc i32 @prctl_set_vma(i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #11
  br label %sw.epilog358.i

sw.epilog358.i:                                   ; preds = %sw.bb355.i, %sw.bb353.i, %if.end344.i, %if.then324.i, %if.then317.i, %sw.bb294.i.sw.epilog358.i_crit_edge, %sw.bb286.i.sw.epilog358.i_crit_edge, %sw.bb276.i.sw.epilog358.i_crit_edge, %sw.bb270.i.sw.epilog358.i_crit_edge, %sw.bb262.i.sw.epilog358.i_crit_edge, %if.end260.i, %if.end253.i, %mmap_write_unlock.exit, %if.end210.i, %if.end183.i, %sw.bb155.i, %if.end154.i, %sw.bb149.i.sw.epilog358.i_crit_edge, %sw.bb147.i, %prctl_set_mm.exit, %if.then137.i, %if.end131.i.sw.epilog358.i_crit_edge, %if.then116.i, %if.then108.i, %if.then100.i, %if.end90.i, %if.else76.i, %if.then70.i, %sw.bb58.i, %sw.bb56.i, %sw.bb54.i, %sw.bb50.i, %sw.bb48.i, %copy_to_user.exit.i.sw.epilog358.i_crit_edge, %if.end32.i, %sw.bb24.i, %sw.bb23.i, %if.end15.i, %sw.bb11.i.sw.epilog358.i_crit_edge, %sw.bb9.i, %sw.bb5.i, %if.end4.i, %sw.bb.i.sw.epilog358.i_crit_edge, %if.end.i.sw.epilog358.i_crit_edge
  %error.0.i = phi i32 [ %call356.i, %sw.bb355.i ], [ %call354.i, %sw.bb353.i ], [ %conv350.i, %if.end344.i ], [ 0, %if.then317.i ], [ 0, %if.then324.i ], [ %call261.i, %if.end260.i ], [ %call254.i, %if.end253.i ], [ 0, %mmap_write_unlock.exit ], [ %.lobit.i, %if.end210.i ], [ 0, %if.end183.i ], [ %270, %sw.bb155.i ], [ 0, %if.end154.i ], [ 0, %sw.bb149.i.sw.epilog358.i_crit_edge ], [ %259, %sw.bb147.i ], [ %retval.0.i19, %prctl_set_mm.exit ], [ %and141.lobit.i, %if.then137.i ], [ 0, %if.then100.i ], [ 0, %if.then108.i ], [ 0, %if.then116.i ], [ 0, %if.end90.i ], [ 0, %if.then70.i ], [ 0, %if.else76.i ], [ %call57.i, %sw.bb56.i ], [ %call55.i, %sw.bb54.i ], [ %call51.i, %sw.bb50.i ], [ %call49.i, %sw.bb48.i ], [ 0, %copy_to_user.exit.i.sw.epilog358.i_crit_edge ], [ 0, %if.end32.i ], [ 0, %sw.bb23.i ], [ 0, %if.end15.i ], [ %and.i.i.i, %sw.bb9.i ], [ %14, %sw.bb5.i ], [ 0, %if.end4.i ], [ -22, %sw.bb.i.sw.epilog358.i_crit_edge ], [ -22, %sw.bb11.i.sw.epilog358.i_crit_edge ], [ %spec.select.i, %sw.bb24.i ], [ 2, %if.end131.i.sw.epilog358.i_crit_edge ], [ -22, %sw.bb262.i.sw.epilog358.i_crit_edge ], [ -22, %sw.bb270.i.sw.epilog358.i_crit_edge ], [ -22, %sw.bb276.i.sw.epilog358.i_crit_edge ], [ -22, %sw.bb286.i.sw.epilog358.i_crit_edge ], [ -22, %sw.bb294.i.sw.epilog358.i_crit_edge ], [ %31, %sw.bb58.i ], [ -22, %if.end.i.sw.epilog358.i_crit_edge ]
  br label %__do_sys_prctl.exit

__do_sys_prctl.exit:                              ; preds = %sw.epilog358.i, %if.end335.i.__do_sys_prctl.exit_crit_edge, %sw.bb332.i.__do_sys_prctl.exit_crit_edge, %if.end314.i.__do_sys_prctl.exit_crit_edge, %if.end307.i.__do_sys_prctl.exit_crit_edge, %sw.bb304.i.__do_sys_prctl.exit_crit_edge, %sw.bb294.i.__do_sys_prctl.exit_crit_edge, %sw.bb286.i.__do_sys_prctl.exit_crit_edge, %sw.bb276.i.__do_sys_prctl.exit_crit_edge, %sw.bb270.i.__do_sys_prctl.exit_crit_edge, %sw.bb262.i.__do_sys_prctl.exit_crit_edge, %sw.bb255.i.__do_sys_prctl.exit_crit_edge, %sw.bb246.i.__do_sys_prctl.exit_crit_edge, %mmap_write_lock_killable.exit.__do_sys_prctl.exit_crit_edge, %sw.bb219.i.__do_sys_prctl.exit_crit_edge, %sw.bb201.i.__do_sys_prctl.exit_crit_edge, %if.end195.i, %sw.bb186.i.__do_sys_prctl.exit_crit_edge, %sw.bb174.i.__do_sys_prctl.exit_crit_edge, %sw.bb125.i.__do_sys_prctl.exit_crit_edge, %sw.bb93.i.__do_sys_prctl.exit_crit_edge, %sw.bb86.i.__do_sys_prctl.exit_crit_edge, %if.end85.i.__do_sys_prctl.exit_crit_edge, %sw.bb82.i.__do_sys_prctl.exit_crit_edge, %copy_to_user.exit.i.__do_sys_prctl.exit_crit_edge, %if.end.i.i.i.__do_sys_prctl.exit_crit_edge, %do.end37.i.__do_sys_prctl.exit_crit_edge, %sw.bb28.i.__do_sys_prctl.exit_crit_edge, %if.end.i.__do_sys_prctl.exit_crit_edge, %if.end.i.__do_sys_prctl.exit_crit_edge47, %entry.__do_sys_prctl.exit_crit_edge
  %retval.0.i = phi i32 [ %error.0.i, %sw.epilog358.i ], [ %and1.i.i.i, %if.end195.i ], [ %call1.i, %entry.__do_sys_prctl.exit_crit_edge ], [ -14, %sw.bb28.i.__do_sys_prctl.exit_crit_edge ], [ -14, %copy_to_user.exit.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb82.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb86.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb93.i.__do_sys_prctl.exit_crit_edge ], [ -22, %if.end85.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb125.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb174.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb186.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb201.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb219.i.__do_sys_prctl.exit_crit_edge ], [ -4, %mmap_write_lock_killable.exit.__do_sys_prctl.exit_crit_edge ], [ -22, %if.end.i.__do_sys_prctl.exit_crit_edge ], [ -22, %if.end.i.__do_sys_prctl.exit_crit_edge47 ], [ -22, %sw.bb246.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb255.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb262.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb270.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb276.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb286.i.__do_sys_prctl.exit_crit_edge ], [ -22, %sw.bb294.i.__do_sys_prctl.exit_crit_edge ], [ -1, %sw.bb304.i.__do_sys_prctl.exit_crit_edge ], [ -22, %if.end307.i.__do_sys_prctl.exit_crit_edge ], [ -22, %if.end314.i.__do_sys_prctl.exit_crit_edge ], [ -1, %sw.bb332.i.__do_sys_prctl.exit_crit_edge ], [ -22, %if.end335.i.__do_sys_prctl.exit_crit_edge ], [ -14, %do.end37.i.__do_sys_prctl.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_prctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getcpu(i32 noundef %cpup, i32 noundef %nodep, i32 noundef %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %nodep to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpup)
  %tobool.not.i = icmp eq i32 %cpup, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = inttoptr i32 %cpup to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i5.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i5.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 2623) #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !630
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %1, i32 %5, i32 -1226833921) #11, !srcloc !658
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %err.0.i = phi i32 [ %9, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nodep)
  %tobool4.not.i = icmp eq i32 %nodep, 0
  br i1 %tobool4.not.i, label %if.end.i.__do_sys_getcpu.exit_crit_edge, label %if.then5.i

if.end.i.__do_sys_getcpu.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_getcpu.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 2625) #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i.i1.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i1.i to ptr
  %cpu_domain.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2.i) #3, !srcloc !630
  %and.i3.i = and i32 %12, -13
  %or.i4.i = or i32 %and.i3.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4.i) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i32 0, i32 -1226833921) #11, !srcloc !659
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !631
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  %or21.i = or i32 %13, %err.0.i
  br label %__do_sys_getcpu.exit

__do_sys_getcpu.exit:                             ; preds = %if.then5.i, %if.end.i.__do_sys_getcpu.exit_crit_edge
  %err.1.i = phi i32 [ %or21.i, %if.then5.i ], [ %err.0.i, %if.end.i.__do_sys_getcpu.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool23.not.i = icmp eq i32 %err.1.i, 0
  %cond.i = select i1 %tobool23.not.i, i32 0, i32 -14
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sysinfo(i32 noundef %info) #0 align 64 {
entry:
  %tmp.i.i.i = alloca %struct.timespec64, align 8
  %val.i = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %info to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %val.i) #11
  %1 = getelementptr inbounds i8, ptr %val.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i.i) #11
  %call.i.i.i2.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i.i, i64 noundef %call.i.i.i2.i) #11
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %tp.sroa.0.0.copyload1.i.i = load i64, ptr %tmp.i.i.i, align 8
  %tp.sroa.5.0.tmp.i.sroa_idx.i.i = getelementptr inbounds i8, ptr %tmp.i.i.i, i32 8
  %4 = ptrtoint ptr %tp.sroa.5.0.tmp.i.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tp.sroa.5.0.copyload2.i.i = load i32, ptr %tp.sroa.5.0.tmp.i.sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tp.sroa.5.0.copyload2.i.i)
  %tobool.not.i.i = icmp ne i32 %tp.sroa.5.0.copyload2.i.i, 0
  %5 = zext i1 %tobool.not.i.i to i64
  %add.i.i = add i64 %tp.sroa.0.0.copyload1.i.i, %5
  %conv1.i.i = trunc i64 %add.i.i to i32
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv1.i.i, ptr %val.i, align 4
  call void @get_avenrun(ptr noundef %1, i32 noundef 0, i32 noundef 5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_threads to i32))
  %7 = load i32, ptr @nr_threads, align 4
  %conv2.i.i = trunc i32 %7 to i16
  %procs.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 8
  %8 = ptrtoint ptr %procs.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i.i, ptr %procs.i.i, align 4
  call void @si_meminfo(ptr noundef nonnull %val.i) #11
  call void @si_swapinfo(ptr noundef nonnull %val.i) #11
  %totalram.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 2
  %9 = ptrtoint ptr %totalram.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %totalram.i.i, align 4
  %totalswap.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 6
  %11 = ptrtoint ptr %totalswap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %totalswap.i.i, align 4
  %add3.i.i = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %10)
  %cmp.i.i = icmp ult i32 %add3.i.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %12)
  %cmp7.i.i = icmp ult i32 %add3.i.i, %12
  %or.cond.i.i = or i1 %cmp.i.i, %cmp7.i.i
  br i1 %or.cond.i.i, label %entry.if.end8.i.i.i_crit_edge, label %if.end.i.i

entry.if.end8.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.end.i.i:                                       ; preds = %entry
  %mem_unit9.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 12
  %13 = ptrtoint ptr %mem_unit9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem_unit9.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end.i.i
  %mem_total.0.i.i = phi i32 [ %add3.i.i, %if.end.i.i ], [ %shl.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %mem_unit.0.i.i = phi i32 [ %14, %if.end.i.i ], [ %shr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %bitcount.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mem_unit.0.i.i)
  %cmp10.i.i = icmp ugt i32 %mem_unit.0.i.i, 1
  br i1 %cmp10.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %inc.i.i = add nuw nsw i32 %bitcount.0.i.i, 1
  %shr.i.i = lshr i32 %mem_unit.0.i.i, 1
  %shl.i.i = shl i32 %mem_total.0.i.i, 1
  %cmp12.i.i = icmp ult i32 %shl.i.i, %mem_total.0.i.i
  br i1 %cmp12.i.i, label %while.body.i.i.if.end8.i.i.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.body.i.i.if.end8.i.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mem_unit9.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mem_unit9.i.i, align 4
  %shl18.i.i = shl i32 %10, %bitcount.0.i.i
  %16 = ptrtoint ptr %totalram.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl18.i.i, ptr %totalram.i.i, align 4
  %freeram.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 3
  %17 = ptrtoint ptr %freeram.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freeram.i.i, align 4
  %shl19.i.i = shl i32 %18, %bitcount.0.i.i
  store i32 %shl19.i.i, ptr %freeram.i.i, align 4
  %sharedram.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 4
  %19 = ptrtoint ptr %sharedram.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sharedram.i.i, align 4
  %shl20.i.i = shl i32 %20, %bitcount.0.i.i
  store i32 %shl20.i.i, ptr %sharedram.i.i, align 4
  %bufferram.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 5
  %21 = ptrtoint ptr %bufferram.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufferram.i.i, align 4
  %shl21.i.i = shl i32 %22, %bitcount.0.i.i
  store i32 %shl21.i.i, ptr %bufferram.i.i, align 4
  %shl23.i.i = shl i32 %12, %bitcount.0.i.i
  %23 = ptrtoint ptr %totalswap.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl23.i.i, ptr %totalswap.i.i, align 4
  %freeswap.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 7
  %24 = ptrtoint ptr %freeswap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %freeswap.i.i, align 4
  %shl24.i.i = shl i32 %25, %bitcount.0.i.i
  store i32 %shl24.i.i, ptr %freeswap.i.i, align 4
  %totalhigh.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 10
  %26 = ptrtoint ptr %totalhigh.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %totalhigh.i.i, align 4
  %shl25.i.i = shl i32 %27, %bitcount.0.i.i
  store i32 %shl25.i.i, ptr %totalhigh.i.i, align 4
  %freehigh.i.i = getelementptr inbounds %struct.sysinfo, ptr %val.i, i32 0, i32 11
  %28 = ptrtoint ptr %freehigh.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %freehigh.i.i, align 4
  %shl26.i.i = shl i32 %29, %bitcount.0.i.i
  store i32 %shl26.i.i, ptr %freehigh.i.i, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %while.end.i.i, %while.body.i.i.if.end8.i.i.i_crit_edge, %entry.if.end8.i.i.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.167, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end8.i.i.i.__do_sys_sysinfo.exit_crit_edge, label %if.end.i.i.i

if.end8.i.i.i.__do_sys_sysinfo.exit_crit_edge:    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_sysinfo.exit

if.end.i.i.i:                                     ; preds = %if.end8.i.i.i
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 64, i32 -1226833920) #14, !srcloc !640
  %asmresult.i.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_sysinfo.exit_crit_edge

if.end.i.i.i.__do_sys_sysinfo.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_sysinfo.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.i, i32 noundef 64) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %val.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %__do_sys_sysinfo.exit

__do_sys_sysinfo.exit:                            ; preds = %copy_to_user.exit.i, %if.end.i.i.i.__do_sys_sysinfo.exit_crit_edge, %if.end8.i.i.i.__do_sys_sysinfo.exit_crit_edge
  %31 = phi i32 [ -14, %if.end8.i.i.i.__do_sys_sysinfo.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_sysinfo.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %val.i) #11
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_one_prio(ptr noundef %p, i32 noundef %niceval, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1.i, align 16
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %6 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %real_cred.i, align 4
  %call7.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end13.i_crit_edge

entry.do.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

land.lhs.true.i:                                  ; preds = %entry
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %.b34.i = load i1, ptr @set_one_prio_perm.__warned.137, align 1
  br i1 %.b34.i, label %land.lhs.true10.i.do.end13.i_crit_edge, label %if.then.i

land.lhs.true10.i.do.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @set_one_prio_perm.__warned.137, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 166, ptr noundef nonnull @.str.52) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then.i, %land.lhs.true10.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge, %entry.do.end13.i_crit_edge
  %uid.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %euid.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %9 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack31.i = load i32, ptr %euid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack31.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack31.i
  br i1 %cmp.i.i, label %do.end13.i.if.end_crit_edge, label %lor.lhs.false.i

do.end13.i.if.end_crit_edge:                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %do.end13.i
  %euid17.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %euid17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack32.i = load i32, ptr %euid17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack32.i, i32 %.unpack31.i)
  %cmp.i35.i = icmp eq i32 %.unpack32.i, %.unpack31.i
  br i1 %cmp.i35.i, label %lor.lhs.false.i.if.end_crit_edge, label %set_one_prio_perm.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

set_one_prio_perm.exit:                           ; preds = %lor.lhs.false.i
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns.i, align 4
  %call24.i = tail call zeroext i1 @ns_capable(ptr noundef %12, i32 noundef 23) #11
  br i1 %call24.i, label %set_one_prio_perm.exit.if.end_crit_edge, label %set_one_prio_perm.exit.out_crit_edge

set_one_prio_perm.exit.out_crit_edge:             ; preds = %set_one_prio_perm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

set_one_prio_perm.exit.if.end_crit_edge:          ; preds = %set_one_prio_perm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %set_one_prio_perm.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %do.end13.i.if.end_crit_edge
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 14
  %13 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %14, -120
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %niceval)
  %cmp = icmp sgt i32 %sub.i, %niceval
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @can_nice(ptr noundef %p, i32 noundef %niceval) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call i32 @security_task_setnice(ptr noundef %p, i32 noundef %niceval) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %error)
  %cmp9 = icmp eq i32 %error, -3
  %spec.store.select = select i1 %cmp9, i32 0, i32 %error
  tail call void @set_user_nice(ptr noundef %p, i32 noundef %niceval) #11
  br label %out

out:                                              ; preds = %if.end8, %if.end4.out_crit_edge, %land.lhs.true.out_crit_edge, %set_one_prio_perm.exit.out_crit_edge
  %error.addr.0 = phi i32 [ %spec.store.select, %if.end8 ], [ -1, %set_one_prio_perm.exit.out_crit_edge ], [ -13, %land.lhs.true.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  ret i32 %error.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_user([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setnice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_uid([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies_64_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setpgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_pid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_getpgid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_getsid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uts_proc_notify(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_prlimit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_prctl(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dumpable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_comm_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prctl_get_seccomp() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prctl_set_seccomp(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_task_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_task_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @walk_process_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @propagate_has_child_subreaper(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %has_child_subreaper = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %has_child_subreaper to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_child_subreaper, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i, align 16
  %level.i = getelementptr inbounds %struct.pid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level.i, align 4
  %arrayidx.i = getelementptr %struct.pid, ptr %5, i32 0, i32 7, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i8 %bf.load, 64
  %10 = ptrtoint ptr %has_child_subreaper to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %has_child_subreaper, align 8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_core_share_pid(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prctl_set_vma(i32 noundef %opt, i32 noundef %addr, i32 noundef %size, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !618) #11
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opt)
  %cond = icmp eq i32 %opt, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  br i1 %tobool.not, label %sw.bb.if.end15_crit_edge, label %if.then

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %sw.bb
  %6 = inttoptr i32 %arg to ptr
  %call2 = tail call ptr @strndup_user(ptr noundef nonnull %6, i32 noundef 80) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not42 = icmp eq i8 %8, 0
  br i1 %cmp.not42, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call2 to i32
  br label %cleanup17

for.cond:                                         ; preds = %is_valid_name_char.exit
  %incdec.ptr = getelementptr i8, ptr %pch.043, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr, align 1
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %12 = phi i8 [ %11, %for.cond.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %pch.043 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %call2, %for.cond.preheader.for.body_crit_edge ]
  %13 = add i8 %12, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %13)
  %14 = icmp ult i8 %13, 95
  br i1 %14, label %is_valid_name_char.exit, label %for.body.if.then8_crit_edge

for.body.if.then8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

is_valid_name_char.exit:                          ; preds = %for.body
  %conv.i = zext i8 %12 to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull @.str.195, i32 %conv.i, i32 6) #15
  %tobool.not.i = icmp eq ptr %memchr.i, null
  br i1 %tobool.not.i, label %for.cond, label %is_valid_name_char.exit.if.then8_crit_edge

is_valid_name_char.exit.if.then8_crit_edge:       ; preds = %is_valid_name_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %is_valid_name_char.exit.if.then8_crit_edge, %for.body.if.then8_crit_edge
  tail call void @kfree(ptr noundef %call2) #11
  br label %cleanup17

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %call10 = tail call ptr @anon_vma_name_alloc(ptr noundef %call2) #11
  tail call void @kfree(ptr noundef %call2) #11
  %tobool11.not.not = icmp eq ptr %call10, null
  br i1 %tobool11.not.not, label %cleanup.cleanup17_crit_edge, label %cleanup.if.end15_crit_edge

cleanup.if.end15_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.end15:                                         ; preds = %cleanup.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  %anon_name.1 = phi ptr [ %call10, %cleanup.if.end15_crit_edge ], [ null, %sw.bb.if.end15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@prctl_set_vma, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !655

if.then.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end15
  %mmap_lock.i = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@prctl_set_vma, %if.then.i3.i)) #11
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !655

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call16 = tail call i32 @madvise_set_anon_name(ptr noundef %5, i32 noundef %addr, i32 noundef %size, ptr noundef %anon_name.1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@prctl_set_vma, %if.then.i.i35)) #11
          to label %mmap_write_unlock.exit [label %if.then.i.i35], !srcloc !655

if.then.i.i35:                                    ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #11
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i35, %mmap_write_lock.exit
  tail call void @up_write(ptr noundef %mmap_lock.i) #11
  %tobool.not.i37 = icmp eq ptr %anon_name.1, null
  br i1 %tobool.not.i37, label %mmap_write_unlock.exit.cleanup17_crit_edge, label %if.then.i

mmap_write_unlock.exit.cleanup17_crit_edge:       ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.then.i:                                        ; preds = %mmap_write_unlock.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %anon_name.1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !646
  tail call void @llvm.prefetch.p0(ptr nonnull %anon_name.1, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %anon_name.1, ptr nonnull %anon_name.1, i32 1, ptr nonnull elementtype(i32) %anon_name.1) #11, !srcloc !647
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i38, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup17_crit_edge, label %if.then10.i.i.i.i.i, !prof !643

if.end5.i.i.i.i.i.cleanup17_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %anon_name.1, i32 noundef 3) #11
  br label %cleanup17

if.then.i.i38:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !648
  tail call void @anon_vma_name_free(ptr noundef nonnull %anon_name.1) #11
  br label %cleanup17

cleanup17:                                        ; preds = %if.then.i.i38, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup17_crit_edge, %mmap_write_unlock.exit.cleanup17_crit_edge, %cleanup.cleanup17_crit_edge, %if.then8, %if.then4, %entry.cleanup17_crit_edge
  %retval.1 = phi i32 [ -12, %cleanup.cleanup17_crit_edge ], [ -22, %entry.cleanup17_crit_edge ], [ %call16, %mmap_write_unlock.exit.cleanup17_crit_edge ], [ %call16, %if.end5.i.i.i.i.i.cleanup17_crit_edge ], [ %call16, %if.then10.i.i.i.i.i ], [ %call16, %if.then.i.i38 ], [ -22, %if.then8 ], [ %9, %if.then4 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prctl_set_mm_exe_file(ptr noundef %mm, i32 noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !660
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %lor.lhs.false, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

lor.lhs.false:                                    ; preds = %if.end
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call4 = tail call zeroext i1 @path_noexec(ptr noundef %f_path) #11
  br i1 %call4, label %lor.lhs.false.exit_crit_edge, label %if.end7

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end7:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_path, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !663
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %call2.i = tail call i32 @inode_permission(ptr noundef %9, ptr noundef %11, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool10.not = icmp eq i32 %call2.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @replace_mm_exe_file(ptr noundef %mm, ptr noundef nonnull %0) #11
  br label %exit

exit:                                             ; preds = %if.end12, %if.end7.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end.exit_crit_edge
  %err.0 = phi i32 [ -13, %lor.lhs.false.exit_crit_edge ], [ %call2.i, %if.end7.exit_crit_edge ], [ %call14, %if.end12 ], [ -13, %if.end.exit_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %exit.cleanup_crit_edge, label %if.then.i

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %err.0, %exit.cleanup_crit_edge ], [ %err.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_prctl_map_addr(ptr nocapture noundef readonly %prctl_map) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prctl_map to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %prctl_map, align 8
  %conv1 = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1)
  %cmp2 = icmp ugt i32 %conv1, -1226833921
  br i1 %cmp2, label %entry.cleanup48_crit_edge, label %lor.lhs.false

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond:                                         ; preds = %lor.lhs.false
  %add.ptr.1 = getelementptr i8, ptr %prctl_map, i32 8
  %2 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.1, align 8
  %conv1.1 = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.1)
  %cmp2.1 = icmp ugt i32 %conv1.1, -1226833921
  br i1 %cmp2.1, label %for.cond.cleanup48_crit_edge, label %lor.lhs.false.1

for.cond.cleanup48_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.1:                                  ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %4 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv1.1)
  %cmp5.1 = icmp ugt i32 %4, %conv1.1
  br i1 %cmp5.1, label %lor.lhs.false.1.cleanup48_crit_edge, label %for.cond.1

lor.lhs.false.1.cleanup48_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.1:                                       ; preds = %lor.lhs.false.1
  %add.ptr.2 = getelementptr i8, ptr %prctl_map, i32 16
  %5 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.2, align 8
  %conv1.2 = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.2)
  %cmp2.2 = icmp ugt i32 %conv1.2, -1226833921
  br i1 %cmp2.2, label %for.cond.1.cleanup48_crit_edge, label %lor.lhs.false.2

for.cond.1.cleanup48_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.2:                                  ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %7 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv1.2)
  %cmp5.2 = icmp ugt i32 %7, %conv1.2
  br i1 %cmp5.2, label %lor.lhs.false.2.cleanup48_crit_edge, label %for.cond.2

lor.lhs.false.2.cleanup48_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.2:                                       ; preds = %lor.lhs.false.2
  %add.ptr.3 = getelementptr i8, ptr %prctl_map, i32 24
  %8 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.3, align 8
  %conv1.3 = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.3)
  %cmp2.3 = icmp ugt i32 %conv1.3, -1226833921
  br i1 %cmp2.3, label %for.cond.2.cleanup48_crit_edge, label %lor.lhs.false.3

for.cond.2.cleanup48_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.3:                                  ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %10 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv1.3)
  %cmp5.3 = icmp ugt i32 %10, %conv1.3
  br i1 %cmp5.3, label %lor.lhs.false.3.cleanup48_crit_edge, label %for.cond.3

lor.lhs.false.3.cleanup48_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.3:                                       ; preds = %lor.lhs.false.3
  %add.ptr.4 = getelementptr i8, ptr %prctl_map, i32 32
  %11 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.4, align 8
  %conv1.4 = trunc i64 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.4)
  %cmp2.4 = icmp ugt i32 %conv1.4, -1226833921
  br i1 %cmp2.4, label %for.cond.3.cleanup48_crit_edge, label %lor.lhs.false.4

for.cond.3.cleanup48_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.4:                                  ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %13 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv1.4)
  %cmp5.4 = icmp ugt i32 %13, %conv1.4
  br i1 %cmp5.4, label %lor.lhs.false.4.cleanup48_crit_edge, label %for.cond.4

lor.lhs.false.4.cleanup48_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.4:                                       ; preds = %lor.lhs.false.4
  %add.ptr.5 = getelementptr i8, ptr %prctl_map, i32 40
  %14 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.5, align 8
  %conv1.5 = trunc i64 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.5)
  %cmp2.5 = icmp ugt i32 %conv1.5, -1226833921
  br i1 %cmp2.5, label %for.cond.4.cleanup48_crit_edge, label %lor.lhs.false.5

for.cond.4.cleanup48_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.5:                                  ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %16 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv1.5)
  %cmp5.5 = icmp ugt i32 %16, %conv1.5
  br i1 %cmp5.5, label %lor.lhs.false.5.cleanup48_crit_edge, label %for.cond.5

lor.lhs.false.5.cleanup48_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.5:                                       ; preds = %lor.lhs.false.5
  %add.ptr.6 = getelementptr i8, ptr %prctl_map, i32 48
  %17 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr.6, align 8
  %conv1.6 = trunc i64 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.6)
  %cmp2.6 = icmp ugt i32 %conv1.6, -1226833921
  br i1 %cmp2.6, label %for.cond.5.cleanup48_crit_edge, label %lor.lhs.false.6

for.cond.5.cleanup48_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.6:                                  ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %19 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv1.6)
  %cmp5.6 = icmp ugt i32 %19, %conv1.6
  br i1 %cmp5.6, label %lor.lhs.false.6.cleanup48_crit_edge, label %for.cond.6

lor.lhs.false.6.cleanup48_crit_edge:              ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.6:                                       ; preds = %lor.lhs.false.6
  %add.ptr.7 = getelementptr i8, ptr %prctl_map, i32 56
  %20 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.7, align 8
  %conv1.7 = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.7)
  %cmp2.7 = icmp ugt i32 %conv1.7, -1226833921
  br i1 %cmp2.7, label %for.cond.6.cleanup48_crit_edge, label %lor.lhs.false.7

for.cond.6.cleanup48_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.7:                                  ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %22 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv1.7)
  %cmp5.7 = icmp ugt i32 %22, %conv1.7
  br i1 %cmp5.7, label %lor.lhs.false.7.cleanup48_crit_edge, label %for.cond.7

lor.lhs.false.7.cleanup48_crit_edge:              ; preds = %lor.lhs.false.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.7:                                       ; preds = %lor.lhs.false.7
  %add.ptr.8 = getelementptr i8, ptr %prctl_map, i32 64
  %23 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.8, align 8
  %conv1.8 = trunc i64 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.8)
  %cmp2.8 = icmp ugt i32 %conv1.8, -1226833921
  br i1 %cmp2.8, label %for.cond.7.cleanup48_crit_edge, label %lor.lhs.false.8

for.cond.7.cleanup48_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.8:                                  ; preds = %for.cond.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %25 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv1.8)
  %cmp5.8 = icmp ugt i32 %25, %conv1.8
  br i1 %cmp5.8, label %lor.lhs.false.8.cleanup48_crit_edge, label %for.cond.8

lor.lhs.false.8.cleanup48_crit_edge:              ; preds = %lor.lhs.false.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.8:                                       ; preds = %lor.lhs.false.8
  %add.ptr.9 = getelementptr i8, ptr %prctl_map, i32 72
  %26 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.9, align 8
  %conv1.9 = trunc i64 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.9)
  %cmp2.9 = icmp ugt i32 %conv1.9, -1226833921
  br i1 %cmp2.9, label %for.cond.8.cleanup48_crit_edge, label %lor.lhs.false.9

for.cond.8.cleanup48_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.9:                                  ; preds = %for.cond.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %28 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv1.9)
  %cmp5.9 = icmp ugt i32 %28, %conv1.9
  br i1 %cmp5.9, label %lor.lhs.false.9.cleanup48_crit_edge, label %for.cond.9

lor.lhs.false.9.cleanup48_crit_edge:              ; preds = %lor.lhs.false.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.9:                                       ; preds = %lor.lhs.false.9
  %add.ptr.10 = getelementptr i8, ptr %prctl_map, i32 80
  %29 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.10, align 8
  %conv1.10 = trunc i64 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %conv1.10)
  %cmp2.10 = icmp ugt i32 %conv1.10, -1226833921
  br i1 %cmp2.10, label %for.cond.9.cleanup48_crit_edge, label %lor.lhs.false.10

for.cond.9.cleanup48_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false.10:                                 ; preds = %for.cond.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %31 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv1.10)
  %cmp5.10 = icmp ugt i32 %31, %conv1.10
  br i1 %cmp5.10, label %lor.lhs.false.10.cleanup48_crit_edge, label %for.cond.10

lor.lhs.false.10.cleanup48_crit_edge:             ; preds = %lor.lhs.false.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

for.cond.10:                                      ; preds = %lor.lhs.false.10
  %32 = ptrtoint ptr %prctl_map to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %prctl_map, align 8
  %conv7 = trunc i64 %33 to i32
  %34 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.1, align 8
  %conv8 = trunc i64 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %conv8)
  %cmp9 = icmp ult i32 %conv7, %conv8
  %36 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.2, align 8
  %conv11 = trunc i64 %37 to i32
  %38 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr.3, align 8
  %conv12 = trunc i64 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %conv12)
  %cmp13.not = icmp ugt i32 %conv11, %conv12
  %cond15 = select i1 %cmp13.not, i32 -22, i32 0
  %or = select i1 %cmp9, i32 %cond15, i32 -22
  %40 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.4, align 8
  %conv16 = trunc i64 %41 to i32
  %42 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.5, align 8
  %conv17 = trunc i64 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16, i32 %conv17)
  %cmp18.not = icmp ugt i32 %conv16, %conv17
  %44 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr.7, align 8
  %conv22 = trunc i64 %45 to i32
  %46 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.8, align 8
  %conv23 = trunc i64 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %conv23)
  %cmp24.not = icmp ugt i32 %conv22, %conv23
  %48 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.9, align 8
  %conv28 = trunc i64 %49 to i32
  %50 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.10, align 8
  %conv29 = trunc i64 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv28, i32 %conv29)
  %cmp30.not = icmp ugt i32 %conv28, %conv29
  %52 = select i1 %cmp30.not, i1 true, i1 %cmp24.not
  %53 = select i1 %52, i1 true, i1 %cmp18.not
  %or33 = select i1 %53, i32 -22, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33)
  %tobool.not = icmp eq i32 %or33, 0
  br i1 %tobool.not, label %if.end35, label %for.cond.10.cleanup48_crit_edge

for.cond.10.cleanup48_crit_edge:                  ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %54 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv1)
  %cmp5 = icmp ugt i32 %54, %conv1
  br i1 %cmp5, label %lor.lhs.false.cleanup48_crit_edge, label %for.cond

lor.lhs.false.cleanup48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

if.end35:                                         ; preds = %for.cond.10
  %55 = tail call i32 @llvm.read_register.i32(metadata !618) #11
  %and.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 111
  %59 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %60, i32 0, i32 51, i32 2
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.not.i = icmp eq i32 %62, -1
  br i1 %cmp.not.i, label %if.end35._crit_edge, label %if.then.i

if.end35._crit_edge:                              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %65

if.then.i:                                        ; preds = %if.end35
  %63 = add i32 %conv11, %conv16
  %64 = sub i32 %conv12, %63
  %add.i = add i32 %64, %conv17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %62)
  %cmp2.i = icmp ugt i32 %add.i, %62
  br i1 %cmp2.i, label %if.then.i.cleanup48_crit_edge, label %if.then.i._crit_edge

if.then.i._crit_edge:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %65

if.then.i.cleanup48_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup48

65:                                               ; preds = %if.then.i._crit_edge, %if.end35._crit_edge
  br label %cleanup48

cleanup48:                                        ; preds = %65, %if.then.i.cleanup48_crit_edge, %lor.lhs.false.cleanup48_crit_edge, %for.cond.10.cleanup48_crit_edge, %lor.lhs.false.10.cleanup48_crit_edge, %for.cond.9.cleanup48_crit_edge, %lor.lhs.false.9.cleanup48_crit_edge, %for.cond.8.cleanup48_crit_edge, %lor.lhs.false.8.cleanup48_crit_edge, %for.cond.7.cleanup48_crit_edge, %lor.lhs.false.7.cleanup48_crit_edge, %for.cond.6.cleanup48_crit_edge, %lor.lhs.false.6.cleanup48_crit_edge, %for.cond.5.cleanup48_crit_edge, %lor.lhs.false.5.cleanup48_crit_edge, %for.cond.4.cleanup48_crit_edge, %lor.lhs.false.4.cleanup48_crit_edge, %for.cond.3.cleanup48_crit_edge, %lor.lhs.false.3.cleanup48_crit_edge, %for.cond.2.cleanup48_crit_edge, %lor.lhs.false.2.cleanup48_crit_edge, %for.cond.1.cleanup48_crit_edge, %lor.lhs.false.1.cleanup48_crit_edge, %for.cond.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ %or33, %for.cond.10.cleanup48_crit_edge ], [ 0, %65 ], [ -22, %if.then.i.cleanup48_crit_edge ], [ -22, %lor.lhs.false.10.cleanup48_crit_edge ], [ -22, %for.cond.9.cleanup48_crit_edge ], [ -22, %lor.lhs.false.9.cleanup48_crit_edge ], [ -22, %for.cond.8.cleanup48_crit_edge ], [ -22, %lor.lhs.false.8.cleanup48_crit_edge ], [ -22, %for.cond.7.cleanup48_crit_edge ], [ -22, %lor.lhs.false.7.cleanup48_crit_edge ], [ -22, %for.cond.6.cleanup48_crit_edge ], [ -22, %lor.lhs.false.6.cleanup48_crit_edge ], [ -22, %for.cond.5.cleanup48_crit_edge ], [ -22, %lor.lhs.false.5.cleanup48_crit_edge ], [ -22, %for.cond.4.cleanup48_crit_edge ], [ -22, %lor.lhs.false.4.cleanup48_crit_edge ], [ -22, %for.cond.3.cleanup48_crit_edge ], [ -22, %lor.lhs.false.3.cleanup48_crit_edge ], [ -22, %for.cond.2.cleanup48_crit_edge ], [ -22, %lor.lhs.false.2.cleanup48_crit_edge ], [ -22, %for.cond.1.cleanup48_crit_edge ], [ -22, %lor.lhs.false.1.cleanup48_crit_edge ], [ -22, %for.cond.cleanup48_crit_edge ], [ -22, %entry.cleanup48_crit_edge ], [ -22, %lor.lhs.false.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_mm_exe_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @madvise_set_anon_name(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_name_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_avenrun(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_swapinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 322)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 322)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !116, !118, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !186, !187, !188, !189, !190, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !210, !212, !214, !215, !216, !217, !218, !219, !220, !221, !222, !224, !226, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238, !240, !242, !243, !244, !245, !246, !247, !248, !249, !250, !252, !254, !256, !257, !258, !259, !260, !261, !262, !263, !264, !266, !267, !268, !269, !270, !271, !272, !273, !274, !276, !277, !278, !279, !280, !281, !282, !283, !284, !286, !287, !288, !289, !290, !291, !292, !293, !294, !296, !297, !298, !299, !300, !301, !302, !303, !304, !306, !307, !308, !309, !310, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !323, !324, !325, !326, !327, !328, !330, !331, !332, !333, !334, !335, !336, !337, !338, !340, !341, !342, !343, !344, !345, !346, !347, !348, !350, !351, !352, !353, !354, !355, !356, !357, !358, !360, !361, !362, !363, !364, !365, !366, !367, !368, !370, !371, !372, !373, !374, !375, !376, !377, !378, !380, !381, !382, !383, !384, !385, !386, !387, !388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !400, !401, !402, !403, !404, !405, !406, !407, !408, !410, !411, !412, !413, !414, !415, !416, !417, !418, !420, !421, !422, !423, !424, !425, !426, !427, !428, !430, !431, !432, !433, !434, !435, !436, !437, !438, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !456, !458, !459, !460, !462, !464, !466, !468, !469, !470, !472, !474, !475, !477, !479, !480, !481, !482, !483, !484, !485, !486, !487, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !519, !520, !521, !522, !523, !525, !526, !527, !529, !530, !531, !532, !533, !534, !536, !537, !539, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !556, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !582, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !603, !605, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!llvm.named.register.sp = !{!618}
!llvm.module.flags = !{!619, !620, !621, !622, !623, !624, !625, !626}
!llvm.ident = !{!627}

!0 = !{ptr @overflowuid, !1, !"overflowuid", i1 false, i1 false}
!1 = !{!"../kernel/sys.c", i32 141, i32 5}
!2 = !{ptr @overflowgid, !3, !"overflowgid", i1 false, i1 false}
!3 = !{!"../kernel/sys.c", i32 142, i32 5}
!4 = !{ptr @__ksymtab_overflowuid, !5, !"__ksymtab_overflowuid", i1 false, i1 false}
!5 = !{!"../kernel/sys.c", i32 144, i32 1}
!6 = !{ptr @__ksymtab_overflowgid, !7, !"__ksymtab_overflowgid", i1 false, i1 false}
!7 = !{!"../kernel/sys.c", i32 145, i32 1}
!8 = !{ptr @fs_overflowuid, !9, !"fs_overflowuid", i1 false, i1 false}
!9 = !{!"../kernel/sys.c", i32 152, i32 5}
!10 = !{ptr @fs_overflowgid, !11, !"fs_overflowgid", i1 false, i1 false}
!11 = !{!"../kernel/sys.c", i32 153, i32 5}
!12 = !{ptr @__ksymtab_fs_overflowuid, !13, !"__ksymtab_fs_overflowuid", i1 false, i1 false}
!13 = !{!"../kernel/sys.c", i32 155, i32 1}
!14 = !{ptr @__ksymtab_fs_overflowgid, !15, !"__ksymtab_fs_overflowgid", i1 false, i1 false}
!15 = !{!"../kernel/sys.c", i32 156, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/sys.c", i32 204, i32 1}
!18 = !{ptr @event_enter__setpriority, !17, !"event_enter__setpriority", i1 false, i1 false}
!19 = !{ptr @__event_enter__setpriority, !17, !"__event_enter__setpriority", i1 false, i1 false}
!20 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @event_exit__setpriority, !17, !"event_exit__setpriority", i1 false, i1 false}
!22 = !{ptr @__event_exit__setpriority, !17, !"__event_exit__setpriority", i1 false, i1 false}
!23 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__syscall_meta__setpriority, !17, !"__syscall_meta__setpriority", i1 false, i1 false}
!25 = !{ptr @__p_syscall_meta__setpriority, !17, !"__p_syscall_meta__setpriority", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/sys.c", i32 274, i32 1}
!28 = !{ptr @event_enter__getpriority, !27, !"event_enter__getpriority", i1 false, i1 false}
!29 = !{ptr @__event_enter__getpriority, !27, !"__event_enter__getpriority", i1 false, i1 false}
!30 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @event_exit__getpriority, !27, !"event_exit__getpriority", i1 false, i1 false}
!32 = !{ptr @__event_exit__getpriority, !27, !"__event_exit__getpriority", i1 false, i1 false}
!33 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__syscall_meta__getpriority, !27, !"__syscall_meta__getpriority", i1 false, i1 false}
!35 = !{ptr @__p_syscall_meta__getpriority, !27, !"__p_syscall_meta__getpriority", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../kernel/sys.c", i32 360, i32 30}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../kernel/sys.c", i32 377, i32 8}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/sys.c", i32 414, i32 1}
!42 = !{ptr @event_enter__setregid, !41, !"event_enter__setregid", i1 false, i1 false}
!43 = !{ptr @__event_enter__setregid, !41, !"__event_enter__setregid", i1 false, i1 false}
!44 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__setregid, !41, !"event_exit__setregid", i1 false, i1 false}
!46 = !{ptr @__event_exit__setregid, !41, !"__event_exit__setregid", i1 false, i1 false}
!47 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__setregid, !41, !"__syscall_meta__setregid", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__setregid, !41, !"__p_syscall_meta__setregid", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../kernel/sys.c", i32 426, i32 30}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../kernel/sys.c", i32 439, i32 8}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/sys.c", i32 460, i32 1}
!56 = !{ptr @event_enter__setgid, !55, !"event_enter__setgid", i1 false, i1 false}
!57 = !{ptr @__event_enter__setgid, !55, !"__event_enter__setgid", i1 false, i1 false}
!58 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @event_exit__setgid, !55, !"event_exit__setgid", i1 false, i1 false}
!60 = !{ptr @__event_exit__setgid, !55, !"__event_exit__setgid", i1 false, i1 false}
!61 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__syscall_meta__setgid, !55, !"__syscall_meta__setgid", i1 false, i1 false}
!63 = !{ptr @__p_syscall_meta__setgid, !55, !"__p_syscall_meta__setgid", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../kernel/sys.c", i32 517, i32 30}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../kernel/sys.c", i32 534, i32 8}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/sys.c", i32 580, i32 1}
!70 = !{ptr @event_enter__setreuid, !69, !"event_enter__setreuid", i1 false, i1 false}
!71 = !{ptr @__event_enter__setreuid, !69, !"__event_enter__setreuid", i1 false, i1 false}
!72 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @event_exit__setreuid, !69, !"event_exit__setreuid", i1 false, i1 false}
!74 = !{ptr @__event_exit__setreuid, !69, !"__event_exit__setreuid", i1 false, i1 false}
!75 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__syscall_meta__setreuid, !69, !"__syscall_meta__setreuid", i1 false, i1 false}
!77 = !{ptr @__p_syscall_meta__setreuid, !69, !"__p_syscall_meta__setreuid", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../kernel/sys.c", i32 598, i32 30}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../kernel/sys.c", i32 611, i32 8}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/sys.c", i32 643, i32 1}
!84 = !{ptr @event_enter__setuid, !83, !"event_enter__setuid", i1 false, i1 false}
!85 = !{ptr @__event_enter__setuid, !83, !"__event_enter__setuid", i1 false, i1 false}
!86 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @event_exit__setuid, !83, !"event_exit__setuid", i1 false, i1 false}
!88 = !{ptr @__event_exit__setuid, !83, !"__event_exit__setuid", i1 false, i1 false}
!89 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__syscall_meta__setuid, !83, !"__syscall_meta__setuid", i1 false, i1 false}
!91 = !{ptr @__p_syscall_meta__setuid, !83, !"__p_syscall_meta__setuid", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../kernel/sys.c", i32 655, i32 30}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../kernel/sys.c", i32 678, i32 8}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/sys.c", i32 723, i32 1}
!98 = !{ptr @event_enter__setresuid, !97, !"event_enter__setresuid", i1 false, i1 false}
!99 = !{ptr @__event_enter__setresuid, !97, !"__event_enter__setresuid", i1 false, i1 false}
!100 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @event_exit__setresuid, !97, !"event_exit__setresuid", i1 false, i1 false}
!102 = !{ptr @__event_exit__setresuid, !97, !"__event_exit__setresuid", i1 false, i1 false}
!103 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__syscall_meta__setresuid, !97, !"__syscall_meta__setresuid", i1 false, i1 false}
!105 = !{ptr @__p_syscall_meta__setresuid, !97, !"__p_syscall_meta__setresuid", i1 false, i1 false}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/sys.c", i32 728, i32 1}
!108 = !{ptr @event_enter__getresuid, !107, !"event_enter__getresuid", i1 false, i1 false}
!109 = !{ptr @__event_enter__getresuid, !107, !"__event_enter__getresuid", i1 false, i1 false}
!110 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @event_exit__getresuid, !107, !"event_exit__getresuid", i1 false, i1 false}
!112 = !{ptr @__event_exit__getresuid, !107, !"__event_exit__getresuid", i1 false, i1 false}
!113 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__syscall_meta__getresuid, !107, !"__syscall_meta__getresuid", i1 false, i1 false}
!115 = !{ptr @__p_syscall_meta__getresuid, !107, !"__p_syscall_meta__getresuid", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../kernel/sys.c", i32 752, i32 30}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../kernel/sys.c", i32 772, i32 8}
!120 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/sys.c", i32 806, i32 1}
!122 = !{ptr @event_enter__setresgid, !121, !"event_enter__setresgid", i1 false, i1 false}
!123 = !{ptr @__event_enter__setresgid, !121, !"__event_enter__setresgid", i1 false, i1 false}
!124 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @event_exit__setresgid, !121, !"event_exit__setresgid", i1 false, i1 false}
!126 = !{ptr @__event_exit__setresgid, !121, !"__event_exit__setresgid", i1 false, i1 false}
!127 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__syscall_meta__setresgid, !121, !"__syscall_meta__setresgid", i1 false, i1 false}
!129 = !{ptr @__p_syscall_meta__setresgid, !121, !"__p_syscall_meta__setresgid", i1 false, i1 false}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/sys.c", i32 811, i32 1}
!132 = !{ptr @event_enter__getresgid, !131, !"event_enter__getresgid", i1 false, i1 false}
!133 = !{ptr @__event_enter__getresgid, !131, !"__event_enter__getresgid", i1 false, i1 false}
!134 = !{ptr @.str.34, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @event_exit__getresgid, !131, !"event_exit__getresgid", i1 false, i1 false}
!136 = !{ptr @__event_exit__getresgid, !131, !"__event_exit__getresgid", i1 false, i1 false}
!137 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @__syscall_meta__getresgid, !131, !"__syscall_meta__getresgid", i1 false, i1 false}
!139 = !{ptr @__p_syscall_meta__getresgid, !131, !"__p_syscall_meta__getresgid", i1 false, i1 false}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../kernel/sys.c", i32 845, i32 8}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/sys.c", i32 874, i32 1}
!144 = !{ptr @event_enter__setfsuid, !143, !"event_enter__setfsuid", i1 false, i1 false}
!145 = !{ptr @__event_enter__setfsuid, !143, !"__event_enter__setfsuid", i1 false, i1 false}
!146 = !{ptr @.str.37, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @event_exit__setfsuid, !143, !"event_exit__setfsuid", i1 false, i1 false}
!148 = !{ptr @__event_exit__setfsuid, !143, !"__event_exit__setfsuid", i1 false, i1 false}
!149 = !{ptr @.str.38, !143, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @__syscall_meta__setfsuid, !143, !"__syscall_meta__setfsuid", i1 false, i1 false}
!151 = !{ptr @__p_syscall_meta__setfsuid, !143, !"__p_syscall_meta__setfsuid", i1 false, i1 false}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../kernel/sys.c", i32 889, i32 8}
!154 = !{ptr @.str.39, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/sys.c", i32 918, i32 1}
!156 = !{ptr @event_enter__setfsgid, !155, !"event_enter__setfsgid", i1 false, i1 false}
!157 = !{ptr @__event_enter__setfsgid, !155, !"__event_enter__setfsgid", i1 false, i1 false}
!158 = !{ptr @.str.40, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @event_exit__setfsgid, !155, !"event_exit__setfsgid", i1 false, i1 false}
!160 = !{ptr @__event_exit__setfsgid, !155, !"__event_exit__setfsgid", i1 false, i1 false}
!161 = !{ptr @.str.41, !155, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @__syscall_meta__setfsgid, !155, !"__syscall_meta__setfsgid", i1 false, i1 false}
!163 = !{ptr @__p_syscall_meta__setfsgid, !155, !"__p_syscall_meta__setfsgid", i1 false, i1 false}
!164 = !{ptr @.str.42, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/sys.c", i32 933, i32 1}
!166 = !{ptr @event_enter__getpid, !165, !"event_enter__getpid", i1 false, i1 false}
!167 = !{ptr @__event_enter__getpid, !165, !"__event_enter__getpid", i1 false, i1 false}
!168 = !{ptr @.str.43, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @event_exit__getpid, !165, !"event_exit__getpid", i1 false, i1 false}
!170 = !{ptr @__event_exit__getpid, !165, !"__event_exit__getpid", i1 false, i1 false}
!171 = !{ptr @.str.44, !165, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @__syscall_meta__getpid, !165, !"__syscall_meta__getpid", i1 false, i1 false}
!173 = !{ptr @__p_syscall_meta__getpid, !165, !"__p_syscall_meta__getpid", i1 false, i1 false}
!174 = !{ptr @.str.45, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/sys.c", i32 939, i32 1}
!176 = !{ptr @event_enter__gettid, !175, !"event_enter__gettid", i1 false, i1 false}
!177 = !{ptr @__event_enter__gettid, !175, !"__event_enter__gettid", i1 false, i1 false}
!178 = !{ptr @.str.46, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @event_exit__gettid, !175, !"event_exit__gettid", i1 false, i1 false}
!180 = !{ptr @__event_exit__gettid, !175, !"__event_exit__gettid", i1 false, i1 false}
!181 = !{ptr @.str.47, !175, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @__syscall_meta__gettid, !175, !"__syscall_meta__gettid", i1 false, i1 false}
!183 = !{ptr @__p_syscall_meta__gettid, !175, !"__p_syscall_meta__gettid", i1 false, i1 false}
!184 = !{ptr @.str.48, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/sys.c", i32 950, i32 1}
!186 = !{ptr @event_enter__getppid, !185, !"event_enter__getppid", i1 false, i1 false}
!187 = !{ptr @__event_enter__getppid, !185, !"__event_enter__getppid", i1 false, i1 false}
!188 = !{ptr @.str.49, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @event_exit__getppid, !185, !"event_exit__getppid", i1 false, i1 false}
!190 = !{ptr @__event_exit__getppid, !185, !"__event_exit__getppid", i1 false, i1 false}
!191 = !{ptr @.str.50, !185, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @__syscall_meta__getppid, !185, !"__syscall_meta__getppid", i1 false, i1 false}
!193 = !{ptr @__p_syscall_meta__getppid, !185, !"__p_syscall_meta__getppid", i1 false, i1 false}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../kernel/sys.c", i32 955, i32 22}
!196 = !{ptr @.str.51, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.52, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.53, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/sys.c", i32 961, i32 1}
!200 = !{ptr @event_enter__getuid, !199, !"event_enter__getuid", i1 false, i1 false}
!201 = !{ptr @__event_enter__getuid, !199, !"__event_enter__getuid", i1 false, i1 false}
!202 = !{ptr @.str.54, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @event_exit__getuid, !199, !"event_exit__getuid", i1 false, i1 false}
!204 = !{ptr @__event_exit__getuid, !199, !"__event_exit__getuid", i1 false, i1 false}
!205 = !{ptr @.str.55, !199, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @__syscall_meta__getuid, !199, !"__syscall_meta__getuid", i1 false, i1 false}
!207 = !{ptr @__p_syscall_meta__getuid, !199, !"__p_syscall_meta__getuid", i1 false, i1 false}
!208 = distinct !{null, !209, !"__warned", i1 false, i1 false}
!209 = !{!"../kernel/sys.c", i32 964, i32 26}
!210 = distinct !{null, !211, !"__warned", i1 false, i1 false}
!211 = !{!"../kernel/sys.c", i32 964, i32 45}
!212 = !{ptr @.str.57, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/sys.c", i32 967, i32 1}
!214 = !{ptr @event_enter__geteuid, !213, !"event_enter__geteuid", i1 false, i1 false}
!215 = !{ptr @__event_enter__geteuid, !213, !"__event_enter__geteuid", i1 false, i1 false}
!216 = !{ptr @.str.58, !213, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @event_exit__geteuid, !213, !"event_exit__geteuid", i1 false, i1 false}
!218 = !{ptr @__event_exit__geteuid, !213, !"__event_exit__geteuid", i1 false, i1 false}
!219 = !{ptr @.str.59, !213, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__syscall_meta__geteuid, !213, !"__syscall_meta__geteuid", i1 false, i1 false}
!221 = !{ptr @__p_syscall_meta__geteuid, !213, !"__p_syscall_meta__geteuid", i1 false, i1 false}
!222 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!223 = !{!"../kernel/sys.c", i32 970, i32 26}
!224 = distinct !{null, !225, !"__warned", i1 false, i1 false}
!225 = !{!"../kernel/sys.c", i32 970, i32 45}
!226 = !{ptr @.str.61, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/sys.c", i32 973, i32 1}
!228 = !{ptr @event_enter__getgid, !227, !"event_enter__getgid", i1 false, i1 false}
!229 = !{ptr @__event_enter__getgid, !227, !"__event_enter__getgid", i1 false, i1 false}
!230 = !{ptr @.str.62, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @event_exit__getgid, !227, !"event_exit__getgid", i1 false, i1 false}
!232 = !{ptr @__event_exit__getgid, !227, !"__event_exit__getgid", i1 false, i1 false}
!233 = !{ptr @.str.63, !227, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @__syscall_meta__getgid, !227, !"__syscall_meta__getgid", i1 false, i1 false}
!235 = !{ptr @__p_syscall_meta__getgid, !227, !"__p_syscall_meta__getgid", i1 false, i1 false}
!236 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!237 = !{!"../kernel/sys.c", i32 976, i32 26}
!238 = distinct !{null, !239, !"__warned", i1 false, i1 false}
!239 = !{!"../kernel/sys.c", i32 976, i32 45}
!240 = !{ptr @.str.65, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../kernel/sys.c", i32 979, i32 1}
!242 = !{ptr @event_enter__getegid, !241, !"event_enter__getegid", i1 false, i1 false}
!243 = !{ptr @__event_enter__getegid, !241, !"__event_enter__getegid", i1 false, i1 false}
!244 = !{ptr @.str.66, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @event_exit__getegid, !241, !"event_exit__getegid", i1 false, i1 false}
!246 = !{ptr @__event_exit__getegid, !241, !"__event_exit__getegid", i1 false, i1 false}
!247 = !{ptr @.str.67, !241, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @__syscall_meta__getegid, !241, !"__syscall_meta__getegid", i1 false, i1 false}
!249 = !{ptr @__p_syscall_meta__getegid, !241, !"__p_syscall_meta__getegid", i1 false, i1 false}
!250 = distinct !{null, !251, !"__warned", i1 false, i1 false}
!251 = !{!"../kernel/sys.c", i32 982, i32 26}
!252 = distinct !{null, !253, !"__warned", i1 false, i1 false}
!253 = !{!"../kernel/sys.c", i32 982, i32 45}
!254 = !{ptr @.str.69, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../kernel/sys.c", i32 998, i32 1}
!256 = !{ptr @event_enter__times, !255, !"event_enter__times", i1 false, i1 false}
!257 = !{ptr @__event_enter__times, !255, !"__event_enter__times", i1 false, i1 false}
!258 = !{ptr @.str.70, !255, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @event_exit__times, !255, !"event_exit__times", i1 false, i1 false}
!260 = !{ptr @__event_exit__times, !255, !"__event_exit__times", i1 false, i1 false}
!261 = !{ptr @.str.71, !255, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @__syscall_meta__times, !255, !"__syscall_meta__times", i1 false, i1 false}
!263 = !{ptr @__p_syscall_meta__times, !255, !"__p_syscall_meta__times", i1 false, i1 false}
!264 = !{ptr @.str.72, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../kernel/sys.c", i32 1048, i32 1}
!266 = !{ptr @event_enter__setpgid, !265, !"event_enter__setpgid", i1 false, i1 false}
!267 = !{ptr @__event_enter__setpgid, !265, !"__event_enter__setpgid", i1 false, i1 false}
!268 = !{ptr @.str.73, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @event_exit__setpgid, !265, !"event_exit__setpgid", i1 false, i1 false}
!270 = !{ptr @__event_exit__setpgid, !265, !"__event_exit__setpgid", i1 false, i1 false}
!271 = !{ptr @.str.74, !265, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @__syscall_meta__setpgid, !265, !"__syscall_meta__setpgid", i1 false, i1 false}
!273 = !{ptr @__p_syscall_meta__setpgid, !265, !"__p_syscall_meta__setpgid", i1 false, i1 false}
!274 = !{ptr @.str.75, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../kernel/sys.c", i32 1147, i32 1}
!276 = !{ptr @event_enter__getpgid, !275, !"event_enter__getpgid", i1 false, i1 false}
!277 = !{ptr @__event_enter__getpgid, !275, !"__event_enter__getpgid", i1 false, i1 false}
!278 = !{ptr @.str.76, !275, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @event_exit__getpgid, !275, !"event_exit__getpgid", i1 false, i1 false}
!280 = !{ptr @__event_exit__getpgid, !275, !"__event_exit__getpgid", i1 false, i1 false}
!281 = !{ptr @.str.77, !275, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @__syscall_meta__getpgid, !275, !"__syscall_meta__getpgid", i1 false, i1 false}
!283 = !{ptr @__p_syscall_meta__getpgid, !275, !"__p_syscall_meta__getpgid", i1 false, i1 false}
!284 = !{ptr @.str.78, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../kernel/sys.c", i32 1154, i32 1}
!286 = !{ptr @event_enter__getpgrp, !285, !"event_enter__getpgrp", i1 false, i1 false}
!287 = !{ptr @__event_enter__getpgrp, !285, !"__event_enter__getpgrp", i1 false, i1 false}
!288 = !{ptr @.str.79, !285, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @event_exit__getpgrp, !285, !"event_exit__getpgrp", i1 false, i1 false}
!290 = !{ptr @__event_exit__getpgrp, !285, !"__event_exit__getpgrp", i1 false, i1 false}
!291 = !{ptr @.str.80, !285, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @__syscall_meta__getpgrp, !285, !"__syscall_meta__getpgrp", i1 false, i1 false}
!293 = !{ptr @__p_syscall_meta__getpgrp, !285, !"__p_syscall_meta__getpgrp", i1 false, i1 false}
!294 = !{ptr @.str.81, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../kernel/sys.c", i32 1161, i32 1}
!296 = !{ptr @event_enter__getsid, !295, !"event_enter__getsid", i1 false, i1 false}
!297 = !{ptr @__event_enter__getsid, !295, !"__event_enter__getsid", i1 false, i1 false}
!298 = !{ptr @.str.82, !295, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @event_exit__getsid, !295, !"event_exit__getsid", i1 false, i1 false}
!300 = !{ptr @__event_exit__getsid, !295, !"__event_exit__getsid", i1 false, i1 false}
!301 = !{ptr @.str.83, !295, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @__syscall_meta__getsid, !295, !"__syscall_meta__getsid", i1 false, i1 false}
!303 = !{ptr @__p_syscall_meta__getsid, !295, !"__p_syscall_meta__getsid", i1 false, i1 false}
!304 = !{ptr @.str.84, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../kernel/sys.c", i32 1233, i32 1}
!306 = !{ptr @event_enter__setsid, !305, !"event_enter__setsid", i1 false, i1 false}
!307 = !{ptr @__event_enter__setsid, !305, !"__event_enter__setsid", i1 false, i1 false}
!308 = !{ptr @.str.85, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @event_exit__setsid, !305, !"event_exit__setsid", i1 false, i1 false}
!310 = !{ptr @__event_exit__setsid, !305, !"__event_exit__setsid", i1 false, i1 false}
!311 = !{ptr @.str.86, !305, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @__syscall_meta__setsid, !305, !"__syscall_meta__setsid", i1 false, i1 false}
!313 = !{ptr @__p_syscall_meta__setsid, !305, !"__p_syscall_meta__setsid", i1 false, i1 false}
!314 = !{ptr @.str.87, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../kernel/sys.c", i32 1238, i32 1}
!316 = !{ptr @.str.88, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @uts_sem, !315, !"uts_sem", i1 false, i1 false}
!318 = !{ptr @.str.89, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../kernel/sys.c", i32 1281, i32 1}
!320 = !{ptr @event_enter__newuname, !319, !"event_enter__newuname", i1 false, i1 false}
!321 = !{ptr @__event_enter__newuname, !319, !"__event_enter__newuname", i1 false, i1 false}
!322 = !{ptr @.str.90, !319, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @event_exit__newuname, !319, !"event_exit__newuname", i1 false, i1 false}
!324 = !{ptr @__event_exit__newuname, !319, !"__event_exit__newuname", i1 false, i1 false}
!325 = !{ptr @.str.91, !319, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @__syscall_meta__newuname, !319, !"__syscall_meta__newuname", i1 false, i1 false}
!327 = !{ptr @__p_syscall_meta__newuname, !319, !"__p_syscall_meta__newuname", i1 false, i1 false}
!328 = !{ptr @.str.92, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../kernel/sys.c", i32 1349, i32 1}
!330 = !{ptr @event_enter__sethostname, !329, !"event_enter__sethostname", i1 false, i1 false}
!331 = !{ptr @__event_enter__sethostname, !329, !"__event_enter__sethostname", i1 false, i1 false}
!332 = !{ptr @.str.93, !329, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @event_exit__sethostname, !329, !"event_exit__sethostname", i1 false, i1 false}
!334 = !{ptr @__event_exit__sethostname, !329, !"__event_exit__sethostname", i1 false, i1 false}
!335 = !{ptr @.str.94, !329, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @__syscall_meta__sethostname, !329, !"__syscall_meta__sethostname", i1 false, i1 false}
!337 = !{ptr @__p_syscall_meta__sethostname, !329, !"__p_syscall_meta__sethostname", i1 false, i1 false}
!338 = !{ptr @.str.95, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../kernel/sys.c", i32 1376, i32 1}
!340 = !{ptr @event_enter__gethostname, !339, !"event_enter__gethostname", i1 false, i1 false}
!341 = !{ptr @__event_enter__gethostname, !339, !"__event_enter__gethostname", i1 false, i1 false}
!342 = !{ptr @.str.96, !339, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @event_exit__gethostname, !339, !"event_exit__gethostname", i1 false, i1 false}
!344 = !{ptr @__event_exit__gethostname, !339, !"__event_exit__gethostname", i1 false, i1 false}
!345 = !{ptr @.str.97, !339, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @__syscall_meta__gethostname, !339, !"__syscall_meta__gethostname", i1 false, i1 false}
!347 = !{ptr @__p_syscall_meta__gethostname, !339, !"__p_syscall_meta__gethostname", i1 false, i1 false}
!348 = !{ptr @.str.98, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../kernel/sys.c", i32 1402, i32 1}
!350 = !{ptr @event_enter__setdomainname, !349, !"event_enter__setdomainname", i1 false, i1 false}
!351 = !{ptr @__event_enter__setdomainname, !349, !"__event_enter__setdomainname", i1 false, i1 false}
!352 = !{ptr @.str.99, !349, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @event_exit__setdomainname, !349, !"event_exit__setdomainname", i1 false, i1 false}
!354 = !{ptr @__event_exit__setdomainname, !349, !"__event_exit__setdomainname", i1 false, i1 false}
!355 = !{ptr @.str.100, !349, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @__syscall_meta__setdomainname, !349, !"__syscall_meta__setdomainname", i1 false, i1 false}
!357 = !{ptr @__p_syscall_meta__setdomainname, !349, !"__p_syscall_meta__setdomainname", i1 false, i1 false}
!358 = !{ptr @.str.101, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../kernel/sys.c", i32 1427, i32 1}
!360 = !{ptr @event_enter__getrlimit, !359, !"event_enter__getrlimit", i1 false, i1 false}
!361 = !{ptr @__event_enter__getrlimit, !359, !"__event_enter__getrlimit", i1 false, i1 false}
!362 = !{ptr @.str.102, !359, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @event_exit__getrlimit, !359, !"event_exit__getrlimit", i1 false, i1 false}
!364 = !{ptr @__event_exit__getrlimit, !359, !"__event_exit__getrlimit", i1 false, i1 false}
!365 = !{ptr @.str.103, !359, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @__syscall_meta__getrlimit, !359, !"__syscall_meta__getrlimit", i1 false, i1 false}
!367 = !{ptr @__p_syscall_meta__getrlimit, !359, !"__p_syscall_meta__getrlimit", i1 false, i1 false}
!368 = !{ptr @.str.104, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../kernel/sys.c", i32 1492, i32 1}
!370 = !{ptr @event_enter__old_getrlimit, !369, !"event_enter__old_getrlimit", i1 false, i1 false}
!371 = !{ptr @__event_enter__old_getrlimit, !369, !"__event_enter__old_getrlimit", i1 false, i1 false}
!372 = !{ptr @.str.105, !369, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @event_exit__old_getrlimit, !369, !"event_exit__old_getrlimit", i1 false, i1 false}
!374 = !{ptr @__event_exit__old_getrlimit, !369, !"__event_exit__old_getrlimit", i1 false, i1 false}
!375 = !{ptr @.str.106, !369, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @__syscall_meta__old_getrlimit, !369, !"__syscall_meta__old_getrlimit", i1 false, i1 false}
!377 = !{ptr @__p_syscall_meta__old_getrlimit, !369, !"__p_syscall_meta__old_getrlimit", i1 false, i1 false}
!378 = !{ptr @.str.107, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../kernel/sys.c", i32 1650, i32 1}
!380 = !{ptr @event_enter__prlimit64, !379, !"event_enter__prlimit64", i1 false, i1 false}
!381 = !{ptr @__event_enter__prlimit64, !379, !"__event_enter__prlimit64", i1 false, i1 false}
!382 = !{ptr @.str.108, !379, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @event_exit__prlimit64, !379, !"event_exit__prlimit64", i1 false, i1 false}
!384 = !{ptr @__event_exit__prlimit64, !379, !"__event_exit__prlimit64", i1 false, i1 false}
!385 = !{ptr @.str.109, !379, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @__syscall_meta__prlimit64, !379, !"__syscall_meta__prlimit64", i1 false, i1 false}
!387 = !{ptr @__p_syscall_meta__prlimit64, !379, !"__p_syscall_meta__prlimit64", i1 false, i1 false}
!388 = !{ptr @.str.110, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../kernel/sys.c", i32 1697, i32 1}
!390 = !{ptr @event_enter__setrlimit, !389, !"event_enter__setrlimit", i1 false, i1 false}
!391 = !{ptr @__event_enter__setrlimit, !389, !"__event_enter__setrlimit", i1 false, i1 false}
!392 = !{ptr @.str.111, !389, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @event_exit__setrlimit, !389, !"event_exit__setrlimit", i1 false, i1 false}
!394 = !{ptr @__event_exit__setrlimit, !389, !"__event_exit__setrlimit", i1 false, i1 false}
!395 = !{ptr @.str.112, !389, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @__syscall_meta__setrlimit, !389, !"__syscall_meta__setrlimit", i1 false, i1 false}
!397 = !{ptr @__p_syscall_meta__setrlimit, !389, !"__p_syscall_meta__setrlimit", i1 false, i1 false}
!398 = !{ptr @.str.113, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../kernel/sys.c", i32 1824, i32 1}
!400 = !{ptr @event_enter__getrusage, !399, !"event_enter__getrusage", i1 false, i1 false}
!401 = !{ptr @__event_enter__getrusage, !399, !"__event_enter__getrusage", i1 false, i1 false}
!402 = !{ptr @.str.114, !399, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @event_exit__getrusage, !399, !"event_exit__getrusage", i1 false, i1 false}
!404 = !{ptr @__event_exit__getrusage, !399, !"__event_exit__getrusage", i1 false, i1 false}
!405 = !{ptr @.str.115, !399, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @__syscall_meta__getrusage, !399, !"__syscall_meta__getrusage", i1 false, i1 false}
!407 = !{ptr @__p_syscall_meta__getrusage, !399, !"__p_syscall_meta__getrusage", i1 false, i1 false}
!408 = !{ptr @.str.116, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../kernel/sys.c", i32 1850, i32 1}
!410 = !{ptr @event_enter__umask, !409, !"event_enter__umask", i1 false, i1 false}
!411 = !{ptr @__event_enter__umask, !409, !"__event_enter__umask", i1 false, i1 false}
!412 = !{ptr @.str.117, !409, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @event_exit__umask, !409, !"event_exit__umask", i1 false, i1 false}
!414 = !{ptr @__event_exit__umask, !409, !"__event_exit__umask", i1 false, i1 false}
!415 = !{ptr @.str.118, !409, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @__syscall_meta__umask, !409, !"__syscall_meta__umask", i1 false, i1 false}
!417 = !{ptr @__p_syscall_meta__umask, !409, !"__p_syscall_meta__umask", i1 false, i1 false}
!418 = !{ptr @.str.119, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../kernel/sys.c", i32 2337, i32 1}
!420 = !{ptr @event_enter__prctl, !419, !"event_enter__prctl", i1 false, i1 false}
!421 = !{ptr @__event_enter__prctl, !419, !"__event_enter__prctl", i1 false, i1 false}
!422 = !{ptr @.str.120, !419, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @event_exit__prctl, !419, !"event_exit__prctl", i1 false, i1 false}
!424 = !{ptr @__event_exit__prctl, !419, !"__event_exit__prctl", i1 false, i1 false}
!425 = !{ptr @.str.121, !419, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @__syscall_meta__prctl, !419, !"__syscall_meta__prctl", i1 false, i1 false}
!427 = !{ptr @__p_syscall_meta__prctl, !419, !"__p_syscall_meta__prctl", i1 false, i1 false}
!428 = !{ptr @.str.122, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../kernel/sys.c", i32 2616, i32 1}
!430 = !{ptr @event_enter__getcpu, !429, !"event_enter__getcpu", i1 false, i1 false}
!431 = !{ptr @__event_enter__getcpu, !429, !"__event_enter__getcpu", i1 false, i1 false}
!432 = !{ptr @.str.123, !429, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @event_exit__getcpu, !429, !"event_exit__getcpu", i1 false, i1 false}
!434 = !{ptr @__event_exit__getcpu, !429, !"__event_exit__getcpu", i1 false, i1 false}
!435 = !{ptr @.str.124, !429, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @__syscall_meta__getcpu, !429, !"__syscall_meta__getcpu", i1 false, i1 false}
!437 = !{ptr @__p_syscall_meta__getcpu, !429, !"__p_syscall_meta__getcpu", i1 false, i1 false}
!438 = !{ptr @.str.125, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../kernel/sys.c", i32 2696, i32 1}
!440 = !{ptr @event_enter__sysinfo, !439, !"event_enter__sysinfo", i1 false, i1 false}
!441 = !{ptr @__event_enter__sysinfo, !439, !"__event_enter__sysinfo", i1 false, i1 false}
!442 = !{ptr @.str.126, !439, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @event_exit__sysinfo, !439, !"event_exit__sysinfo", i1 false, i1 false}
!444 = !{ptr @__event_exit__sysinfo, !439, !"__event_exit__sysinfo", i1 false, i1 false}
!445 = !{ptr @.str.127, !439, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @__syscall_meta__sysinfo, !439, !"__syscall_meta__sysinfo", i1 false, i1 false}
!447 = !{ptr @__p_syscall_meta__sysinfo, !439, !"__p_syscall_meta__sysinfo", i1 false, i1 false}
!448 = !{ptr @.str.128, !17, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @types__setpriority, !17, !"types__setpriority", i1 false, i1 false}
!450 = !{ptr @.str.129, !17, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.130, !17, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.131, !17, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @args__setpriority, !17, !"args__setpriority", i1 false, i1 false}
!454 = distinct !{null, !455, !"__warned", i1 false, i1 false}
!455 = !{!"../kernel/sys.c", i32 208, i32 28}
!456 = distinct !{null, !457, !"__warned", i1 false, i1 false}
!457 = !{!"../kernel/sys.c", i32 239, i32 3}
!458 = !{ptr @.str.133, !457, !"<string literal>", i1 false, i1 false}
!459 = distinct !{null, !457, !"__warned", i1 false, i1 false}
!460 = distinct !{null, !461, !"__warned", i1 false, i1 false}
!461 = !{!"../kernel/sys.c", i32 254, i32 3}
!462 = distinct !{null, !463, !"__warned", i1 false, i1 false}
!463 = !{!"../kernel/sys.c", i32 255, i32 15}
!464 = distinct !{null, !465, !"__warned", i1 false, i1 false}
!465 = !{!"../kernel/sys.c", i32 166, i32 28}
!466 = distinct !{null, !467, !"__warned", i1 false, i1 false}
!467 = !{!"../kernel/sys.c", i32 166, i32 53}
!468 = !{ptr @types__getpriority, !27, !"types__getpriority", i1 false, i1 false}
!469 = !{ptr @args__getpriority, !27, !"args__getpriority", i1 false, i1 false}
!470 = distinct !{null, !471, !"__warned", i1 false, i1 false}
!471 = !{!"../kernel/sys.c", i32 278, i32 28}
!472 = distinct !{null, !473, !"__warned", i1 false, i1 false}
!473 = !{!"../kernel/sys.c", i32 305, i32 3}
!474 = distinct !{null, !473, !"__warned", i1 false, i1 false}
!475 = distinct !{null, !476, !"__warned", i1 false, i1 false}
!476 = !{!"../kernel/sys.c", i32 322, i32 3}
!477 = distinct !{null, !478, !"__warned", i1 false, i1 false}
!478 = !{!"../kernel/sys.c", i32 323, i32 15}
!479 = !{ptr @.str.142, !41, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @types__setregid, !41, !"types__setregid", i1 false, i1 false}
!481 = !{ptr @.str.143, !41, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @.str.144, !41, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @args__setregid, !41, !"args__setregid", i1 false, i1 false}
!484 = !{ptr @types__setgid, !55, !"types__setgid", i1 false, i1 false}
!485 = !{ptr @.str.145, !55, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @args__setgid, !55, !"args__setgid", i1 false, i1 false}
!487 = distinct !{null, !488, !"__warned", i1 false, i1 false}
!488 = !{!"../kernel/sys.c", i32 483, i32 22}
!489 = !{ptr @.str.146, !69, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @types__setreuid, !69, !"types__setreuid", i1 false, i1 false}
!491 = !{ptr @.str.147, !69, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.148, !69, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @args__setreuid, !69, !"args__setreuid", i1 false, i1 false}
!494 = !{ptr @types__setuid, !83, !"types__setuid", i1 false, i1 false}
!495 = !{ptr @.str.149, !83, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @args__setuid, !83, !"args__setuid", i1 false, i1 false}
!497 = !{ptr @types__setresuid, !97, !"types__setresuid", i1 false, i1 false}
!498 = !{ptr @.str.150, !97, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @args__setresuid, !97, !"args__setresuid", i1 false, i1 false}
!500 = !{ptr @.str.151, !107, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @types__getresuid, !107, !"types__getresuid", i1 false, i1 false}
!502 = !{ptr @.str.152, !107, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.153, !107, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @.str.154, !107, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @args__getresuid, !107, !"args__getresuid", i1 false, i1 false}
!506 = distinct !{null, !507, !"__warned", i1 false, i1 false}
!507 = !{!"../kernel/sys.c", i32 730, i32 28}
!508 = !{ptr @types__setresgid, !121, !"types__setresgid", i1 false, i1 false}
!509 = !{ptr @.str.155, !121, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @args__setresgid, !121, !"args__setresgid", i1 false, i1 false}
!511 = !{ptr @.str.156, !131, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @types__getresgid, !131, !"types__getresgid", i1 false, i1 false}
!513 = !{ptr @.str.157, !131, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.158, !131, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @.str.159, !131, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @args__getresgid, !131, !"args__getresgid", i1 false, i1 false}
!517 = distinct !{null, !518, !"__warned", i1 false, i1 false}
!518 = !{!"../kernel/sys.c", i32 813, i32 28}
!519 = !{ptr @types__setfsuid, !143, !"types__setfsuid", i1 false, i1 false}
!520 = !{ptr @args__setfsuid, !143, !"args__setfsuid", i1 false, i1 false}
!521 = !{ptr @types__setfsgid, !155, !"types__setfsgid", i1 false, i1 false}
!522 = !{ptr @args__setfsgid, !155, !"args__setfsgid", i1 false, i1 false}
!523 = distinct !{null, !524, !"__warned", i1 false, i1 false}
!524 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!525 = !{ptr @.str.160, !524, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @.str.161, !524, !"<string literal>", i1 false, i1 false}
!527 = distinct !{null, !528, !"__warned", i1 false, i1 false}
!528 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!529 = !{ptr @.str.162, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.163, !255, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @types__times, !255, !"types__times", i1 false, i1 false}
!532 = !{ptr @.str.164, !255, !"<string literal>", i1 false, i1 false}
!533 = !{ptr @args__times, !255, !"args__times", i1 false, i1 false}
!534 = distinct !{null, !535, !"__already_done", i1 false, i1 false}
!535 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!536 = !{ptr @.str.165, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @.str.166, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!539 = !{ptr @.str.167, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!541 = !{ptr @.str.168, !265, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @types__setpgid, !265, !"types__setpgid", i1 false, i1 false}
!543 = !{ptr @.str.169, !265, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @.str.170, !265, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @args__setpgid, !265, !"args__setpgid", i1 false, i1 false}
!546 = !{ptr @types__getpgid, !275, !"types__getpgid", i1 false, i1 false}
!547 = !{ptr @args__getpgid, !275, !"args__getpgid", i1 false, i1 false}
!548 = !{ptr @types__getsid, !295, !"types__getsid", i1 false, i1 false}
!549 = !{ptr @args__getsid, !295, !"args__getsid", i1 false, i1 false}
!550 = !{ptr @.str.171, !319, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @types__newuname, !319, !"types__newuname", i1 false, i1 false}
!552 = !{ptr @.str.172, !319, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @args__newuname, !319, !"args__newuname", i1 false, i1 false}
!554 = !{ptr @.str.173, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../kernel/sys.c", i32 1260, i32 22}
!556 = !{ptr @.str.174, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../kernel/sys.c", i32 1275, i32 31}
!558 = !{ptr @.str.175, !329, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @types__sethostname, !329, !"types__sethostname", i1 false, i1 false}
!560 = !{ptr @.str.176, !329, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @args__sethostname, !329, !"args__sethostname", i1 false, i1 false}
!562 = !{ptr @types__gethostname, !339, !"types__gethostname", i1 false, i1 false}
!563 = !{ptr @args__gethostname, !339, !"args__gethostname", i1 false, i1 false}
!564 = !{ptr @types__setdomainname, !349, !"types__setdomainname", i1 false, i1 false}
!565 = !{ptr @args__setdomainname, !349, !"args__setdomainname", i1 false, i1 false}
!566 = !{ptr @.str.177, !359, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @.str.178, !359, !"<string literal>", i1 false, i1 false}
!568 = !{ptr @types__getrlimit, !359, !"types__getrlimit", i1 false, i1 false}
!569 = !{ptr @.str.179, !359, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @args__getrlimit, !359, !"args__getrlimit", i1 false, i1 false}
!572 = !{ptr @types__old_getrlimit, !369, !"types__old_getrlimit", i1 false, i1 false}
!573 = !{ptr @args__old_getrlimit, !369, !"args__old_getrlimit", i1 false, i1 false}
!574 = !{ptr @.str.181, !379, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @.str.182, !379, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @types__prlimit64, !379, !"types__prlimit64", i1 false, i1 false}
!577 = !{ptr @.str.183, !379, !"<string literal>", i1 false, i1 false}
!578 = !{ptr @.str.184, !379, !"<string literal>", i1 false, i1 false}
!579 = !{ptr @args__prlimit64, !379, !"args__prlimit64", i1 false, i1 false}
!580 = distinct !{null, !581, !"__warned", i1 false, i1 false}
!581 = !{!"../kernel/sys.c", i32 1631, i32 28}
!582 = distinct !{null, !583, !"__warned", i1 false, i1 false}
!583 = !{!"../kernel/sys.c", i32 1637, i32 10}
!584 = !{ptr @types__setrlimit, !389, !"types__setrlimit", i1 false, i1 false}
!585 = !{ptr @args__setrlimit, !389, !"args__setrlimit", i1 false, i1 false}
!586 = !{ptr @.str.186, !399, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @types__getrusage, !399, !"types__getrusage", i1 false, i1 false}
!588 = !{ptr @.str.187, !399, !"<string literal>", i1 false, i1 false}
!589 = !{ptr @args__getrusage, !399, !"args__getrusage", i1 false, i1 false}
!590 = !{ptr @types__umask, !409, !"types__umask", i1 false, i1 false}
!591 = !{ptr @.str.188, !409, !"<string literal>", i1 false, i1 false}
!592 = !{ptr @args__umask, !409, !"args__umask", i1 false, i1 false}
!593 = !{ptr @.str.189, !419, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @types__prctl, !419, !"types__prctl", i1 false, i1 false}
!595 = !{ptr @.str.190, !419, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @.str.191, !419, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @.str.192, !419, !"<string literal>", i1 false, i1 false}
!598 = !{ptr @.str.193, !419, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @.str.194, !419, !"<string literal>", i1 false, i1 false}
!600 = !{ptr @args__prctl, !419, !"args__prctl", i1 false, i1 false}
!601 = distinct !{null, !602, !"__warned", i1 false, i1 false}
!602 = !{!"../kernel/sys.c", i32 2007, i32 38}
!603 = distinct !{null, !604, !"offsets", i1 false, i1 false}
!604 = !{!"../kernel/sys.c", i32 1898, i32 29}
!605 = !{ptr @.str.195, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../kernel/sys.c", i32 2282, i32 11}
!607 = !{ptr @.str.196, !429, !"<string literal>", i1 false, i1 false}
!608 = !{ptr @.str.197, !429, !"<string literal>", i1 false, i1 false}
!609 = !{ptr @types__getcpu, !429, !"types__getcpu", i1 false, i1 false}
!610 = !{ptr @.str.198, !429, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @.str.199, !429, !"<string literal>", i1 false, i1 false}
!612 = !{ptr @.str.200, !429, !"<string literal>", i1 false, i1 false}
!613 = !{ptr @args__getcpu, !429, !"args__getcpu", i1 false, i1 false}
!614 = !{ptr @.str.201, !439, !"<string literal>", i1 false, i1 false}
!615 = !{ptr @types__sysinfo, !439, !"types__sysinfo", i1 false, i1 false}
!616 = !{ptr @.str.202, !439, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @args__sysinfo, !439, !"args__sysinfo", i1 false, i1 false}
!618 = !{!"sp"}
!619 = !{i32 1, !"wchar_size", i32 2}
!620 = !{i32 1, !"min_enum_size", i32 4}
!621 = !{i32 8, !"branch-target-enforcement", i32 0}
!622 = !{i32 8, !"sign-return-address", i32 0}
!623 = !{i32 8, !"sign-return-address-all", i32 0}
!624 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!625 = !{i32 7, !"uwtable", i32 1}
!626 = !{i32 7, !"frame-pointer", i32 2}
!627 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!628 = !{i64 2150064833}
!629 = !{i64 2150065099}
!630 = !{i64 5285285}
!631 = !{i64 5285482}
!632 = !{i64 2152770715}
!633 = !{i64 2156441176, i64 2156441456, i64 2156441790, i64 2156442124}
!634 = !{i64 2156449948, i64 2156450228, i64 2156450562, i64 2156450896}
!635 = !{i64 2156458720, i64 2156459000, i64 2156459334, i64 2156459668}
!636 = !{i64 2156500673, i64 2156500953, i64 2156501287, i64 2156501621}
!637 = !{i64 2156509445, i64 2156509725, i64 2156510059, i64 2156510393}
!638 = !{i64 2156518217, i64 2156518497, i64 2156518831, i64 2156519165}
!639 = !{!"auto-init"}
!640 = !{i64 2152790411, i64 2152790436}
!641 = !{!"branch_weights", i32 1, i32 2000}
!642 = !{i64 2152789730, i64 2152789755}
!643 = !{!"branch_weights", i32 2000, i32 1}
!644 = !{i64 993820, i64 993837}
!645 = !{i64 2148731030, i64 2148731062, i64 2148731091, i64 2148731125, i64 2148731156, i64 2148731179}
!646 = !{i64 2148819055}
!647 = !{i64 2148733495, i64 2148733527, i64 2148733556, i64 2148733590, i64 2148733621, i64 2148733644}
!648 = !{i64 2150015290}
!649 = !{i64 2156745019, i64 2156745497, i64 2156745056, i64 2156745112, i64 2156745146, i64 2156745170, i64 2156745211, i64 2156745232, i64 2156745260, i64 2156745294}
!650 = !{i64 2156769092}
!651 = !{i64 1236268, i64 1236285, i64 1236309, i64 1236335, i64 1236353}
!652 = !{i64 2156769466}
!653 = !{i64 2156822534, i64 2156822814, i64 2156823148, i64 2156823482}
!654 = !{i64 2156781006, i64 2156781286, i64 2156781620, i64 2156781954}
!655 = !{i64 2148330177, i64 2148330182, i64 2148330195, i64 2148330239, i64 2148330273, i64 2148330294}
!656 = !{i64 2156793084, i64 2156793364, i64 2156793698, i64 2156794032}
!657 = !{i64 2156833707, i64 2156833987, i64 2156834321, i64 2156834655}
!658 = !{i64 2156859193, i64 2156859473, i64 2156859807, i64 2156860141}
!659 = !{i64 2156868012, i64 2156868292, i64 2156868626, i64 2156868960}
!660 = !{!661}
!661 = distinct !{!661, !662, !"fdget: %agg.result"}
!662 = distinct !{!662, !"fdget"}
!663 = !{i64 2153028711}
