; ModuleID = '/llk/IR_all_yes/fs/fcntl.c_pt.bc'
source_filename = "../fs/fcntl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__f_setown\22, \22a\22\09"
module asm "\09.weak\09__crc___f_setown\09\09\09\09"
module asm "\09.long\09__crc___f_setown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22__f_setown\22\09\09\09\09\09"
module asm "__kstrtabns___f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+f_setown\22, \22a\22\09"
module asm "\09.weak\09__crc_f_setown\09\09\09\09"
module asm "\09.long\09__crc_f_setown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22f_setown\22\09\09\09\09\09"
module asm "__kstrtabns_f_setown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fasync_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_fasync_helper\09\09\09\09"
module asm "\09.long\09__crc_fasync_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fasync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22fasync_helper\22\09\09\09\09\09"
module asm "__kstrtabns_fasync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kill_fasync\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_fasync\09\09\09\09"
module asm "\09.long\09__crc_kill_fasync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_fasync:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_fasync\22\09\09\09\09\09"
module asm "__kstrtabns_kill_fasync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.80 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.flock64 = type { i16, i16, i64, i64, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i32, i32 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, ptr, ptr, %struct.callback_head }
%struct.f_owner_ex = type { i32, i32 }
%struct.flock = type { i16, i16, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.92, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.93, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.94, ptr, %struct.address_space, %struct.list_head, %union.anon.97, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.93 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.94 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.97 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab___f_setown = external dso_local constant [0 x i8], align 1
@__kstrtabns___f_setown = external dso_local constant [0 x i8], align 1
@__ksymtab___f_setown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__f_setown to i32), ptr @__kstrtab___f_setown, ptr @__kstrtabns___f_setown }, section "___ksymtab+__f_setown", align 4
@__kstrtab_f_setown = external dso_local constant [0 x i8], align 1
@__kstrtabns_f_setown = external dso_local constant [0 x i8], align 1
@__ksymtab_f_setown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @f_setown to i32), ptr @__kstrtab_f_setown, ptr @__kstrtabns_f_setown }, section "___ksymtab+f_setown", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_fcntl\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__fcntl = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__fcntl, ptr @args__fcntl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fcntl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fcntl, i64 20) }, ptr @event_enter__fcntl, ptr @event_exit__fcntl }, align 4
@event_enter__fcntl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fcntl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fcntl = internal global ptr @event_enter__fcntl, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_fcntl\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__fcntl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fcntl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fcntl = internal global ptr @event_exit__fcntl, section "_ftrace_events", align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_fcntl\00", [22 x i8] zeroinitializer }, align 32
@types__fcntl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.13, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@args__fcntl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fcntl = internal global ptr @__syscall_meta__fcntl, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_fcntl64\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__fcntl64 = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__fcntl64, ptr @args__fcntl64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fcntl64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fcntl64, i64 20) }, ptr @event_enter__fcntl64, ptr @event_exit__fcntl64 }, align 4
@event_enter__fcntl64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fcntl64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fcntl64 = internal global ptr @event_enter__fcntl64, section "_ftrace_events", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_fcntl64\00", [47 x i8] zeroinitializer }, align 32
@event_exit__fcntl64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__fcntl64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fcntl64 = internal global ptr @event_exit__fcntl64, section "_ftrace_events", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_fcntl64\00", [20 x i8] zeroinitializer }, align 32
@types__fcntl64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.13, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@args__fcntl64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fcntl64 = internal global ptr @__syscall_meta__fcntl64, section "__syscalls_metadata", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@send_sigio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/fcntl.c\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@send_sigurg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fasync_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@fasync_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@fasync_insert_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&new->fa_lock\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_fasync_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_fasync_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_fasync_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fasync_helper to i32), ptr @__kstrtab_fasync_helper, ptr @__kstrtabns_fasync_helper }, section "___ksymtab+fasync_helper", align 4
@kill_fasync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_kill_fasync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_fasync = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_fasync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_fasync to i32), ptr @__kstrtab_kill_fasync, ptr @__kstrtabns_kill_fasync }, section "___ksymtab+kill_fasync", align 4
@__initcall__kmod_fcntl__280_1059_fcntl_init6 = internal global ptr @fcntl_init, section ".initcall6.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arg\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@band_table = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 65, i32 772, i32 1089, i32 8, i32 130, i32 24], [40 x i8] zeroinitializer }, align 32
@sigio_perm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fasync_lock\00", [20 x i8] zeroinitializer }, align 32
@kill_fasync_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013kill_fasync: bad magic number in fasync_struct!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kill_fasync_rcu\00", [16 x i8] zeroinitializer }, align 32
@kill_fasync_rcu._entry_ptr = internal global ptr @kill_fasync_rcu._entry, section ".printk_index", align 4
@kill_fasync_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fasync_cache\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 1030]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 1030]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 12, i64 13, i64 14, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.27 = internal global [29 x i64] [i64 27, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 15, i64 16, i64 17, i64 1024, i64 1025, i64 1026, i64 1030, i64 1031, i64 1032, i64 1033, i64 1034, i64 1035, i64 1036, i64 1037, i64 1038]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 1035, i64 1036, i64 1037, i64 1038]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"event_enter__fcntl\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"event_exit__fcntl\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"types__fcntl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"args__fcntl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"event_enter__fcntl64\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"event_exit__fcntl64\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"types__fcntl64\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"args__fcntl64\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 481, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 811, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"fasync_lock\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 944, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1035, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 695, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 457, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 156, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"band_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 708, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 862, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1010, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [14 x i8] c"../fs/fcntl.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1053, i32 35 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__event_enter__fcntl, ptr @__event_enter__fcntl64, ptr @__event_exit__fcntl, ptr @__event_exit__fcntl64, ptr @__initcall__kmod_fcntl__280_1059_fcntl_init6, ptr @__ksymtab___f_setown, ptr @__ksymtab_f_setown, ptr @__ksymtab_fasync_helper, ptr @__ksymtab_kill_fasync, ptr @__p_syscall_meta__fcntl, ptr @__p_syscall_meta__fcntl64, ptr @__syscall_meta__fcntl, ptr @__syscall_meta__fcntl64, ptr @event_enter__fcntl, ptr @event_enter__fcntl64, ptr @event_exit__fcntl, ptr @event_exit__fcntl64, ptr @kill_fasync_rcu._entry, ptr @kill_fasync_rcu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__fcntl, ptr @args__fcntl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__fcntl64, ptr @args__fcntl64, ptr @.str.6, ptr @.str.7, ptr @fasync_lock, ptr @fasync_insert_entry.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @band_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fcntl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fcntl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fcntl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fcntl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fcntl64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fcntl64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fcntl64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fcntl64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fasync_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fasync_insert_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @band_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kill_fasync_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_fcntl = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fcntl
@sys_fcntl64 = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fcntl64

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__f_setown(ptr noundef %filp, ptr noundef %pid, i32 noundef %type, i32 noundef %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_file_set_fowner(ptr noundef %filp) #8
  tail call fastcc void @f_modown(ptr noundef %filp, ptr noundef %pid, i32 noundef %type, i32 noundef %force)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_file_set_fowner(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f_modown(ptr noundef %filp, ptr noundef %pid, i32 noundef %type, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_owner = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11
  tail call void @_raw_write_lock_irq(ptr noundef %f_owner) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %pid2 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %pid2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid2, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %pid5 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %pid5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid5, align 4
  tail call void @put_pid(ptr noundef %3) #8
  %tobool.not.i = icmp eq ptr %pid, null
  br i1 %tobool.not.i, label %get_pid.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #8, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then10_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then10_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i.i) #8
  br label %if.then10

get_pid.exit:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pid5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pid5, align 4
  %pid_type = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %pid_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %pid_type, align 8
  br label %if.end17

if.then10:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then10_crit_edge
  %8 = ptrtoint ptr %pid5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pid, ptr %pid5, align 4
  %pid_type29 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 2
  %9 = ptrtoint ptr %pid_type29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %pid_type29, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred12 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred12, align 16
  %uid = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 3
  %uid14 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %uid14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uid14, align 4
  %18 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %uid, align 4
  %euid = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 4
  %euid16 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 8
  %19 = ptrtoint ptr %euid16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %euid16, align 4
  %21 = ptrtoint ptr %euid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %euid, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %get_pid.exit, %lor.lhs.false.if.end17_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %f_owner) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f_setown(ptr noundef %filp, i32 noundef %arg, i32 noundef %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp = icmp slt i32 %arg, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %arg)
  %cmp1 = icmp eq i32 %arg, -2147483648
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub nsw i32 0, %arg
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %type.0 = phi i32 [ 2, %if.end ], [ 1, %entry.if.end3_crit_edge ]
  %who.0 = phi i32 [ %sub, %if.end ], [ %arg, %entry.if.end3_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who.0)
  %tobool.not = icmp eq i32 %who.0, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.if.then10_crit_edge, label %if.then4

rcu_read_lock.exit.if.then10_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then4:                                         ; preds = %rcu_read_lock.exit
  %call = tail call ptr @find_vpid(i32 noundef %who.0) #8
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then4.if.end11_crit_edge, label %if.then4.if.then10_crit_edge

if.then4.if.then10_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.then4.if.then10_crit_edge, %rcu_read_lock.exit.if.then10_crit_edge
  %pid.0.ph = phi ptr [ null, %rcu_read_lock.exit.if.then10_crit_edge ], [ %call, %if.then4.if.then10_crit_edge ]
  tail call void @security_file_set_fowner(ptr noundef %filp) #8
  tail call fastcc void @f_modown(ptr noundef %filp, ptr noundef %pid.0.ph, i32 noundef %type.0, i32 noundef %force) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then4.if.end11_crit_edge
  %ret.034 = phi i32 [ 0, %if.then10 ], [ -3, %if.then4.if.end11_crit_edge ]
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i21, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end11
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %4 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i28 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.034, %rcu_read_unlock.exit ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f_delown(ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_owner.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11
  tail call void @_raw_write_lock_irq(ptr noundef %f_owner.i) #8
  %pid5.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %pid5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid5.i, align 4
  tail call void @put_pid(ptr noundef %1) #8
  %2 = ptrtoint ptr %pid5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pid5.i, align 4
  %pid_type.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %pid_type.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %pid_type.i, align 8
  tail call void @_raw_write_unlock_irq(ptr noundef %f_owner.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f_getown(ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_owner = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11
  tail call void @_raw_read_lock_irq(ptr noundef %f_owner) #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pid2 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %pid2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pid2, align 4
  %pid_type = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %pid_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid_type, align 8
  %call = tail call ptr @pid_task(ptr noundef %5, i32 noundef %7) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end10_crit_edge, label %if.then

rcu_read_lock.exit.if.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pid2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pid2, align 4
  %call6 = tail call i32 @pid_vnr(ptr noundef %9) #8
  %10 = ptrtoint ptr %pid_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  %sub = sub i32 0, %call6
  %spec.select = select i1 %cmp, i32 %sub, i32 %call6
  br label %if.end10

if.end10:                                         ; preds = %if.then, %rcu_read_lock.exit.if.end10_crit_edge
  %pid.0 = phi i32 [ 0, %rcu_read_lock.exit.if.end10_crit_edge ], [ %spec.select, %if.then ]
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i19, label %if.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

if.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %if.end10
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %if.end10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %12 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i26 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @_raw_read_unlock_irq(ptr noundef %f_owner) #8
  ret i32 %pid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fcntl(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget_raw(i32 noundef %fd) #8, !noalias !102
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fcntl.exit_crit_edge, label %if.end.i

entry.__do_sys_fcntl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_fcntl.exit

if.end.i:                                         ; preds = %entry
  %f_mode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i, !prof !99

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then5.i.out1.i_crit_edge [
    i32 0, label %if.then5.i.if.end9.i_crit_edge
    i32 1030, label %if.then5.i.if.end9.i_crit_edge1
    i32 1, label %if.then5.i.if.end9.i_crit_edge2
    i32 2, label %if.then5.i.if.end9.i_crit_edge3
    i32 3, label %if.then5.i.if.end9.i_crit_edge4
  ]

if.then5.i.if.end9.i_crit_edge4:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge3:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge2:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge1:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.out1.i_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1.i

if.end9.i:                                        ; preds = %if.then5.i.if.end9.i_crit_edge, %if.then5.i.if.end9.i_crit_edge1, %if.then5.i.if.end9.i_crit_edge2, %if.then5.i.if.end9.i_crit_edge3, %if.then5.i.if.end9.i_crit_edge4, %if.end.i.if.end9.i_crit_edge
  %call11.i = tail call i32 @security_file_fcntl(ptr noundef nonnull %0, i32 noundef %cmd, i32 noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.out1.i_crit_edge

if.end9.i.out1.i_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call fastcc i32 @do_fcntl(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg, ptr noundef nonnull %0) #8
  br label %out1.i

out1.i:                                           ; preds = %if.then13.i, %if.end9.i.out1.i_crit_edge, %if.then5.i.out1.i_crit_edge
  %err.0.i = phi i32 [ %call11.i, %if.end9.i.out1.i_crit_edge ], [ %call15.i, %if.then13.i ], [ -9, %if.then5.i.out1.i_crit_edge ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out1.i.__do_sys_fcntl.exit_crit_edge, label %if.then.i.i

out1.i.__do_sys_fcntl.exit_crit_edge:             ; preds = %out1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_fcntl.exit

if.then.i.i:                                      ; preds = %out1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %0) #8
  br label %__do_sys_fcntl.exit

__do_sys_fcntl.exit:                              ; preds = %if.then.i.i, %out1.i.__do_sys_fcntl.exit_crit_edge, %entry.__do_sys_fcntl.exit_crit_edge
  %err.1.i = phi i32 [ -9, %entry.__do_sys_fcntl.exit_crit_edge ], [ %err.0.i, %out1.i.__do_sys_fcntl.exit_crit_edge ], [ %err.0.i, %if.then.i.i ]
  ret i32 %err.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fcntl64(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %flock.i = alloca %struct.flock64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call.i.i = tail call i32 @__fdget_raw(i32 noundef %fd) #8, !noalias !105
  %and.i.i.i = and i32 %call.i.i, -4
  %1 = inttoptr i32 %and.i.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %flock.i) #8
  %2 = call ptr @memset(ptr %flock.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fcntl64.exit_crit_edge, label %if.end.i

entry.__do_sys_fcntl64.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_fcntl64.exit

if.end.i:                                         ; preds = %entry
  %f_mode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i, !prof !99

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %if.then5.i.out1.i_crit_edge [
    i32 0, label %if.then5.i.if.end9.i_crit_edge
    i32 1030, label %if.then5.i.if.end9.i_crit_edge1
    i32 1, label %if.then5.i.if.end9.i_crit_edge2
    i32 2, label %if.then5.i.if.end9.i_crit_edge3
    i32 3, label %if.then5.i.if.end9.i_crit_edge4
  ]

if.then5.i.if.end9.i_crit_edge4:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge3:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge2:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge1:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i.out1.i_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1.i

if.end9.i:                                        ; preds = %if.then5.i.if.end9.i_crit_edge, %if.then5.i.if.end9.i_crit_edge1, %if.then5.i.if.end9.i_crit_edge2, %if.then5.i.if.end9.i_crit_edge3, %if.then5.i.if.end9.i_crit_edge4, %if.end.i.if.end9.i_crit_edge
  %call11.i = tail call i32 @security_file_fcntl(ptr noundef nonnull %1, i32 noundef %cmd, i32 noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.out1.i_crit_edge

if.end9.i.out1.i_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1.i

if.end14.i:                                       ; preds = %if.end9.i
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %sw.default.i [
    i32 12, label %if.end14.i.if.end59.i.i.i_crit_edge
    i32 36, label %if.end14.i.if.end59.i.i.i_crit_edge5
    i32 13, label %if.end14.i.if.end59.i.i61.i_crit_edge
    i32 14, label %if.end14.i.if.end59.i.i61.i_crit_edge6
    i32 37, label %if.end14.i.if.end59.i.i61.i_crit_edge7
    i32 38, label %if.end14.i.if.end59.i.i61.i_crit_edge8
  ]

if.end14.i.if.end59.i.i61.i_crit_edge8:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i61.i

if.end14.i.if.end59.i.i61.i_crit_edge7:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i61.i

if.end14.i.if.end59.i.i61.i_crit_edge6:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i61.i

if.end14.i.if.end59.i.i61.i_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i61.i

if.end14.i.if.end59.i.i.i_crit_edge5:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i.i

if.end14.i.if.end59.i.i.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i.i

if.end59.i.i.i:                                   ; preds = %if.end14.i.if.end59.i.i.i_crit_edge, %if.end14.i.if.end59.i.i.i_crit_edge5
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 32, i32 -1226833920) #11
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !99

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flock.i, i32 noundef 32) #8
  %8 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !108
  %and.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flock.i, ptr noundef %0, i32 noundef 32) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end18.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !99

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i89.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i89.i
  %add.ptr.i.i.i = getelementptr i8, ptr %flock.i, i32 %sub.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i89.i)
  br label %out1.i

if.end18.i:                                       ; preds = %if.end.i.i.i
  %call20.i = call i32 @fcntl_getlk64(ptr noundef nonnull %1, i32 noundef %cmd, ptr noundef nonnull %flock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end59.i.i51.i, label %if.end18.i.out1.i_crit_edge

if.end18.i.out1.i_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1.i

if.end59.i.i51.i:                                 ; preds = %if.end18.i
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #8
  %call.i.i52.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i52.i, label %if.end59.i.i51.i.out1.i_crit_edge, label %copy_to_user.exit.i

if.end59.i.i51.i.out1.i_crit_edge:                ; preds = %if.end59.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out1.i

copy_to_user.exit.i:                              ; preds = %if.end59.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i56.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %flock.i, i32 noundef 32) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %flock.i, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool23.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool23.not.i, i32 0, i32 -14
  br label %out1.i

if.end59.i.i61.i:                                 ; preds = %if.end14.i.if.end59.i.i61.i_crit_edge, %if.end14.i.if.end59.i.i61.i_crit_edge6, %if.end14.i.if.end59.i.i61.i_crit_edge7, %if.end14.i.if.end59.i.i61.i_crit_edge8
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i62.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i62.i, label %if.end59.i.i61.i.if.then11.i.i78.i_crit_edge, label %land.lhs.true.i.i65.i

if.end59.i.i61.i.if.then11.i.i78.i_crit_edge:     ; preds = %if.end59.i.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i78.i

land.lhs.true.i.i65.i:                            ; preds = %if.end59.i.i61.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 32, i32 -1226833920) #11, !srcloc !111
  %asmresult.i.i63.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i63.i)
  %cmp.i6.i64.i = icmp eq i32 %asmresult.i.i63.i, 0
  br i1 %cmp.i6.i64.i, label %if.end.i.i75.i, label %land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge, !prof !99

land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge: ; preds = %land.lhs.true.i.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i78.i

if.end.i.i75.i:                                   ; preds = %land.lhs.true.i.i65.i
  %call.i.i.i66.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flock.i, i32 noundef 32) #8
  %13 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i67.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i67.i to ptr
  %cpu_domain.i.i.i.i.i68.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i68.i) #5, !srcloc !108
  %and.i.i.i.i69.i = and i32 %15, -13
  %or.i.i.i.i70.i = or i32 %and.i.i.i.i69.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i70.i) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i71.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flock.i, ptr noundef %0, i32 noundef 32) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i71.i)
  %tobool4.not.i.i74.i = icmp eq i32 %call1.i.i.i71.i, 0
  br i1 %tobool4.not.i.i74.i, label %if.end30.i, label %if.end.i.i75.i.if.then11.i.i78.i_crit_edge, !prof !99

