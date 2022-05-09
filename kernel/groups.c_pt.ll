; ModuleID = '/llk/IR_all_yes/kernel/groups.c_pt.bc'
source_filename = "../kernel/groups.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+groups_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_groups_alloc\09\09\09\09"
module asm "\09.long\09__crc_groups_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_groups_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22groups_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_groups_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+groups_free\22, \22a\22\09"
module asm "\09.weak\09__crc_groups_free\09\09\09\09"
module asm "\09.long\09__crc_groups_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_groups_free:\09\09\09\09\09"
module asm "\09.asciz \09\22groups_free\22\09\09\09\09\09"
module asm "__kstrtabns_groups_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+groups_sort\22, \22a\22\09"
module asm "\09.weak\09__crc_groups_sort\09\09\09\09"
module asm "\09.long\09__crc_groups_sort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_groups_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22groups_sort\22\09\09\09\09\09"
module asm "__kstrtabns_groups_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_set_groups\09\09\09\09"
module asm "\09.long\09__crc_set_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22set_groups\22\09\09\09\09\09"
module asm "__kstrtabns_set_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_current_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_set_current_groups\09\09\09\09"
module asm "\09.long\09__crc_set_current_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_current_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22set_current_groups\22\09\09\09\09\09"
module asm "__kstrtabns_set_current_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+in_group_p\22, \22a\22\09"
module asm "\09.weak\09__crc_in_group_p\09\09\09\09"
module asm "\09.long\09__crc_in_group_p\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_group_p:\09\09\09\09\09"
module asm "\09.asciz \09\22in_group_p\22\09\09\09\09\09"
module asm "__kstrtabns_in_group_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+in_egroup_p\22, \22a\22\09"
module asm "\09.weak\09__crc_in_egroup_p\09\09\09\09"
module asm "\09.long\09__crc_in_egroup_p\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_egroup_p:\09\09\09\09\09"
module asm "\09.asciz \09\22in_egroup_p\22\09\09\09\09\09"
module asm "__kstrtabns_in_egroup_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.15, %struct.trace_event, ptr, ptr, %union.anon.17, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.15 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.17 = type { ptr }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.atomic_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_groups_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_groups_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_groups_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @groups_alloc to i32), ptr @__kstrtab_groups_alloc, ptr @__kstrtabns_groups_alloc }, section "___ksymtab+groups_alloc", align 4
@__kstrtab_groups_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_groups_free = external dso_local constant [0 x i8], align 1
@__ksymtab_groups_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @groups_free to i32), ptr @__kstrtab_groups_free, ptr @__kstrtabns_groups_free }, section "___ksymtab+groups_free", align 4
@__kstrtab_groups_sort = external dso_local constant [0 x i8], align 1
@__kstrtabns_groups_sort = external dso_local constant [0 x i8], align 1
@__ksymtab_groups_sort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @groups_sort to i32), ptr @__kstrtab_groups_sort, ptr @__kstrtabns_groups_sort }, section "___ksymtab+groups_sort", align 4
@__kstrtab_set_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_set_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_groups to i32), ptr @__kstrtab_set_groups, ptr @__kstrtabns_set_groups }, section "___ksymtab+set_groups", align 4
@__kstrtab_set_current_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_current_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_set_current_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_current_groups to i32), ptr @__kstrtab_set_current_groups, ptr @__kstrtabns_set_current_groups }, section "___ksymtab+set_current_groups", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getgroups\00", [44 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__getgroups = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__getgroups, ptr @args__getgroups, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getgroups, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getgroups, i64 20) }, ptr @event_enter__getgroups, ptr @event_exit__getgroups }, align 4
@event_enter__getgroups = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.15 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.17 zeroinitializer, ptr @__syscall_meta__getgroups, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getgroups = internal global ptr @event_enter__getgroups, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getgroups\00", [45 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__getgroups = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.15 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.17 zeroinitializer, ptr @__syscall_meta__getgroups, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getgroups = internal global ptr @event_exit__getgroups, section "_ftrace_events", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getgroups\00", [18 x i8] zeroinitializer }, align 32
@types__getgroups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@args__getgroups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getgroups = internal global ptr @__syscall_meta__getgroups, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_setgroups\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__setgroups = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__setgroups, ptr @args__setgroups, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setgroups, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setgroups, i64 20) }, ptr @event_enter__setgroups, ptr @event_exit__setgroups }, align 4
@event_enter__setgroups = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.15 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.17 zeroinitializer, ptr @__syscall_meta__setgroups, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setgroups = internal global ptr @event_enter__setgroups, section "_ftrace_events", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_setgroups\00", [45 x i8] zeroinitializer }, align 32
@event_exit__setgroups = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.15 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.17 zeroinitializer, ptr @__syscall_meta__setgroups, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setgroups = internal global ptr @event_exit__setgroups, section "_ftrace_events", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_setgroups\00", [18 x i8] zeroinitializer }, align 32
@types__setgroups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@args__setgroups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setgroups = internal global ptr @__syscall_meta__setgroups, section "__syscalls_metadata", align 4
@__kstrtab_in_group_p = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_group_p = external dso_local constant [0 x i8], align 1
@__ksymtab_in_group_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_group_p to i32), ptr @__kstrtab_in_group_p, ptr @__kstrtabns_in_group_p }, section "___ksymtab+in_group_p", align 4
@__kstrtab_in_egroup_p = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_egroup_p = external dso_local constant [0 x i8], align 1
@__ksymtab_in_egroup_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_egroup_p to i32), ptr @__kstrtab_in_egroup_p, ptr @__kstrtabns_in_egroup_p }, section "___ksymtab+in_egroup_p", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gid_t *\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gidsetsize\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grouplist\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/groups.c\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"event_enter__getgroups\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"event_exit__getgroups\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"types__getgroups\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"args__getgroups\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"event_enter__setgroups\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"event_exit__setgroups\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"types__setgroups\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"args__setgroups\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 185, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 148, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [19 x i8] c"../kernel/groups.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 47, i32 7 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__event_enter__getgroups, ptr @__event_enter__setgroups, ptr @__event_exit__getgroups, ptr @__event_exit__setgroups, ptr @__ksymtab_groups_alloc, ptr @__ksymtab_groups_free, ptr @__ksymtab_groups_sort, ptr @__ksymtab_in_egroup_p, ptr @__ksymtab_in_group_p, ptr @__ksymtab_set_current_groups, ptr @__ksymtab_set_groups, ptr @__p_syscall_meta__getgroups, ptr @__p_syscall_meta__setgroups, ptr @__syscall_meta__getgroups, ptr @__syscall_meta__setgroups, ptr @event_enter__getgroups, ptr @event_enter__setgroups, ptr @event_exit__getgroups, ptr @event_exit__setgroups, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__getgroups, ptr @args__getgroups, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__setgroups, ptr @args__setgroups, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getgroups to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getgroups to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getgroups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getgroups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setgroups to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setgroups to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setgroups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setgroups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_getgroups = dso_local alias i32 (i32, ptr), ptr @__se_sys_getgroups
@sys_setgroups = dso_local alias i32 (i32, ptr), ptr @__se_sys_setgroups

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @groups_alloc(i32 noundef %gidsetsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %gidsetsize, i32 4) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 8) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 4197568, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %call.i, align 4
  %ngroups = getelementptr inbounds %struct.group_info, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ngroups to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %gidsetsize, ptr %ngroups, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @groups_free(ptr noundef %group_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %group_info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @groups_sort(ptr noundef %group_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gid = getelementptr inbounds %struct.group_info, ptr %group_info, i32 0, i32 2
  %ngroups = getelementptr inbounds %struct.group_info, ptr %group_info, i32 0, i32 1
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  tail call void @sort(ptr noundef %gid, i32 noundef %1, i32 noundef 4, ptr noundef nonnull @gid_cmp, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gid_cmp(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %a.sroa.0.0.copyload = load i32, ptr %_a, align 4
  %1 = ptrtoint ptr %_b to i32
  call void @__asan_load4_noabort(i32 %1)
  %b.sroa.0.0.copyload = load i32, ptr %_b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.0.0.copyload, i32 %b.sroa.0.0.copyload)
  %cmp.i = icmp ugt i32 %a.sroa.0.0.copyload, %b.sroa.0.0.copyload
  %conv = zext i1 %cmp.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.0.0.copyload, i32 %b.sroa.0.0.copyload)
  %cmp.i15 = icmp ult i32 %a.sroa.0.0.copyload, %b.sroa.0.0.copyload
  %conv5.neg = sext i1 %cmp.i15 to i32
  %sub = add nsw i32 %conv5.neg, %conv
  ret i32 %sub
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @groups_search(ptr noundef readonly %group_info, [1 x i32] %grp.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %group_info, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.end

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

if.end:                                           ; preds = %entry
  %ngroups = getelementptr inbounds %struct.group_info, ptr %group_info, i32 0, i32 1
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %if.end.cleanup14_crit_edge, label %while.body.lr.ph

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

while.body.lr.ph:                                 ; preds = %if.end
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %grp.coerce, 0
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %right.037 = phi i32 [ %1, %while.body.lr.ph ], [ %right.1, %cleanup.while.body_crit_edge ]
  %left.036 = phi i32 [ 0, %while.body.lr.ph ], [ %left.1, %cleanup.while.body_crit_edge ]
  %add = add i32 %right.037, %left.036
  %div28 = lshr i32 %add, 1
  %arrayidx = getelementptr %struct.group_info, ptr %group_info, i32 0, i32 2, i32 %div28
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack)
  %cmp.i = icmp ugt i32 %gid.coerce.fca.0.extract.i.i, %.unpack
  br i1 %cmp.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %add4 = add nuw i32 %div28, 1
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack)
  %cmp.i31 = icmp ult i32 %gid.coerce.fca.0.extract.i.i, %.unpack
  br i1 %cmp.i31, label %if.else.cleanup_crit_edge, label %if.else.cleanup14_crit_edge

if.else.cleanup14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %if.then3
  %left.1 = phi i32 [ %add4, %if.then3 ], [ %left.036, %if.else.cleanup_crit_edge ]
  %right.1 = phi i32 [ %right.037, %if.then3 ], [ %div28, %if.else.cleanup_crit_edge ]
  %cmp = icmp ult i32 %left.1, %right.1
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup14_crit_edge

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %if.else.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup14_crit_edge ], [ 0, %if.end.cleanup14_crit_edge ], [ 0, %cleanup.cleanup14_crit_edge ], [ 1, %if.else.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_groups(ptr nocapture noundef %new, ptr noundef %group_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group_info1 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 27
  %0 = ptrtoint ptr %group_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group_info1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #9, !srcloc !67
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %group_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group_info1, align 4
  tail call void @kvfree(ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %group_info, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %group_info, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %group_info, ptr %group_info, i32 1, ptr elementtype(i32) %group_info) #9, !srcloc !69
  %6 = ptrtoint ptr %group_info1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %group_info, ptr %group_info1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_current_groups(ptr noundef %group_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prepare_creds() #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %group_info1.i = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 27
  %0 = ptrtoint ptr %group_info1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group_info1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.set_groups.exit_crit_edge

if.end.set_groups.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_groups.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %group_info1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group_info1.i, align 4
  tail call void @kvfree(ptr noundef %4) #9
  br label %set_groups.exit

set_groups.exit:                                  ; preds = %if.then.i, %if.end.set_groups.exit_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %group_info, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %group_info, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %group_info, ptr %group_info, i32 1, ptr elementtype(i32) %group_info) #9, !srcloc !69
  %6 = ptrtoint ptr %group_info1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %group_info, ptr %group_info1.i, align 4
  %call1 = tail call i32 @commit_creds(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %set_groups.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %set_groups.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getgroups(i32 noundef %gidsetsize, i32 noundef %grouplist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %grouplist to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gidsetsize)
  %cmp.i = icmp slt i32 %gidsetsize, 0
  br i1 %cmp.i, label %entry.__do_sys_getgroups.exit_crit_edge, label %if.end.i

entry.__do_sys_getgroups.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getgroups.exit

if.end.i:                                         ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred1.i, align 16
  %group_info.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %group_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group_info.i, align 4
  %ngroups.i = getelementptr inbounds %struct.group_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gidsetsize)
  %tobool.not.i = icmp eq i32 %gidsetsize, 0
  br i1 %tobool.not.i, label %if.end.i.__do_sys_getgroups.exit_crit_edge, label %if.then2.i

if.end.i.__do_sys_getgroups.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getgroups.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %gidsetsize)
  %cmp3.i = icmp sgt i32 %10, %gidsetsize
  br i1 %cmp3.i, label %if.then2.i.__do_sys_getgroups.exit_crit_edge, label %if.end5.i

if.then2.i.__do_sys_getgroups.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getgroups.exit

if.end5.i:                                        ; preds = %if.then2.i
  %user_ns2.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp19.not.i.i, label %if.end5.i.__do_sys_getgroups.exit_crit_edge, label %if.end5.i.for.body.i.i_crit_edge

if.end5.i.for.body.i.i_crit_edge:                 ; preds = %if.end5.i
  br label %for.body.i.i

if.end5.i.__do_sys_getgroups.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getgroups.exit

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.cond.i.i.__do_sys_getgroups.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.__do_sys_getgroups.exit_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getgroups.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end5.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end5.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.group_info, ptr %8, i32 0, i32 2, i32 %i.020.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i.i = load i32, ptr %arrayidx.i.i, align 4
  %14 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call4.i.i = tail call i32 @from_kgid_munged(ptr noundef %12, [1 x i32] %14) #9
  %add.ptr.i.i = getelementptr i32, ptr %0, i32 %i.020.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 47) #9
  %15 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #8, !srcloc !70
  %and.i.i.i = and i32 %17, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr.i.i, i32 %call4.i.i, i32 -1226833921) #9, !srcloc !73
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.__do_sys_getgroups.exit_crit_edge

