; ModuleID = '/llk/IR_all_yes/fs/readdir.c_pt.bc'
source_filename = "../fs/readdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iterate_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_iterate_dir\09\09\09\09"
module asm "\09.long\09__crc_iterate_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iterate_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22iterate_dir\22\09\09\09\09\09"
module asm "__kstrtabns_iterate_dir:\09\09\09\09\09"
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
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.101, %struct.list_head, %struct.list_head, %union.anon.102 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.spinlock, i32 }
%union.anon.101 = type { %struct.list_head }
%union.anon.102 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.readdir_callback = type { %struct.dir_context, ptr, i32 }
%struct.getdents_callback = type { %struct.dir_context, ptr, i32, i32, i32 }
%struct.linux_dirent = type { i32, i32, i16, [1 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.getdents_callback64 = type { %struct.dir_context, ptr, i32, i32, i32 }
%struct.linux_dirent64 = type { i64, i64, i16, i8, [0 x i8] }
%struct.old_linux_dirent = type { i32, i32, i16, [1 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_iterate_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_iterate_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_iterate_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iterate_dir to i32), ptr @__kstrtab_iterate_dir, ptr @__kstrtabns_iterate_dir }, section "___ksymtab+iterate_dir", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_old_readdir\00", [42 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__old_readdir = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__old_readdir, ptr @args__old_readdir, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_readdir, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_readdir, i64 20) }, ptr @event_enter__old_readdir, ptr @event_exit__old_readdir }, align 4
@event_enter__old_readdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__old_readdir, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_readdir = internal global ptr @event_enter__old_readdir, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_old_readdir\00", [43 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__old_readdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__old_readdir, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_readdir = internal global ptr @event_exit__old_readdir, section "_ftrace_events", align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_old_readdir\00", [16 x i8] zeroinitializer }, align 32
@types__old_readdir = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@args__old_readdir = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_readdir = internal global ptr @__syscall_meta__old_readdir, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_getdents\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__getdents = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__getdents, ptr @args__getdents, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getdents, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getdents, i64 20) }, ptr @event_enter__getdents, ptr @event_exit__getdents }, align 4
@event_enter__getdents = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__getdents, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getdents = internal global ptr @event_enter__getdents, section "_ftrace_events", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_getdents\00", [46 x i8] zeroinitializer }, align 32
@event_exit__getdents = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__getdents, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getdents = internal global ptr @event_exit__getdents, section "_ftrace_events", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_getdents\00", [19 x i8] zeroinitializer }, align 32
@types__getdents = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.16, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@args__getdents = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getdents = internal global ptr @__syscall_meta__getdents, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_getdents64\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__getdents64 = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 3, ptr @types__getdents64, ptr @args__getdents64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getdents64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getdents64, i64 20) }, ptr @event_enter__getdents64, ptr @event_exit__getdents64 }, align 4
@event_enter__getdents64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__getdents64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getdents64 = internal global ptr @event_enter__getdents64, section "_ftrace_events", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_getdents64\00", [44 x i8] zeroinitializer }, align 32
@event_exit__getdents64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__getdents64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getdents64 = internal global ptr @event_exit__getdents64, section "_ftrace_events", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_getdents64\00", [17 x i8] zeroinitializer }, align 32
@types__getdents64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.17, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@args__getdents64 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getdents64 = internal global ptr @__syscall_meta__getdents64, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"struct old_linux_dirent *\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dirent\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/readdir.c\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"struct linux_dirent *\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct linux_dirent64 *\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"event_enter__old_readdir\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"event_exit__old_readdir\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"types__old_readdir\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"args__old_readdir\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"event_enter__getdents\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"event_exit__getdents\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"types__getdents\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"args__getdents\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"event_enter__getdents64\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"event_exit__getdents64\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"types__getdents64\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"args__getdents64\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 180, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 167, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 143, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 271, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [16 x i8] c"../fs/readdir.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 354, i32 1 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__event_enter__getdents, ptr @__event_enter__getdents64, ptr @__event_enter__old_readdir, ptr @__event_exit__getdents, ptr @__event_exit__getdents64, ptr @__event_exit__old_readdir, ptr @__ksymtab_iterate_dir, ptr @__p_syscall_meta__getdents, ptr @__p_syscall_meta__getdents64, ptr @__p_syscall_meta__old_readdir, ptr @__syscall_meta__getdents, ptr @__syscall_meta__getdents64, ptr @__syscall_meta__old_readdir, ptr @event_enter__getdents, ptr @event_enter__getdents64, ptr @event_enter__old_readdir, ptr @event_exit__getdents, ptr @event_exit__getdents64, ptr @event_exit__old_readdir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__old_readdir, ptr @args__old_readdir, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__getdents, ptr @args__getdents, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__getdents64, ptr @args__getdents64, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_readdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_readdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_readdir to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_readdir to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getdents to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getdents to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getdents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getdents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getdents64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getdents64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getdents64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getdents64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_old_readdir = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_old_readdir
@sys_getdents = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_getdents
@sys_getdents64 = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_getdents64

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iterate_dir(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %iterate_shared = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %iterate_shared to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iterate_shared, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.end4.thread

if.else:                                          ; preds = %entry
  %iterate = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %iterate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iterate, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else.out_crit_edge, label %if.end4

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.else
  %call5 = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else12, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4.thread:                                   ; preds = %entry
  %call561 = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call561)
  %tobool6.not62 = icmp eq i32 %call561, 0
  br i1 %tobool6.not62, label %if.then10, label %if.end4.thread.out_crit_edge

if.end4.thread.out_crit_edge:                     ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10:                                        ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #7
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call11 = tail call i32 @down_read_killable(ptr noundef %i_rwsem) #5
  br label %if.end15