if.end.i.i75.i.if.then11.i.i78.i_crit_edge:       ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i78.i

if.then11.i.i78.i:                                ; preds = %if.end.i.i75.i.if.then11.i.i78.i_crit_edge, %land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge, %if.end59.i.i61.i.if.then11.i.i78.i_crit_edge
  %res.0.i.i7396.i = phi i32 [ %call1.i.i.i71.i, %if.end.i.i75.i.if.then11.i.i78.i_crit_edge ], [ 32, %if.end59.i.i61.i.if.then11.i.i78.i_crit_edge ], [ 32, %land.lhs.true.i.i65.i.if.then11.i.i78.i_crit_edge ]
  %sub.i.i76.i = sub i32 32, %res.0.i.i7396.i
  %add.ptr.i.i77.i = getelementptr i8, ptr %flock.i, i32 %sub.i.i76.i
  %16 = call ptr @memset(ptr %add.ptr.i.i77.i, i32 0, i32 %res.0.i.i7396.i)
  br label %out1.i

if.end30.i:                                       ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = call i32 @fcntl_setlk64(i32 noundef %fd, ptr noundef nonnull %1, i32 noundef %cmd, ptr noundef nonnull %flock.i) #8
  br label %out1.i

sw.default.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call fastcc i32 @do_fcntl(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg, ptr noundef nonnull %1) #8
  br label %out1.i