for.body.i.i.__do_sys_getgroups.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getgroups.exit

__do_sys_getgroups.exit:                          ; preds = %for.body.i.i.__do_sys_getgroups.exit_crit_edge, %for.cond.i.i.__do_sys_getgroups.exit_crit_edge, %if.end5.i.__do_sys_getgroups.exit_crit_edge, %if.then2.i.__do_sys_getgroups.exit_crit_edge, %if.end.i.__do_sys_getgroups.exit_crit_edge, %entry.__do_sys_getgroups.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_getgroups.exit_crit_edge ], [ %10, %if.end.i.__do_sys_getgroups.exit_crit_edge ], [ -22, %if.then2.i.__do_sys_getgroups.exit_crit_edge ], [ 0, %if.end5.i.__do_sys_getgroups.exit_crit_edge ], [ -14, %for.body.i.i.__do_sys_getgroups.exit_crit_edge ], [ %10, %for.cond.i.i.__do_sys_getgroups.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @may_setgroups() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #9
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
  %user_ns2 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns2, align 4
  %call3 = tail call zeroext i1 @ns_capable_setid(ptr noundef %7, i32 noundef 6) #9
  br i1 %call3, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call zeroext i1 @userns_may_setgroups(ptr noundef %7) #9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call4, %land.rhs ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_setid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @userns_may_setgroups(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgroups(i32 noundef %gidsetsize, i32 noundef %grouplist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %grouplist to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i.i, align 16
  %user_ns2.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns2.i.i, align 4
  %call3.i.i = tail call zeroext i1 @ns_capable_setid(ptr noundef %8, i32 noundef 6) #9
  br i1 %call3.i.i, label %may_setgroups.exit.i, label %entry.__do_sys_setgroups.exit_crit_edge

entry.__do_sys_setgroups.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_setgroups.exit

may_setgroups.exit.i:                             ; preds = %entry
  %call4.i.i = tail call zeroext i1 @userns_may_setgroups(ptr noundef %8) #9
  br i1 %call4.i.i, label %if.end.i, label %may_setgroups.exit.i.__do_sys_setgroups.exit_crit_edge

may_setgroups.exit.i.__do_sys_setgroups.exit_crit_edge: ; preds = %may_setgroups.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_setgroups.exit

if.end.i:                                         ; preds = %may_setgroups.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %gidsetsize)
  %cmp.i = icmp ugt i32 %gidsetsize, 65536
  br i1 %cmp.i, label %if.end.i.__do_sys_setgroups.exit_crit_edge, label %if.end3.i