if.else12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %i_rwsem13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call14 = tail call i32 @down_write_killable(ptr noundef %i_rwsem13) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then10
  %res.0 = phi i32 [ %call11, %if.then10 ], [ %call14, %if.else12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %tobool16.not = icmp eq i32 %res.0, 0
  br i1 %tobool16.not, label %if.end18, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end15
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end33_crit_edge

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then20:                                        ; preds = %if.end18
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %10 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %f_pos, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %pos, align 8
  %13 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_op, align 4
  %iterate28 = getelementptr inbounds %struct.file_operations, ptr %14, i32 0, i32 7
  %iterate_shared24 = getelementptr inbounds %struct.file_operations, ptr %14, i32 0, i32 8
  %iterate28.sink = select i1 %tobool.not, ptr %iterate28, ptr %iterate_shared24
  %15 = ptrtoint ptr %iterate28.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iterate28.sink, align 4
  %call29 = tail call i32 %16(ptr noundef %file, ptr noundef %ctx) #5
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pos, align 8
  %19 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %f_pos, align 8
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %20 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then20.fsnotify_access.exit_crit_edge

if.then20.fsnotify_access.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsnotify_access.exit

if.end.i.i:                                       ; preds = %if.then20
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 48
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #5
  %28 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_access.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.fsnotify_access.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fsnotify_access.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %25, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %32)
  %cmp2.i.i.i = icmp eq i16 %32, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %23, align 8
  %and5.i.i.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ 1073741825, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 3
  %35 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %36, %23
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %23, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #5
  br label %fsnotify_access.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %25, i32 noundef 0) #5
  br label %fsnotify_access.exit

fsnotify_access.exit:                             ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_access.exit_crit_edge, %if.then20.fsnotify_access.exit_crit_edge
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %37 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %38, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %fsnotify_access.exit.if.end33_crit_edge

fsnotify_access.exit.if.end33_crit_edge:          ; preds = %fsnotify_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then.i:                                        ; preds = %fsnotify_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then.i, %fsnotify_access.exit.if.end33_crit_edge, %if.end18.if.end33_crit_edge
  %res.2 = phi i32 [ -2, %if.end18.if.end33_crit_edge ], [ %call29, %fsnotify_access.exit.if.end33_crit_edge ], [ %call29, %if.then.i ]
  %i_rwsem.i60 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  br i1 %tobool.not, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @up_read(ptr noundef %i_rwsem.i60) #5
  br label %out

if.else36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @up_write(ptr noundef %i_rwsem.i60) #5
  br label %out

out:                                              ; preds = %if.else36, %if.then35, %if.end15.out_crit_edge, %if.end4.thread.out_crit_edge, %if.end4.out_crit_edge, %if.else.out_crit_edge
  %res.3 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ %res.0, %if.end15.out_crit_edge ], [ %res.2, %if.then35 ], [ %res.2, %if.else36 ], [ -20, %if.else.out_crit_edge ], [ %call561, %if.end4.thread.out_crit_edge ]
  ret i32 %res.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_permission(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_readdir(i32 noundef %fd, i32 noundef %dirent, i32 %count) #0 align 64 {
entry:
  %buf.i = alloca %struct.readdir_callback, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %dirent to ptr
  %call.i.i = tail call i32 @__fdget_pos(i32 noundef %fd) #5, !noalias !59
  %and.i.i.i = and i32 %call.i.i, -4
  %1 = inttoptr i32 %and.i.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf.i) #5
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf.i, align 8
  store ptr @fillonedir, ptr %buf.i, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pos.i, align 8
  %dirent1.i = getelementptr inbounds %struct.readdir_callback, ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %dirent1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %dirent1.i, align 8
  %result.i = getelementptr inbounds %struct.readdir_callback, ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_old_readdir.exit_crit_edge, label %if.end.i

entry.__do_sys_old_readdir.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_old_readdir.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @iterate_dir(ptr noundef nonnull %1, ptr noundef nonnull %buf.i) #5
  %6 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 %call.i, i32 %7
  %and.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__f_unlock_pos(ptr noundef nonnull %1) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %and.i.i1.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i1.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__do_sys_old_readdir.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.__do_sys_old_readdir.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_old_readdir.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fput(ptr noundef nonnull %1) #5
  br label %__do_sys_old_readdir.exit

__do_sys_old_readdir.exit:                        ; preds = %if.then.i.i.i, %if.end.i.i.__do_sys_old_readdir.exit_crit_edge, %entry.__do_sys_old_readdir.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_old_readdir.exit_crit_edge ], [ %spec.select.i, %if.end.i.i.__do_sys_old_readdir.exit_crit_edge ], [ %spec.select.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getdents(i32 noundef %fd, i32 noundef %dirent, i32 noundef %count) #0 align 64 {
entry:
  %buf.i = alloca %struct.getdents_callback, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %dirent to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #5
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buf.i, align 8
  store ptr @filldir, ptr %buf.i, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pos.i, align 8
  %current_dir.i = getelementptr inbounds %struct.getdents_callback, ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %current_dir.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %0, ptr %current_dir.i, align 8
  %prev_reclen.i = getelementptr inbounds %struct.getdents_callback, ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %prev_reclen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prev_reclen.i, align 4
  %count1.i = getelementptr inbounds %struct.getdents_callback, ptr %buf.i, i32 0, i32 3
  %5 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %count1.i, align 8
  %error.i = getelementptr inbounds %struct.getdents_callback, ptr %buf.i, i32 0, i32 4
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error.i, align 4
  %call.i.i = tail call i32 @__fdget_pos(i32 noundef %fd) #5, !noalias !62
  %and.i.i.i = and i32 %call.i.i, -4
  %7 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_getdents.exit_crit_edge, label %if.end.i

entry.__do_sys_getdents.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_getdents.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @iterate_dir(ptr noundef nonnull %7, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %error2.0.i = phi i32 [ %9, %if.then5.i ], [ %call.i, %if.end.i.if.end7.i_crit_edge ]
  %10 = ptrtoint ptr %prev_reclen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prev_reclen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end22.i_crit_edge, label %if.then10.i

if.end7.i.if.end22.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then10.i:                                      ; preds = %if.end7.i
  %12 = ptrtoint ptr %current_dir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_dir.i, align 8
  %idx.neg.i = sub i32 0, %11
  %add.ptr.i = getelementptr i8, ptr %13, i32 %idx.neg.i
  %d_off.i = getelementptr inbounds %struct.linux_dirent, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos.i, align 8
  %conv.i = trunc i64 %15 to i32
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 293) #5
  %16 = call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !65
  %and.i.i = and i32 %18, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %19 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_off.i, i32 %conv.i, i32 -1226833921) #5, !srcloc !68
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not.i = icmp eq i32 %19, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then10.i.if.end22.i_crit_edge