out1.i:                                           ; preds = %sw.default.i, %if.end30.i, %if.then11.i.i78.i, %copy_to_user.exit.i, %if.end59.i.i51.i.out1.i_crit_edge, %if.end18.i.out1.i_crit_edge, %if.then11.i.i.i, %if.end9.i.out1.i_crit_edge, %if.then5.i.out1.i_crit_edge
  %err.0.i = phi i32 [ %call11.i, %if.end9.i.out1.i_crit_edge ], [ %call34.i, %sw.default.i ], [ %call32.i, %if.end30.i ], [ %call20.i, %if.end18.i.out1.i_crit_edge ], [ -9, %if.then5.i.out1.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i51.i.out1.i_crit_edge ], [ -14, %if.then11.i.i78.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out1.i.__do_sys_fcntl64.exit_crit_edge, label %if.then.i.i

out1.i.__do_sys_fcntl64.exit_crit_edge:           ; preds = %out1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_fcntl64.exit

if.then.i.i:                                      ; preds = %out1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @fput(ptr noundef nonnull %1) #8
  br label %__do_sys_fcntl64.exit

__do_sys_fcntl64.exit:                            ; preds = %if.then.i.i, %out1.i.__do_sys_fcntl64.exit_crit_edge, %entry.__do_sys_fcntl64.exit_crit_edge
  %err.1.i = phi i32 [ -9, %entry.__do_sys_fcntl64.exit_crit_edge ], [ %err.0.i, %out1.i.__do_sys_fcntl64.exit_crit_edge ], [ %err.0.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %flock.i) #8
  ret i32 %err.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @send_sigio(ptr noundef %fown, i32 noundef %fd, i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %fown) #8
  %pid_type = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 2
  %0 = ptrtoint ptr %pid_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid_type, align 4
  %pid1 = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 1
  %2 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body58_crit_edge, label %if.end

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp ult i32 %1, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %call5 = tail call ptr @pid_task(ptr noundef nonnull %3, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %rcu_read_lock.exit.if.end8_crit_edge, label %if.then7

rcu_read_lock.exit.if.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @send_sigio_to_task(ptr noundef nonnull %call5, ptr noundef %fown, i32 noundef %fd, i32 noundef %band, i32 noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %rcu_read_lock.exit.if.end8_crit_edge
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i95, label %if.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i98

if.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i98:                                ; preds = %if.end8
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, %if.end8.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %8 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i102 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %do.body58

if.else:                                          ; preds = %if.end
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #8
  %call14 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.else.do.end23_crit_edge

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

land.lhs.true:                                    ; preds = %if.else
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b94 = load i1, ptr @send_sigio.__warned, align 1
  br i1 %.b94, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @send_sigio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 811, ptr noundef nonnull @.str.7) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true.do.end23_crit_edge, %if.else.do.end23_crit_edge
  %arrayidx = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 %1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %13, null
  %.neg93 = mul i32 %1, -8
  %idx.neg = add i32 %.neg93, -1364
  %add.ptr = getelementptr i8, ptr %13, i32 %idx.neg
  %tobool32.not106108 = icmp eq ptr %add.ptr, null
  %tobool32.not106 = select i1 %tobool30.not, i1 true, i1 %tobool32.not106108
  br i1 %tobool32.not106, label %do.end23.do.end56_crit_edge, label %do.end23.for.body_crit_edge

do.end23.for.body_crit_edge:                      ; preds = %do.end23
  br label %for.body

do.end23.do.end56_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end23.for.body_crit_edge
  %p.0107 = phi ptr [ %add.ptr50, %for.body.for.body_crit_edge ], [ %add.ptr, %do.end23.for.body_crit_edge ]
  tail call fastcc void @send_sigio_to_task(ptr noundef nonnull %p.0107, ptr noundef %fown, i32 noundef %fd, i32 noundef %band, i32 noundef %1)
  %arrayidx42 = getelementptr %struct.task_struct, ptr %p.0107, i32 0, i32 79, i32 %1
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx42, align 4
  %tobool45.not = icmp eq ptr %15, null
  %add.ptr50 = getelementptr i8, ptr %15, i32 %idx.neg
  %tobool32.not109 = icmp eq ptr %add.ptr50, null
  %tobool32.not = select i1 %tobool45.not, i1 true, i1 %tobool32.not109
  br i1 %tobool32.not, label %for.body.do.end56_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.do.end56_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end56:                                         ; preds = %for.body.do.end56_crit_edge, %do.end23.do.end56_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #8
  br label %do.body58

do.body58:                                        ; preds = %do.end56, %rcu_read_unlock.exit, %entry.do.body58_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %fown, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_sigio_to_task(ptr noundef %p, ptr noundef %fown, i32 noundef %fd, i32 noundef %reason, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.kernel_siginfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %signum1 = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 5
  %0 = ptrtoint ptr %signum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %signum1, align 4
  %call = tail call fastcc i32 @sigio_perm(ptr noundef %p, ptr noundef %fown, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %if.end.sw.bb_crit_edge, label %sw.default

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.default:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %si) #8
  %2 = getelementptr inbounds %struct.anon.41, ptr %si, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.41, ptr %si, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.41, ptr %si, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon.41, ptr %si, i32 0, i32 3, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %si, i32 20
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %8 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %si, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %reason, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %1)
  %cmp.not = icmp ne i32 %1, 29
  %11 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %11)
  %12 = icmp ult i32 %11, 31
  %13 = and i1 %cmp.not, %12
  br i1 %13, label %land.lhs.true5, label %sw.default.do.body10_crit_edge

sw.default.do.body10_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

land.lhs.true5:                                   ; preds = %sw.default
  %shl = shl nuw nsw i32 1, %11
  %and = and i32 %shl, 1342244056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true5.do.body10_crit_edge, label %if.then7

land.lhs.true5.do.body10_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -5, ptr %3, align 4
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %land.lhs.true5.do.body10_crit_edge, %sw.default.do.body10_crit_edge
  %15 = add i32 %reason, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %15)
  %16 = icmp ult i32 %15, -6
  br i1 %16, label %do.body17, label %if.end33, !prof !98

do.body17:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fcntl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 774, 0\0A.popsection", ""() #8, !srcloc !112
  unreachable

if.end33:                                         ; preds = %do.body10
  %sub12 = add nsw i32 %reason, -1
  %arrayidx = getelementptr [6 x i32], ptr @band_table, i32 0, i32 %sub12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %conv45.i = and i32 %18, 10239
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv45.i, ptr %4, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %fd, ptr %5, align 4
  %call35 = call i32 @do_send_sig_info(i32 noundef %1, ptr noundef nonnull %si, ptr noundef %p, i32 noundef %type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %si) #8
  br i1 %tobool36.not, label %if.end33.cleanup40_crit_edge, label %if.end33.sw.bb_crit_edge

if.end33.sw.bb_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end33.cleanup40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

sw.bb:                                            ; preds = %if.end33.sw.bb_crit_edge, %if.end.sw.bb_crit_edge
  %call39 = call i32 @do_send_sig_info(i32 noundef 29, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %p, i32 noundef %type) #8
  br label %cleanup40

cleanup40:                                        ; preds = %sw.bb, %if.end33.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @send_sigurg(ptr noundef %fown) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %fown) #8
  %pid_type = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 2
  %0 = ptrtoint ptr %pid_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid_type, align 4
  %pid1 = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 1
  %2 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body58_crit_edge, label %if.end

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp ult i32 %1, 2
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_lock.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then4.rcu_read_lock.exit_crit_edge
  %call5 = tail call ptr @pid_task(ptr noundef nonnull %3, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %rcu_read_lock.exit.if.end8_crit_edge, label %if.then7

rcu_read_lock.exit.if.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %rcu_read_lock.exit
  %call.i93 = tail call fastcc i32 @sigio_perm(ptr noundef nonnull %call5, ptr noundef %fown, i32 noundef 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.then7.if.end8_crit_edge, label %if.then.i96

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.i96:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i95 = tail call i32 @do_send_sig_info(i32 noundef 23, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %call5, i32 noundef %1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then.i96, %if.then7.if.end8_crit_edge, %rcu_read_lock.exit.if.end8_crit_edge
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i97, label %if.end8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i100

if.end8.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i100:                               ; preds = %if.end8
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i100.rcu_read_unlock.exit_crit_edge, %if.end8.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %8 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i104 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %do.body58

if.else:                                          ; preds = %if.end
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #8
  %call14 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.else.do.end23_crit_edge

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

land.lhs.true:                                    ; preds = %if.else
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b92 = load i1, ptr @send_sigurg.__warned, align 1
  br i1 %.b92, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @send_sigurg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 852, ptr noundef nonnull @.str.7) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true.do.end23_crit_edge, %if.else.do.end23_crit_edge
  %arrayidx = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 %1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %13, null
  %.neg91 = mul i32 %1, -8
  %idx.neg = add i32 %.neg91, -1364
  %add.ptr = getelementptr i8, ptr %13, i32 %idx.neg
  %tobool32.not113116 = icmp eq ptr %add.ptr, null
  %tobool32.not113 = select i1 %tobool30.not, i1 true, i1 %tobool32.not113116
  br i1 %tobool32.not113, label %do.end23.do.end56_crit_edge, label %do.end23.for.body_crit_edge

do.end23.for.body_crit_edge:                      ; preds = %do.end23
  br label %for.body

do.end23.do.end56_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

for.body:                                         ; preds = %send_sigurg_to_task.exit110.for.body_crit_edge, %do.end23.for.body_crit_edge
  %p.0114 = phi ptr [ %add.ptr50, %send_sigurg_to_task.exit110.for.body_crit_edge ], [ %add.ptr, %do.end23.for.body_crit_edge ]
  %call.i106 = tail call fastcc i32 @sigio_perm(ptr noundef nonnull %p.0114, ptr noundef %fown, i32 noundef 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %for.body.send_sigurg_to_task.exit110_crit_edge, label %if.then.i109

for.body.send_sigurg_to_task.exit110_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %send_sigurg_to_task.exit110

if.then.i109:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i108 = tail call i32 @do_send_sig_info(i32 noundef 23, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %p.0114, i32 noundef %1) #8
  br label %send_sigurg_to_task.exit110

send_sigurg_to_task.exit110:                      ; preds = %if.then.i109, %for.body.send_sigurg_to_task.exit110_crit_edge
  %arrayidx42 = getelementptr %struct.task_struct, ptr %p.0114, i32 0, i32 79, i32 %1
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx42, align 4
  %tobool45.not = icmp eq ptr %15, null
  %add.ptr50 = getelementptr i8, ptr %15, i32 %idx.neg
  %tobool32.not117 = icmp eq ptr %add.ptr50, null
  %tobool32.not = select i1 %tobool45.not, i1 true, i1 %tobool32.not117
  br i1 %tobool32.not, label %send_sigurg_to_task.exit110.do.end56_crit_edge, label %send_sigurg_to_task.exit110.for.body_crit_edge

send_sigurg_to_task.exit110.for.body_crit_edge:   ; preds = %send_sigurg_to_task.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

send_sigurg_to_task.exit110.do.end56_crit_edge:   ; preds = %send_sigurg_to_task.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end56:                                         ; preds = %send_sigurg_to_task.exit110.do.end56_crit_edge, %do.end23.do.end56_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #8
  br label %do.body58

do.body58:                                        ; preds = %do.end56, %rcu_read_unlock.exit, %entry.do.body58_crit_edge
  %ret.0 = phi i32 [ 1, %rcu_read_unlock.exit ], [ 1, %do.end56 ], [ 0, %entry.do.body58_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %fown, i32 noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fasync_remove_entry(ptr noundef %filp, ptr nocapture noundef %fapp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_lock = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @fasync_lock) #8
  %0 = ptrtoint ptr %fapp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fapp, align 4
  %cmp.not18 = icmp eq ptr %1, null
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %fa_file28 = getelementptr inbounds %struct.fasync_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fa_file28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fa_file28, align 4
  %cmp1.not29 = icmp eq ptr %3, %filp
  br i1 %cmp1.not29, label %for.body.preheader.if.end_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body:                                         ; preds = %for.inc
  %fa_file = getelementptr inbounds %struct.fasync_struct, ptr %14, i32 0, i32 4
  %4 = ptrtoint ptr %fa_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fa_file, align 4
  %cmp1.not = icmp eq ptr %5, %filp
  br i1 %cmp1.not, label %if.end.loopexit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.loopexit:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %fa_next4.le = getelementptr inbounds %struct.fasync_struct, ptr %12, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.body.preheader.if.end_crit_edge
  %.lcssa = phi ptr [ %1, %for.body.preheader.if.end_crit_edge ], [ %14, %if.end.loopexit ]
  %fp.019.lcssa = phi ptr [ %fapp, %for.body.preheader.if.end_crit_edge ], [ %fa_next4.le, %if.end.loopexit ]
  %fa_file.le = getelementptr inbounds %struct.fasync_struct, ptr %.lcssa, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef nonnull %.lcssa) #8
  %6 = ptrtoint ptr %fa_file.le to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fa_file.le, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull %.lcssa) #8
  %fa_next = getelementptr inbounds %struct.fasync_struct, ptr %.lcssa, i32 0, i32 3
  %7 = ptrtoint ptr %fa_next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fa_next, align 4
  %9 = ptrtoint ptr %fp.019.lcssa to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %fp.019.lcssa, align 4
  %fa_rcu = getelementptr inbounds %struct.fasync_struct, ptr %.lcssa, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %fa_rcu, ptr noundef nonnull @fasync_free_rcu) #8
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, -8193
  store i32 %and, ptr %f_flags, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %12 = phi ptr [ %14, %for.body.for.inc_crit_edge ], [ %1, %for.body.preheader.for.inc_crit_edge ]
  %fa_next4 = getelementptr inbounds %struct.fasync_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %fa_next4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fa_next4, align 4
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  %result.0 = phi i32 [ 1, %if.end ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fasync_lock) #8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #8
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fasync_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fasync_cache, align 4
  %add.ptr = getelementptr i8, ptr %head, i32 -60
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @fasync_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fasync_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fasync_free(ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fasync_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %new) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fasync_insert_entry(i32 noundef %fd, ptr noundef %filp, ptr noundef %fapp, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_lock = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @fasync_lock) #8
  %0 = ptrtoint ptr %fapp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fapp, align 4
  %cmp.not62 = icmp eq ptr %1, null
  br i1 %cmp.not62, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %7, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %fa_file = getelementptr inbounds %struct.fasync_struct, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %fa_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fa_file, align 4
  %cmp1.not = icmp eq ptr %4, %filp
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_lock_irq(ptr noundef nonnull %2) #8
  %fa_fd = getelementptr inbounds %struct.fasync_struct, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %fa_fd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fd, ptr %fa_fd, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull %2) #8
  br label %out

