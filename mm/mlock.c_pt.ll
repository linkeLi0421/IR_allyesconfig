; ModuleID = '/llk/IR_all_yes/mm/mlock.c_pt.bc'
source_filename = "../mm/mlock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+can_do_mlock\22, \22a\22\09"
module asm "\09.weak\09__crc_can_do_mlock\09\09\09\09"
module asm "\09.long\09__crc_can_do_mlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_do_mlock:\09\09\09\09\09"
module asm "\09.asciz \09\22can_do_mlock\22\09\09\09\09\09"
module asm "__kstrtabns_can_do_mlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.66, %struct.trace_event, ptr, ptr, %union.anon.68, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.66 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.vm_event_state = type { [76 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.page = type { i32, %union.anon, %union.anon.99, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.99 = type { %struct.atomic_t }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.76, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.105 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mem_cgroup_per_node = type { %struct.lruvec, ptr, %struct.lruvec_stats, [4 x [5 x i32]], %struct.mem_cgroup_reclaim_iter, ptr, %struct.rb_node, i32, i8, ptr }
%struct.lruvec_stats = type { [40 x i32], [40 x i32] }
%struct.mem_cgroup_reclaim_iter = type { ptr, i32 }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.107 }
%struct.percpu_ref = type { i32, ptr }
%union.anon.107 = type { %struct.list_head }

@__kstrtab_can_do_mlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_do_mlock = external dso_local constant [0 x i8], align 1
@__ksymtab_can_do_mlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_do_mlock to i32), ptr @__kstrtab_can_do_mlock, ptr @__kstrtabns_can_do_mlock }, section "___ksymtab+can_do_mlock", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm/mlock.c\00", [21 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_mlock\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__mlock = internal global %struct.syscall_metadata { ptr @.str.6, i32 -1, i32 2, ptr @types__mlock, ptr @args__mlock, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mlock, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mlock, i64 20) }, ptr @event_enter__mlock, ptr @event_exit__mlock }, align 4
@event_enter__mlock = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__mlock, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mlock = internal global ptr @event_enter__mlock, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_mlock\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__mlock = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__mlock, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mlock = internal global ptr @event_exit__mlock, section "_ftrace_events", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_mlock\00", [22 x i8] zeroinitializer }, align 32
@types__mlock = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.39, ptr @.str.40], [24 x i8] zeroinitializer }, align 32
@args__mlock = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.42], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mlock = internal global ptr @__syscall_meta__mlock, section "__syscalls_metadata", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_mlock2\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__mlock2 = internal global %struct.syscall_metadata { ptr @.str.9, i32 -1, i32 3, ptr @types__mlock2, ptr @args__mlock2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mlock2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mlock2, i64 20) }, ptr @event_enter__mlock2, ptr @event_exit__mlock2 }, align 4
@event_enter__mlock2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__mlock2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mlock2 = internal global ptr @event_enter__mlock2, section "_ftrace_events", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_mlock2\00", [16 x i8] zeroinitializer }, align 32
@event_exit__mlock2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__mlock2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mlock2 = internal global ptr @event_exit__mlock2, section "_ftrace_events", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_mlock2\00", [21 x i8] zeroinitializer }, align 32
@types__mlock2 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.43], [20 x i8] zeroinitializer }, align 32
@args__mlock2 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mlock2 = internal global ptr @__syscall_meta__mlock2, section "__syscalls_metadata", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_munlock\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__munlock = internal global %struct.syscall_metadata { ptr @.str.12, i32 -1, i32 2, ptr @types__munlock, ptr @args__munlock, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__munlock, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__munlock, i64 20) }, ptr @event_enter__munlock, ptr @event_exit__munlock }, align 4
@event_enter__munlock = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__munlock, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__munlock = internal global ptr @event_enter__munlock, section "_ftrace_events", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_munlock\00", [47 x i8] zeroinitializer }, align 32
@event_exit__munlock = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__munlock, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__munlock = internal global ptr @event_exit__munlock, section "_ftrace_events", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_munlock\00", [20 x i8] zeroinitializer }, align 32
@types__munlock = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.39, ptr @.str.40], [24 x i8] zeroinitializer }, align 32
@args__munlock = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.42], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__munlock = internal global ptr @__syscall_meta__munlock, section "__syscalls_metadata", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_mlockall\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__mlockall = internal global %struct.syscall_metadata { ptr @.str.15, i32 -1, i32 1, ptr @types__mlockall, ptr @args__mlockall, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mlockall, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mlockall, i64 20) }, ptr @event_enter__mlockall, ptr @event_exit__mlockall }, align 4
@event_enter__mlockall = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__mlockall, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mlockall = internal global ptr @event_enter__mlockall, section "_ftrace_events", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_mlockall\00", [46 x i8] zeroinitializer }, align 32
@event_exit__mlockall = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__mlockall, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mlockall = internal global ptr @event_exit__mlockall, section "_ftrace_events", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_mlockall\00", [19 x i8] zeroinitializer }, align 32
@types__mlockall = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@args__mlockall = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mlockall = internal global ptr @__syscall_meta__mlockall, section "__syscalls_metadata", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_munlockall\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__munlockall = internal global %struct.syscall_metadata { ptr @.str.18, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__munlockall, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__munlockall, i64 20) }, ptr @event_enter__munlockall, ptr @event_exit__munlockall }, align 4
@event_enter__munlockall = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.66 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__munlockall, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__munlockall = internal global ptr @event_enter__munlockall, section "_ftrace_events", align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_munlockall\00", [44 x i8] zeroinitializer }, align 32
@event_exit__munlockall = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.66 { ptr @.str.17 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__syscall_meta__munlockall, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__munlockall = internal global ptr @event_exit__munlockall, section "_ftrace_events", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_munlockall\00", [17 x i8] zeroinitializer }, align 32
@__p_syscall_meta__munlockall = internal global ptr @__syscall_meta__munlockall, section "__syscalls_metadata", align 4
@shmlock_user_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"VM_BUG_ON_FOLIO(folio_test_active(folio) && folio_test_unevictable(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM_BUG_ON_PAGE(PageLRU(page))\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shmlock_user_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 96, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 483, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"event_enter__mlock\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"event_exit__mlock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"types__mlock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"args__mlock\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"event_enter__mlock2\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"event_exit__mlock2\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"types__mlock2\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"args__mlock2\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"event_enter__munlock\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"event_exit__munlock\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"types__munlock\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"args__munlock\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 713, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"event_enter__mlockall\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"event_exit__mlockall\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"types__mlockall\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"args__mlockall\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 776, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [24 x i8] c"event_enter__munlockall\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"event_exit__munlockall\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 805, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"shmlock_user_lock\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 506, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1368, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 717, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 788, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1160, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 537, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 538, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 417, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [29 x i8] c"../include/linux/mm_inline.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 83, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 698, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 219, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 220, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 695, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 723, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 695, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 700, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [14 x i8] c"../mm/mlock.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 820, i32 8 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__event_enter__mlock, ptr @__event_enter__mlock2, ptr @__event_enter__mlockall, ptr @__event_enter__munlock, ptr @__event_enter__munlockall, ptr @__event_exit__mlock, ptr @__event_exit__mlock2, ptr @__event_exit__mlockall, ptr @__event_exit__munlock, ptr @__event_exit__munlockall, ptr @__ksymtab_can_do_mlock, ptr @__p_syscall_meta__mlock, ptr @__p_syscall_meta__mlock2, ptr @__p_syscall_meta__mlockall, ptr @__p_syscall_meta__munlock, ptr @__p_syscall_meta__munlockall, ptr @__syscall_meta__mlock, ptr @__syscall_meta__mlock2, ptr @__syscall_meta__mlockall, ptr @__syscall_meta__munlock, ptr @__syscall_meta__munlockall, ptr @event_enter__mlock, ptr @event_enter__mlock2, ptr @event_enter__mlockall, ptr @event_enter__munlock, ptr @event_enter__munlockall, ptr @event_exit__mlock, ptr @event_exit__mlock2, ptr @event_exit__mlockall, ptr @event_exit__munlock, ptr @event_exit__munlockall, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @types__mlock, ptr @args__mlock, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @types__mlock2, ptr @args__mlock2, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @types__munlock, ptr @args__munlock, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @types__mlockall, ptr @args__mlockall, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @shmlock_user_lock, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mlock to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mlock to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mlock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mlock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mlock2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mlock2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mlock2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mlock2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__munlock to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__munlock to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__munlock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__munlock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mlockall to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mlockall to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mlockall to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mlockall to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__munlockall to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__munlockall to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmlock_user_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_mlock = dso_local alias i32 (i32, i32), ptr @__se_sys_mlock
@sys_mlock2 = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_mlock2
@sys_munlock = dso_local alias i32 (i32, i32), ptr @__se_sys_munlock
@sys_mlockall = dso_local alias i32 (i32), ptr @__se_sys_mlockall

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @can_do_mlock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 51, i32 8
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %call1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_page_mlock(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !127

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.body7.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !127

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %0, align 4
  %and.i33.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i34.i, label %if.end.i37.i, label %if.then.i36.i, !prof !127

if.then.i36.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i35.i = add i32 %10, -1
  br label %_compound_head.exit39.i

if.end.i37.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit39.i

_compound_head.exit39.i:                          ; preds = %if.end.i37.i, %if.then.i36.i
  %retval.0.i38.i = phi i32 [ %sub.i35.i, %if.then.i36.i ], [ %11, %if.end.i37.i ]
  %12 = inttoptr i32 %retval.0.i38.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !130
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i34.i, label %if.end.i44.i, label %if.then.i43.i, !prof !127

if.then.i43.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i42.i = add i32 %10, -1
  br label %TestClearPageMlocked.exit

if.end.i44.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %page to i32
  br label %TestClearPageMlocked.exit

TestClearPageMlocked.exit:                        ; preds = %if.end.i44.i, %if.then.i43.i
  %retval.0.i45.i = phi i32 [ %sub.i42.i, %if.then.i43.i ], [ %13, %if.end.i44.i ]
  %14 = inttoptr i32 %retval.0.i45.i to ptr
  %call27.i = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not = icmp eq i32 %call27.i, 0
  br i1 %tobool.not, label %TestClearPageMlocked.exit.cleanup_crit_edge, label %if.end

TestClearPageMlocked.exit.cleanup_crit_edge:      ; preds = %TestClearPageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %TestClearPageMlocked.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i27 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i28, label %thp_nr_pages.exit, label %if.then.i29, !prof !127

if.then.i29:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %if.end
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i.i = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i30, label %page_zone.exit, !prof !129

if.then.i.i30:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

page_zone.exit:                                   ; preds = %thp_nr_pages.exit
  %shr.i.i31 = lshr i32 %18, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i31
  tail call void @mod_zone_page_state(ptr noundef %arrayidx.i, i32 noundef 7, i32 noundef -1) #7
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %20 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i32 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i32 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %25, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 67) to i32)
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add14.i = add i32 %28, 1
  store i32 %add14.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i33 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i33, label %if.then.i34, label %page_zone.exit.count_vm_events.exit_crit_edge, !prof !129

page_zone.exit.count_vm_events.exit_crit_edge:    ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_vm_events.exit

if.then.i34:                                      ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %count_vm_events.exit

count_vm_events.exit:                             ; preds = %if.then.i34, %page_zone.exit.count_vm_events.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #7, !srcloc !135
  %call3 = tail call i32 @isolate_lru_page(ptr noundef %page) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %count_vm_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @putback_lru_page(ptr noundef %page) #7
  br label %cleanup

if.else:                                          ; preds = %count_vm_events.exit
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %0, align 4
  %and.i.i18 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.not.i.i19, label %if.end.i.i22, label %if.then.i.i21, !prof !127

if.then.i.i21:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i20 = add i32 %31, -1
  br label %_compound_head.exit.i25

if.end.i.i22:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i25

_compound_head.exit.i25:                          ; preds = %if.end.i.i22, %if.then.i.i21
  %retval.0.i.i23 = phi i32 [ %sub.i.i20, %if.then.i.i21 ], [ %32, %if.end.i.i22 ]
  %33 = inttoptr i32 %retval.0.i.i23 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i24 = icmp eq i32 %35, -1
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %0, align 4
  %and.i13.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i24, label %if.then.i26, label %do.end8.i, !prof !129

if.then.i26:                                      ; preds = %_compound_head.exit.i25
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !127

if.then.i16.i:                                    ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i = add i32 %37, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %38, %if.end.i17.i ]
  %39 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #7, !srcloc !136
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i25
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !127

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i = add i32 %37, -1
  br label %PageUnevictable.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %40, %if.end.i24.i ]
  %41 = inttoptr i32 %retval.0.i25.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool7.not = icmp eq i32 %44, 0
  br i1 %tobool7.not, label %PageUnevictable.exit.cleanup_crit_edge, label %if.then8

PageUnevictable.exit.cleanup_crit_edge:           ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %PageUnevictable.exit
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %46 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i35 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i35 to ptr
  %cpu.i36 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i36, align 4
  %arrayidx13.i37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx13.i37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx13.i37, align 4
  %add.i38 = add i32 %51, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 68) to i32)
  %52 = inttoptr i32 %add.i38 to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add14.i39 = add i32 %54, 1
  store i32 %add14.i39, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i.i40 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i40)
  %tobool.not.i41 = icmp eq i32 %and.i.i.i40, 0
  br i1 %tobool.not.i41, label %if.then.i42, label %if.then8.count_vm_events.exit43_crit_edge, !prof !129

if.then8.count_vm_events.exit43_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_vm_events.exit43

if.then.i42:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %count_vm_events.exit43

count_vm_events.exit43:                           ; preds = %if.then.i42, %if.then8.count_vm_events.exit43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #7, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %count_vm_events.exit43, %PageUnevictable.exit.cleanup_crit_edge, %if.then5, %TestClearPageMlocked.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlock_vma_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !127

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !129

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !127

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !127

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !129

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #7, !srcloc !138
  unreachable

do.body8:                                         ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.body24, label %if.then17, !prof !127

if.then17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #7, !srcloc !139
  unreachable

do.body24:                                        ; preds = %do.body8
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %do.body24.do.end41_crit_edge

do.body24.do.end41_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

PageCompound.exit:                                ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %0, align 4
  br label %do.end41

do.end41:                                         ; preds = %PageCompound.exit, %do.body24.do.end41_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i.i64 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i65, label %do.body7.i, label %if.then.i66, !prof !127

if.then.i66:                                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !140
  unreachable