if.then10.i.if.end22.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count1.i, align 8
  %sub.i = sub i32 %count, %21
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then10.i.if.end22.i_crit_edge, %if.end7.i.if.end22.i_crit_edge
  %error2.2.i = phi i32 [ %error2.0.i, %if.end7.i.if.end22.i_crit_edge ], [ %sub.i, %if.else.i ], [ -14, %if.then10.i.if.end22.i_crit_edge ]
  %and.i28.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28.i)
  %tobool.not.i.i = icmp eq i32 %and.i28.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end22.i.if.end.i.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__f_unlock_pos(ptr noundef nonnull %7) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end22.i.if.end.i.i_crit_edge
  %and.i.i29.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i29.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i29.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__do_sys_getdents.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.__do_sys_getdents.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_getdents.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fput(ptr noundef nonnull %7) #5
  br label %__do_sys_getdents.exit

__do_sys_getdents.exit:                           ; preds = %if.then.i.i.i, %if.end.i.i.__do_sys_getdents.exit_crit_edge, %entry.__do_sys_getdents.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_getdents.exit_crit_edge ], [ %error2.2.i, %if.end.i.i.__do_sys_getdents.exit_crit_edge ], [ %error2.2.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getdents64(i32 noundef %fd, i32 noundef %dirent, i32 noundef %count) #0 align 64 {
entry:
  %buf.i = alloca %struct.getdents_callback64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %dirent to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #5
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buf.i, align 8
  store ptr @filldir64, ptr %buf.i, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pos.i, align 8
  %current_dir.i = getelementptr inbounds %struct.getdents_callback64, ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %current_dir.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %0, ptr %current_dir.i, align 8
  %prev_reclen.i = getelementptr inbounds %struct.getdents_callback64, ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %prev_reclen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prev_reclen.i, align 4
  %count1.i = getelementptr inbounds %struct.getdents_callback64, ptr %buf.i, i32 0, i32 3
  %5 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %count1.i, align 8
  %error.i = getelementptr inbounds %struct.getdents_callback64, ptr %buf.i, i32 0, i32 4
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error.i, align 4
  %call.i.i = tail call i32 @__fdget_pos(i32 noundef %fd) #5, !noalias !69
  %and.i.i.i = and i32 %call.i.i, -4
  %7 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_getdents64.exit_crit_edge, label %if.end.i

entry.__do_sys_getdents64.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_getdents64.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @iterate_dir(ptr noundef nonnull %7, ptr noundef nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %error2.0.i = phi i32 [ %9, %if.then5.i ], [ %call.i, %if.end.i.if.end7.i_crit_edge ]
  %10 = ptrtoint ptr %prev_reclen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prev_reclen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end23.i_crit_edge, label %if.then10.i

if.end7.i.if.end23.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then10.i:                                      ; preds = %if.end7.i
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos.i, align 8
  %14 = ptrtoint ptr %current_dir.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %current_dir.i, align 8
  %idx.neg.i = sub i32 0, %11
  %add.ptr.i = getelementptr i8, ptr %15, i32 %idx.neg.i
  %d_off15.i = getelementptr inbounds %struct.linux_dirent64, ptr %add.ptr.i, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 377) #5
  %16 = call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !65
  %and.i.i = and i32 %18, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %19 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_off15.i, i64 %13, i32 -1226833921) #5, !srcloc !72
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not.i = icmp eq i32 %19, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then10.i.if.end23.i_crit_edge

if.then10.i.if.end23.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count1.i, align 8
  %sub.i = sub i32 %count, %21
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then10.i.if.end23.i_crit_edge, %if.end7.i.if.end23.i_crit_edge
  %error2.2.i = phi i32 [ %error2.0.i, %if.end7.i.if.end23.i_crit_edge ], [ %sub.i, %if.else.i ], [ -14, %if.then10.i.if.end23.i_crit_edge ]
  %and.i29.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i.i = icmp eq i32 %and.i29.i, 0
  br i1 %tobool.not.i.i, label %if.end23.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end23.i.if.end.i.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__f_unlock_pos(ptr noundef nonnull %7) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end23.i.if.end.i.i_crit_edge
  %and.i.i30.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i30.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.__do_sys_getdents64.exit_crit_edge, label %if.then.i.i.i

if.end.i.i.__do_sys_getdents64.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_getdents64.exit

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fput(ptr noundef nonnull %7) #5
  br label %__do_sys_getdents64.exit