if.end.i.__do_sys_setgroups.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_setgroups.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = shl nuw nsw i32 %gidsetsize, 2
  %spec.select.i.i47.i = add nuw nsw i32 %9, 8
  %call.i.i36.i = tail call noalias ptr @kvmalloc_node(i32 noundef %spec.select.i.i47.i, i32 noundef 4197568, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i36.i, null
  br i1 %tobool.not.i.i, label %if.end3.i.__do_sys_setgroups.exit_crit_edge, label %if.end6.i

if.end3.i.__do_sys_setgroups.exit_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_setgroups.exit

if.end6.i:                                        ; preds = %if.end3.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i36.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %call.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %call.i.i36.i, align 4
  %ngroups.i.i = getelementptr inbounds %struct.group_info, ptr %call.i.i36.i, i32 0, i32 1
  %11 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %gidsetsize, ptr %ngroups.i.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i22.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i22.i.i to ptr
  %task.i37.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i37.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i37.i, align 8
  %cred.i38.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred.i38.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i38.i, align 16
  %user_ns2.i39.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns2.i39.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns2.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gidsetsize)
  %cmp25.not.i.i = icmp eq i32 %gidsetsize, 0
  br i1 %cmp25.not.i.i, label %if.end6.i.if.end13.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %i.026.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 64) #9
  %add.ptr.i.i = getelementptr i32, ptr %0, i32 %i.026.i.i
  %20 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #8, !srcloc !70
  %and.i.i41.i = and i32 %22, -13
  %or.i.i.i = or i32 %and.i.i41.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i.i, i32 -1226833921) #9, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i42.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i42.i, label %if.end.i43.i, label %for.body.i.i.do.body.i_crit_edge