do.body7.i:                                       ; preds = %do.end41
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i.i67 = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i.i67, label %if.end.i.i70, label %if.then.i.i69, !prof !127

if.then.i.i69:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i68 = add i32 %25, -1
  br label %_compound_head.exit.i73

if.end.i.i70:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i73

_compound_head.exit.i73:                          ; preds = %if.end.i.i70, %if.then.i.i69
  %retval.0.i.i71 = phi i32 [ %sub.i.i68, %if.then.i.i69 ], [ %26, %if.end.i.i70 ]
  %27 = inttoptr i32 %retval.0.i.i71 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i72 = icmp eq i32 %29, -1
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %0, align 4
  %and.i33.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp.i.not.i72, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i73
  br i1 %tobool.not.i34.i, label %if.end.i37.i, label %if.then.i36.i, !prof !127

if.then.i36.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i35.i = add i32 %31, -1
  br label %_compound_head.exit39.i

if.end.i37.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit39.i

_compound_head.exit39.i:                          ; preds = %if.end.i37.i, %if.then.i36.i
  %retval.0.i38.i = phi i32 [ %sub.i35.i, %if.then.i36.i ], [ %32, %if.end.i37.i ]
  %33 = inttoptr i32 %retval.0.i38.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !141
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i73
  br i1 %tobool.not.i34.i, label %if.end.i44.i, label %if.then.i43.i, !prof !127

if.then.i43.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i42.i = add i32 %31, -1
  br label %TestSetPageMlocked.exit

if.end.i44.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %page to i32
  br label %TestSetPageMlocked.exit

TestSetPageMlocked.exit:                          ; preds = %if.end.i44.i, %if.then.i43.i
  %retval.0.i45.i = phi i32 [ %sub.i42.i, %if.then.i43.i ], [ %34, %if.end.i44.i ]
  %35 = inttoptr i32 %retval.0.i45.i to ptr
  %call27.i = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool43.not = icmp eq i32 %call27.i, 0
  br i1 %tobool43.not, label %if.then44, label %TestSetPageMlocked.exit.if.end51_crit_edge

TestSetPageMlocked.exit.if.end51_crit_edge:       ; preds = %TestSetPageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then44:                                        ; preds = %TestSetPageMlocked.exit
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %0, align 4
  %and.i.i74 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i75, label %thp_nr_pages.exit, label %if.then.i76, !prof !127

if.then.i76:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %if.then44
  %38 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.not.i.i = icmp eq i32 %39, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i77, label %page_zone.exit, !prof !129

if.then.i.i77:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

page_zone.exit:                                   ; preds = %thp_nr_pages.exit
  %shr.i.i = lshr i32 %39, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  tail call void @mod_zone_page_state(ptr noundef %arrayidx.i, i32 noundef 7, i32 noundef 1) #7
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %41 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i78 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i78 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %46, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 65) to i32)
  %47 = inttoptr i32 %add.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add14.i = add i32 %49, 1
  store i32 %add14.i, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i79 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i79, label %if.then.i80, label %page_zone.exit.count_vm_events.exit_crit_edge, !prof !129

page_zone.exit.count_vm_events.exit_crit_edge:    ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_vm_events.exit

if.then.i80:                                      ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %count_vm_events.exit

count_vm_events.exit:                             ; preds = %if.then.i80, %page_zone.exit.count_vm_events.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #7, !srcloc !135
  %call47 = tail call i32 @isolate_lru_page(ptr noundef %page) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %count_vm_events.exit.if.end51_crit_edge

count_vm_events.exit.if.end51_crit_edge:          ; preds = %count_vm_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %count_vm_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @putback_lru_page(ptr noundef %page) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %count_vm_events.exit.if.end51_crit_edge, %TestSetPageMlocked.exit.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @munlock_vma_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !127

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !129

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !127

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !127

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !129

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #7, !srcloc !142
  unreachable

do.body10:                                        ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %do.end28, label %if.then19, !prof !127

if.then19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #7, !srcloc !143
  unreachable

do.end28:                                         ; preds = %do.body10
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %0, align 4
  %and.i.i49 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49)
  %tobool.not.i = icmp eq i32 %and.i.i49, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i50, !prof !127

if.then.i50:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.body7.i:                                       ; preds = %do.end28
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i.i51 = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !127

if.then.i.i53:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i52 = add i32 %20, -1
  br label %_compound_head.exit.i57

if.end.i.i54:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i57

_compound_head.exit.i57:                          ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %21, %if.end.i.i54 ]
  %22 = inttoptr i32 %retval.0.i.i55 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i56 = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %0, align 4
  %and.i33.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp.i.not.i56, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i57
  br i1 %tobool.not.i34.i, label %if.end.i37.i, label %if.then.i36.i, !prof !127

if.then.i36.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i35.i = add i32 %26, -1
  br label %_compound_head.exit39.i

if.end.i37.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %page to i32
  br label %_compound_head.exit39.i

_compound_head.exit39.i:                          ; preds = %if.end.i37.i, %if.then.i36.i
  %retval.0.i38.i = phi i32 [ %sub.i35.i, %if.then.i36.i ], [ %27, %if.end.i37.i ]
  %28 = inttoptr i32 %retval.0.i38.i to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !130
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i57
  br i1 %tobool.not.i34.i, label %if.end.i44.i, label %if.then.i43.i, !prof !127

if.then.i43.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i42.i = add i32 %26, -1
  br label %TestClearPageMlocked.exit

if.end.i44.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %page to i32
  br label %TestClearPageMlocked.exit

TestClearPageMlocked.exit:                        ; preds = %if.end.i44.i, %if.then.i43.i
  %retval.0.i45.i = phi i32 [ %sub.i42.i, %if.then.i43.i ], [ %29, %if.end.i44.i ]
  %30 = inttoptr i32 %retval.0.i45.i to ptr
  %call27.i = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool30.not = icmp eq i32 %call27.i, 0
  br i1 %tobool30.not, label %TestClearPageMlocked.exit.cleanup_crit_edge, label %if.end32

TestClearPageMlocked.exit.cleanup_crit_edge:      ; preds = %TestClearPageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %TestClearPageMlocked.exit
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %0, align 4
  %and.i.i58 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i59 = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i59, label %thp_nr_pages.exit, label %if.then.i60, !prof !127

if.then.i60:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %if.end32
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.not.i.i = icmp eq i32 %34, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i61, label %page_zone.exit, !prof !129

if.then.i.i61:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

page_zone.exit:                                   ; preds = %thp_nr_pages.exit
  %shr.i.i = lshr i32 %34, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  tail call void @mod_zone_page_state(ptr noundef %arrayidx.i, i32 noundef 7, i32 noundef -1) #7
  %call35 = tail call i32 @isolate_lru_page(ptr noundef %page) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__munlock_isolated_page(ptr noundef %page)
  br label %cleanup

if.else:                                          ; preds = %page_zone.exit
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %0, align 4
  %and.i.i4.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i62 = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i62, label %thp_nr_pages.exit.i, label %if.then.i5.i, !prof !127

if.then.i5.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

thp_nr_pages.exit.i:                              ; preds = %if.else
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !127

if.then.i.i.i:                                    ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %38, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %39, %if.end.i.i.i ]
  %40 = inttoptr i32 %retval.0.i.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.not.i.i63 = icmp eq i32 %42, -1
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %0, align 4
  %and.i13.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %cmp.i.not.i.i63, label %if.then.i.i64, label %do.end8.i.i, !prof !129

if.then.i.i64:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i17.i.i, label %if.then.i16.i.i, !prof !127

if.then.i16.i.i:                                  ; preds = %if.then.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i.i = add i32 %44, -1
  br label %_compound_head.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.then.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i.i

_compound_head.exit19.i.i:                        ; preds = %if.end.i17.i.i, %if.then.i16.i.i
  %retval.0.i18.i.i = phi i32 [ %sub.i15.i.i, %if.then.i16.i.i ], [ %45, %if.end.i17.i.i ]
  %46 = inttoptr i32 %retval.0.i18.i.i to ptr
  tail call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #7, !srcloc !136
  unreachable

do.end8.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i24.i.i, label %if.then.i23.i.i, !prof !127

if.then.i23.i.i:                                  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i.i = add i32 %44, -1
  br label %__munlock_isolation_failed.exit

if.end.i24.i.i:                                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %page to i32
  br label %__munlock_isolation_failed.exit

__munlock_isolation_failed.exit:                  ; preds = %if.end.i24.i.i, %if.then.i23.i.i
  %retval.0.i25.i.i = phi i32 [ %sub.i22.i.i, %if.then.i23.i.i ], [ %47, %if.end.i24.i.i ]
  %48 = inttoptr i32 %retval.0.i25.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i65 = icmp eq i32 %51, 0
  %52 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i7.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i7.i to ptr
  %cpu.i8.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i8.i, align 4
  %arrayidx7.i9.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx7.i9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx7.i9.i, align 4
  %..i = select i1 %tobool.not.i65, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 68) to i32)
  %add.i10.i = add i32 %57, %..i
  %58 = inttoptr i32 %add.i10.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add8.i11.i = add i32 %60, 1
  store i32 %add8.i11.i, ptr %58, align 4
  br label %cleanup

cleanup:                                          ; preds = %__munlock_isolation_failed.exit, %if.then37, %TestClearPageMlocked.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__munlock_isolated_page(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i9 = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i9, label %PageCompound.exit.i, label %entry.if.then.i10_crit_edge

entry.if.then.i10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i10

PageCompound.exit.i:                              ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %PageCompound.exit.i.if.then.i10_crit_edge, !prof !127

PageCompound.exit.i.if.then.i10_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i10

if.then.i10:                                      ; preds = %PageCompound.exit.i.if.then.i10_crit_edge, %entry.if.then.i10_crit_edge
  %call3.i = tail call i32 @__page_mapcount(ptr noundef %page) #7
  br label %page_mapcount.exit

if.end.i:                                         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %add.i = add i32 %8, 1
  br label %page_mapcount.exit

page_mapcount.exit:                               ; preds = %if.end.i, %if.then.i10
  %retval.0.i = phi i32 [ %call3.i, %if.then.i10 ], [ %add.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 1
  br i1 %cmp, label %if.then, label %page_mapcount.exit.if.end_crit_edge

page_mapcount.exit.if.end_crit_edge:              ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @page_mlock(ptr noundef %page) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %page_mapcount.exit.if.end_crit_edge
  %9 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !127

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !129

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !127

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #7, !srcloc !144
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !127

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %17, -1
  br label %PageMlocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %page to i32
  br label %PageMlocked.exit

PageMlocked.exit:                                 ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.then2, label %PageMlocked.exit.if.end4_crit_edge

PageMlocked.exit.if.end4_crit_edge:               ; preds = %PageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %PageMlocked.exit
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %9, align 4
  %and.i.i11 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11)
  %tobool.not.i12 = icmp eq i32 %and.i.i11, 0
  br i1 %tobool.not.i12, label %thp_nr_pages.exit, label %if.then.i13, !prof !127

if.then.i13:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %if.then2
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %28 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i14 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i14 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx13.i, align 4
  %add.i15 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32)
  %34 = inttoptr i32 %add.i15 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add14.i = add i32 %36, 1
  store i32 %add14.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i.i16 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i16)
  %tobool.not.i17 = icmp eq i32 %and.i.i.i16, 0
  br i1 %tobool.not.i17, label %if.then.i18, label %thp_nr_pages.exit.count_vm_events.exit_crit_edge, !prof !129

thp_nr_pages.exit.count_vm_events.exit_crit_edge: ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_vm_events.exit

if.then.i18:                                      ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %count_vm_events.exit

count_vm_events.exit:                             ; preds = %if.then.i18, %thp_nr_pages.exit.count_vm_events.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #7, !srcloc !135
  br label %if.end4

if.end4:                                          ; preds = %count_vm_events.exit, %PageMlocked.exit.if.end4_crit_edge
  tail call void @putback_lru_page(ptr noundef %page) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @munlock_vma_pages_range(ptr noundef %vma, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, -532481
  store i32 %and, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp49 = icmp ult i32 %start, %end
  br i1 %cmp49, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %arrayidx.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 0
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %start.addr.050 = phi i32 [ %start, %while.body.lr.ph ], [ %start.addr.1, %next.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #7
  %2 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  %3 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %call = tail call ptr @follow_page(ptr noundef %vma, i32 noundef %start.addr.050, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end26, label %if.then

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pvec, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !129

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.21) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

page_zone.exit:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i32 %7, 30
  %arrayidx.i48 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %call23 = call fastcc i32 @__munlock_pagevec_fill(ptr noundef nonnull %pvec, ptr noundef %vma, ptr noundef %arrayidx.i48, i32 noundef %start.addr.050, i32 noundef %end)
  call fastcc void @__munlock_pagevec(ptr noundef nonnull %pvec, ptr noundef %arrayidx.i48)
  br label %next

if.end26:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %add27 = add i32 %start.addr.050, 4096
  br label %next

next:                                             ; preds = %if.end26, %page_zone.exit
  %start.addr.1 = phi i32 [ %add27, %if.end26 ], [ %call23, %page_zone.exit ]
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 483, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #7
  %cmp = icmp ult i32 %start.addr.1, %end
  br i1 %cmp, label %next.while.body_crit_edge, label %next.while.end_crit_edge

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %next.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @follow_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__munlock_pagevec_fill(ptr nocapture noundef %pvec, ptr noundef %vma, ptr noundef readnone %zone, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  %ptl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptl) #7
  %0 = ptrtoint ptr %ptl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptl, align 4, !annotation !145
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %1 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_mm, align 4
  %call.i = call ptr @__get_locked_pte(ptr noundef %2, i32 noundef %start, ptr noundef nonnull %ptl) #7
  %add = add i32 %start, 2097152
  %and = and i32 %add, -2097152
  %sub = add i32 %and, -1
  %sub1 = add i32 %end, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub1)
  %cmp = icmp ult i32 %sub, %sub1
  %and.end = select i1 %cmp, i32 %and, i32 %end
  %add2 = add i32 %start, 4096
  br label %while.cond

while.cond:                                       ; preds = %get_page.exit.while.cond_crit_edge, %entry
  %pte.0 = phi ptr [ %call.i, %entry ], [ %incdec.ptr, %get_page.exit.while.cond_crit_edge ]
  %start.addr.0 = phi i32 [ %add2, %entry ], [ %add20, %get_page.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %and.end)
  %cmp3 = icmp ult i32 %start.addr.0, %and.end
  br i1 %cmp3, label %while.body, label %while.cond.do.body_crit_edge

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i32, ptr %pte.0, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %incdec.ptr, align 4
  %and5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %while.body.do.body_crit_edge, label %if.end

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %while.body
  %call10 = call ptr @vm_normal_page(ptr noundef %vma, i32 noundef %start.addr.0, i32 noundef %4) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %call10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i.i = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !129

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef nonnull %call10, ptr noundef nonnull @.str.21) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