__do_sys_getdents64.exit:                         ; preds = %if.then.i.i.i, %if.end.i.i.__do_sys_getdents64.exit_crit_edge, %entry.__do_sys_getdents64.exit_crit_edge
  %retval.0.i = phi i32 [ -9, %entry.__do_sys_getdents64.exit_crit_edge ], [ %error2.2.i, %if.end.i.i.__do_sys_getdents64.exit_crit_edge ], [ %error2.2.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fillonedir(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.readdir_callback, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup145_crit_edge

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

if.end:                                           ; preds = %entry
  %2 = add i32 %namlen, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %2)
  %3 = icmp ult i32 %2, -4095
  br i1 %3, label %if.end.cleanup145.sink.split_crit_edge, label %if.end.i182

if.end.cleanup145.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

if.end.i182:                                      ; preds = %if.end
  %call.i181 = tail call ptr @memchr(ptr noundef %name, i32 noundef 47, i32 noundef %namlen) #8
  %tobool.not.i = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i, label %if.end5, label %if.end.i182.cleanup145.sink.split_crit_edge

if.end.i182.cleanup145.sink.split_crit_edge:      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

if.end5:                                          ; preds = %if.end.i182
  %conv = trunc i64 %ino to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %ino)
  %4 = icmp ult i64 %ino, 4294967296
  br i1 %4, label %if.end11, label %if.end5.cleanup145.sink.split_crit_edge

if.end5.cleanup145.sink.split_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

if.end11:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %result, align 4
  %dirent13 = getelementptr inbounds %struct.readdir_callback, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %dirent13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dirent13, align 8
  %d_name = getelementptr inbounds %struct.old_linux_dirent, ptr %7, i32 0, i32 3
  %add.ptr14 = getelementptr i8, ptr %d_name, i32 %namlen
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 1
  %8 = ptrtoint ptr %add.ptr15 to i32
  %9 = ptrtoint ptr %7 to i32
  %sub = sub i32 %8, %9
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %sub, i32 -1226833920) #9, !srcloc !73
  %asmresult = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp18 = icmp eq i32 %asmresult, 0
  br i1 %cmp18, label %do.body, label %if.end11.cleanup145.sink.split_crit_edge

if.end11.cleanup145.sink.split_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

do.body:                                          ; preds = %if.end11
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 167) #5
  %11 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !65
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %conv, i32 -1226833921) #5, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %do.body34, label %do.body.cleanup145.sink.split_crit_edge, !prof !75

do.body.cleanup145.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

do.body34:                                        ; preds = %do.body
  %d_offset = getelementptr inbounds %struct.old_linux_dirent, ptr %7, i32 0, i32 1
  %conv39 = trunc i64 %offset to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 168) #5
  %15 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i169 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i169 to ptr
  %cpu_domain.i.i170 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i170) #4, !srcloc !65
  %and.i171 = and i32 %17, -13
  %or.i172 = or i32 %and.i171, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i172) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_offset, i32 %conv39, i32 -1226833921) #5, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool51.not = icmp eq i32 %18, 0
  br i1 %tobool51.not, label %do.body62, label %do.body34.cleanup145.sink.split_crit_edge, !prof !75

do.body34.cleanup145.sink.split_crit_edge:        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

do.body62:                                        ; preds = %do.body34
  %d_namlen = getelementptr inbounds %struct.old_linux_dirent, ptr %7, i32 0, i32 2
  %conv67 = trunc i32 %namlen to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 169) #5
  %19 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i173 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i173 to ptr
  %cpu_domain.i.i174 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i174) #4, !srcloc !65
  %and.i175 = and i32 %21, -13
  %or.i176 = or i32 %and.i175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i176) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_namlen, i16 %conv67, i32 -1226833921) #5, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool79.not = icmp eq i32 %22, 0
  br i1 %tobool79.not, label %do.body90, label %do.body62.cleanup145.sink.split_crit_edge, !prof !75

do.body62.cleanup145.sink.split_crit_edge:        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

do.body90:                                        ; preds = %do.body62
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 170) #5
  %23 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i177 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i177 to ptr
  %cpu_domain.i.i178 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i178) #4, !srcloc !65
  %and.i179 = and i32 %25, -13
  %or.i180 = or i32 %and.i179, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i180) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr14, i8 0, i32 -1226833921) #5, !srcloc !78
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool110.not = icmp eq i32 %26, 0
  br i1 %tobool110.not, label %do.body121, label %do.body90.cleanup145.sink.split_crit_edge, !prof !75

do.body90.cleanup145.sink.split_crit_edge:        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

do.body121:                                       ; preds = %do.body90
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 143) #5
  %call.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i, label %do.body121.cleanup145.sink.split_crit_edge, label %if.end.i

do.body121.cleanup145.sink.split_crit_edge:       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