for.inc:                                          ; preds = %for.body
  %fa_next = getelementptr inbounds %struct.fasync_struct, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %fa_next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fa_next, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @__rwlock_init(ptr noundef %new, ptr noundef nonnull @.str.8, ptr noundef nonnull @fasync_insert_entry.__key) #8
  %magic = getelementptr inbounds %struct.fasync_struct, ptr %new, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 17921, ptr %magic, align 4
  %fa_file4 = getelementptr inbounds %struct.fasync_struct, ptr %new, i32 0, i32 4
  %9 = ptrtoint ptr %fa_file4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %filp, ptr %fa_file4, align 4
  %fa_fd5 = getelementptr inbounds %struct.fasync_struct, ptr %new, i32 0, i32 2
  %10 = ptrtoint ptr %fa_fd5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %fd, ptr %fa_fd5, align 4
  %11 = ptrtoint ptr %fapp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fapp, align 4
  %fa_next6 = getelementptr inbounds %struct.fasync_struct, ptr %new, i32 0, i32 3
  %13 = ptrtoint ptr %fa_next6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %fa_next6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  %14 = ptrtoint ptr %fapp to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %new, ptr %fapp, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %or = or i32 %16, 8192
  store i32 %or, ptr %f_flags, align 4
  br label %out

out:                                              ; preds = %do.body, %if.end
  %17 = phi ptr [ null, %do.body ], [ %2, %if.end ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fasync_lock) #8
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #8
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef %fapp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @fasync_remove_entry(ptr noundef %filp, ptr noundef %fapp)
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @fasync_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @fasync_insert_entry(i32 noundef %fd, ptr noundef %filp, ptr noundef %fapp, ptr noundef nonnull %call.i.i) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.then3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @fasync_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %1, ptr noundef nonnull %call.i.i) #8
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then3.i ], [ -12, %if.end.return_crit_edge ], [ 1, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_fasync(ptr noundef %fp, i32 noundef %sig, i32 noundef %band) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fp, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @kill_fasync.__warned, align 1
  br i1 %.b13, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @kill_fasync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1035, ptr noundef nonnull @.str.9) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool.not54.i = icmp eq ptr %7, null
  br i1 %tobool.not54.i, label %do.end9.kill_fasync_rcu.exit_crit_edge, label %while.body.lr.ph.i

do.end9.kill_fasync_rcu.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %kill_fasync_rcu.exit

while.body.lr.ph.i:                               ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sig)
  %cmp10.i = icmp eq i32 %sig, 23
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %fa.addr.055.i = phi ptr [ %7, %while.body.lr.ph.i ], [ %17, %cleanup.i.while.body.i_crit_edge ]
  %magic.i = getelementptr inbounds %struct.fasync_struct, ptr %fa.addr.055.i, i32 0, i32 1
  %8 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17921, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 17921
  br i1 %cmp.not.i, label %do.body1.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %kill_fasync_rcu.exit

do.body1.i:                                       ; preds = %while.body.i
  %call4.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull %fa.addr.055.i) #8
  %fa_file.i = getelementptr inbounds %struct.fasync_struct, ptr %fa.addr.055.i, i32 0, i32 4
  %10 = ptrtoint ptr %fa_file.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fa_file.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %do.body1.i.do.body17.i_crit_edge, label %if.then8.i

do.body1.i.do.body17.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i

if.then8.i:                                       ; preds = %do.body1.i
  %f_owner.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 11
  br i1 %cmp10.i, label %land.lhs.true.i15, label %if.then8.i.if.then14.i_crit_edge

if.then8.i.if.then14.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

land.lhs.true.i15:                                ; preds = %if.then8.i
  %signum.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 11, i32 5
  %12 = ptrtoint ptr %signum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %signum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12.i = icmp eq i32 %13, 0
  br i1 %cmp12.i, label %land.lhs.true.i15.do.body17.i_crit_edge, label %land.lhs.true.i15.if.then14.i_crit_edge

land.lhs.true.i15.if.then14.i_crit_edge:          ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

land.lhs.true.i15.do.body17.i_crit_edge:          ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17.i

if.then14.i:                                      ; preds = %land.lhs.true.i15.if.then14.i_crit_edge, %if.then8.i.if.then14.i_crit_edge
  %fa_fd.i = getelementptr inbounds %struct.fasync_struct, ptr %fa.addr.055.i, i32 0, i32 2
  %14 = ptrtoint ptr %fa_fd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fa_fd.i, align 4
  tail call void @send_sigio(ptr noundef %f_owner.i, i32 noundef %15, i32 noundef %band) #8
  br label %do.body17.i

do.body17.i:                                      ; preds = %if.then14.i, %land.lhs.true.i15.do.body17.i_crit_edge, %do.body1.i.do.body17.i_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull %fa.addr.055.i, i32 noundef %call4.i) #8
  %fa_next.i = getelementptr inbounds %struct.fasync_struct, ptr %fa.addr.055.i, i32 0, i32 3
  %16 = ptrtoint ptr %fa_next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %fa_next.i, align 4
  %call31.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true33.i, label %do.body17.i.cleanup.i_crit_edge

do.body17.i.cleanup.i_crit_edge:                  ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true33.i:                                ; preds = %do.body17.i
  %call34.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true33.i.cleanup.i_crit_edge, label %land.lhs.true36.i

land.lhs.true33.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true36.i:                                ; preds = %land.lhs.true33.i
  %.b52.i = load i1, ptr @kill_fasync_rcu.__warned, align 1
  br i1 %.b52.i, label %land.lhs.true36.i.cleanup.i_crit_edge, label %if.then38.i

land.lhs.true36.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @kill_fasync_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1024, ptr noundef nonnull @.str.9) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then38.i, %land.lhs.true36.i.cleanup.i_crit_edge, %land.lhs.true33.i.cleanup.i_crit_edge, %do.body17.i.cleanup.i_crit_edge
  %tobool.not.i16 = icmp eq ptr %17, null
  br i1 %tobool.not.i16, label %cleanup.i.kill_fasync_rcu.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.kill_fasync_rcu.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kill_fasync_rcu.exit

kill_fasync_rcu.exit:                             ; preds = %cleanup.i.kill_fasync_rcu.exit_crit_edge, %cleanup.thread.i, %do.end9.kill_fasync_rcu.exit_crit_edge
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i17, label %kill_fasync_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

kill_fasync_rcu.exit.rcu_read_unlock.exit_crit_edge: ; preds = %kill_fasync_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %kill_fasync_rcu.exit
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %kill_fasync_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %18 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i24 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end11

if.end11:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fcntl_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 68, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #8
  store ptr %call, ptr @fasync_cache, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_fcntl(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg, ptr noundef %filp) unnamed_addr #0 align 64 {
entry:
  %h.i = alloca i64, align 8
  %owner.i141 = alloca %struct.f_owner_ex, align 4
  %owner.i = alloca %struct.f_owner_ex, align 8
  %flock = alloca %struct.flock, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %flock) #8
  %1 = call ptr @memset(ptr %flock, i32 255, i32 16)
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1030, label %sw.bb1
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %if.end59.i.i
    i32 6, label %entry.if.end59.i.i114_crit_edge
    i32 7, label %entry.if.end59.i.i114_crit_edge206
    i32 9, label %sw.bb23
    i32 8, label %sw.bb25
    i32 16, label %sw.bb27
    i32 15, label %sw.bb29
    i32 17, label %sw.bb31
    i32 11, label %sw.bb33
    i32 10, label %sw.bb34
    i32 1025, label %sw.bb41
    i32 1024, label %sw.bb43
    i32 1026, label %sw.bb45
    i32 1031, label %entry.sw.bb47_crit_edge
    i32 1032, label %entry.sw.bb47_crit_edge207
    i32 1033, label %entry.sw.bb49_crit_edge
    i32 1034, label %entry.sw.bb49_crit_edge208
    i32 1035, label %entry.sw.bb51_crit_edge
    i32 1036, label %entry.sw.bb51_crit_edge209
    i32 1037, label %entry.sw.bb51_crit_edge210
    i32 1038, label %entry.sw.bb51_crit_edge211
  ]