page_zone.exit:                                   ; preds = %lor.lhs.false
  %shr.i.i = lshr i32 %6, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %cmp13.not = icmp eq ptr %arrayidx.i, %zone
  br i1 %cmp13.not, label %if.end15, label %page_zone.exit.do.body_crit_edge

page_zone.exit.do.body_crit_edge:                 ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end15:                                         ; preds = %page_zone.exit
  %7 = getelementptr inbounds %struct.page, ptr %call10, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i53, !prof !127

if.then.i.i53:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i53
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i53 ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %13, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !129

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.25) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #7, !srcloc !146
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %15 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@__munlock_pagevec_fill, %if.then.i.i.i.i)) #7
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !148

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__page_ref_mod(ptr noundef %11, i32 noundef 1) #7
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %add20 = add i32 %start.addr.0, 4096
  %16 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pvec, align 4
  %inc.i = add i8 %17, 1
  store i8 %inc.i, ptr %pvec, align 4
  %idxprom.i = zext i8 %17 to i32
  %arrayidx.i54 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %arrayidx.i54, align 4
  %cmp22 = icmp eq i8 %inc.i, 15
  br i1 %cmp22, label %get_page.exit.do.body_crit_edge, label %get_page.exit.while.cond_crit_edge

get_page.exit.while.cond_crit_edge:               ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

get_page.exit.do.body_crit_edge:                  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %get_page.exit.do.body_crit_edge, %page_zone.exit.do.body_crit_edge, %if.end.do.body_crit_edge, %while.body.do.body_crit_edge, %while.cond.do.body_crit_edge
  %pte.1 = phi ptr [ %pte.0, %while.cond.do.body_crit_edge ], [ %incdec.ptr, %page_zone.exit.do.body_crit_edge ], [ %incdec.ptr, %if.end.do.body_crit_edge ], [ %incdec.ptr, %while.body.do.body_crit_edge ], [ %incdec.ptr, %get_page.exit.do.body_crit_edge ]
  %start.addr.2 = phi i32 [ %start.addr.0, %while.cond.do.body_crit_edge ], [ %start.addr.0, %page_zone.exit.do.body_crit_edge ], [ %start.addr.0, %if.end.do.body_crit_edge ], [ %start.addr.0, %while.body.do.body_crit_edge ], [ %add20, %get_page.exit.do.body_crit_edge ]
  %19 = ptrtoint ptr %ptl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptl, align 4
  call void @_raw_spin_unlock(ptr noundef %20) #7
  call void @kunmap_local_indexed(ptr noundef %pte.1) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !149
  %21 = call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i1.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %26, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %27 = call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i56 = add i32 %30, -1
  store volatile i32 %sub.i.i56, ptr %preempt_count.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptl) #7
  ret i32 %start.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__munlock_pagevec(ptr nocapture noundef %pvec, ptr noundef %zone) unnamed_addr #0 align 64 {
entry:
  %pvec_putback = alloca %struct.pagevec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %1 to i32
  %sub = sub nsw i32 0, %conv.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec_putback) #7
  %2 = call ptr @memset(ptr %pvec_putback, i32 255, i32 64)
  %3 = ptrtoint ptr %pvec_putback to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pvec_putback, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec_putback, i32 0, i32 1
  %4 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp328.not = icmp eq i8 %1, 0
  br i1 %cmp328.not, label %entry.if.else18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.else18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %lruvec.0331 = phi ptr [ %lruvec.1, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %delta_munlocked.0330 = phi i32 [ %delta_munlocked.2, %cleanup.for.body_crit_edge ], [ %sub, %entry.for.body_crit_edge ]
  %i.0329 = phi i32 [ %inc15, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0329
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %if.end.i, label %if.then.i89, !prof !127

if.then.i89:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %9, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i89
  %retval.0.i = phi i32 [ %sub.i, %if.then.i89 ], [ %10, %if.end.i ]
  %11 = inttoptr i32 %retval.0.i to ptr
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !127

if.then.i:                                        ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.19) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.body7.i:                                       ; preds = %_compound_head.exit
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %7, align 4
  %and.i32.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !127

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %7, align 4
  %and.i33.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i34.i, label %if.end.i37.i, label %if.then.i36.i, !prof !127

if.then.i36.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i35.i = add i32 %21, -1
  br label %_compound_head.exit39.i

if.end.i37.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit39.i

_compound_head.exit39.i:                          ; preds = %if.end.i37.i, %if.then.i36.i
  %retval.0.i38.i = phi i32 [ %sub.i35.i, %if.then.i36.i ], [ %22, %if.end.i37.i ]
  %23 = inttoptr i32 %retval.0.i38.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !130
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i34.i, label %if.end.i44.i, label %if.then.i43.i, !prof !127

if.then.i43.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i42.i = add i32 %21, -1
  br label %TestClearPageMlocked.exit

if.end.i44.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %6 to i32
  br label %TestClearPageMlocked.exit

TestClearPageMlocked.exit:                        ; preds = %if.end.i44.i, %if.then.i43.i
  %retval.0.i45.i = phi i32 [ %sub.i42.i, %if.then.i43.i ], [ %24, %if.end.i44.i ]
  %25 = inttoptr i32 %retval.0.i45.i to ptr
  %call27.i = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not = icmp eq i32 %call27.i, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %TestClearPageMlocked.exit
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %7, align 4
  %and.i.i72 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72)
  %tobool.not.i.i73 = icmp eq i32 %and.i.i72, 0
  br i1 %tobool.not.i.i73, label %if.end.i.i76, label %if.then.i.i75, !prof !127

if.then.i.i75:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i74 = add i32 %27, -1
  br label %_compound_head.exit.i79

if.end.i.i76:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i79

_compound_head.exit.i79:                          ; preds = %if.end.i.i76, %if.then.i.i75
  %retval.0.i.i77 = phi i32 [ %sub.i.i74, %if.then.i.i75 ], [ %28, %if.end.i.i76 ]
  %29 = inttoptr i32 %retval.0.i.i77 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i78 = icmp eq i32 %31, -1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %7, align 4
  %and.i13.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i78, label %if.then.i80, label %do.end8.i, !prof !129

if.then.i80:                                      ; preds = %_compound_head.exit.i79
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !127

if.then.i16.i:                                    ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i = add i32 %33, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %34, %if.end.i17.i ]
  %35 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #7, !srcloc !151
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i79
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !127

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i = add i32 %33, -1
  br label %TestClearPageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %6 to i32
  br label %TestClearPageLRU.exit

TestClearPageLRU.exit:                            ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %36, %if.end.i24.i ]
  %37 = inttoptr i32 %retval.0.i25.i to ptr
  %call10.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool4.not = icmp eq i32 %call10.i, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %TestClearPageLRU.exit
  %tobool.not.i90 = icmp eq ptr %lruvec.0331, null
  br i1 %tobool.not.i90, label %if.then5.if.end2.i_crit_edge, label %if.then.i91

if.then5.if.end2.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then.i91:                                      ; preds = %if.then5
  %call.i = tail call fastcc zeroext i1 @folio_matches_lruvec(ptr noundef %11, ptr noundef nonnull %lruvec.0331) #7
  br i1 %call.i, label %if.then.i91.folio_lruvec_relock_irq.exit_crit_edge, label %if.end.i92

if.then.i91.folio_lruvec_relock_irq.exit_crit_edge: ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %folio_lruvec_relock_irq.exit

if.end.i92:                                       ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #9
  %lru_lock.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0331, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lru_lock.i.i) #7
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i92, %if.then5.if.end2.i_crit_edge
  %call3.i = tail call ptr @folio_lruvec_lock_irq(ptr noundef %11) #7
  br label %folio_lruvec_relock_irq.exit

folio_lruvec_relock_irq.exit:                     ; preds = %if.end2.i, %if.then.i91.folio_lruvec_relock_irq.exit_crit_edge
  %retval.0.i93 = phi ptr [ %call3.i, %if.end2.i ], [ %lruvec.0331, %if.then.i91.folio_lruvec_relock_irq.exit_crit_edge ]
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %7, align 4
  %and.i.i81 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.end.i.i84, label %if.then.i.i83, !prof !127

if.then.i.i83:                                    ; preds = %folio_lruvec_relock_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i1.i = add i32 %39, -1
  br label %_compound_head.exit.i86

if.end.i.i84:                                     ; preds = %folio_lruvec_relock_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i86

_compound_head.exit.i86:                          ; preds = %if.end.i.i84, %if.then.i.i83
  %retval.0.i.i85 = phi i32 [ %sub.i1.i, %if.then.i.i83 ], [ %40, %if.end.i.i84 ]
  %41 = inttoptr i32 %retval.0.i.i85 to ptr
  %lru.i.i = getelementptr inbounds %struct.anon.105, ptr %41, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %_compound_head.exit.i86.list_del.exit.i.i_crit_edge

_compound_head.exit.i86.list_del.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %_compound_head.exit.i86
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.anon.105, ptr %41, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i.i, align 4
  %44 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %_compound_head.exit.i86.list_del.exit.i.i_crit_edge
  %48 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.105, ptr %41, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %50 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !127

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %list_del.exit.i.i
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %41, align 4
  %54 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %55 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i23.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !127

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %58 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %41, align 4
  %60 = and i32 %59, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i26.not.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i, !prof !127

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.32) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #7, !srcloc !153
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %62 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i27.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !127

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %64, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %65 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %41, align 4
  %67 = and i32 %66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i30.not.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %68 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !127

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %70, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %71 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %41, align 4
  %73 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i32.i.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !127

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = lshr i32 %72, 18
  %77 = and i32 %76, 2
  %78 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %41, align 4
  %80 = lshr i32 %79, 5
  %81 = and i32 %80, 1
  %82 = or i32 %81, %77
  %83 = xor i32 %82, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %83, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %84 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %85, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i6.i.i, label %PageHead.exit.i.i.i.i, !prof !129

if.then.i.i.i6.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = inttoptr i32 %retval.0.i.i85 to ptr
  tail call void @dump_page(ptr noundef %86, ptr noundef nonnull @.str.33) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !154
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %87 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %41, align 4
  %89 = and i32 %88, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge, label %if.end.i.i7.i.i

PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %del_page_from_lru_list.exit

if.end.i.i7.i.i:                                  ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %41, i32 1, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end.i.i7.i.i, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %91, %if.end.i.i7.i.i ], [ 1, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge ]
  %shr.i.i.i.i = lshr i32 %66, 30
  %sub.i.i87 = sub i32 0, %retval.0.i.i.i.i
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %retval.0.i93, i32 0, i32 7
  %92 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %retval.0.i93, i32 noundef %retval.0.i.i.i, i32 noundef %sub.i.i87) #7
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %93, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %sub.i.i87) #7
  tail call void @mem_cgroup_update_lru_size(ptr noundef %retval.0.i93, i32 noundef %retval.0.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %sub.i.i87) #7
  br label %cleanup

if.else:                                          ; preds = %TestClearPageLRU.exit
  %94 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %7, align 4
  %and.i.i4.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i94 = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i94, label %thp_nr_pages.exit.i, label %if.then.i5.i, !prof !127

if.then.i5.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

thp_nr_pages.exit.i:                              ; preds = %if.else
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i95, !prof !127

if.then.i.i.i95:                                  ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %97, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i95
  %retval.0.i.i.i96 = phi i32 [ %sub.i.i.i, %if.then.i.i.i95 ], [ %98, %if.end.i.i.i ]
  %99 = inttoptr i32 %retval.0.i.i.i96 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp.i.not.i.i = icmp eq i32 %101, -1
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %7, align 4
  %and.i13.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i97, label %do.end8.i.i, !prof !129

if.then.i.i97:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i17.i.i, label %if.then.i16.i.i, !prof !127

if.then.i16.i.i:                                  ; preds = %if.then.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i.i = add i32 %103, -1
  br label %_compound_head.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.then.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit19.i.i

_compound_head.exit19.i.i:                        ; preds = %if.end.i17.i.i, %if.then.i16.i.i
  %retval.0.i18.i.i = phi i32 [ %sub.i15.i.i, %if.then.i16.i.i ], [ %104, %if.end.i17.i.i ]
  %105 = inttoptr i32 %retval.0.i18.i.i to ptr
  tail call void @dump_page(ptr noundef %105, ptr noundef nonnull @.str.20) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #7, !srcloc !136
  unreachable

do.end8.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i24.i.i, label %if.then.i23.i.i, !prof !127

if.then.i23.i.i:                                  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i.i = add i32 %103, -1
  br label %__munlock_isolation_failed.exit

if.end.i24.i.i:                                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %6 to i32
  br label %__munlock_isolation_failed.exit

__munlock_isolation_failed.exit:                  ; preds = %if.end.i24.i.i, %if.then.i23.i.i
  %retval.0.i25.i.i = phi i32 [ %sub.i22.i.i, %if.then.i23.i.i ], [ %106, %if.end.i24.i.i ]
  %107 = inttoptr i32 %retval.0.i25.i.i to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  %110 = and i32 %109, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i98 = icmp eq i32 %110, 0
  %111 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i7.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i7.i to ptr
  %cpu.i8.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %cpu.i8.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cpu.i8.i, align 4
  %arrayidx7.i9.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %114
  %115 = ptrtoint ptr %arrayidx7.i9.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx7.i9.i, align 4
  %..i = select i1 %tobool.not.i98, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 68) to i32)
  %add.i10.i = add i32 %116, %..i
  %117 = inttoptr i32 %add.i10.i to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %add8.i11.i = add i32 %119, 1
  store i32 %add8.i11.i, ptr %117, align 4
  br label %if.end8