if.end.i:                                         ; preds = %do.body121
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %namlen) #5
  tail call void @__check_object_size(ptr noundef %name, i32 noundef %namlen, i1 noundef zeroext true) #5
  %call.i8.i = tail call i32 @arm_copy_to_user(ptr noundef %d_name, ptr noundef %name, i32 noundef %namlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool123.not = icmp eq i32 %call.i8.i, 0
  br i1 %tobool123.not, label %if.end.i.cleanup145_crit_edge, label %if.end.i.cleanup145.sink.split_crit_edge

if.end.i.cleanup145.sink.split_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145.sink.split

if.end.i.cleanup145_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup145

cleanup145.sink.split:                            ; preds = %if.end.i.cleanup145.sink.split_crit_edge, %do.body121.cleanup145.sink.split_crit_edge, %do.body90.cleanup145.sink.split_crit_edge, %do.body62.cleanup145.sink.split_crit_edge, %do.body34.cleanup145.sink.split_crit_edge, %do.body.cleanup145.sink.split_crit_edge, %if.end11.cleanup145.sink.split_crit_edge, %if.end5.cleanup145.sink.split_crit_edge, %if.end.i182.cleanup145.sink.split_crit_edge, %if.end.cleanup145.sink.split_crit_edge
  %.sink = phi i32 [ -5, %if.end.cleanup145.sink.split_crit_edge ], [ -5, %if.end.i182.cleanup145.sink.split_crit_edge ], [ -75, %if.end5.cleanup145.sink.split_crit_edge ], [ -14, %do.body121.cleanup145.sink.split_crit_edge ], [ -14, %if.end.i.cleanup145.sink.split_crit_edge ], [ -14, %do.body90.cleanup145.sink.split_crit_edge ], [ -14, %do.body62.cleanup145.sink.split_crit_edge ], [ -14, %do.body34.cleanup145.sink.split_crit_edge ], [ -14, %do.body.cleanup145.sink.split_crit_edge ], [ -14, %if.end11.cleanup145.sink.split_crit_edge ]
  %27 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %result, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %cleanup145.sink.split, %if.end.i.cleanup145_crit_edge, %entry.cleanup145_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup145_crit_edge ], [ 0, %if.end.i.cleanup145_crit_edge ], [ %.sink, %cleanup145.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_pos(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_unlock_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filldir(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add2 = add i32 %namlen, 15
  %and = and i32 %add2, -4
  %0 = add i32 %namlen, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %0)
  %1 = icmp ult i32 %0, -4095
  br i1 %1, label %entry.verify_dirent_name.exit.thread_crit_edge, label %if.end.i245

entry.verify_dirent_name.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_dirent_name.exit.thread

if.end.i245:                                      ; preds = %entry
  %call.i244 = tail call ptr @memchr(ptr noundef %name, i32 noundef 47, i32 noundef %namlen) #8
  %tobool.not.i = icmp eq ptr %call.i244, null
  br i1 %tobool.not.i, label %if.end, label %if.end.i245.verify_dirent_name.exit.thread_crit_edge

if.end.i245.verify_dirent_name.exit.thread_crit_edge: ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_dirent_name.exit.thread

verify_dirent_name.exit.thread:                   ; preds = %if.end.i245.verify_dirent_name.exit.thread_crit_edge, %entry.verify_dirent_name.exit.thread_crit_edge
  %error252 = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %error252 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -5, ptr %error252, align 4
  br label %cleanup190

if.end:                                           ; preds = %if.end.i245
  %error = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 4
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -22, ptr %error, align 4
  %count = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp sgt i32 %and, %5
  br i1 %cmp, label %if.end.cleanup190_crit_edge, label %if.end9

if.end.cleanup190_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup190

if.end9:                                          ; preds = %if.end
  %conv = trunc i64 %ino to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %ino)
  %6 = icmp ult i64 %ino, 4294967296
  br i1 %6, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -75, ptr %error, align 4
  br label %cleanup190

if.end15:                                         ; preds = %if.end9
  %prev_reclen16 = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %prev_reclen16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prev_reclen16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %land.lhs.true

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %10 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i247 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i247 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i248 = icmp eq i32 %18, 0
  br i1 %tobool.not.i248, label %signal_pending.exit, label %land.lhs.true.cleanup190_crit_edge, !prof !75

land.lhs.true.cleanup190_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup190

signal_pending.exit:                              ; preds = %land.lhs.true
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool20.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool20.not, label %signal_pending.exit.if.end22_crit_edge, label %signal_pending.exit.cleanup190_crit_edge

signal_pending.exit.cleanup190_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup190

signal_pending.exit.if.end22_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %signal_pending.exit.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %current_dir = getelementptr inbounds %struct.getdents_callback, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %current_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_dir, align 8
  %idx.neg = sub i32 0, %9
  %add.ptr23 = getelementptr i8, ptr %22, i32 %idx.neg
  %add24 = add i32 %9, %and
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr23, i32 %add24, i32 -1226833920) #9, !srcloc !79
  %asmresult = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp27 = icmp eq i32 %asmresult, 0
  br i1 %cmp27, label %do.body, label %if.end22.efault_crit_edge

if.end22.efault_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body:                                          ; preds = %if.end22
  %d_off = getelementptr inbounds %struct.linux_dirent, ptr %add.ptr23, i32 0, i32 1
  %conv32 = trunc i64 %offset to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 253) #5
  %24 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !65
  %and.i = and i32 %26, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_off, i32 %conv32, i32 -1226833921) #5, !srcloc !80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool36.not = icmp eq i32 %27, 0
  br i1 %tobool36.not, label %do.body47, label %do.body.efault_crit_edge, !prof !75

do.body.efault_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body47:                                        ; preds = %do.body
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 254) #5
  %28 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i228 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i228 to ptr
  %cpu_domain.i.i229 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i229) #4, !srcloc !65
  %and.i230 = and i32 %30, -13
  %or.i231 = or i32 %and.i230, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i231) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %22, i32 %conv, i32 -1226833921) #5, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool64.not = icmp eq i32 %31, 0
  br i1 %tobool64.not, label %do.body75, label %do.body47.efault_crit_edge, !prof !75

do.body47.efault_crit_edge:                       ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body75:                                        ; preds = %do.body47
  %d_reclen = getelementptr inbounds %struct.linux_dirent, ptr %22, i32 0, i32 2
  %conv80 = trunc i32 %and to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 255) #5
  %32 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i232 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i232 to ptr
  %cpu_domain.i.i233 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i233) #4, !srcloc !65
  %and.i234 = and i32 %34, -13
  %or.i235 = or i32 %and.i234, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i235) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen, i16 %conv80, i32 -1226833921) #5, !srcloc !82
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool92.not = icmp eq i32 %35, 0
  br i1 %tobool92.not, label %do.body103, label %do.body75.efault_crit_edge, !prof !75