for.body.i.i.do.body.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i43.i:                                     ; preds = %for.body.i.i
  %asmresult5.i.i = extractvalue { i32, i32 } %23, 1
  %call8.i.i = tail call i32 @make_kgid(ptr noundef %19, i32 noundef %asmresult5.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call8.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end.i43.i.do.body.i_crit_edge, label %for.inc.i.i

if.end.i43.i.do.body.i_crit_edge:                 ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc.i.i:                                      ; preds = %if.end.i43.i
  %arrayidx.i.i = getelementptr %struct.group_info, ptr %call.i.i36.i, i32 0, i32 2, i32 %i.026.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call8.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %gidsetsize
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end13.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end13.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

do.body.i:                                        ; preds = %if.end.i43.i.do.body.i_crit_edge, %for.body.i.i.do.body.i_crit_edge
  %retval.2.i.i = phi i32 [ -22, %if.end.i43.i.do.body.i_crit_edge ], [ -14, %for.body.i.i.do.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i36.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i36.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i36.i, ptr nonnull %call.i.i36.i, i32 1, ptr nonnull elementtype(i32) %call.i.i36.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %do.body.i.__do_sys_setgroups.exit_crit_edge

do.body.i.__do_sys_setgroups.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_setgroups.exit

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %for.inc.i.i.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  %gid.i.i = getelementptr inbounds %struct.group_info, ptr %call.i.i36.i, i32 0, i32 2
  %26 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ngroups.i.i, align 4
  tail call void @sort(ptr noundef %gid.i.i, i32 noundef %27, i32 noundef 4, ptr noundef nonnull @gid_cmp, ptr noundef null) #9
  %call14.i = tail call i32 @set_current_groups(ptr noundef nonnull %call.i.i36.i) #9
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i36.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i36.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i36.i, ptr nonnull %call.i.i36.i, i32 1, ptr nonnull elementtype(i32) %call.i.i36.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i34.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i34.i)
  %cmp.i.i35.i = icmp eq i32 %asmresult.i.i.i.i.i34.i, 0
  br i1 %cmp.i.i35.i, label %if.end13.i.cleanup.sink.split.i_crit_edge, label %if.end13.i.__do_sys_setgroups.exit_crit_edge

if.end13.i.__do_sys_setgroups.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_setgroups.exit

if.end13.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %retval.2.i.i, %do.body.i.cleanup.sink.split.i_crit_edge ], [ %call14.i, %if.end13.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i36.i) #9
  br label %__do_sys_setgroups.exit