if.else7:                                         ; preds = %TestClearPageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %delta_munlocked.0330, 1
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %__munlock_isolation_failed.exit
  %delta_munlocked.1 = phi i32 [ %delta_munlocked.0330, %__munlock_isolation_failed.exit ], [ %inc, %if.else7 ]
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx, align 4
  %122 = ptrtoint ptr %pvec_putback to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pvec_putback, align 4
  %inc.i = add i8 %123, 1
  store i8 %inc.i, ptr %pvec_putback, align 4
  %idxprom.i = zext i8 %123 to i32
  %arrayidx.i = getelementptr %struct.pagevec, ptr %pvec_putback, i32 0, i32 2, i32 %idxprom.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %del_page_from_lru_list.exit
  %delta_munlocked.2 = phi i32 [ %delta_munlocked.0330, %del_page_from_lru_list.exit ], [ %delta_munlocked.1, %if.end8 ]
  %lruvec.1 = phi ptr [ %retval.0.i93, %del_page_from_lru_list.exit ], [ %lruvec.0331, %if.end8 ]
  %inc15 = add nuw nsw i32 %i.0329, 1
  %exitcond.not = icmp eq i32 %inc15, %conv.i
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  %tobool16.not = icmp eq ptr %lruvec.1, null
  br i1 %tobool16.not, label %for.end.if.else18_crit_edge, label %if.then17

for.end.if.else18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mod_zone_page_state(ptr noundef %zone, i32 noundef 7, i32 noundef %delta_munlocked.2) #7
  %lru_lock.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lru_lock.i) #7
  br label %if.end22

if.else18:                                        ; preds = %for.end.if.else18_crit_edge, %entry.if.else18_crit_edge
  %delta_munlocked.0.lcssa451 = phi i32 [ %delta_munlocked.2, %for.end.if.else18_crit_edge ], [ %sub, %entry.if.else18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta_munlocked.0.lcssa451)
  %tobool19.not = icmp eq i32 %delta_munlocked.0.lcssa451, 0
  br i1 %tobool19.not, label %if.else18.if.end22_crit_edge, label %if.then20

if.else18.if.end22_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mod_zone_page_state(ptr noundef %zone, i32 noundef 7, i32 noundef %delta_munlocked.0.lcssa451) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else18.if.end22_crit_edge, %if.then17
  %125 = ptrtoint ptr %pvec_putback to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %pvec_putback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i100 = icmp eq i8 %126, 0
  br i1 %tobool.not.i100, label %if.end22.pagevec_release.exit_crit_edge, label %if.then.i101

if.end22.pagevec_release.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %pagevec_release.exit

if.then.i101:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void @__pagevec_release(ptr noundef nonnull %pvec_putback) #7
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i101, %if.end22.pagevec_release.exit_crit_edge
  br i1 %cmp328.not, label %pagevec_release.exit.for.end37_crit_edge, label %pagevec_release.exit.for.body25_crit_edge

pagevec_release.exit.for.body25_crit_edge:        ; preds = %pagevec_release.exit
  br label %for.body25

pagevec_release.exit.for.end37_crit_edge:         ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.body25:                                       ; preds = %if.end34.for.body25_crit_edge, %pagevec_release.exit.for.body25_crit_edge
  %i.1337 = phi i32 [ %inc36, %if.end34.for.body25_crit_edge ], [ 0, %pagevec_release.exit.for.body25_crit_edge ]
  %pgrescued.0335 = phi i32 [ %pgrescued.3, %if.end34.for.body25_crit_edge ], [ 0, %pagevec_release.exit.for.body25_crit_edge ]
  %arrayidx28 = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.1337
  %127 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %128, null
  br i1 %tobool29.not, label %for.body25.if.end34_crit_edge, label %if.then30

for.body25.if.end34_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %for.body25
  call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 788) #7
  %129 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %and.i.i103 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i103, 0
  br i1 %tobool.not.i.i104, label %if.end.i.i107, label %if.then.i.i106, !prof !127

if.then.i.i106:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i105 = add i32 %131, -1
  br label %_compound_head.exit.i110

if.end.i.i107:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i110

_compound_head.exit.i110:                         ; preds = %if.end.i.i107, %if.then.i.i106
  %retval.0.i.i108 = phi i32 [ %sub.i.i105, %if.then.i.i106 ], [ %132, %if.end.i.i107 ]
  %133 = inttoptr i32 %retval.0.i.i108 to ptr
  %134 = getelementptr inbounds %struct.page, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %134, align 4
  %and.i.i.i.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i109 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i109, label %folio_flags.exit.i.i, label %if.then.i.i.i111, !prof !127

if.then.i.i.i111:                                 ; preds = %_compound_head.exit.i110
  call void @__sanitizer_cov_trace_pc() #9
  %137 = inttoptr i32 %retval.0.i.i108 to ptr
  call void @dump_page(ptr noundef %137, ptr noundef nonnull @.str) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i110
  %call.i.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef %133, i32 noundef 4) #7
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %133, align 4
  %and.i.i4.i.i = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i113 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i113, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i114_crit_edge

folio_flags.exit.i.i.if.then.i114_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i114

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %133, i32 1, i32 3, i32 1) #7
  %140 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #7, !srcloc !155
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %140, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !156
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i114_crit_edge

folio_trylock.exit.i.if.then.i114_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i114

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_page.exit

if.then.i114:                                     ; preds = %folio_trylock.exit.i.if.then.i114_crit_edge, %folio_flags.exit.i.i.if.then.i114_crit_edge
  call void @__folio_lock(ptr noundef %133) #7
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i114, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %141 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %129, align 4
  %and.i.i.i116 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i116)
  %tobool.not.i.i.i117 = icmp eq i32 %and.i.i.i116, 0
  br i1 %tobool.not.i.i.i117, label %if.end.i.i.i120, label %if.then.i.i.i119, !prof !127

if.then.i.i.i119:                                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i118 = add i32 %142, -1
  br label %_compound_head.exit.i.i125

if.end.i.i.i120:                                  ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i.i125

_compound_head.exit.i.i125:                       ; preds = %if.end.i.i.i120, %if.then.i.i.i119
  %retval.0.i.i.i121 = phi i32 [ %sub.i.i.i118, %if.then.i.i.i119 ], [ %143, %if.end.i.i.i120 ]
  %144 = inttoptr i32 %retval.0.i.i.i121 to ptr
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp.i.not.i.i122 = icmp eq i32 %146, -1
  %147 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %129, align 4
  %and.i13.i.i123 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i123)
  %tobool.not.i14.i.i124 = icmp eq i32 %and.i13.i.i123, 0
  br i1 %cmp.i.not.i.i122, label %if.then.i.i126, label %do.end8.i.i132, !prof !129

if.then.i.i126:                                   ; preds = %_compound_head.exit.i.i125
  br i1 %tobool.not.i14.i.i124, label %if.end.i17.i.i129, label %if.then.i16.i.i128, !prof !127

if.then.i16.i.i128:                               ; preds = %if.then.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i.i127 = add i32 %148, -1
  br label %_compound_head.exit19.i.i131

if.end.i17.i.i129:                                ; preds = %if.then.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit19.i.i131

_compound_head.exit19.i.i131:                     ; preds = %if.end.i17.i.i129, %if.then.i16.i.i128
  %retval.0.i18.i.i130 = phi i32 [ %sub.i15.i.i127, %if.then.i16.i.i128 ], [ %149, %if.end.i17.i.i129 ]
  %150 = inttoptr i32 %retval.0.i18.i.i130 to ptr
  call void @dump_page(ptr noundef %150, ptr noundef nonnull @.str.20) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #7, !srcloc !157
  unreachable

do.end8.i.i132:                                   ; preds = %_compound_head.exit.i.i125
  br i1 %tobool.not.i14.i.i124, label %if.end.i24.i.i135, label %if.then.i23.i.i134, !prof !127

if.then.i23.i.i134:                               ; preds = %do.end8.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i.i133 = add i32 %148, -1
  br label %PageLRU.exit.i

if.end.i24.i.i135:                                ; preds = %do.end8.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %128 to i32
  br label %PageLRU.exit.i

PageLRU.exit.i:                                   ; preds = %if.end.i24.i.i135, %if.then.i23.i.i134
  %retval.0.i25.i.i136 = phi i32 [ %sub.i22.i.i133, %if.then.i23.i.i134 ], [ %151, %if.end.i24.i.i135 ]
  %152 = inttoptr i32 %retval.0.i25.i.i136 to ptr
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %152, align 4
  %155 = and i32 %154, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i137 = icmp eq i32 %155, 0
  br i1 %tobool.not.i137, label %do.body7.i139, label %if.then.i138, !prof !127

if.then.i138:                                     ; preds = %PageLRU.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef nonnull %128, ptr noundef nonnull @.str.34) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #7, !srcloc !158
  unreachable

do.body7.i139:                                    ; preds = %PageLRU.exit.i
  %156 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %129, align 4
  %and.i.i42.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42.i)
  %tobool.not.i.i43.i = icmp eq i32 %and.i.i42.i, 0
  br i1 %tobool.not.i.i43.i, label %if.end.i.i46.i, label %if.then.i.i45.i, !prof !127

if.then.i.i45.i:                                  ; preds = %do.body7.i139
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i44.i = add i32 %157, -1
  br label %_compound_head.exit.i49.i

if.end.i.i46.i:                                   ; preds = %do.body7.i139
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i49.i

_compound_head.exit.i49.i:                        ; preds = %if.end.i.i46.i, %if.then.i.i45.i
  %retval.0.i.i47.i = phi i32 [ %sub.i.i44.i, %if.then.i.i45.i ], [ %158, %if.end.i.i46.i ]
  %159 = inttoptr i32 %retval.0.i.i47.i to ptr
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %161)
  %cmp.i.not.i48.i = icmp eq i32 %161, -1
  %162 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %129, align 4
  %and.i16.i.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i48.i, label %if.then.i50.i, label %do.end10.i.i, !prof !129

if.then.i50.i:                                    ; preds = %_compound_head.exit.i49.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !127

if.then.i19.i.i:                                  ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i.i = add i32 %163, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %164, %if.end.i20.i.i ]
  %165 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %165, ptr noundef nonnull @.str.20) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i49.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !127

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i.i = add i32 %163, -1
  br label %PageLocked.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %128 to i32
  br label %PageLocked.exit.i

PageLocked.exit.i:                                ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %166, %if.end.i27.i.i ]
  %167 = inttoptr i32 %retval.0.i28.i.i to ptr
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %167, align 4
  %and1.i.i51.i = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i51.i)
  %tobool9.not.i = icmp eq i32 %and1.i.i51.i, 0
  br i1 %tobool9.not.i, label %if.then18.i, label %do.end24.i140, !prof !129

if.then18.i:                                      ; preds = %PageLocked.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef nonnull %128, ptr noundef nonnull @.str.35) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 220, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

do.end24.i140:                                    ; preds = %PageLocked.exit.i
  %170 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %128, align 4
  %172 = and i32 %171, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i.i73.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i.i73.i, label %PageCompound.exit.i.i, label %do.end24.i140.if.then.i74.i_crit_edge

do.end24.i140.if.then.i74.i_crit_edge:            ; preds = %do.end24.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i74.i

PageCompound.exit.i.i:                            ; preds = %do.end24.i140
  %173 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %129, align 4
  %and.i.i.i.i141 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i141)
  %tobool.not.i.i142 = icmp eq i32 %and.i.i.i.i141, 0
  br i1 %tobool.not.i.i142, label %if.end.i.i144, label %PageCompound.exit.i.i.if.then.i74.i_crit_edge, !prof !127

PageCompound.exit.i.i.if.then.i74.i_crit_edge:    ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i74.i

if.then.i74.i:                                    ; preds = %PageCompound.exit.i.i.if.then.i74.i_crit_edge, %do.end24.i140.if.then.i74.i_crit_edge
  %call3.i.i = call i32 @__page_mapcount(ptr noundef nonnull %128) #7
  br label %page_mapcount.exit.i

if.end.i.i144:                                    ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %175 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 2
  %call.i.i.i.i143 = call zeroext i1 @__kasan_check_read(ptr noundef %175, i32 noundef 4) #7
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %175, align 4
  %add.i.i = add i32 %177, 1
  br label %page_mapcount.exit.i

page_mapcount.exit.i:                             ; preds = %if.end.i.i144, %if.then.i74.i
  %retval.0.i.i145 = phi i32 [ %call3.i.i, %if.then.i74.i ], [ %add.i.i, %if.end.i.i144 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i145)
  %cmp.i = icmp slt i32 %retval.0.i.i145, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %page_mapcount.exit.i.if.then32_crit_edge

page_mapcount.exit.i.if.then32_crit_edge:         ; preds = %page_mapcount.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

land.lhs.true.i:                                  ; preds = %page_mapcount.exit.i
  %178 = call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i.i.i.i.i146 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i.i.i.i.i.i.i146 to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %181, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !160
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %land.lhs.true.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

land.lhs.true.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i75.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i75.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i76.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i76.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i76.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = call ptr @page_mapping(ptr noundef nonnull %128) #7
  %tobool.not.i6.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i6.i.i, label %rcu_read_lock.exit.i.i.land.rhs.i.i_crit_edge, label %mapping_unevictable.exit.i.i

rcu_read_lock.exit.i.i.land.rhs.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

mapping_unevictable.exit.i.i:                     ; preds = %rcu_read_lock.exit.i.i
  %flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %call.i.i, i32 0, i32 10
  %182 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %flags.i.i.i, align 4
  %184 = and i32 %183, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool1.i.not.i.i = icmp eq i32 %184, 0
  br i1 %tobool1.i.not.i.i, label %mapping_unevictable.exit.i.i.land.rhs.i.i_crit_edge, label %mapping_unevictable.exit.i.i.land.end.i.i_crit_edge

mapping_unevictable.exit.i.i.land.end.i.i_crit_edge: ; preds = %mapping_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i.i

mapping_unevictable.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %mapping_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %mapping_unevictable.exit.i.i.land.rhs.i.i_crit_edge, %rcu_read_lock.exit.i.i.land.rhs.i.i_crit_edge
  %185 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %129, align 4
  %and.i.i.i77.i = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i77.i)
  %tobool.not.i.i.i.i147 = icmp eq i32 %and.i.i.i77.i, 0
  br i1 %tobool.not.i.i.i.i147, label %if.end.i.i.i.i148, label %if.then.i.i.i.i, !prof !127

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i = add i32 %186, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i148:                                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i148, %if.then.i.i.i.i
  %retval.0.i.i.i.i149 = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %187, %if.end.i.i.i.i148 ]
  %188 = inttoptr i32 %retval.0.i.i.i.i149 to ptr
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %190)
  %cmp.i.not.i.i.i = icmp eq i32 %190, -1
  %191 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %129, align 4
  %and.i16.i.i.i = and i32 %192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i5.i.i, label %do.end10.i.i.i, !prof !129