do.body75.efault_crit_edge:                       ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body103:                                       ; preds = %do.body75
  %add.ptr107 = getelementptr i8, ptr %22, i32 %and
  %add.ptr108 = getelementptr i8, ptr %add.ptr107, i32 -1
  %conv110 = trunc i32 %d_type to i8
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 256) #5
  %36 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i236 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i236 to ptr
  %cpu_domain.i.i237 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i237) #4, !srcloc !65
  %and.i238 = and i32 %38, -13
  %or.i239 = or i32 %and.i238, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i239) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr108, i8 %conv110, i32 -1226833921) #5, !srcloc !83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool122.not = icmp eq i32 %39, 0
  br i1 %tobool122.not, label %do.body133, label %do.body103.efault_crit_edge, !prof !75

do.body103.efault_crit_edge:                      ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body133:                                       ; preds = %do.body103
  %d_name = getelementptr inbounds %struct.linux_dirent, ptr %22, i32 0, i32 3
  %add.ptr138 = getelementptr i8, ptr %d_name, i32 %namlen
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 257) #5
  %40 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i240 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i240 to ptr
  %cpu_domain.i.i241 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i241) #4, !srcloc !65
  %and.i242 = and i32 %42, -13
  %or.i243 = or i32 %and.i242, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i243) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr138, i8 0, i32 -1226833921) #5, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool151.not = icmp eq i32 %43, 0
  br i1 %tobool151.not, label %do.body162, label %do.body133.efault_crit_edge, !prof !75

do.body133.efault_crit_edge:                      ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body162:                                       ; preds = %do.body133
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 143) #5
  %call.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i, label %do.body162.efault_crit_edge, label %if.end.i

do.body162.efault_crit_edge:                      ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

if.end.i:                                         ; preds = %do.body162
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %namlen) #5
  tail call void @__check_object_size(ptr noundef %name, i32 noundef %namlen, i1 noundef zeroext true) #5
  %call.i8.i = tail call i32 @arm_copy_to_user(ptr noundef %d_name, ptr noundef %name, i32 noundef %namlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool164.not = icmp eq i32 %call.i8.i, 0
  br i1 %tobool164.not, label %do.end181, label %if.end.i.efault_crit_edge

if.end.i.efault_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.end181:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %current_dir to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr107, ptr %current_dir, align 8
  %45 = ptrtoint ptr %prev_reclen16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and, ptr %prev_reclen16, align 4
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count, align 8
  %sub = sub i32 %47, %and
  store i32 %sub, ptr %count, align 8
  br label %cleanup190

efault:                                           ; preds = %if.end.i.efault_crit_edge, %do.body162.efault_crit_edge, %do.body133.efault_crit_edge, %do.body103.efault_crit_edge, %do.body75.efault_crit_edge, %do.body47.efault_crit_edge, %do.body.efault_crit_edge, %if.end22.efault_crit_edge
  %48 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -14, ptr %error, align 4
  br label %cleanup190

cleanup190:                                       ; preds = %efault, %do.end181, %signal_pending.exit.cleanup190_crit_edge, %land.lhs.true.cleanup190_crit_edge, %if.then13, %if.end.cleanup190_crit_edge, %verify_dirent_name.exit.thread
  %retval.0 = phi i32 [ -75, %if.then13 ], [ -14, %efault ], [ 0, %do.end181 ], [ -22, %if.end.cleanup190_crit_edge ], [ -4, %signal_pending.exit.cleanup190_crit_edge ], [ -5, %verify_dirent_name.exit.thread ], [ -4, %land.lhs.true.cleanup190_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filldir64(ptr nocapture noundef %ctx, ptr noundef %name, i32 noundef %namlen, i64 noundef %offset, i64 noundef %ino, i32 noundef %d_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add2 = add i32 %namlen, 27
  %and = and i32 %add2, -8
  %0 = add i32 %namlen, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %0)
  %1 = icmp ult i32 %0, -4095
  br i1 %1, label %entry.verify_dirent_name.exit.thread_crit_edge, label %if.end.i229

entry.verify_dirent_name.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_dirent_name.exit.thread

if.end.i229:                                      ; preds = %entry
  %call.i228 = tail call ptr @memchr(ptr noundef %name, i32 noundef 47, i32 noundef %namlen) #8
  %tobool.not.i = icmp eq ptr %call.i228, null
  br i1 %tobool.not.i, label %if.end, label %if.end.i229.verify_dirent_name.exit.thread_crit_edge

if.end.i229.verify_dirent_name.exit.thread_crit_edge: ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #7
  br label %verify_dirent_name.exit.thread

verify_dirent_name.exit.thread:                   ; preds = %if.end.i229.verify_dirent_name.exit.thread_crit_edge, %entry.verify_dirent_name.exit.thread_crit_edge
  %error236 = getelementptr inbounds %struct.getdents_callback64, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %error236 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -5, ptr %error236, align 4
  br label %cleanup179

if.end:                                           ; preds = %if.end.i229
  %error = getelementptr inbounds %struct.getdents_callback64, ptr %ctx, i32 0, i32 4
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -22, ptr %error, align 4
  %count = getelementptr inbounds %struct.getdents_callback64, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp sgt i32 %and, %5
  br i1 %cmp, label %if.end.cleanup179_crit_edge, label %if.end9

if.end.cleanup179_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup179

if.end9:                                          ; preds = %if.end
  %prev_reclen10 = getelementptr inbounds %struct.getdents_callback64, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %prev_reclen10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prev_reclen10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %land.lhs.true

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %8 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i231 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i231 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i232 = icmp eq i32 %16, 0
  br i1 %tobool.not.i232, label %signal_pending.exit, label %land.lhs.true.cleanup179_crit_edge, !prof !75

land.lhs.true.cleanup179_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup179

signal_pending.exit:                              ; preds = %land.lhs.true
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool14.not, label %signal_pending.exit.if.end16_crit_edge, label %signal_pending.exit.cleanup179_crit_edge

signal_pending.exit.cleanup179_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup179

signal_pending.exit.if.end16_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %signal_pending.exit.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %current_dir = getelementptr inbounds %struct.getdents_callback64, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %current_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %current_dir, align 8
  %idx.neg = sub i32 0, %7
  %add.ptr17 = getelementptr i8, ptr %20, i32 %idx.neg
  %add18 = add i32 %7, %and
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr17, i32 %add18, i32 -1226833920) #9, !srcloc !85
  %asmresult = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp21 = icmp eq i32 %asmresult, 0
  br i1 %cmp21, label %do.body, label %if.end16.efault_crit_edge

if.end16.efault_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body:                                          ; preds = %if.end16
  %d_off = getelementptr inbounds %struct.linux_dirent64, ptr %add.ptr17, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 335) #5
  %22 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !65
  %and.i = and i32 %24, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_off, i64 %offset, i32 -1226833921) #5, !srcloc !86
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool28.not = icmp eq i32 %25, 0
  br i1 %tobool28.not, label %do.body39, label %do.body.efault_crit_edge, !prof !75