__do_sys_setgroups.exit:                          ; preds = %cleanup.sink.split.i, %if.end13.i.__do_sys_setgroups.exit_crit_edge, %do.body.i.__do_sys_setgroups.exit_crit_edge, %if.end3.i.__do_sys_setgroups.exit_crit_edge, %if.end.i.__do_sys_setgroups.exit_crit_edge, %may_setgroups.exit.i.__do_sys_setgroups.exit_crit_edge, %entry.__do_sys_setgroups.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %may_setgroups.exit.i.__do_sys_setgroups.exit_crit_edge ], [ -22, %if.end.i.__do_sys_setgroups.exit_crit_edge ], [ %retval.2.i.i, %do.body.i.__do_sys_setgroups.exit_crit_edge ], [ %call14.i, %if.end13.i.__do_sys_setgroups.exit_crit_edge ], [ -1, %entry.__do_sys_setgroups.exit_crit_edge ], [ -12, %if.end3.i.__do_sys_setgroups.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @in_group_p([1 x i32] %grp.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %fsgid, align 4
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %grp.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack)
  %cmp.i = icmp eq i32 %gid.coerce.fca.0.extract.i.i, %.unpack
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %group_info = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 27
  %7 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group_info, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %ngroups.i = getelementptr inbounds %struct.group_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp35.not.i = icmp eq i32 %10, 0
  br i1 %cmp35.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %right.037.i = phi i32 [ %right.1.i, %cleanup.i.while.body.i_crit_edge ], [ %10, %if.end.i.while.body.i_crit_edge ]
  %left.036.i = phi i32 [ %left.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %add.i = add i32 %left.036.i, %right.037.i
  %div28.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.group_info, ptr %8, i32 0, i32 2, i32 %div28.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack.i)
  %cmp.i.i = icmp ugt i32 %gid.coerce.fca.0.extract.i.i, %.unpack.i
  br i1 %cmp.i.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add4.i = add nuw i32 %div28.i, 1
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack.i)
  %cmp.i31.i = icmp ult i32 %gid.coerce.fca.0.extract.i.i, %.unpack.i
  br i1 %cmp.i31.i, label %if.else.i.cleanup.i_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i.cleanup.i_crit_edge, %if.then3.i
  %left.1.i = phi i32 [ %add4.i, %if.then3.i ], [ %left.036.i, %if.else.i.cleanup.i_crit_edge ]
  %right.1.i = phi i32 [ %right.037.i, %if.then3.i ], [ %div28.i, %if.else.i.cleanup.i_crit_edge ]
  %cmp.i13 = icmp ult i32 %left.1.i, %right.1.i
  br i1 %cmp.i13, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %retval2.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ 1, %if.else.i.if.end_crit_edge ], [ 0, %cleanup.i.if.end_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @in_egroup_p([1 x i32] %grp.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %egid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %egid, align 4
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %grp.coerce, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack)
  %cmp.i = icmp eq i32 %gid.coerce.fca.0.extract.i.i, %.unpack
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %group_info = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 27
  %7 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group_info, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %ngroups.i = getelementptr inbounds %struct.group_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp35.not.i = icmp eq i32 %10, 0
  br i1 %cmp35.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %right.037.i = phi i32 [ %right.1.i, %cleanup.i.while.body.i_crit_edge ], [ %10, %if.end.i.while.body.i_crit_edge ]
  %left.036.i = phi i32 [ %left.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %add.i = add i32 %left.036.i, %right.037.i
  %div28.i = lshr i32 %add.i, 1
  %arrayidx.i = getelementptr %struct.group_info, ptr %8, i32 0, i32 2, i32 %div28.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack.i)
  %cmp.i.i = icmp ugt i32 %gid.coerce.fca.0.extract.i.i, %.unpack.i
  br i1 %cmp.i.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add4.i = add nuw i32 %div28.i, 1
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack.i)
  %cmp.i31.i = icmp ult i32 %gid.coerce.fca.0.extract.i.i, %.unpack.i
  br i1 %cmp.i31.i, label %if.else.i.cleanup.i_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i.cleanup.i_crit_edge, %if.then3.i
  %left.1.i = phi i32 [ %add4.i, %if.then3.i ], [ %left.036.i, %if.else.i.cleanup.i_crit_edge ]
  %right.1.i = phi i32 [ %right.037.i, %if.then3.i ], [ %div28.i, %if.else.i.cleanup.i_crit_edge ]
  %cmp.i13 = icmp ult i32 %left.1.i, %right.1.i
  br i1 %cmp.i13, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %retval2.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ 1, %if.else.i.if.end_crit_edge ], [ 0, %cleanup.i.if.end_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_groups_alloc, !1, !"__ksymtab_groups_alloc", i1 false, i1 false}