if.then.i5.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !127

if.then.i19.i.i.i:                                ; preds = %if.then.i5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i.i.i = add i32 %192, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %193, %if.end.i20.i.i.i ]
  %194 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  call void @dump_page(ptr noundef %194, ptr noundef nonnull @.str.20) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #7, !srcloc !144
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !127

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i.i.i = add i32 %192, -1
  br label %PageMlocked.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %128 to i32
  br label %PageMlocked.exit.i.i

PageMlocked.exit.i.i:                             ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %195, %if.end.i27.i.i.i ]
  %196 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %196, align 4
  %199 = and i32 %198, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i78.i = icmp eq i32 %199, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %PageMlocked.exit.i.i, %mapping_unevictable.exit.i.i.land.end.i.i_crit_edge
  %200 = phi i1 [ false, %mapping_unevictable.exit.i.i.land.end.i.i_crit_edge ], [ %tobool.not.i78.i, %PageMlocked.exit.i.i ]
  %call.i7.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i7.i.i, label %land.end.i.i.page_evictable.exit.i_crit_edge, label %land.lhs.true.i10.i.i

land.end.i.i.page_evictable.exit.i_crit_edge:     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %page_evictable.exit.i

land.lhs.true.i10.i.i:                            ; preds = %land.end.i.i
  %call1.i8.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call1.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i10.i.i.page_evictable.exit.i_crit_edge, label %land.lhs.true2.i12.i.i

land.lhs.true.i10.i.i.page_evictable.exit.i_crit_edge: ; preds = %land.lhs.true.i10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %page_evictable.exit.i

land.lhs.true2.i12.i.i:                           ; preds = %land.lhs.true.i10.i.i
  %.b4.i11.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11.i.i, label %land.lhs.true2.i12.i.i.page_evictable.exit.i_crit_edge, label %if.then.i13.i.i

land.lhs.true2.i12.i.i.page_evictable.exit.i_crit_edge: ; preds = %land.lhs.true2.i12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %page_evictable.exit.i

if.then.i13.i.i:                                  ; preds = %land.lhs.true2.i12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #7
  br label %page_evictable.exit.i

page_evictable.exit.i:                            ; preds = %if.then.i13.i.i, %land.lhs.true2.i12.i.i.page_evictable.exit.i_crit_edge, %land.lhs.true.i10.i.i.page_evictable.exit.i_crit_edge, %land.end.i.i.page_evictable.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  %201 = call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i.i.i14.i.i = and i32 %201, -16384
  %202 = inttoptr i32 %and.i.i.i.i.i14.i.i to ptr
  %preempt_count.i.i.i.i15.i.i = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %preempt_count.i.i.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %preempt_count.i.i.i.i15.i.i, align 4
  %sub.i.i.i.i.i = add i32 %204, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i15.i.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %200, label %if.then27.i, label %page_evictable.exit.i.if.then32_crit_edge

page_evictable.exit.i.if.then32_crit_edge:        ; preds = %page_evictable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.then27.i:                                      ; preds = %page_evictable.exit.i
  %205 = ptrtoint ptr %pvec_putback to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pvec_putback, align 4
  %inc.i.i = add i8 %206, 1
  store i8 %inc.i.i, ptr %pvec_putback, align 4
  %idxprom.i.i = zext i8 %206 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %pvec_putback, i32 0, i32 2, i32 %idxprom.i.i
  %207 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %128, ptr %arrayidx.i.i, align 4
  %208 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %129, align 4
  %and.i.i52.i = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i)
  %tobool.not.i.i53.i = icmp eq i32 %and.i.i52.i, 0
  br i1 %tobool.not.i.i53.i, label %if.end.i.i56.i, label %if.then.i.i55.i, !prof !127

if.then.i.i55.i:                                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i54.i = add i32 %209, -1
  br label %_compound_head.exit.i61.i

if.end.i.i56.i:                                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %210 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i61.i

_compound_head.exit.i61.i:                        ; preds = %if.end.i.i56.i, %if.then.i.i55.i
  %retval.0.i.i57.i = phi i32 [ %sub.i.i54.i, %if.then.i.i55.i ], [ %210, %if.end.i.i56.i ]
  %211 = inttoptr i32 %retval.0.i.i57.i to ptr
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %213)
  %cmp.i.not.i58.i = icmp eq i32 %213, -1
  %214 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %129, align 4
  %and.i13.i59.i = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i59.i)
  %tobool.not.i14.i60.i = icmp eq i32 %and.i13.i59.i, 0
  br i1 %cmp.i.not.i58.i, label %if.then.i62.i, label %do.end8.i68.i, !prof !129

if.then.i62.i:                                    ; preds = %_compound_head.exit.i61.i
  br i1 %tobool.not.i14.i60.i, label %if.end.i17.i65.i, label %if.then.i16.i64.i, !prof !127

if.then.i16.i64.i:                                ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i63.i = add i32 %215, -1
  br label %_compound_head.exit19.i67.i

if.end.i17.i65.i:                                 ; preds = %if.then.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit19.i67.i

_compound_head.exit19.i67.i:                      ; preds = %if.end.i17.i65.i, %if.then.i16.i64.i
  %retval.0.i18.i66.i = phi i32 [ %sub.i15.i63.i, %if.then.i16.i64.i ], [ %216, %if.end.i17.i65.i ]
  %217 = inttoptr i32 %retval.0.i18.i66.i to ptr
  call void @dump_page(ptr noundef %217, ptr noundef nonnull @.str.20) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 501, 0\0A.popsection", ""() #7, !srcloc !162
  unreachable

do.end8.i68.i:                                    ; preds = %_compound_head.exit.i61.i
  br i1 %tobool.not.i14.i60.i, label %if.end.i24.i71.i, label %if.then.i23.i70.i, !prof !127

if.then.i23.i70.i:                                ; preds = %do.end8.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i69.i = add i32 %215, -1
  br label %TestClearPageUnevictable.exit.i

if.end.i24.i71.i:                                 ; preds = %do.end8.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %128 to i32
  br label %TestClearPageUnevictable.exit.i

TestClearPageUnevictable.exit.i:                  ; preds = %if.end.i24.i71.i, %if.then.i23.i70.i
  %retval.0.i25.i72.i = phi i32 [ %sub.i22.i69.i, %if.then.i23.i70.i ], [ %218, %if.end.i24.i71.i ]
  %219 = inttoptr i32 %retval.0.i25.i72.i to ptr
  %call10.i.i = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %219) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool30.not.i = icmp ne i32 %call10.i.i, 0
  %inc.i150 = zext i1 %tobool30.not.i to i32
  %spec.select = add i32 %pgrescued.0335, %inc.i150
  call void @unlock_page(ptr noundef nonnull %128) #7
  br label %if.end34

if.then32:                                        ; preds = %page_evictable.exit.i.if.then32_crit_edge, %page_mapcount.exit.i.if.then32_crit_edge
  %220 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile i32, ptr %129, align 4
  %and.i.i152 = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i.i153 = icmp eq i32 %and.i.i152, 0
  br i1 %tobool.not.i.i153, label %if.end.i.i156, label %if.then.i.i155, !prof !127

if.then.i.i155:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i154 = add i32 %221, -1
  br label %_compound_head.exit.i159

if.end.i.i156:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i159

_compound_head.exit.i159:                         ; preds = %if.end.i.i156, %if.then.i.i155
  %retval.0.i.i157 = phi i32 [ %sub.i.i154, %if.then.i.i155 ], [ %222, %if.end.i.i156 ]
  %223 = inttoptr i32 %retval.0.i.i157 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %223, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %224 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i158 = add i32 %225, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i158)
  %cmp.i.i = icmp ult i32 %add.i.i158, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !129

if.then.i1.i:                                     ; preds = %_compound_head.exit.i159
  call void @__sanitizer_cov_trace_pc() #9
  %226 = inttoptr i32 %retval.0.i.i157 to ptr
  call void @dump_page(ptr noundef %226, ptr noundef nonnull @.str.25) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #7, !srcloc !146
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i159
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %227 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@__munlock_pagevec, %if.then.i.i.i.i160)) #7
          to label %get_page.exit [label %if.then.i.i.i.i160], !srcloc !148

if.then.i.i.i.i160:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__page_ref_mod(ptr noundef %223, i32 noundef 1) #7
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i160, %do.end5.i.i
  call fastcc void @__munlock_isolated_page(ptr noundef nonnull %128)
  call void @unlock_page(ptr noundef nonnull %128) #7
  %228 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load volatile i32, ptr %129, align 4
  %and.i.i161 = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i161)
  %tobool.not.i.i162 = icmp eq i32 %and.i.i161, 0
  br i1 %tobool.not.i.i162, label %if.end.i.i165, label %if.then.i.i164, !prof !127

if.then.i.i164:                                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i163 = add i32 %229, -1
  br label %_compound_head.exit.i167

if.end.i.i165:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %128 to i32
  br label %_compound_head.exit.i167

_compound_head.exit.i167:                         ; preds = %if.end.i.i165, %if.then.i.i164
  %retval.0.i.i166 = phi i32 [ %sub.i.i163, %if.then.i.i164 ], [ %230, %if.end.i.i165 ]
  %231 = inttoptr i32 %retval.0.i.i166 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %231, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %232 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp.i.i.i.i = icmp eq i32 %233, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i168, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i168:                               ; preds = %_compound_head.exit.i167
  call void @__sanitizer_cov_trace_pc() #9
  %234 = inttoptr i32 %retval.0.i.i166 to ptr
  call void @dump_page(ptr noundef %234, ptr noundef nonnull @.str.22) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !163
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i167
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %235 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !165
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %235, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__munlock_pagevec, %if.then.i.i.i.i.i169)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i169], !srcloc !148

if.then.i.i.i.i.i169:                             ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %231, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i169, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end34_crit_edge

folio_put_testzero.exit.i.i.if.end34_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %231) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end34_crit_edge, %TestClearPageUnevictable.exit.i, %for.body25.if.end34_crit_edge
  %pgrescued.3 = phi i32 [ %pgrescued.0335, %for.body25.if.end34_crit_edge ], [ %spec.select, %TestClearPageUnevictable.exit.i ], [ %pgrescued.0335, %folio_put_testzero.exit.i.i.if.end34_crit_edge ], [ %pgrescued.0335, %if.then.i4.i ]
  %inc36 = add nuw nsw i32 %i.1337, 1
  %exitcond447.not = icmp eq i32 %inc36, %conv.i
  br i1 %exitcond447.not, label %if.end34.for.end37_crit_edge, label %if.end34.for.body25_crit_edge

if.end34.for.body25_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

if.end34.for.end37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.end37:                                        ; preds = %if.end34.for.end37_crit_edge, %pagevec_release.exit.for.end37_crit_edge
  %pgrescued.0.lcssa = phi i32 [ 0, %pagevec_release.exit.for.end37_crit_edge ], [ %pgrescued.3, %if.end34.for.end37_crit_edge ]
  %236 = ptrtoint ptr %pvec_putback to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %pvec_putback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool39.not = icmp eq i8 %237, 0
  br i1 %tobool39.not, label %for.end37.if.end41_crit_edge, label %if.then40

for.end37.if.end41_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %for.end37
  %conv.i170 = zext i8 %237 to i32
  %238 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %239 = call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i172 = and i32 %239, -16384
  %240 = inttoptr i32 %and.i.i.i172 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %cpu.i.i, align 4
  %arrayidx13.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %242
  %243 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i173 = add i32 %244, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 66) to i32)
  %245 = inttoptr i32 %add.i.i173 to ptr
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 4
  %add14.i.i = add i32 %247, %conv.i170
  store i32 %add14.i.i, ptr %245, align 4
  %248 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i.i.i174 = and i32 %248, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i174)
  %tobool.not.i.i175 = icmp eq i32 %and.i.i.i.i174, 0
  br i1 %tobool.not.i.i175, label %if.then.i.i176, label %if.then40.count_vm_events.exit.i_crit_edge, !prof !129

if.then40.count_vm_events.exit.i_crit_edge:       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_vm_events.exit.i

if.then.i.i176:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %count_vm_events.exit.i

count_vm_events.exit.i:                           ; preds = %if.then.i.i176, %if.then40.count_vm_events.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %238) #7, !srcloc !135
  call void @__pagevec_lru_add(ptr noundef nonnull %pvec_putback) #7
  %249 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !133
  %250 = call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i2.i = and i32 %250, -16384
  %251 = inttoptr i32 %and.i.i2.i to ptr
  %cpu.i3.i = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %cpu.i3.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cpu.i3.i, align 4
  %arrayidx13.i4.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %253
  %254 = ptrtoint ptr %arrayidx13.i4.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx13.i4.i, align 4
  %add.i5.i = add i32 %255, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 64) to i32)
  %256 = inttoptr i32 %add.i5.i to ptr
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %add14.i6.i = add i32 %258, %pgrescued.0.lcssa
  store i32 %add14.i6.i, ptr %256, align 4
  %259 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i.i7.i = and i32 %259, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i.i.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.then.i9.i, label %count_vm_events.exit.i.__putback_lru_fast.exit_crit_edge, !prof !129

count_vm_events.exit.i.__putback_lru_fast.exit_crit_edge: ; preds = %count_vm_events.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__putback_lru_fast.exit

if.then.i9.i:                                     ; preds = %count_vm_events.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %__putback_lru_fast.exit

__putback_lru_fast.exit:                          ; preds = %if.then.i9.i, %count_vm_events.exit.i.__putback_lru_fast.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %249) #7, !srcloc !135
  br label %if.end41

if.end41:                                         ; preds = %__putback_lru_fast.exit, %for.end37.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec_putback) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mlock(i32 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @do_mlock(i32 noundef %start, i32 noundef %len, i32 noundef 8192) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mlock2(i32 noundef %start, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not.i = icmp ult i32 %flags, 2
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_mlock2.exit_crit_edge

entry.__do_sys_mlock2.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_mlock2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool2.not.i = icmp eq i32 %flags, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 8192, i32 532480
  %call.i = tail call fastcc i32 @do_mlock(i32 noundef %start, i32 noundef %len, i32 noundef %spec.select.i) #7
  br label %__do_sys_mlock2.exit

__do_sys_mlock2.exit:                             ; preds = %if.end.i, %entry.__do_sys_mlock2.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -22, %entry.__do_sys_mlock2.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_munlock(i32 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__se_sys_munlock, %if.then.i.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !148

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %entry
  %mmap_lock.i.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  %call.i.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__se_sys_munlock, %if.then.i4.i.i)) #7
          to label %mmap_write_lock_killable.exit.i [label %if.then.i4.i.i], !srcloc !148

if.then.i4.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i.i) #7
  br label %mmap_write_lock_killable.exit.i