do.body.efault_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body39:                                        ; preds = %do.body
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 336) #5
  %26 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i212 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i212 to ptr
  %cpu_domain.i.i213 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i213) #4, !srcloc !65
  %and.i214 = and i32 %28, -13
  %or.i215 = or i32 %and.i214, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i215) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i64 %ino, i32 -1226833921) #5, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool55.not = icmp eq i32 %29, 0
  br i1 %tobool55.not, label %do.body66, label %do.body39.efault_crit_edge, !prof !75

do.body39.efault_crit_edge:                       ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body66:                                        ; preds = %do.body39
  %d_reclen = getelementptr inbounds %struct.linux_dirent64, ptr %20, i32 0, i32 2
  %conv = trunc i32 %and to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 337) #5
  %30 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i216 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i216 to ptr
  %cpu_domain.i.i217 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i217) #4, !srcloc !65
  %and.i218 = and i32 %32, -13
  %or.i219 = or i32 %and.i218, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i219) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_reclen, i16 %conv, i32 -1226833921) #5, !srcloc !88
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool82.not = icmp eq i32 %33, 0
  br i1 %tobool82.not, label %do.body93, label %do.body66.efault_crit_edge, !prof !75

do.body66.efault_crit_edge:                       ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body93:                                        ; preds = %do.body66
  %d_type97 = getelementptr inbounds %struct.linux_dirent64, ptr %20, i32 0, i32 3
  %conv99 = trunc i32 %d_type to i8
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 338) #5
  %34 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i220 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i220 to ptr
  %cpu_domain.i.i221 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i221) #4, !srcloc !65
  %and.i222 = and i32 %36, -13
  %or.i223 = or i32 %and.i222, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i223) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %d_type97, i8 %conv99, i32 -1226833921) #5, !srcloc !89
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool111.not = icmp eq i32 %37, 0
  br i1 %tobool111.not, label %do.body122, label %do.body93.efault_crit_edge, !prof !75

do.body93.efault_crit_edge:                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body122:                                       ; preds = %do.body93
  %d_name = getelementptr inbounds %struct.linux_dirent64, ptr %20, i32 0, i32 4
  %add.ptr127 = getelementptr i8, ptr %d_name, i32 %namlen
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 339) #5
  %38 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i224 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i224 to ptr
  %cpu_domain.i.i225 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i225) #4, !srcloc !65
  %and.i226 = and i32 %40, -13
  %or.i227 = or i32 %and.i226, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i227) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %41 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr127, i8 0, i32 -1226833921) #5, !srcloc !90
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool140.not = icmp eq i32 %41, 0
  br i1 %tobool140.not, label %do.body151, label %do.body122.efault_crit_edge, !prof !75

do.body122.efault_crit_edge:                      ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.body151:                                       ; preds = %do.body122
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 143) #5
  %call.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i, label %do.body151.efault_crit_edge, label %if.end.i

do.body151.efault_crit_edge:                      ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