entry.sw.bb51_crit_edge211:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

entry.sw.bb51_crit_edge210:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

entry.sw.bb51_crit_edge209:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

entry.sw.bb51_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

entry.sw.bb49_crit_edge208:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

entry.sw.bb49_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

entry.sw.bb47_crit_edge207:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47

entry.sw.bb47_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47

entry.if.end59.i.i114_crit_edge206:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i114

entry.if.end59.i.i114_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i.i114

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @f_dupfd(i32 noundef %arg, ptr noundef %filp, i32 noundef 0) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @f_dupfd(i32 noundef %arg, ptr noundef %filp, i32 noundef 524288) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call zeroext i1 @get_close_on_exec(i32 noundef %fd) #8
  %cond = zext i1 %call4 to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %arg, 1
  tail call void @set_close_on_exec(i32 noundef %fd, i32 noundef %and) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i.i, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags.i, align 4
  %xor.i = xor i32 %8, %arg
  %and.i = and i32 %xor.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb7.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb7.if.end.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb7
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags.i, align 4
  %and1.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb7.if.end.i_crit_edge
  %and3.i = and i32 %arg, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp ne i32 %and3.i, 0
  %and7.i = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond102.i = select i1 %tobool4.not.i, i1 %tobool8.not.i, i1 false
  br i1 %or.cond102.i, label %if.then9.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %11 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !114
  %call11.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %14, ptr noundef %6) #8
  br i1 %call11.i, label %if.then9.i.if.end14.i_crit_edge, label %if.then9.i.sw.epilog_crit_edge

if.then9.i.sw.epilog_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %6, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %17)
  %cmp.i = icmp eq i16 %17, 4096
  %and18.i = and i32 %arg, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %or.cond.i = or i1 %tobool19.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end14.i.if.end30.i_crit_edge, label %if.then20.i

if.end14.i.if.end30.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then20.i:                                      ; preds = %if.end14.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %18 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_mapping.i, align 4
  %tobool21.not.i = icmp eq ptr %19, null
  br i1 %tobool21.not.i, label %if.then20.i.sw.epilog_crit_edge, label %lor.lhs.false.i

if.then20.i.sw.epilog_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %if.then20.i
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a_ops.i, align 4
  %tobool23.not.i = icmp eq ptr %21, null
  br i1 %tobool23.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false24.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i
  %direct_IO.i = getelementptr inbounds %struct.address_space_operations, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %direct_IO.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %direct_IO.i, align 4
  %tobool27.not.i = icmp eq ptr %23, null
  br i1 %tobool27.not.i, label %lor.lhs.false24.i.sw.epilog_crit_edge, label %lor.lhs.false24.i.if.end30.i_crit_edge

lor.lhs.false24.i.if.end30.i_crit_edge:           ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

lor.lhs.false24.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end30.i:                                       ; preds = %lor.lhs.false24.i.if.end30.i_crit_edge, %if.end14.i.if.end30.i_crit_edge
  %f_op.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 3
  %24 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_op.i, align 4
  %check_flags.i = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %check_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %check_flags.i, align 4
  %tobool31.not.i = icmp eq ptr %27, null
  br i1 %tobool31.not.i, label %if.end30.i.if.end39.i_crit_edge, label %if.end36.i

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.end36.i:                                       ; preds = %if.end30.i
  %call35.i = tail call i32 %27(i32 noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool37.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end39.i_crit_edge, label %if.end36.i.sw.epilog_crit_edge

if.end36.i.sw.epilog_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end36.i.if.end39.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i.if.end39.i_crit_edge, %if.end30.i.if.end39.i_crit_edge
  %28 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_flags.i, align 4
  %xor41.i = xor i32 %29, %arg
  %and42.i = and i32 %xor41.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end39.i.if.end62.i_crit_edge, label %land.lhs.true44.i

if.end39.i.if.end62.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

land.lhs.true44.i:                                ; preds = %if.end39.i
  %30 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_op.i, align 4
  %fasync.i = getelementptr inbounds %struct.file_operations, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %fasync.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fasync.i, align 4
  %tobool46.not.i = icmp eq ptr %33, null
  br i1 %tobool46.not.i, label %land.lhs.true44.i.if.end62.i_crit_edge, label %if.then47.i

land.lhs.true44.i.if.end62.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then47.i:                                      ; preds = %land.lhs.true44.i
  %and50.i = lshr i32 %arg, 13
  %and50.lobit.i = and i32 %and50.i, 1
  %call53.i = tail call i32 %33(i32 noundef %fd, ptr noundef %filp, i32 noundef %and50.lobit.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.then47.i.sw.epilog_crit_edge, label %if.then47.i.if.end62.i_crit_edge

if.then47.i.if.end62.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then47.i.sw.epilog_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end62.i:                                       ; preds = %if.then47.i.if.end62.i_crit_edge, %land.lhs.true44.i.if.end62.i_crit_edge, %if.end39.i.if.end62.i_crit_edge
  %f_lock.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock.i) #8
  %and63.i = and i32 %arg, 330752
  %34 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_flags.i, align 4
  %and65.i = and i32 %35, -330753
  %or.i = or i32 %and65.i, %and63.i
  store i32 %or.i, ptr %f_flags.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock.i) #8
  br label %sw.epilog

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #11
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flock, i32 noundef 16) #8
  %37 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !108
  %and.i.i.i.i = and i32 %39, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %flock, ptr noundef %0, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !99

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i196 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i196
  %add.ptr.i.i = getelementptr i8, ptr %flock, i32 %sub.i.i
  %40 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i196)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call11 = call i32 @fcntl_getlk(ptr noundef %filp, i32 noundef 5, ptr noundef nonnull %flock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end59.i.i104, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end59.i.i104:                                  ; preds = %if.end
  call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #8
  %call.i.i105 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i105, label %if.end59.i.i104.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i104.cleanup_crit_edge:                ; preds = %if.end59.i.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i104
  %call.i.i.i109 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %flock, i32 noundef 16) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %flock, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool14.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool14.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end59.i.i114:                                  ; preds = %entry.if.end59.i.i114_crit_edge, %entry.if.end59.i.i114_crit_edge206
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i115 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i115, label %if.end59.i.i114.if.then11.i.i131_crit_edge, label %land.lhs.true.i.i118

if.end59.i.i114.if.then11.i.i131_crit_edge:       ; preds = %if.end59.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i131

land.lhs.true.i.i118:                             ; preds = %if.end59.i.i114
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #11, !srcloc !111
  %asmresult.i.i116 = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i116)
  %cmp.i6.i117 = icmp eq i32 %asmresult.i.i116, 0
  br i1 %cmp.i6.i117, label %if.end.i.i128, label %land.lhs.true.i.i118.if.then11.i.i131_crit_edge, !prof !99

land.lhs.true.i.i118.if.then11.i.i131_crit_edge:  ; preds = %land.lhs.true.i.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i131

if.end.i.i128:                                    ; preds = %land.lhs.true.i.i118
  %call.i.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %flock, i32 noundef 16) #8
  %42 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i120 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i120 to ptr
  %cpu_domain.i.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i121) #5, !srcloc !108
  %and.i.i.i.i122 = and i32 %44, -13
  %or.i.i.i.i123 = or i32 %and.i.i.i.i122, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i123) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i124 = call i32 @arm_copy_from_user(ptr noundef nonnull %flock, ptr noundef %0, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i124)
  %tobool4.not.i.i127 = icmp eq i32 %call1.i.i.i124, 0
  br i1 %tobool4.not.i.i127, label %if.end21, label %if.end.i.i128.if.then11.i.i131_crit_edge, !prof !99

if.end.i.i128.if.then11.i.i131_crit_edge:         ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i131

if.then11.i.i131:                                 ; preds = %if.end.i.i128.if.then11.i.i131_crit_edge, %land.lhs.true.i.i118.if.then11.i.i131_crit_edge, %if.end59.i.i114.if.then11.i.i131_crit_edge
  %res.0.i.i126203 = phi i32 [ %call1.i.i.i124, %if.end.i.i128.if.then11.i.i131_crit_edge ], [ 16, %if.end59.i.i114.if.then11.i.i131_crit_edge ], [ 16, %land.lhs.true.i.i118.if.then11.i.i131_crit_edge ]
  %sub.i.i129 = sub i32 16, %res.0.i.i126203
  %add.ptr.i.i130 = getelementptr i8, ptr %flock, i32 %sub.i.i129
  %45 = call ptr @memset(ptr %add.ptr.i.i130, i32 0, i32 %res.0.i.i126203)
  br label %cleanup

if.end21:                                         ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 @fcntl_setlk(i32 noundef %fd, ptr noundef %filp, i32 noundef %cmd, ptr noundef nonnull %flock) #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @f_getown(ptr noundef %filp)
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @f_setown(ptr noundef %filp, i32 noundef %arg, i32 noundef 1)
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %owner.i) #8
  %46 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %owner.i, align 8
  %f_owner.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11
  tail call void @_raw_read_lock_irq(ptr noundef %f_owner.i) #8
  %47 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i134 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %50, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i135 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i135, label %sw.bb27.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i136

sw.bb27.rcu_read_lock.exit.i_crit_edge:           ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i136:                             ; preds = %sw.bb27
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i136.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i136.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i136
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i137

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i137:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i137, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i136.rcu_read_lock.exit.i_crit_edge, %sw.bb27.rcu_read_lock.exit.i_crit_edge
  %pid.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pid.i, align 4
  %pid_type.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 2
  %53 = ptrtoint ptr %pid_type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid_type.i, align 8
  %call.i = tail call ptr @pid_task(ptr noundef %52, i32 noundef %54) #8
  %tobool.not.i138 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i138, label %rcu_read_lock.exit.i.if.end.i139_crit_edge, label %if.then.i

rcu_read_lock.exit.i.if.end.i139_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i139

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pid.i, align 4
  %call5.i = tail call i32 @pid_vnr(ptr noundef %56) #8
  %pid6.i = getelementptr inbounds %struct.f_owner_ex, ptr %owner.i, i32 0, i32 1
  %57 = ptrtoint ptr %pid6.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call5.i, ptr %pid6.i, align 4
  br label %if.end.i139

if.end.i139:                                      ; preds = %if.then.i, %rcu_read_lock.exit.i.if.end.i139_crit_edge
  %call.i48.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i48.i, label %if.end.i139.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i51.i

if.end.i139.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i51.i:                              ; preds = %if.end.i139
  %call1.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i53.i

land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52.i, label %land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i54.i