mmap_write_lock_killable.exit.i:                  ; preds = %if.then.i4.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mmap_write_lock_killable.exit.i.__do_sys_munlock.exit_crit_edge

mmap_write_lock_killable.exit.i.__do_sys_munlock.exit_crit_edge: ; preds = %mmap_write_lock_killable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_munlock.exit

if.end.i:                                         ; preds = %mmap_write_lock_killable.exit.i
  %and3.i = and i32 %start, -4096
  %and.i = and i32 %start, 4095
  %add.i = add i32 %len, 4095
  %add1.i = add i32 %add.i, %and.i
  %and2.i = and i32 %add1.i, -4096
  %call5.i = tail call fastcc i32 @apply_vma_lock_flags(i32 noundef %and3.i, i32 noundef %and2.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %mm8.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm8.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__se_sys_munlock, %if.then.i.i13.i)) #7
          to label %mmap_write_unlock.exit.i [label %if.then.i.i13.i], !srcloc !148

if.then.i.i13.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %9, i1 noundef zeroext true) #7
  br label %mmap_write_unlock.exit.i

mmap_write_unlock.exit.i:                         ; preds = %if.then.i.i13.i, %if.end.i
  %mmap_lock.i14.i = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i14.i) #7
  br label %__do_sys_munlock.exit

__do_sys_munlock.exit:                            ; preds = %mmap_write_unlock.exit.i, %mmap_write_lock_killable.exit.i.__do_sys_munlock.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %mmap_write_unlock.exit.i ], [ -4, %mmap_write_lock_killable.exit.i.__do_sys_munlock.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mlockall(i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_mlockall(i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_mlockall(i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = add i32 %flags, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %cmp = icmp eq i32 %flags, 4
  %or.cond39 = or i1 %cmp, %1
  br i1 %or.cond39, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 8
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %can_do_mlock.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

can_do_mlock.exit:                                ; preds = %if.end
  %call1.i = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call1.i, label %can_do_mlock.exit.if.end4_crit_edge, label %can_do_mlock.exit.cleanup_crit_edge

can_do_mlock.exit.cleanup_crit_edge:              ; preds = %can_do_mlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

can_do_mlock.exit.if.end4_crit_edge:              ; preds = %can_do_mlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %can_do_mlock.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 111
  %14 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 51, i32 8
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr = lshr i32 %17, 12
  %18 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_mlockall, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !148

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %23, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end4
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %23, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_mlockall, %if.then.i4.i)) #7
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !148

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %23, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #7
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %mmap_write_lock_killable.exit
  %and11 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.then20_crit_edge, label %lor.lhs.false13

if.end10.if.then20_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false13:                                  ; preds = %if.end10
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %mm16 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %mm16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mm16, align 8
  %total_vm = getelementptr inbounds %struct.anon.9, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_vm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %shr)
  %cmp17.not = icmp ugt i32 %29, %shr
  br i1 %cmp17.not, label %lor.lhs.false18, label %lor.lhs.false13.if.then20_crit_edge

lor.lhs.false13.if.then20_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false18:                                  ; preds = %lor.lhs.false13
  %call19 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call19, label %lor.lhs.false18.if.then20_crit_edge, label %lor.lhs.false18.if.end22_crit_edge

lor.lhs.false18.if.end22_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

lor.lhs.false18.if.then20_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false18.if.then20_crit_edge, %lor.lhs.false13.if.then20_crit_edge, %if.end10.if.then20_crit_edge
  tail call fastcc void @apply_mlockall_flags(i32 noundef %flags)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %lor.lhs.false18.if.end22_crit_edge
  %tobool26.not = phi i1 [ false, %if.then20 ], [ true, %lor.lhs.false18.if.end22_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then20 ], [ -12, %lor.lhs.false18.if.end22_crit_edge ]
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %mm25 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %mm25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm25, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_mlockall, %if.then.i.i40)) #7
          to label %mmap_write_unlock.exit [label %if.then.i.i40], !srcloc !148

if.then.i.i40:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %33, i1 noundef zeroext true) #7
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i40, %if.end22
  %mmap_lock.i41 = getelementptr inbounds %struct.anon.9, ptr %33, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i41) #7
  %brmerge = or i1 %tobool12.not, %tobool26.not
  br i1 %brmerge, label %mmap_write_unlock.exit.cleanup_crit_edge, label %if.then29

mmap_write_unlock.exit.cleanup_crit_edge:         ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i42 = tail call i32 @__mm_populate(i32 noundef 0, i32 noundef -1226833920, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %mmap_write_unlock.exit.cleanup_crit_edge, %mmap_write_lock_killable.exit.cleanup_crit_edge, %can_do_mlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -1, %can_do_mlock.exit.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ], [ %ret.0, %mmap_write_unlock.exit.cleanup_crit_edge ], [ %ret.0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_munlockall() local_unnamed_addr #0 align 64 {
entry:
  %prev.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@sys_munlockall, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !148

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@sys_munlockall, %if.then.i4.i)) #7
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !148

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #7
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev.i) #7
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %prev.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm.i, align 8
  %def_flags.i = getelementptr inbounds %struct.anon.9, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %def_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_flags.i, align 4
  %and.i6 = and i32 %14, -532481
  store i32 %and.i6, ptr %def_flags.i, align 4
  %15 = load ptr, ptr %task.i, align 8
  %mm31.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %mm31.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm31.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %vma.01.i = load ptr, ptr %17, align 4
  %tobool32.not2.i = icmp eq ptr %vma.01.i, null
  br i1 %tobool32.not2.i, label %if.end.apply_mlockall_flags.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.apply_mlockall_flags.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %apply_mlockall_flags.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %vma.03.i = phi ptr [ %vma.0.i, %for.body.i.for.body.i_crit_edge ], [ %vma.01.i, %if.end.for.body.i_crit_edge ]
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.03.i, i32 0, i32 8
  %19 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_flags.i, align 4
  %and33.i = and i32 %20, -532481
  %21 = ptrtoint ptr %vma.03.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vma.03.i, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.03.i, i32 0, i32 1
  %23 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_end.i, align 4
  %call35.i = call fastcc i32 @mlock_fixup(ptr noundef nonnull %vma.03.i, ptr noundef nonnull %prev.i, i32 noundef %22, i32 noundef %24, i32 noundef %and33.i) #7
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 770, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %vma.0.i = load ptr, ptr %vm_next.i, align 4
  %tobool32.not.i = icmp eq ptr %vma.0.i, null
  br i1 %tobool32.not.i, label %for.body.i.apply_mlockall_flags.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.apply_mlockall_flags.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apply_mlockall_flags.exit

apply_mlockall_flags.exit:                        ; preds = %for.body.i.apply_mlockall_flags.exit_crit_edge, %if.end.apply_mlockall_flags.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev.i) #7
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %mm5 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@sys_munlockall, %if.then.i.i7)) #7
          to label %mmap_write_unlock.exit [label %if.then.i.i7], !srcloc !148

if.then.i.i7:                                     ; preds = %apply_mlockall_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %31, i1 noundef zeroext true) #7
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i7, %apply_mlockall_flags.exit
  %mmap_lock.i8 = getelementptr inbounds %struct.anon.9, ptr %31, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i8) #7
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mmap_write_unlock.exit ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apply_mlockall_flags(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #7
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %prev, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 8
  %def_flags = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def_flags, align 4
  %and = and i32 %8, -532481
  store i32 %and, ptr %def_flags, align 4
  %and1 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = and i32 %flags, 1
  %.pre4 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br label %if.end18

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %mm4 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %mm4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm4, align 8
  %def_flags5 = getelementptr inbounds %struct.anon.9, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %def_flags5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def_flags5, align 4
  %or = or i32 %14, 8192
  store i32 %or, ptr %def_flags5, align 4
  %and6 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %mm11 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %mm11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm11, align 8
  %def_flags12 = getelementptr inbounds %struct.anon.9, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %def_flags12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def_flags12, align 4
  %or13 = or i32 %20, 524288
  store i32 %or13, ptr %def_flags12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %and14 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.out_crit_edge, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %and23.pre-phi = phi i32 [ %.pre4, %entry.if.end18_crit_edge ], [ %and6, %if.end.if.end18_crit_edge ]
  %and19.pre-phi = phi i1 [ %phi.cmp, %entry.if.end18_crit_edge ], [ false, %if.end.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.pre-phi)
  %tobool24.not = icmp eq i32 %and23.pre-phi, 0
  %spec.select = select i1 %tobool24.not, i32 8192, i32 532480
  %to_add.0 = select i1 %and19.pre-phi, i32 0, i32 %spec.select
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %mm31 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %mm31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm31, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %vma.01 = load ptr, ptr %24, align 4
  %tobool32.not2 = icmp eq ptr %vma.01, null
  br i1 %tobool32.not2, label %if.end18.out_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %vma.03 = phi ptr [ %vma.0, %for.body.for.body_crit_edge ], [ %vma.01, %if.end18.for.body_crit_edge ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.03, i32 0, i32 8
  %26 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags, align 4
  %and33 = and i32 %27, -532481
  %or34 = or i32 %and33, %to_add.0
  %28 = ptrtoint ptr %vma.03 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vma.03, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.03, i32 0, i32 1
  %30 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_end, align 4
  %call35 = call fastcc i32 @mlock_fixup(ptr noundef nonnull %vma.03, ptr noundef nonnull %prev, i32 noundef %29, i32 noundef %31, i32 noundef %or34)
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 770, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev, align 4
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %34)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool32.not = icmp eq ptr %vma.0, null
  br i1 %tobool32.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.end18.out_crit_edge, %if.end.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @user_shm_lock(i32 noundef %size, ptr noundef %ucounts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 4095
  %shr = lshr i32 %sub, 12
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 51, i32 8
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  %spec.select = zext i1 %cmp to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @shmlock_user_lock) #7
  %call2 = tail call i32 @inc_rlimit_ucounts(ptr noundef %ucounts, i32 noundef 15, i32 noundef %shr) #7
  br i1 %cmp, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %shr1 = lshr i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 2147483647
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %shr1)
  %cmp4 = icmp ugt i32 %call2, %shr1
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %land.lhs.true5, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call6, label %land.lhs.true5.if.end9_crit_edge, label %land.lhs.true5.out.sink.split_crit_edge

land.lhs.true5.out.sink.split_crit_edge:          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call ptr @get_ucounts(ptr noundef %ucounts) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out.sink.split_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end9.out.sink.split_crit_edge, %land.lhs.true5.out.sink.split_crit_edge
  %allowed.1.ph = phi i32 [ 0, %land.lhs.true5.out.sink.split_crit_edge ], [ %spec.select, %if.end9.out.sink.split_crit_edge ]
  %call13 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %ucounts, i32 noundef 15, i32 noundef %shr) #7
  br label %out

out:                                              ; preds = %out.sink.split, %if.end9.out_crit_edge
  %allowed.1 = phi i32 [ 1, %if.end9.out_crit_edge ], [ %allowed.1.ph, %out.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shmlock_user_lock) #7
  ret i32 %allowed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inc_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @user_shm_unlock(i32 noundef %size, ptr noundef %ucounts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @shmlock_user_lock) #7
  %sub = add i32 %size, 4095
  %shr = lshr i32 %sub, 12
  %call = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %ucounts, i32 noundef 15, i32 noundef %shr) #7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @shmlock_user_lock) #7
  tail call void @put_ucounts(ptr noundef %ucounts) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_mlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_locked_pte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @folio_matches_lruvec(ptr noundef %folio, ptr nocapture noundef readonly %lruvec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %pgdat.i = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 7
  %0 = ptrtoint ptr %pgdat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgdat.i, align 4
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %folio_pgdat.exit, !prof !129

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.21) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !132
  unreachable

folio_pgdat.exit:                                 ; preds = %entry
  %cmp = icmp eq ptr %1, @contig_page_data
  br i1 %cmp, label %land.rhs, label %folio_pgdat.exit.land.end_crit_edge

folio_pgdat.exit.land.end_crit_edge:              ; preds = %folio_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %folio_pgdat.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@folio_matches_lruvec, %lruvec_memcg.exit)) #7
          to label %if.end.i [label %lruvec_memcg.exit], !srcloc !148

if.end.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %memcg.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec, i32 0, i32 9
  %4 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memcg.i, align 4
  br label %lruvec_memcg.exit

lruvec_memcg.exit:                                ; preds = %if.end.i, %land.rhs
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %land.rhs ]
  %6 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %if.then.i.i, !prof !127

if.then.i.i:                                      ; preds = %lruvec_memcg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.26) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #7, !srcloc !167
  unreachable

do.body7.i.i:                                     ; preds = %lruvec_memcg.exit
  %memcg_data.i.i = getelementptr inbounds %struct.anon.105, ptr %folio, i32 0, i32 7
  %9 = ptrtoint ptr %memcg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memcg_data.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool8.not.i.i, label %folio_memcg_kmem.exit.i, label %if.then15.i.i, !prof !127

if.then15.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.27) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #7, !srcloc !168
  unreachable

folio_memcg_kmem.exit.i:                          ; preds = %do.body7.i.i
  %and23.i.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.i.not.i = icmp eq i32 %and23.i.i, 0
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i9.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9.i)
  %tobool.not.i.i.i10.i = icmp eq i32 %and.i.i.i.i9.i, 0
  br i1 %tobool24.i.not.i, label %if.end.i7, label %if.then.i

if.then.i:                                        ; preds = %folio_memcg_kmem.exit.i
  br i1 %tobool.not.i.i.i10.i, label %folio_test_slab.exit.i.i, label %if.then.i.i.i.i, !prof !127

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_test_slab.exit.i.i:                         ; preds = %if.then.i
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i, label %__folio_objcg.exit.i, label %if.then.i6.i, !prof !127

if.then.i6.i:                                     ; preds = %folio_test_slab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.28) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #7, !srcloc !169
  unreachable

__folio_objcg.exit.i:                             ; preds = %folio_test_slab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and48.i.i = and i32 %10, -4
  %16 = inttoptr i32 %and48.i.i to ptr
  %memcg.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %memcg.i.i, align 4
  br label %folio_memcg.exit