!1 = !{!"../kernel/groups.c", i32 27, i32 1}
!2 = !{ptr @__ksymtab_groups_free, !3, !"__ksymtab_groups_free", i1 false, i1 false}
!3 = !{!"../kernel/groups.c", i32 34, i32 1}
!4 = !{ptr @__ksymtab_groups_sort, !5, !"__ksymtab_groups_sort", i1 false, i1 false}
!5 = !{!"../kernel/groups.c", i32 89, i32 1}
!6 = !{ptr @__ksymtab_set_groups, !7, !"__ksymtab_set_groups", i1 false, i1 false}
!7 = !{!"../kernel/groups.c", i32 125, i32 1}
!8 = !{ptr @__ksymtab_set_current_groups, !9, !"__ksymtab_set_current_groups", i1 false, i1 false}
!9 = !{!"../kernel/groups.c", i32 146, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/groups.c", i32 148, i32 1}
!12 = !{ptr @event_enter__getgroups, !11, !"event_enter__getgroups", i1 false, i1 false}
!13 = !{ptr @__event_enter__getgroups, !11, !"__event_enter__getgroups", i1 false, i1 false}
!14 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__getgroups, !11, !"event_exit__getgroups", i1 false, i1 false}
!16 = !{ptr @__event_exit__getgroups, !11, !"__event_exit__getgroups", i1 false, i1 false}
!17 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__getgroups, !11, !"__syscall_meta__getgroups", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__getgroups, !11, !"__p_syscall_meta__getgroups", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../kernel/groups.c", i32 174, i32 35}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/groups.c", i32 185, i32 1}
!24 = !{ptr @event_enter__setgroups, !23, !"event_enter__setgroups", i1 false, i1 false}
!25 = !{ptr @__event_enter__setgroups, !23, !"__event_enter__setgroups", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__setgroups, !23, !"event_exit__setgroups", i1 false, i1 false}
!28 = !{ptr @__event_exit__setgroups, !23, !"__event_exit__setgroups", i1 false, i1 false}
!29 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__setgroups, !23, !"__syscall_meta__setgroups", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__setgroups, !23, !"__p_syscall_meta__setgroups", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../kernel/groups.c", i32 216, i32 28}
!34 = !{ptr @__ksymtab_in_group_p, !35, !"__ksymtab_in_group_p", i1 false, i1 false}
!35 = !{!"../kernel/groups.c", i32 224, i32 1}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../kernel/groups.c", i32 228, i32 28}
!38 = !{ptr @__ksymtab_in_egroup_p, !39, !"__ksymtab_in_egroup_p", i1 false, i1 false}
!39 = !{!"../kernel/groups.c", i32 236, i32 1}
!40 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @types__getgroups, !11, !"types__getgroups", i1 false, i1 false}
!43 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @args__getgroups, !11, !"args__getgroups", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../kernel/groups.c", i32 150, i32 28}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../kernel/groups.c", i32 40, i32 35}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/groups.c", i32 47, i32 7}
!52 = !{ptr @types__setgroups, !23, !"types__setgroups", i1 false, i1 false}
!53 = !{ptr @args__setgroups, !23, !"args__setgroups", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../kernel/groups.c", i32 57, i32 35}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148484834}
!67 = !{i64 2148399543, i64 2148399575, i64 2148399604, i64 2148399638, i64 2148399669, i64 2148399692}
!68 = !{i64 2148485063}
!69 = !{i64 2148396358, i64 2148396384, i64 2148396413, i64 2148396447, i64 2148396478, i64 2148396501}
!70 = !{i64 5220507}
!71 = !{i64 5220704}
!72 = !{i64 2152705937}
!73 = !{i64 2154889117, i64 2154889397, i64 2154889731, i64 2154890065}
!74 = !{i64 2154901530, i64 2154901810, i64 2154902144, i64 2154902478}