land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i54.i, %land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i139.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %58 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i55.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i56.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %62 = ptrtoint ptr %pid_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid_type.i, align 8
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %63, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %owner.i, align 8
  br label %if.then33.i

sw.bb9.i:                                         ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %owner.i, align 8
  br label %if.then33.i

sw.bb11.i:                                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %owner.i, align 8
  br label %if.then33.i

sw.epilog.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  tail call void @_raw_read_unlock_irq(ptr noundef %f_owner.i) #8
  br label %f_getown_ex.exit

if.then33.i:                                      ; preds = %sw.bb11.i, %sw.bb9.i, %sw.bb.i
  tail call void @_raw_read_unlock_irq(ptr noundef %f_owner.i) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #8
  %call.i.i.i140 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i140, label %if.then33.i.f_getown_ex.exit_crit_edge, label %if.end.i.i.i

if.then33.i.f_getown_ex.exit_crit_edge:           ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %f_getown_ex.exit

if.end.i.i.i:                                     ; preds = %if.then33.i
  %68 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #11, !srcloc !115
  %asmresult.i.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.f_getown_ex.exit_crit_edge

if.end.i.i.i.f_getown_ex.exit_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %f_getown_ex.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %owner.i, i32 noundef 8) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %owner.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool35.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool35.not.i, i32 0, i32 -14
  br label %f_getown_ex.exit

f_getown_ex.exit:                                 ; preds = %copy_to_user.exit.i, %if.end.i.i.i.f_getown_ex.exit_crit_edge, %if.then33.i.f_getown_ex.exit_crit_edge, %sw.epilog.i
  %ret.1.i = phi i32 [ -22, %sw.epilog.i ], [ -14, %if.then33.i.f_getown_ex.exit_crit_edge ], [ -14, %if.end.i.i.i.f_getown_ex.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %owner.i) #8
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %owner.i141) #8
  %69 = ptrtoint ptr %owner.i141 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %owner.i141, align 4, !annotation !116
  %70 = getelementptr inbounds %struct.f_owner_ex, ptr %owner.i141, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4, !annotation !116
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i.i142 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i142, label %sw.bb29.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb29.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb29
  %72 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #11, !srcloc !111
  %asmresult.i.i.i143 = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i143)
  %cmp.i6.i.i144 = icmp eq i32 %asmresult.i.i.i143, 0
  br i1 %cmp.i6.i.i144, label %if.end.i.i.i146, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !99

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i146:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i145 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %owner.i141, i32 noundef 8) #8
  %73 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !108
  %and.i.i.i.i.i = and i32 %75, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %owner.i141, ptr noundef %0, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i147, label %if.end.i.i.i146.if.then11.i.i.i_crit_edge, !prof !99

if.end.i.i.i146.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i146.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb29.if.then11.i.i.i_crit_edge
  %res.0.i.i28.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i146.if.then11.i.i.i_crit_edge ], [ 8, %sw.bb29.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i28.i
  %add.ptr.i.i.i = getelementptr i8, ptr %owner.i141, i32 %sub.i.i.i
  %76 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i28.i)
  br label %f_setown_ex.exit

if.end.i147:                                      ; preds = %if.end.i.i.i146
  %77 = ptrtoint ptr %owner.i141 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %owner.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %switch.i = icmp ult i32 %78, 3
  br i1 %switch.i, label %sw.epilog.i152, label %if.end.i147.f_setown_ex.exit_crit_edge

if.end.i147.f_setown_ex.exit_crit_edge:           ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %f_setown_ex.exit

sw.epilog.i152:                                   ; preds = %if.end.i147
  %79 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i148 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i148 to ptr
  %preempt_count.i.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i.i149, align 4
  %add.i.i.i.i150 = add i32 %82, 1
  store volatile i32 %add.i.i.i.i150, ptr %preempt_count.i.i.i.i.i149, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i151 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i151, label %sw.epilog.i152.rcu_read_lock.exit.i162_crit_edge, label %land.lhs.true.i.i155

sw.epilog.i152.rcu_read_lock.exit.i162_crit_edge: ; preds = %sw.epilog.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i162

land.lhs.true.i.i155:                             ; preds = %sw.epilog.i152
  %call1.i.i153 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %call1.i.i153, 0
  br i1 %tobool.not.i.i154, label %land.lhs.true.i.i155.rcu_read_lock.exit.i162_crit_edge, label %land.lhs.true2.i.i157

land.lhs.true.i.i155.rcu_read_lock.exit.i162_crit_edge: ; preds = %land.lhs.true.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i162

land.lhs.true2.i.i157:                            ; preds = %land.lhs.true.i.i155
  %.b4.i.i156 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i156, label %land.lhs.true2.i.i157.rcu_read_lock.exit.i162_crit_edge, label %if.then.i.i158

land.lhs.true2.i.i157.rcu_read_lock.exit.i162_crit_edge: ; preds = %land.lhs.true2.i.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i162

if.then.i.i158:                                   ; preds = %land.lhs.true2.i.i157
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit.i162

rcu_read_lock.exit.i162:                          ; preds = %if.then.i.i158, %land.lhs.true2.i.i157.rcu_read_lock.exit.i162_crit_edge, %land.lhs.true.i.i155.rcu_read_lock.exit.i162_crit_edge, %sw.epilog.i152.rcu_read_lock.exit.i162_crit_edge
  %83 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %70, align 4
  %call5.i159 = call ptr @find_vpid(i32 noundef %84) #8
  %85 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool7.not.i = icmp ne i32 %86, 0
  %tobool8.not.i160 = icmp eq ptr %call5.i159, null
  %or.cond.i161 = select i1 %tobool7.not.i, i1 %tobool8.not.i160, i1 false
  br i1 %or.cond.i161, label %rcu_read_lock.exit.i162.if.end10.i_crit_edge, label %if.else.i

rcu_read_lock.exit.i162.if.end10.i_crit_edge:     ; preds = %rcu_read_lock.exit.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i162
  call void @__sanitizer_cov_trace_pc() #10
  call void @security_file_set_fowner(ptr noundef %filp) #8
  call fastcc void @f_modown(ptr noundef %filp, ptr noundef %call5.i159, i32 noundef %78, i32 noundef 1) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %rcu_read_lock.exit.i162.if.end10.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else.i ], [ -3, %rcu_read_lock.exit.i162.if.end10.i_crit_edge ]
  %call.i17.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i17.i, label %if.end10.i.rcu_read_unlock.exit.i164_crit_edge, label %land.lhs.true.i20.i

if.end10.i.rcu_read_unlock.exit.i164_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i164

land.lhs.true.i20.i:                              ; preds = %if.end10.i
  %call1.i18.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.rcu_read_unlock.exit.i164_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.rcu_read_unlock.exit.i164_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i164

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.rcu_read_unlock.exit.i164_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.rcu_read_unlock.exit.i164_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i164

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit.i164

rcu_read_unlock.exit.i164:                        ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.rcu_read_unlock.exit.i164_crit_edge, %land.lhs.true.i20.i.rcu_read_unlock.exit.i164_crit_edge, %if.end10.i.rcu_read_unlock.exit.i164_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %87 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i24.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i163 = add i32 %90, -1
  store volatile i32 %sub.i.i.i.i163, ptr %preempt_count.i.i.i.i25.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %f_setown_ex.exit

f_setown_ex.exit:                                 ; preds = %rcu_read_unlock.exit.i164, %if.end.i147.f_setown_ex.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i165 = phi i32 [ %ret.0.i, %rcu_read_unlock.exit.i164 ], [ -22, %if.end.i147.f_setown_ex.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %owner.i141) #8
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %91 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i47.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i47.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 99
  %95 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cred.i, align 16
  %user_ns2.i = getelementptr inbounds %struct.cred, ptr %96, i32 0, i32 25
  %97 = ptrtoint ptr %user_ns2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %user_ns2.i, align 4
  %f_owner.i166 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11
  tail call void @_raw_read_lock_irq(ptr noundef %f_owner.i166) #8
  %uid.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 3
  %99 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %100 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call4.i = tail call i32 @from_kuid(ptr noundef %98, [1 x i32] %100) #8
  %euid.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 4
  %101 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack42.i = load i32, ptr %euid.i, align 8
  %102 = insertvalue [1 x i32] undef, i32 %.unpack42.i, 0
  %call7.i = tail call i32 @from_kuid(ptr noundef %98, [1 x i32] %102) #8
  tail call void @_raw_read_unlock_irq(ptr noundef %f_owner.i166) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 258) #8
  %103 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i167 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i167 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 4
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !108
  %and.i.i = and i32 %105, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %106 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call4.i, i32 -1226833921) #8, !srcloc !117
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %arrayidx22.i = getelementptr i32, ptr %0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 259) #8
  %107 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i43.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i43.i to ptr
  %cpu_domain.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 4
  %109 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i44.i) #5, !srcloc !108
  %and.i45.i = and i32 %109, -13
  %or.i46.i = or i32 %and.i45.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i46.i) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %110 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx22.i, i32 %call7.i, i32 -1226833921) #8, !srcloc !118
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %or.i168 = or i32 %110, %106
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %signum = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 5
  %111 = ptrtoint ptr %signum to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %signum, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %arg)
  %cmp.i169 = icmp ugt i32 %arg, 64
  br i1 %cmp.i169, label %sw.bb34.sw.epilog_crit_edge, label %if.end38

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end38:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %signum40 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 11, i32 5
  %113 = ptrtoint ptr %signum40 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %arg, ptr %signum40, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @fcntl_getlease(ptr noundef %filp) #8
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 @fcntl_setlease(i32 noundef %fd, ptr noundef %filp, i32 noundef %arg) #8
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 @fcntl_dirnotify(i32 noundef %fd, ptr noundef %filp, i32 noundef %arg) #8
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry.sw.bb47_crit_edge, %entry.sw.bb47_crit_edge207
  %call48 = tail call i32 @pipe_fcntl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #8
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry.sw.bb49_crit_edge, %entry.sw.bb49_crit_edge208
  %call50 = tail call i32 @memfd_fcntl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #8
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry.sw.bb51_crit_edge, %entry.sw.bb51_crit_edge209, %entry.sw.bb51_crit_edge210, %entry.sw.bb51_crit_edge211
  %f_inode.i.i170 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %114 = ptrtoint ptr %f_inode.i.i170 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %f_inode.i.i170, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h.i) #8
  %116 = ptrtoint ptr %h.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 -1, ptr %h.i, align 8, !annotation !116
  %117 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %cmd, label %sw.bb51.fcntl_rw_hint.exit_crit_edge [
    i32 1037, label %sw.bb.i171
    i32 1038, label %if.end59.i.i50.i
    i32 1035, label %sw.bb13.i
    i32 1036, label %if.end59.i.i73.i
  ]

sw.bb51.fcntl_rw_hint.exit_crit_edge:             ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