if.end.i7:                                        ; preds = %folio_memcg_kmem.exit.i
  br i1 %tobool.not.i.i.i10.i, label %folio_test_slab.exit.i13.i, label %if.then.i.i.i11.i, !prof !127

if.then.i.i.i11.i:                                ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !152
  unreachable

folio_test_slab.exit.i13.i:                       ; preds = %if.end.i7
  %19 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %folio, align 4
  %21 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i12.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i12.i, label %__folio_memcg.exit.i, label %if.then.i14.i, !prof !127

if.then.i14.i:                                    ; preds = %folio_test_slab.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.28) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #7, !srcloc !170
  unreachable

__folio_memcg.exit.i:                             ; preds = %folio_test_slab.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  %and46.i.i = and i32 %10, -4
  %22 = inttoptr i32 %and46.i.i to ptr
  br label %folio_memcg.exit

folio_memcg.exit:                                 ; preds = %__folio_memcg.exit.i, %__folio_objcg.exit.i
  %retval.0.i8 = phi ptr [ %18, %__folio_objcg.exit.i ], [ %22, %__folio_memcg.exit.i ]
  %cmp4 = icmp eq ptr %retval.0.i, %retval.0.i8
  br label %land.end

land.end:                                         ; preds = %folio_memcg.exit, %folio_pgdat.exit.land.end_crit_edge
  %23 = phi i1 [ false, %folio_pgdat.exit.land.end_crit_edge ], [ %cmp4, %folio_memcg.exit ]
  ret i1 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_lruvec_lock_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_update_lru_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_lru_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mlock(i32 noundef %start, i32 noundef %len, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 51, i32 8
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %can_do_mlock.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

can_do_mlock.exit:                                ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call1.i, label %can_do_mlock.exit.if.end_crit_edge, label %can_do_mlock.exit.cleanup_crit_edge

can_do_mlock.exit.cleanup_crit_edge:              ; preds = %can_do_mlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

can_do_mlock.exit.if.end_crit_edge:               ; preds = %can_do_mlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %can_do_mlock.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %and = and i32 %start, 4095
  %add = add i32 %len, 4095
  %add1 = add i32 %add, %and
  %and2 = and i32 %add1, -4096
  %and3 = and i32 %start, -4096
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 51, i32 8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr = lshr i32 %15, 12
  %16 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@do_mlock, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !148

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %21, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %21, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@do_mlock, %if.then.i4.i)) #7
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !148

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %21, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #7
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %mmap_write_lock_killable.exit
  %shr5 = lshr i32 %add1, 12
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %mm12 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 53
  %24 = ptrtoint ptr %mm12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mm12, align 8
  %locked_vm = getelementptr inbounds %struct.anon.9, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %locked_vm, align 4
  %add13 = add i32 %27, %shr5
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %shr)
  %cmp = icmp ugt i32 %add13, %shr
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end9
  %call14 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call14, label %land.lhs.true.if.end20_crit_edge, label %if.then15

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %mm18 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm18, align 8
  %cmp.i56 = icmp eq ptr %31, null
  br i1 %cmp.i56, label %if.then.i, label %if.then15.if.end.i59_crit_edge

if.then15.if.end.i59_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i59

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %32 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i.i57 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i57 to ptr
  %task.i58 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i58, align 8
  %mm1.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mm1.i, align 8
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i, %if.then15.if.end.i59_crit_edge
  %mm.addr.0.i = phi ptr [ %37, %if.then.i ], [ %31, %if.then15.if.end.i59_crit_edge ]
  %call2.i = tail call ptr @find_vma(ptr noundef %mm.addr.0.i, i32 noundef %and3) #7
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i59.count_mm_mlocked_page_nr.exit_crit_edge, label %for.body.lr.ph.i

if.end.i59.count_mm_mlocked_page_nr.exit_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_mm_mlocked_page_nr.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i59
  %add.i = add i32 %and2, %and3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body.i_crit_edge ]
  %vma.061.i = phi ptr [ %call2.i, %for.body.lr.ph.i ], [ %46, %for.inc.i.for.body.i_crit_edge ]
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.061.i, i32 0, i32 1
  %38 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %and3)
  %cmp6.not.i = icmp ugt i32 %39, %and3
  br i1 %cmp6.not.i, label %if.end8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %vma.061.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vma.061.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %41)
  %cmp9.not.i = icmp ugt i32 %add.i, %41
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end8.i.for.end.i_crit_edge

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i:                                       ; preds = %if.end8.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.061.i, i32 0, i32 8
  %42 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_flags.i, align 4
  %and.i60 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool12.not.i = icmp eq i32 %and.i60, 0
  br i1 %tobool12.not.i, label %if.end11.i.for.inc.i_crit_edge, label %if.then13.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.end11.i
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %and3, i32 %41) #7
  %count.1.i = sub i32 %count.062.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %39)
  %cmp22.i = icmp ult i32 %add.i, %39
  br i1 %cmp22.i, label %if.then23.i, label %if.end28.i

if.then23.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i = sub i32 %add.i, %41
  %add27.i = add i32 %sub26.i, %count.1.i
  br label %for.end.i

if.end28.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub31.i = sub i32 %39, %41
  %add32.i = add i32 %sub31.i, %count.1.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end28.i, %if.end11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %count.062.i, %for.body.i.for.inc.i_crit_edge ], [ %add32.i, %if.end28.i ], [ %count.062.i, %if.end11.i.for.inc.i_crit_edge ]
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.061.i, i32 0, i32 2
  %45 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then23.i, %if.end8.i.for.end.i_crit_edge
  %count.3.i = phi i32 [ %add27.i, %if.then23.i ], [ %count.062.i, %if.end8.i.for.end.i_crit_edge ], [ %count.2.i, %for.inc.i.for.end.i_crit_edge ]
  %shr.i = lshr i32 %count.3.i, 12
  br label %count_mm_mlocked_page_nr.exit

count_mm_mlocked_page_nr.exit:                    ; preds = %for.end.i, %if.end.i59.count_mm_mlocked_page_nr.exit_crit_edge
  %retval.0.i61 = phi i32 [ %shr.i, %for.end.i ], [ 0, %if.end.i59.count_mm_mlocked_page_nr.exit_crit_edge ]
  %sub = sub i32 %add13, %retval.0.i61
  br label %if.end20

if.end20:                                         ; preds = %count_mm_mlocked_page_nr.exit, %land.lhs.true.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %locked.0 = phi i32 [ %add13, %land.lhs.true.if.end20_crit_edge ], [ %sub, %count_mm_mlocked_page_nr.exit ], [ %add13, %if.end9.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %locked.0, i32 %shr)
  %cmp21.not = icmp ugt i32 %locked.0, %shr
  br i1 %cmp21.not, label %lor.lhs.false, label %if.end20.if.then23_crit_edge

if.end20.if.then23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end20
  %call22 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call22, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %if.end20.if.then23_crit_edge
  %call24 = tail call fastcc i32 @apply_vma_lock_flags(i32 noundef %and3, i32 noundef %and2, i32 noundef %flags)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false.if.end25_crit_edge
  %error.0 = phi i32 [ %call24, %if.then23 ], [ -12, %lor.lhs.false.if.end25_crit_edge ]
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %mm28 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %mm28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mm28, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@do_mlock, %if.then.i.i62)) #7
          to label %mmap_write_unlock.exit [label %if.then.i.i62], !srcloc !148

if.then.i.i62:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %50, i1 noundef zeroext true) #7
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i62, %if.end25
  %mmap_lock.i63 = getelementptr inbounds %struct.anon.9, ptr %50, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool29.not = icmp eq i32 %error.0, 0
  br i1 %tobool29.not, label %if.end31, label %mmap_write_unlock.exit.cleanup_crit_edge

mmap_write_unlock.exit.cleanup_crit_edge:         ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %mmap_write_unlock.exit
  %call32 = tail call i32 @__mm_populate(i32 noundef %and3, i32 noundef %and2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call32)
  %cmp.i64 = icmp eq i32 %call32, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call32)
  %cmp2.i = icmp eq i32 %call32, -12
  %spec.store.select.i = select i1 %cmp2.i, i32 -11, i32 %call32
  %retval.addr.0.i = select i1 %cmp.i64, i32 -12, i32 %spec.store.select.i
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge, %mmap_write_unlock.exit.cleanup_crit_edge, %mmap_write_lock_killable.exit.cleanup_crit_edge, %can_do_mlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.addr.0.i, %if.then34 ], [ -1, %can_do_mlock.exit.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ], [ %error.0, %mmap_write_unlock.exit.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apply_vma_lock_flags(i32 noundef %start, i32 noundef %len, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #7
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %do.body3, !prof !127

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #7, !srcloc !171
  unreachable

do.body9:                                         ; preds = %entry
  %add = add i32 %len, 4095
  %and10 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %len)
  %cmp.not = icmp eq i32 %and10, %len
  br i1 %cmp.not, label %do.end26, label %do.body18, !prof !127

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mlock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 568, 0\0A.popsection", ""() #7, !srcloc !172
  unreachable

do.end26:                                         ; preds = %do.body9
  %add27 = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %start)
  %cmp28 = icmp ult i32 %add27, %start
  br i1 %cmp28, label %do.end26.cleanup65_crit_edge, label %if.end30

do.end26.cleanup65_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end30:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp31 = icmp eq i32 %len, 0
  br i1 %cmp31, label %if.end30.cleanup65_crit_edge, label %if.end33

if.end30.cleanup65_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end33:                                         ; preds = %if.end30
  %0 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %call34 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %start) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.cleanup65_crit_edge, label %lor.lhs.false

if.end33.cleanup65_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

lor.lhs.false:                                    ; preds = %if.end33
  %6 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp36 = icmp ugt i32 %7, %start
  br i1 %cmp36, label %lor.lhs.false.cleanup65_crit_edge, label %if.end38

lor.lhs.false.cleanup65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end38:                                         ; preds = %lor.lhs.false
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %call34, i32 0, i32 3
  %8 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp40 = icmp ult i32 %7, %start
  %spec.store.select = select i1 %cmp40, ptr %call34, ptr %9
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.store.select, ptr %prev, align 4
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false60.for.cond_crit_edge, %if.end38
  %nstart.0 = phi i32 [ %start, %if.end38 ], [ %20, %lor.lhs.false60.for.cond_crit_edge ]
  %vma.0 = phi ptr [ %call34, %if.end38 ], [ %22, %lor.lhs.false60.for.cond_crit_edge ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 8
  %11 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags, align 4
  %and43 = and i32 %12, -532481
  %or = or i32 %and43, %flags
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 1
  %13 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_end, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %add27)
  %call47 = call fastcc i32 @mlock_fixup(ptr noundef nonnull %vma.0, ptr noundef nonnull %prev, i32 noundef %nstart.0, i32 noundef %15, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %for.cond.cleanup65_crit_edge

for.cond.cleanup65_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end50:                                         ; preds = %for.cond
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev, align 4
  %vm_end51 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end51, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %15, i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add27)
  %cmp56.not = icmp ult i32 %20, %add27
  br i1 %cmp56.not, label %if.end58, label %if.end50.cleanup65_crit_edge

if.end50.cleanup65_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end58:                                         ; preds = %if.end50
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vm_next, align 4
  %tobool59.not = icmp eq ptr %22, null
  br i1 %tobool59.not, label %if.end58.cleanup65_crit_edge, label %lor.lhs.false60

if.end58.cleanup65_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

lor.lhs.false60:                                  ; preds = %if.end58
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %cmp62.not = icmp eq i32 %24, %20
  br i1 %cmp62.not, label %lor.lhs.false60.for.cond_crit_edge, label %lor.lhs.false60.cleanup65_crit_edge

lor.lhs.false60.cleanup65_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

lor.lhs.false60.for.cond_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup65:                                        ; preds = %lor.lhs.false60.cleanup65_crit_edge, %if.end58.cleanup65_crit_edge, %if.end50.cleanup65_crit_edge, %for.cond.cleanup65_crit_edge, %lor.lhs.false.cleanup65_crit_edge, %if.end33.cleanup65_crit_edge, %if.end30.cleanup65_crit_edge, %do.end26.cleanup65_crit_edge
  %retval.0 = phi i32 [ -22, %do.end26.cleanup65_crit_edge ], [ 0, %if.end30.cleanup65_crit_edge ], [ -12, %lor.lhs.false.cleanup65_crit_edge ], [ -12, %if.end33.cleanup65_crit_edge ], [ %call47, %for.cond.cleanup65_crit_edge ], [ 0, %if.end50.cleanup65_crit_edge ], [ -12, %if.end58.cleanup65_crit_edge ], [ -12, %lor.lhs.false60.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlock_fixup(ptr noundef %vma, ptr nocapture noundef %prev, i32 noundef %start, i32 noundef %end, i32 noundef %newflags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %and = and i32 %newflags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %newflags)
  %cmp = icmp ne i32 %3, %newflags
  %and4 = and i32 %3, 268715008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = and i1 %cmp, %tobool5.not
  br i1 %or.cond, label %lor.lhs.false6, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false6:                                   ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !117) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm9 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm9, align 8
  %call10 = tail call ptr @get_gate_vma(ptr noundef %9) #7
  %cmp11 = icmp eq ptr %call10, %vma
  br i1 %cmp11, label %lor.lhs.false6.out_crit_edge, label %lor.lhs.false12

lor.lhs.false6.out_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  %12 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma, align 4
  %sub = sub i32 %start, %13
  %shr = lshr i32 %sub, 12
  %add = add i32 %shr, %11
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %16 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %anon_vma, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %18 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_file, align 4
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 17
  %call16 = tail call ptr @anon_vma_name(ptr noundef %vma) #7
  %20 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %vm_userfaultfd_ctx, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call17 = tail call ptr @vma_merge(ptr noundef %1, ptr noundef %15, i32 noundef %start, i32 noundef %end, i32 noundef %newflags, ptr noundef %17, ptr noundef %19, i32 noundef %add, ptr noundef null, [1 x i32] %21, ptr noundef %call16) #7
  %22 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call17, ptr %prev, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false12.success_crit_edge

lor.lhs.false12.success_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

if.end20:                                         ; preds = %lor.lhs.false12
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %start)
  %cmp22.not = icmp eq i32 %24, %start
  br i1 %cmp22.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i32 @split_vma(ptr noundef %1, ptr noundef %vma, i32 noundef %start, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then23.out_crit_edge

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %25 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %end)
  %cmp29.not = icmp eq i32 %26, %end
  br i1 %cmp29.not, label %if.end28.success_crit_edge, label %if.then30