if.end.i:                                         ; preds = %do.body151
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %name, i32 noundef %namlen) #5
  tail call void @__check_object_size(ptr noundef %name, i32 noundef %namlen, i1 noundef zeroext true) #5
  %call.i8.i = tail call i32 @arm_copy_to_user(ptr noundef %d_name, ptr noundef %name, i32 noundef %namlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool153.not = icmp eq i32 %call.i8.i, 0
  br i1 %tobool153.not, label %do.end170, label %if.end.i.efault_crit_edge

if.end.i.efault_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efault

do.end170:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %prev_reclen10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %prev_reclen10, align 4
  %add.ptr172 = getelementptr i8, ptr %20, i32 %and
  %43 = ptrtoint ptr %current_dir to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr172, ptr %current_dir, align 8
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count, align 8
  %sub = sub i32 %45, %and
  store i32 %sub, ptr %count, align 8
  br label %cleanup179

efault:                                           ; preds = %if.end.i.efault_crit_edge, %do.body151.efault_crit_edge, %do.body122.efault_crit_edge, %do.body93.efault_crit_edge, %do.body66.efault_crit_edge, %do.body39.efault_crit_edge, %do.body.efault_crit_edge, %if.end16.efault_crit_edge
  %46 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -14, ptr %error, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %efault, %do.end170, %signal_pending.exit.cleanup179_crit_edge, %land.lhs.true.cleanup179_crit_edge, %if.end.cleanup179_crit_edge, %verify_dirent_name.exit.thread
  %retval.0 = phi i32 [ -14, %efault ], [ 0, %do.end170 ], [ -22, %if.end.cleanup179_crit_edge ], [ -4, %signal_pending.exit.cleanup179_crit_edge ], [ -5, %verify_dirent_name.exit.thread ], [ -4, %land.lhs.true.cleanup179_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !46, !47, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_iterate_dir, !1, !"__ksymtab_iterate_dir", i1 false, i1 false}
!1 = !{!"../fs/readdir.c", i32 79, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/readdir.c", i32 180, i32 1}
!4 = !{ptr @event_enter__old_readdir, !3, !"event_enter__old_readdir", i1 false, i1 false}
!5 = !{ptr @__event_enter__old_readdir, !3, !"__event_enter__old_readdir", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__old_readdir, !3, !"event_exit__old_readdir", i1 false, i1 false}
!8 = !{ptr @__event_exit__old_readdir, !3, !"__event_exit__old_readdir", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__old_readdir, !3, !"__syscall_meta__old_readdir", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__old_readdir, !3, !"__p_syscall_meta__old_readdir", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/readdir.c", i32 271, i32 1}
!14 = !{ptr @event_enter__getdents, !13, !"event_enter__getdents", i1 false, i1 false}
!15 = !{ptr @__event_enter__getdents, !13, !"__event_enter__getdents", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @event_exit__getdents, !13, !"event_exit__getdents", i1 false, i1 false}
!18 = !{ptr @__event_exit__getdents, !13, !"__event_exit__getdents", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__syscall_meta__getdents, !13, !"__syscall_meta__getdents", i1 false, i1 false}
!21 = !{ptr @__p_syscall_meta__getdents, !13, !"__p_syscall_meta__getdents", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/readdir.c", i32 354, i32 1}
!24 = !{ptr @event_enter__getdents64, !23, !"event_enter__getdents64", i1 false, i1 false}
!25 = !{ptr @__event_enter__getdents64, !23, !"__event_enter__getdents64", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__getdents64, !23, !"event_exit__getdents64", i1 false, i1 false}
!28 = !{ptr @__event_exit__getdents64, !23, !"__event_exit__getdents64", i1 false, i1 false}
!29 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__getdents64, !23, !"__syscall_meta__getdents64", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__getdents64, !23, !"__p_syscall_meta__getdents64", i1 false, i1 false}
!32 = !{ptr @.str.9, !3, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !3, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @types__old_readdir, !3, !"types__old_readdir", i1 false, i1 false}
!35 = !{ptr @.str.11, !3, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !3, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !3, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @args__old_readdir, !3, !"args__old_readdir", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/readdir.c", i32 167, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 143, i32 2}
!43 = !{ptr @.str.16, !13, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @types__getdents, !13, !"types__getdents", i1 false, i1 false}
!45 = !{ptr @args__getdents, !13, !"args__getdents", i1 false, i1 false}
!46 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @types__getdents64, !23, !"types__getdents64", i1 false, i1 false}
!48 = !{ptr @args__getdents64, !23, !"args__getdents64", i1 false, i1 false}
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
!59 = !{!60}
!60 = distinct !{!60, !61, !"fdget_pos: %agg.result"}
!61 = distinct !{!61, !"fdget_pos"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"fdget_pos: %agg.result"}
!64 = distinct !{!64, !"fdget_pos"}
!65 = !{i64 5233271}
!66 = !{i64 5233468}
!67 = !{i64 2152718701}
!68 = !{i64 2155399917, i64 2155400197, i64 2155400531, i64 2155400865}
!69 = !{!70}
!70 = distinct !{!70, !71, !"fdget_pos: %agg.result"}
!71 = distinct !{!71, !"fdget_pos"}
!72 = !{i64 2155538134, i64 2155538414, i64 2155538748, i64 2155539082}
!73 = !{i64 2155158801, i64 2155158826}
!74 = !{i64 2155178573, i64 2155178883, i64 2155179197, i64 2155179511}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2155200398, i64 2155200708, i64 2155201022, i64 2155201336}
!77 = !{i64 2155220755, i64 2155221065, i64 2155221379, i64 2155221693}
!78 = !{i64 2155241181, i64 2155241491, i64 2155241805, i64 2155242119}
!79 = !{i64 2155264753, i64 2155264778}
!80 = !{i64 2155284445, i64 2155284755, i64 2155285069, i64 2155285383}
!81 = !{i64 2155306219, i64 2155306529, i64 2155306843, i64 2155307157}
!82 = !{i64 2155326576, i64 2155326886, i64 2155327200, i64 2155327514}
!83 = !{i64 2155347203, i64 2155347513, i64 2155347827, i64 2155348141}
!84 = !{i64 2155369097, i64 2155369407, i64 2155369721, i64 2155370035}
!85 = !{i64 2155405109, i64 2155405134}
!86 = !{i64 2155426269, i64 2155426579, i64 2155426893, i64 2155427207}
!87 = !{i64 2155448031, i64 2155448341, i64 2155448655, i64 2155448969}
!88 = !{i64 2155466920, i64 2155467230, i64 2155467544, i64 2155467858}
!89 = !{i64 2155487247, i64 2155487557, i64 2155487871, i64 2155488185}
!90 = !{i64 2155509141, i64 2155509451, i64 2155509765, i64 2155510079}