sw.bb.i171:                                       ; preds = %sw.bb51
  %f_write_hint.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 5
  %118 = ptrtoint ptr %f_write_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %f_write_hint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp.not.i.i = icmp eq i32 %119, 0
  br i1 %cmp.not.i.i, label %if.end.i.i172, label %sw.bb.i171.file_write_hint.exit.i_crit_edge

sw.bb.i171.file_write_hint.exit.i_crit_edge:      ; preds = %sw.bb.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_write_hint.exit.i

if.end.i.i172:                                    ; preds = %sw.bb.i171
  call void @__sanitizer_cov_trace_pc() #10
  %i_write_hint.i.i = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 21
  %120 = ptrtoint ptr %i_write_hint.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %i_write_hint.i.i, align 1
  %conv.i.i = zext i8 %121 to i32
  br label %file_write_hint.exit.i

file_write_hint.exit.i:                           ; preds = %if.end.i.i172, %sw.bb.i171.file_write_hint.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i172 ], [ %119, %sw.bb.i171.file_write_hint.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %122 = ptrtoint ptr %h.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv.i, ptr %h.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #8
  %call.i.i.i173 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i173, label %file_write_hint.exit.i.fcntl_rw_hint.exit_crit_edge, label %if.end.i.i.i176

file_write_hint.exit.i.fcntl_rw_hint.exit_crit_edge: ; preds = %file_write_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

if.end.i.i.i176:                                  ; preds = %file_write_hint.exit.i
  %123 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #11, !srcloc !115
  %asmresult.i.i.i174 = extractvalue { i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i174)
  %cmp.i6.i.i175 = icmp eq i32 %asmresult.i.i.i174, 0
  br i1 %cmp.i6.i.i175, label %copy_to_user.exit.i181, label %if.end.i.i.i176.fcntl_rw_hint.exit_crit_edge

if.end.i.i.i176.fcntl_rw_hint.exit_crit_edge:     ; preds = %if.end.i.i.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

copy_to_user.exit.i181:                           ; preds = %if.end.i.i.i176
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i177 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %h.i, i32 noundef 8) #8
  %call.i12.i.i.i178 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %h.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i178)
  %tobool.not.i179 = icmp eq i32 %call.i12.i.i.i178, 0
  %spec.select.i180 = select i1 %tobool.not.i179, i32 0, i32 -14
  br label %fcntl_rw_hint.exit

if.end59.i.i50.i:                                 ; preds = %sw.bb51
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i51.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i51.i, label %if.end59.i.i50.i.if.then11.i.i.i191_crit_edge, label %land.lhs.true.i.i.i182

if.end59.i.i50.i.if.then11.i.i.i191_crit_edge:    ; preds = %if.end59.i.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i191

land.lhs.true.i.i.i182:                           ; preds = %if.end59.i.i50.i
  %124 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #11, !srcloc !111
  %asmresult.i.i52.i = extractvalue { i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i52.i)
  %cmp.i6.i53.i = icmp eq i32 %asmresult.i.i52.i, 0
  br i1 %cmp.i6.i53.i, label %if.end.i.i55.i, label %land.lhs.true.i.i.i182.if.then11.i.i.i191_crit_edge, !prof !99

land.lhs.true.i.i.i182.if.then11.i.i.i191_crit_edge: ; preds = %land.lhs.true.i.i.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i191

if.end.i.i55.i:                                   ; preds = %land.lhs.true.i.i.i182
  %call.i.i.i54.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %h.i, i32 noundef 8) #8
  %125 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i.i183 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i.i183 to ptr
  %cpu_domain.i.i.i.i.i.i184 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 4
  %127 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i184) #5, !srcloc !108
  %and.i.i.i.i.i185 = and i32 %127, -13
  %or.i.i.i.i.i186 = or i32 %and.i.i.i.i.i185, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i186) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i.i187 = call i32 @arm_copy_from_user(ptr noundef nonnull %h.i, ptr noundef %0, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i187)
  %tobool4.not.i.i.i188 = icmp eq i32 %call1.i.i.i.i187, 0
  br i1 %tobool4.not.i.i.i188, label %if.end7.i, label %if.end.i.i55.i.if.then11.i.i.i191_crit_edge, !prof !99

if.end.i.i55.i.if.then11.i.i.i191_crit_edge:      ; preds = %if.end.i.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i191

if.then11.i.i.i191:                               ; preds = %if.end.i.i55.i.if.then11.i.i.i191_crit_edge, %land.lhs.true.i.i.i182.if.then11.i.i.i191_crit_edge, %if.end59.i.i50.i.if.then11.i.i.i191_crit_edge
  %res.0.i.i99.i = phi i32 [ %call1.i.i.i.i187, %if.end.i.i55.i.if.then11.i.i.i191_crit_edge ], [ 8, %if.end59.i.i50.i.if.then11.i.i.i191_crit_edge ], [ 8, %land.lhs.true.i.i.i182.if.then11.i.i.i191_crit_edge ]
  %sub.i.i.i189 = sub i32 8, %res.0.i.i99.i
  %add.ptr.i.i.i190 = getelementptr i8, ptr %h.i, i32 %sub.i.i.i189
  %128 = call ptr @memset(ptr %add.ptr.i.i.i190, i32 0, i32 %res.0.i.i99.i)
  br label %fcntl_rw_hint.exit

if.end7.i:                                        ; preds = %if.end.i.i55.i
  %129 = ptrtoint ptr %h.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %h.i, align 8
  %conv8.i = trunc i64 %130 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv8.i)
  %switch.i.i = icmp ult i32 %conv8.i, 6
  br i1 %switch.i.i, label %if.end11.i, label %if.end7.i.fcntl_rw_hint.exit_crit_edge

if.end7.i.fcntl_rw_hint.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %f_lock.i192 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %f_lock.i192) #8
  %f_write_hint.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 5
  %131 = ptrtoint ptr %f_write_hint.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv8.i, ptr %f_write_hint.i, align 4
  call void @_raw_spin_unlock(ptr noundef %f_lock.i192) #8
  br label %fcntl_rw_hint.exit

sw.bb13.i:                                        ; preds = %sw.bb51
  %i_write_hint.i = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 21
  %132 = ptrtoint ptr %i_write_hint.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %i_write_hint.i, align 1
  %conv14.i = zext i8 %133 to i64
  %134 = ptrtoint ptr %h.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv14.i, ptr %h.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 174) #8
  %call.i.i61.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i61.i, label %sw.bb13.i.fcntl_rw_hint.exit_crit_edge, label %if.end.i.i64.i

sw.bb13.i.fcntl_rw_hint.exit_crit_edge:           ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

if.end.i.i64.i:                                   ; preds = %sw.bb13.i
  %135 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #11, !srcloc !115
  %asmresult.i.i62.i = extractvalue { i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i62.i)
  %cmp.i6.i63.i = icmp eq i32 %asmresult.i.i62.i, 0
  br i1 %cmp.i6.i63.i, label %copy_to_user.exit69.i, label %if.end.i.i64.i.fcntl_rw_hint.exit_crit_edge

if.end.i.i64.i.fcntl_rw_hint.exit_crit_edge:      ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

copy_to_user.exit69.i:                            ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i65.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %h.i, i32 noundef 8) #8
  %call.i12.i.i66.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %h.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i66.i)
  %tobool16.not.i = icmp eq i32 %call.i12.i.i66.i, 0
  %spec.select109.i = select i1 %tobool16.not.i, i32 0, i32 -14
  br label %fcntl_rw_hint.exit

if.end59.i.i73.i:                                 ; preds = %sw.bb51
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #8
  %call.i.i74.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i74.i, label %if.end59.i.i73.i.if.then11.i.i90.i_crit_edge, label %land.lhs.true.i.i77.i

if.end59.i.i73.i.if.then11.i.i90.i_crit_edge:     ; preds = %if.end59.i.i73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i90.i

land.lhs.true.i.i77.i:                            ; preds = %if.end59.i.i73.i
  %136 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #11, !srcloc !111
  %asmresult.i.i75.i = extractvalue { i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i75.i)
  %cmp.i6.i76.i = icmp eq i32 %asmresult.i.i75.i, 0
  br i1 %cmp.i6.i76.i, label %if.end.i.i87.i, label %land.lhs.true.i.i77.i.if.then11.i.i90.i_crit_edge, !prof !99

land.lhs.true.i.i77.i.if.then11.i.i90.i_crit_edge: ; preds = %land.lhs.true.i.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i90.i

if.end.i.i87.i:                                   ; preds = %land.lhs.true.i.i77.i
  %call.i.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %h.i, i32 noundef 8) #8
  %137 = call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i.i79.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i.i79.i to ptr
  %cpu_domain.i.i.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 4
  %139 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i80.i) #5, !srcloc !108
  %and.i.i.i.i81.i = and i32 %139, -13
  %or.i.i.i.i82.i = or i32 %and.i.i.i.i81.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i82.i) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i83.i = call i32 @arm_copy_from_user(ptr noundef nonnull %h.i, ptr noundef %0, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i83.i)
  %tobool4.not.i.i86.i = icmp eq i32 %call1.i.i.i83.i, 0
  br i1 %tobool4.not.i.i86.i, label %if.end23.i, label %if.end.i.i87.i.if.then11.i.i90.i_crit_edge, !prof !99

if.end.i.i87.i.if.then11.i.i90.i_crit_edge:       ; preds = %if.end.i.i87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i90.i

if.then11.i.i90.i:                                ; preds = %if.end.i.i87.i.if.then11.i.i90.i_crit_edge, %land.lhs.true.i.i77.i.if.then11.i.i90.i_crit_edge, %if.end59.i.i73.i.if.then11.i.i90.i_crit_edge
  %res.0.i.i85106.i = phi i32 [ %call1.i.i.i83.i, %if.end.i.i87.i.if.then11.i.i90.i_crit_edge ], [ 8, %if.end59.i.i73.i.if.then11.i.i90.i_crit_edge ], [ 8, %land.lhs.true.i.i77.i.if.then11.i.i90.i_crit_edge ]
  %sub.i.i88.i = sub i32 8, %res.0.i.i85106.i
  %add.ptr.i.i89.i = getelementptr i8, ptr %h.i, i32 %sub.i.i88.i
  %140 = call ptr @memset(ptr %add.ptr.i.i89.i, i32 0, i32 %res.0.i.i85106.i)
  br label %fcntl_rw_hint.exit

if.end23.i:                                       ; preds = %if.end.i.i87.i
  %141 = ptrtoint ptr %h.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %h.i, align 8
  %conv24.i = trunc i64 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv24.i)
  %switch.i93.i = icmp ult i32 %conv24.i, 6
  br i1 %switch.i93.i, label %if.end27.i, label %if.end23.i.fcntl_rw_hint.exit_crit_edge

if.end23.i.fcntl_rw_hint.exit_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fcntl_rw_hint.exit

if.end27.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #8
  %conv28.i = trunc i64 %142 to i8
  %i_write_hint29.i = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 21
  %143 = ptrtoint ptr %i_write_hint29.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv28.i, ptr %i_write_hint29.i, align 1
  call void @up_write(ptr noundef %i_rwsem.i.i) #8
  br label %fcntl_rw_hint.exit