if.end28.success_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @split_vma(ptr noundef %1, ptr noundef %vma, i32 noundef %end, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.success_crit_edge, label %if.then30.out_crit_edge

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then30.success_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

success:                                          ; preds = %if.then30.success_crit_edge, %if.end28.success_crit_edge, %lor.lhs.false12.success_crit_edge
  %vma.addr.0 = phi ptr [ %vma, %if.then30.success_crit_edge ], [ %vma, %if.end28.success_crit_edge ], [ %call17, %lor.lhs.false12.success_crit_edge ]
  %sub36 = sub i32 %end, %start
  %shr37 = lshr i32 %sub36, 12
  br i1 %tobool.not, label %if.then39, label %if.else

if.then39:                                        ; preds = %success
  call void @__sanitizer_cov_trace_pc() #9
  %locked_vm.c95 = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %locked_vm.c95 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %locked_vm.c95, align 4
  %add46.c96 = sub i32 %28, %shr37
  store i32 %add46.c96, ptr %locked_vm.c95, align 4
  tail call void @munlock_vma_pages_range(ptr noundef %vma.addr.0, i32 noundef %start, i32 noundef %end)
  br label %out

if.else:                                          ; preds = %success
  call void @__sanitizer_cov_trace_pc() #9
  %and41 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %spec.select = select i1 %tobool42.not, i32 %shr37, i32 0
  %locked_vm.c = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %locked_vm.c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %locked_vm.c, align 4
  %add46.c = add i32 %30, %spec.select
  store i32 %add46.c, ptr %locked_vm.c, align 4
  %vm_flags49 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 8
  %31 = ptrtoint ptr %vm_flags49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %newflags, ptr %vm_flags49, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then39, %if.then30.out_crit_edge, %if.then23.out_crit_edge, %lor.lhs.false6.out_crit_edge, %entry.out_crit_edge
  %vma.addr.1 = phi ptr [ %vma, %entry.out_crit_edge ], [ %vma, %lor.lhs.false6.out_crit_edge ], [ %vma.addr.0, %if.else ], [ %vma.addr.0, %if.then39 ], [ %vma, %if.then23.out_crit_edge ], [ %vma, %if.then30.out_crit_edge ]
  %ret.2 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %lor.lhs.false6.out_crit_edge ], [ 0, %if.else ], [ 0, %if.then39 ], [ %call24, %if.then23.out_crit_edge ], [ %call31, %if.then30.out_crit_edge ]
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vma.addr.1, ptr %prev, align 4
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !116}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__ksymtab_can_do_mlock, !1, !"__ksymtab_can_do_mlock", i1 false, i1 false}
!1 = !{!"../mm/mlock.c", i32 38, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/mlock.c", i32 96, i32 2}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/mlock.c", i32 97, i32 2}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/mlock.c", i32 446, i32 5}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/mlock.c", i32 483, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/mlock.c", i32 695, i32 1}
!12 = !{ptr @event_enter__mlock, !11, !"event_enter__mlock", i1 false, i1 false}
!13 = !{ptr @__event_enter__mlock, !11, !"__event_enter__mlock", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__mlock, !11, !"event_exit__mlock", i1 false, i1 false}
!16 = !{ptr @__event_exit__mlock, !11, !"__event_exit__mlock", i1 false, i1 false}
!17 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__mlock, !11, !"__syscall_meta__mlock", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__mlock, !11, !"__p_syscall_meta__mlock", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/mlock.c", i32 700, i32 1}
!22 = !{ptr @event_enter__mlock2, !21, !"event_enter__mlock2", i1 false, i1 false}
!23 = !{ptr @__event_enter__mlock2, !21, !"__event_enter__mlock2", i1 false, i1 false}
!24 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__mlock2, !21, !"event_exit__mlock2", i1 false, i1 false}
!26 = !{ptr @__event_exit__mlock2, !21, !"__event_exit__mlock2", i1 false, i1 false}
!27 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__mlock2, !21, !"__syscall_meta__mlock2", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__mlock2, !21, !"__p_syscall_meta__mlock2", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/mlock.c", i32 713, i32 1}
!32 = !{ptr @event_enter__munlock, !31, !"event_enter__munlock", i1 false, i1 false}
!33 = !{ptr @__event_enter__munlock, !31, !"__event_enter__munlock", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__munlock, !31, !"event_exit__munlock", i1 false, i1 false}
!36 = !{ptr @__event_exit__munlock, !31, !"__event_exit__munlock", i1 false, i1 false}
!37 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__munlock, !31, !"__syscall_meta__munlock", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__munlock, !31, !"__p_syscall_meta__munlock", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/mlock.c", i32 776, i32 1}
!42 = !{ptr @event_enter__mlockall, !41, !"event_enter__mlockall", i1 false, i1 false}
!43 = !{ptr @__event_enter__mlockall, !41, !"__event_enter__mlockall", i1 false, i1 false}
!44 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__mlockall, !41, !"event_exit__mlockall", i1 false, i1 false}
!46 = !{ptr @__event_exit__mlockall, !41, !"__event_exit__mlockall", i1 false, i1 false}
!47 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__mlockall, !41, !"__syscall_meta__mlockall", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__mlockall, !41, !"__p_syscall_meta__mlockall", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../mm/mlock.c", i32 805, i32 1}
!52 = !{ptr @event_enter__munlockall, !51, !"event_enter__munlockall", i1 false, i1 false}
!53 = !{ptr @__event_enter__munlockall, !51, !"__event_enter__munlockall", i1 false, i1 false}
!54 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @event_exit__munlockall, !51, !"event_exit__munlockall", i1 false, i1 false}
!56 = !{ptr @__event_exit__munlockall, !51, !"__event_exit__munlockall", i1 false, i1 false}
!57 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__syscall_meta__munlockall, !51, !"__syscall_meta__munlockall", i1 false, i1 false}
!59 = !{ptr @__p_syscall_meta__munlockall, !51, !"__p_syscall_meta__munlockall", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/page-flags.h", i32 506, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/mm.h", i32 717, i32 2}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!81 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/mm_inline.h", i32 83, i32 2}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../mm/mlock.c", i32 219, i32 2}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../mm/mlock.c", i32 220, i32 2}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!95 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!99 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.39, !11, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.40, !11, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @types__mlock, !11, !"types__mlock", i1 false, i1 false}
!103 = !{ptr @.str.41, !11, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.42, !11, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @args__mlock, !11, !"args__mlock", i1 false, i1 false}
!106 = !{ptr @.str.43, !21, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @types__mlock2, !21, !"types__mlock2", i1 false, i1 false}
!108 = !{ptr @.str.44, !21, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @args__mlock2, !21, !"args__mlock2", i1 false, i1 false}
!110 = !{ptr @types__munlock, !31, !"types__munlock", i1 false, i1 false}
!111 = !{ptr @args__munlock, !31, !"args__munlock", i1 false, i1 false}
!112 = !{ptr @types__mlockall, !41, !"types__mlockall", i1 false, i1 false}
!113 = !{ptr @args__mlockall, !41, !"args__mlockall", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../mm/mlock.c", i32 820, i32 8}
!116 = !{ptr @shmlock_user_lock, !115, !"shmlock_user_lock", i1 false, i1 false}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2151010005, i64 2151010178, i64 2151010193, i64 2151010245, i64 2151010304, i64 2151010328, i64 2151010369, i64 2151010390, i64 2151010418, i64 2151010450}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2151010880, i64 2151011053, i64 2151011068, i64 2151011120, i64 2151011179, i64 2151011203, i64 2151011244, i64 2151011265, i64 2151011293, i64 2151011325}
!131 = !{i64 2153127279, i64 2153127767, i64 2153127316, i64 2153127372, i64 2153127406, i64 2153127430, i64 2153127471, i64 2153127492, i64 2153127520, i64 2153127554}
!132 = !{i64 2153166044, i64 2153166528, i64 2153166081, i64 2153166137, i64 2153166171, i64 2153166195, i64 2153166236, i64 2153166257, i64 2153166285, i64 2153166319}
!133 = !{i64 1133436, i64 1133497}
!134 = !{i64 1136168}
!135 = !{i64 1136453}
!136 = !{i64 2150936393, i64 2150936884, i64 2150936430, i64 2150936486, i64 2150936520, i64 2150936544, i64 2150936585, i64 2150936606, i64 2150936634, i64 2150936668}
!137 = !{i64 2150295248, i64 2150295739, i64 2150295285, i64 2150295341, i64 2150295375, i64 2150295399, i64 2150295440, i64 2150295461, i64 2150295489, i64 2150295523}
!138 = !{i64 2155626006, i64 2155626480, i64 2155626043, i64 2155626099, i64 2155626133, i64 2155626157, i64 2155626198, i64 2155626219, i64 2155626247, i64 2155626281}
!139 = !{i64 2155627730, i64 2155628204, i64 2155627767, i64 2155627823, i64 2155627857, i64 2155627881, i64 2155627922, i64 2155627943, i64 2155627971, i64 2155628005}
!140 = !{i64 2151001079, i64 2151001252, i64 2151001267, i64 2151001319, i64 2151001378, i64 2151001402, i64 2151001443, i64 2151001464, i64 2151001492, i64 2151001524}
!141 = !{i64 2151001954, i64 2151002127, i64 2151002142, i64 2151002194, i64 2151002253, i64 2151002277, i64 2151002318, i64 2151002339, i64 2151002367, i64 2151002399}
!142 = !{i64 2155631151, i64 2155631626, i64 2155631188, i64 2155631244, i64 2155631278, i64 2155631302, i64 2155631343, i64 2155631364, i64 2155631392, i64 2155631426}
!143 = !{i64 2155632878, i64 2155633353, i64 2155632915, i64 2155632971, i64 2155633005, i64 2155633029, i64 2155633070, i64 2155633091, i64 2155633119, i64 2155633153}
!144 = !{i64 2150965347, i64 2150965838, i64 2150965384, i64 2150965440, i64 2150965474, i64 2150965498, i64 2150965539, i64 2150965560, i64 2150965588, i64 2150965622}
!145 = !{!"auto-init"}
!146 = !{i64 2153160262, i64 2153160746, i64 2153160299, i64 2153160355, i64 2153160389, i64 2153160413, i64 2153160454, i64 2153160475, i64 2153160503, i64 2153160537}
!147 = !{i64 2148728756, i64 2148728782, i64 2148728811, i64 2148728845, i64 2148728876, i64 2148728899}
!148 = !{i64 2148329433, i64 2148329438, i64 2148329451, i64 2148329495, i64 2148329529, i64 2148329550}
!149 = !{i64 2152753547}
!150 = !{i64 2154160912}
!151 = !{i64 2150449664, i64 2150449837, i64 2150449852, i64 2150449904, i64 2150449963, i64 2150449987, i64 2150450028, i64 2150450049, i64 2150450077, i64 2150450109}
!152 = !{i64 2150283754, i64 2150284245, i64 2150283791, i64 2150283847, i64 2150283881, i64 2150283905, i64 2150283946, i64 2150283967, i64 2150283995, i64 2150284029}
!153 = !{i64 2155577399, i64 2155577888, i64 2155577436, i64 2155577492, i64 2155577526, i64 2155577550, i64 2155577591, i64 2155577612, i64 2155577640, i64 2155577674}
!154 = !{i64 2151050540, i64 2151051031, i64 2151050577, i64 2151050633, i64 2151050667, i64 2151050691, i64 2151050732, i64 2151050753, i64 2151050781, i64 2151050815}
!155 = !{i64 2148737614, i64 2148737646, i64 2148737675, i64 2148737709, i64 2148737740, i64 2148737763}
!156 = !{i64 2148826719}
!157 = !{i64 2150425820, i64 2150426311, i64 2150425857, i64 2150425913, i64 2150425947, i64 2150425971, i64 2150426012, i64 2150426033, i64 2150426061, i64 2150426095}
!158 = !{i64 2155634612, i64 2155635087, i64 2155634649, i64 2155634705, i64 2155634739, i64 2155634763, i64 2155634804, i64 2155634825, i64 2155634853, i64 2155634887}
!159 = !{i64 2155636354, i64 2155636829, i64 2155636391, i64 2155636447, i64 2155636481, i64 2155636505, i64 2155636546, i64 2155636567, i64 2155636595, i64 2155636629}
!160 = !{i64 2150064089}
!161 = !{i64 2150064355}
!162 = !{i64 2150960589, i64 2150960762, i64 2150960777, i64 2150960829, i64 2150960888, i64 2150960912, i64 2150960953, i64 2150960974, i64 2150961002, i64 2150961034}
!163 = !{i64 2153136289, i64 2153136772, i64 2153136326, i64 2153136382, i64 2153136416, i64 2153136440, i64 2153136481, i64 2153136502, i64 2153136530, i64 2153136564}
!164 = !{i64 2148817232}
!165 = !{i64 2148731941, i64 2148731973, i64 2148732002, i64 2148732036, i64 2148732067, i64 2148732090}
!166 = !{i64 2148817461}
!167 = !{i64 2154651504, i64 2154651995, i64 2154651541, i64 2154651597, i64 2154651631, i64 2154651655, i64 2154651696, i64 2154651717, i64 2154651745, i64 2154651779}
!168 = !{i64 2154653404, i64 2154653895, i64 2154653441, i64 2154653497, i64 2154653531, i64 2154653555, i64 2154653596, i64 2154653617, i64 2154653645, i64 2154653679}
!169 = !{i64 2154636004, i64 2154636495, i64 2154636041, i64 2154636097, i64 2154636131, i64 2154636155, i64 2154636196, i64 2154636217, i64 2154636245, i64 2154636279}
!170 = !{i64 2154630262, i64 2154630753, i64 2154630299, i64 2154630355, i64 2154630389, i64 2154630413, i64 2154630454, i64 2154630475, i64 2154630503, i64 2154630537}
!171 = !{i64 2155642969, i64 2155643444, i64 2155643006, i64 2155643062, i64 2155643096, i64 2155643120, i64 2155643161, i64 2155643182, i64 2155643210, i64 2155643244}
!172 = !{i64 2155645259, i64 2155645734, i64 2155645296, i64 2155645352, i64 2155645386, i64 2155645410, i64 2155645451, i64 2155645472, i64 2155645500, i64 2155645534}