fcntl_rw_hint.exit:                               ; preds = %if.end27.i, %if.end23.i.fcntl_rw_hint.exit_crit_edge, %if.then11.i.i90.i, %copy_to_user.exit69.i, %if.end.i.i64.i.fcntl_rw_hint.exit_crit_edge, %sw.bb13.i.fcntl_rw_hint.exit_crit_edge, %if.end11.i, %if.end7.i.fcntl_rw_hint.exit_crit_edge, %if.then11.i.i.i191, %copy_to_user.exit.i181, %if.end.i.i.i176.fcntl_rw_hint.exit_crit_edge, %file_write_hint.exit.i.fcntl_rw_hint.exit_crit_edge, %sw.bb51.fcntl_rw_hint.exit_crit_edge
  %retval.0.i193 = phi i32 [ 0, %if.end27.i ], [ 0, %if.end11.i ], [ -22, %if.end7.i.fcntl_rw_hint.exit_crit_edge ], [ -22, %if.end23.i.fcntl_rw_hint.exit_crit_edge ], [ -22, %sw.bb51.fcntl_rw_hint.exit_crit_edge ], [ -14, %file_write_hint.exit.i.fcntl_rw_hint.exit_crit_edge ], [ -14, %if.end.i.i.i176.fcntl_rw_hint.exit_crit_edge ], [ -14, %if.then11.i.i.i191 ], [ -14, %sw.bb13.i.fcntl_rw_hint.exit_crit_edge ], [ -14, %if.end.i.i64.i.fcntl_rw_hint.exit_crit_edge ], [ -14, %if.then11.i.i90.i ], [ %spec.select.i180, %copy_to_user.exit.i181 ], [ %spec.select109.i, %copy_to_user.exit69.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %fcntl_rw_hint.exit, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %if.end38, %sw.bb34.sw.epilog_crit_edge, %sw.bb33, %sw.bb31, %f_setown_ex.exit, %f_getown_ex.exit, %sw.bb25, %sw.bb23, %if.end21, %copy_to_user.exit.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end62.i, %if.then47.i.sw.epilog_crit_edge, %if.end36.i.sw.epilog_crit_edge, %lor.lhs.false24.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %if.then20.i.sw.epilog_crit_edge, %if.then9.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %retval.0.i193, %fcntl_rw_hint.exit ], [ %call50, %sw.bb49 ], [ %call48, %sw.bb47 ], [ %call46, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ 0, %if.end38 ], [ -22, %sw.bb34.sw.epilog_crit_edge ], [ %112, %sw.bb33 ], [ %or.i168, %sw.bb31 ], [ %retval.0.i165, %f_setown_ex.exit ], [ %ret.1.i, %f_getown_ex.exit ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %if.end21 ], [ %call11, %if.end.sw.epilog_crit_edge ], [ 0, %copy_to_user.exit.sw.epilog_crit_edge ], [ %4, %sw.bb6 ], [ 0, %sw.bb5 ], [ %cond, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -1, %land.lhs.true.i.sw.epilog_crit_edge ], [ -1, %if.then9.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false24.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %if.then20.i.sw.epilog_crit_edge ], [ %call35.i, %if.end36.i.sw.epilog_crit_edge ], [ %call53.i, %if.then47.i.sw.epilog_crit_edge ], [ 0, %if.end62.i ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11.i.i131, %copy_to_user.exit.cleanup_crit_edge, %if.end59.i.i104.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i104.cleanup_crit_edge ], [ -14, %if.then11.i.i131 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %flock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f_dupfd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_close_on_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_close_on_exec(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlk(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlease(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlease(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_dirnotify(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pipe_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memfd_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlk64(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlk64(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sigio_perm(ptr noundef %p, ptr noundef %fown, i32 noundef %sig) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @sigio_perm.__warned, align 1
  br i1 %.b51, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sigio_perm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %euid = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 4
  %6 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %do.end7.land.rhs_crit_edge, label %lor.lhs.false

do.end7.land.rhs_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.lhs.false:                                    ; preds = %do.end7
  %suid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack44 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack44)
  %cmp.i52 = icmp eq i32 %.unpack, %.unpack44
  br i1 %cmp.i52, label %lor.lhs.false.land.rhs_crit_edge, label %lor.lhs.false15

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %uid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack46 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack46)
  %cmp.i53 = icmp eq i32 %.unpack, %.unpack46
  br i1 %cmp.i53, label %lor.lhs.false15.land.rhs_crit_edge, label %lor.lhs.false20

lor.lhs.false15.land.rhs_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %uid21 = getelementptr inbounds %struct.fown_struct, ptr %fown, i32 0, i32 3
  %9 = ptrtoint ptr %uid21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack47 = load i32, ptr %uid21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack47, i32 %.unpack44)
  %cmp.i54 = icmp eq i32 %.unpack47, %.unpack44
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack47, i32 %.unpack46)
  %cmp.i55 = icmp eq i32 %.unpack47, %.unpack46
  %or.cond = select i1 %cmp.i54, i1 true, i1 %cmp.i55
  br i1 %or.cond, label %lor.lhs.false20.land.rhs_crit_edge, label %lor.lhs.false20.land.end_crit_edge

lor.lhs.false20.land.end_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

lor.lhs.false20.land.rhs_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false20.land.rhs_crit_edge, %lor.lhs.false15.land.rhs_crit_edge, %lor.lhs.false.land.rhs_crit_edge, %do.end7.land.rhs_crit_edge
  %call32 = tail call i32 @security_file_send_sigiotask(ptr noundef %p, ptr noundef %fown, i32 noundef %sig) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %phi.cast = zext i1 %tobool33.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false20.land.end_crit_edge
  %10 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %lor.lhs.false20.land.end_crit_edge ]
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i56, label %land.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

land.end.rcu_read_unlock.exit_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %land.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %land.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %11 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i63 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_send_sigiotask(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !65, !67, !69, !70, !71, !73, !75, !77, !78, !80, !81, !82, !83, !85}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__ksymtab___f_setown, !1, !"__ksymtab___f_setown", i1 false, i1 false}
!1 = !{!"../fs/fcntl.c", i32 112, i32 1}
!2 = !{ptr @__ksymtab_f_setown, !3, !"__ksymtab_f_setown", i1 false, i1 false}
!3 = !{!"../fs/fcntl.c", i32 143, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/fcntl.c", i32 457, i32 1}
!6 = !{ptr @event_enter__fcntl, !5, !"event_enter__fcntl", i1 false, i1 false}
!7 = !{ptr @__event_enter__fcntl, !5, !"__event_enter__fcntl", i1 false, i1 false}
!8 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__fcntl, !5, !"event_exit__fcntl", i1 false, i1 false}
!10 = !{ptr @__event_exit__fcntl, !5, !"__event_exit__fcntl", i1 false, i1 false}
!11 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__fcntl, !5, !"__syscall_meta__fcntl", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__fcntl, !5, !"__p_syscall_meta__fcntl", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/fcntl.c", i32 481, i32 1}
!16 = !{ptr @event_enter__fcntl64, !15, !"event_enter__fcntl64", i1 false, i1 false}
!17 = !{ptr @__event_enter__fcntl64, !15, !"__event_enter__fcntl64", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @event_exit__fcntl64, !15, !"event_exit__fcntl64", i1 false, i1 false}
!20 = !{ptr @__event_exit__fcntl64, !15, !"__event_exit__fcntl64", i1 false, i1 false}
!21 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__syscall_meta__fcntl64, !15, !"__syscall_meta__fcntl64", i1 false, i1 false}
!23 = !{ptr @__p_syscall_meta__fcntl64, !15, !"__p_syscall_meta__fcntl64", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../fs/fcntl.c", i32 811, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../fs/fcntl.c", i32 852, i32 3}
!30 = !{ptr @fasync_insert_entry.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/fcntl.c", i32 944, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__ksymtab_fasync_helper, !34, !"__ksymtab_fasync_helper", i1 false, i1 false}
!34 = !{!"../fs/fcntl.c", i32 998, i32 1}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../fs/fcntl.c", i32 1035, i32 19}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__ksymtab_kill_fasync, !39, !"__ksymtab_kill_fasync", i1 false, i1 false}
!39 = !{!"../fs/fcntl.c", i32 1039, i32 1}
!40 = !{ptr @__initcall__kmod_fcntl__280_1059_fcntl_init6, !41, !"__initcall__kmod_fcntl__280_1059_fcntl_init6", i1 false, i1 false}
!41 = !{!"../fs/fcntl.c", i32 1059, i32 1}
!42 = !{ptr @fasync_cache, !43, !"fasync_cache", i1 false, i1 false}
!43 = !{!"../fs/fcntl.c", i32 863, i32 27}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../fs/fcntl.c", i32 98, i32 30}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @types__fcntl, !5, !"types__fcntl", i1 false, i1 false}
!56 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @args__fcntl, !5, !"args__fcntl", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../fs/fcntl.c", i32 248, i32 35}
!69 = !{ptr @types__fcntl64, !15, !"types__fcntl64", i1 false, i1 false}
!70 = !{ptr @args__fcntl64, !15, !"args__fcntl64", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../fs/fcntl.c", i32 724, i32 9}
!73 = !{ptr @band_table, !74, !"band_table", i1 false, i1 false}
!74 = !{!"../fs/fcntl.c", i32 708, i32 23}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/fcntl.c", i32 862, i32 8}
!77 = !{ptr @fasync_lock, !76, !"fasync_lock", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/fcntl.c", i32 1010, i32 4}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @kill_fasync_rcu._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @kill_fasync_rcu._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../fs/fcntl.c", i32 1024, i32 8}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/fcntl.c", i32 1053, i32 35}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148736564, i64 2148736596, i64 2148736625, i64 2148736659, i64 2148736690, i64 2148736713}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2149547480}
!101 = !{i64 2149547746}
!102 = !{!103}
!103 = distinct !{!103, !104, !"fdget_raw: %agg.result"}
!104 = distinct !{!104, !"fdget_raw"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"fdget_raw: %agg.result"}
!107 = distinct !{!107, !"fdget_raw"}
!108 = !{i64 4743068}
!109 = !{i64 4743265}
!110 = !{i64 2152228498}
!111 = !{i64 2152247513, i64 2152247538}
!112 = !{i64 2155089386, i64 2155089861, i64 2155089423, i64 2155089479, i64 2155089513, i64 2155089537, i64 2155089578, i64 2155089599, i64 2155089627, i64 2155089661}
!113 = !{i64 2155146632}
!114 = !{i64 2152486494}
!115 = !{i64 2152248194, i64 2152248219}
!116 = !{!"auto-init"}
!117 = !{i64 2155040876, i64 2155041156, i64 2155041490, i64 2155041824}
!118 = !{i64 2155049660, i64 2155049940, i64 2155050274, i64 2155050608}
