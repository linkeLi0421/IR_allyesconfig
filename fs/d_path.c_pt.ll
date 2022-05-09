; ModuleID = '/llk/IR_all_yes/fs/d_path.c_pt.bc'
source_filename = "../fs/d_path.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+d_path\22, \22a\22\09"
module asm "\09.weak\09__crc_d_path\09\09\09\09"
module asm "\09.long\09__crc_d_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_path:\09\09\09\09\09"
module asm "\09.asciz \09\22d_path\22\09\09\09\09\09"
module asm "__kstrtabns_d_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dentry_path_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_dentry_path_raw\09\09\09\09"
module asm "\09.long\09__crc_dentry_path_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dentry_path_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22dentry_path_raw\22\09\09\09\09\09"
module asm "__kstrtabns_dentry_path_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.73, %struct.trace_event, ptr, ptr, %union.anon.75, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.prepend_buffer = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.path = type { ptr, ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.99, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.100, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.99 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.100 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.96, %struct.list_head, %struct.list_head, %union.anon.97 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.spinlock, i32 }
%union.anon.96 = type { %struct.list_head }
%union.anon.97 = type { %struct.hlist_node }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.79, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.79 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.__va_list = type { ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (deleted)\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_d_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_path = external dso_local constant [0 x i8], align 1
@__ksymtab_d_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_path to i32), ptr @__kstrtab_d_path, ptr @__kstrtabns_d_path }, section "___ksymtab+d_path", align 4
@__kstrtab_dentry_path_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dentry_path_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_dentry_path_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dentry_path_raw to i32), ptr @__kstrtab_dentry_path_raw, ptr @__kstrtabns_dentry_path_raw }, section "___ksymtab+dentry_path_raw", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"//deleted\00", [22 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_getcwd\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__getcwd = internal global %struct.syscall_metadata { ptr @.str.4, i32 -1, i32 2, ptr @types__getcwd, ptr @args__getcwd, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getcwd, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getcwd, i64 20) }, ptr @event_enter__getcwd, ptr @event_exit__getcwd }, align 4
@event_enter__getcwd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.73 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__getcwd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getcwd = internal global ptr @event_enter__getcwd, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_getcwd\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__getcwd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.73 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.75 zeroinitializer, ptr @__syscall_meta__getcwd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getcwd = internal global ptr @event_exit__getcwd, section "_ftrace_events", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_getcwd\00", [21 x i8] zeroinitializer }, align 32
@types__getcwd = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@args__getcwd = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getcwd = internal global ptr @__syscall_meta__getcwd, section "__syscalls_metadata", align 4
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(unreachable)\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 287, i32 15 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 376, i32 15 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"event_enter__getcwd\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"event_exit__getcwd\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"types__getcwd\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"args__getcwd\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 723, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 412, i32 1 }
@___asan_gen_.65 = private constant [15 x i8] c"../fs/d_path.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 433, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 230, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 214, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__event_enter__getcwd, ptr @__event_exit__getcwd, ptr @__ksymtab_d_path, ptr @__ksymtab_dentry_path_raw, ptr @__p_syscall_meta__getcwd, ptr @__syscall_meta__getcwd, ptr @event_enter__getcwd, ptr @event_exit__getcwd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @types__getcwd, ptr @args__getcwd, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getcwd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getcwd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getcwd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getcwd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_getcwd = dso_local alias i32 (ptr, i32), ptr @__se_sys_getcwd

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__d_path(ptr nocapture noundef readonly %path, ptr nocapture noundef readonly %root, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca %struct.prepend_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %0 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %buflen
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i = icmp sgt i32 %buflen, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !50

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %buflen, -1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec.i, ptr %0, align 4
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 -1
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %incdec.ptr.i, ptr %b, align 4
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %incdec.ptr.i, align 1
  br label %prepend_char.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %0, align 4
  br label %prepend_char.exit

prepend_char.exit:                                ; preds = %if.end.i, %if.then.i
  %call2 = call fastcc i32 @prepend_path(ptr noundef %path, ptr noundef %root, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %prepend_char.exit.cleanup_crit_edge, label %if.end, !prof !51

prepend_char.exit.cleanup_crit_edge:              ; preds = %prepend_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %prepend_char.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i7 = icmp sgt i32 %7, -1
  br i1 %cmp.i7, label %if.then.i8, label %if.end.cleanup_crit_edge, !prof !50

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i8:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i8, %if.end.cleanup_crit_edge, %prepend_char.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %prepend_char.exit.cleanup_crit_edge ], [ %9, %if.then.i8 ], [ inttoptr (i32 -36 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepend_path(ptr nocapture noundef readonly %path, ptr nocapture noundef readonly %root, ptr nocapture noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef nonnull @mount_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mount_lock to i32))
  %4 = load volatile i32, ptr @mount_lock, align 4
  %and18.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %rcu_read_lock.exit.read_seqbegin.exit.i_crit_edge, label %rcu_read_lock.exit.do.end.i.i_crit_edge

rcu_read_lock.exit.do.end.i.i_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %do.end.i.i

rcu_read_lock.exit.read_seqbegin.exit.i_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mount_lock to i32))
  %5 = load volatile i32, ptr @mount_lock, align 4
  %and.i.i = and i32 %5, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %rcu_read_lock.exit.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %4, %rcu_read_lock.exit.read_seqbegin.exit.i_crit_edge ], [ %5, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  %p.sroa_idx94 = getelementptr inbounds i8, ptr %p, i32 4
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %dentry1.i = getelementptr inbounds %struct.path, ptr %root, i32 0, i32 1
  br label %read_seqbegin_or_lock.exit

if.else.i:                                        ; preds = %need_seqretry.exit88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #9
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %if.else.i, %read_seqbegin.exit.i
  %m_seq.1 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ 1, %if.else.i ]
  %6 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i28 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %add.i.i.i30 = add i32 %9, 1
  store volatile i32 %add.i.i.i30, ptr %preempt_count.i.i.i.i29, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i31, label %read_seqbegin_or_lock.exit.restart.preheader_crit_edge, label %land.lhs.true.i34

read_seqbegin_or_lock.exit.restart.preheader_crit_edge: ; preds = %read_seqbegin_or_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.preheader

land.lhs.true.i34:                                ; preds = %read_seqbegin_or_lock.exit
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.restart.preheader_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.restart.preheader_crit_edge:    ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.preheader

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.restart.preheader_crit_edge, label %if.then.i37

land.lhs.true2.i36.restart.preheader_crit_edge:   ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.preheader

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %restart.preheader

restart.preheader:                                ; preds = %if.then.i37, %land.lhs.true2.i36.restart.preheader_crit_edge, %land.lhs.true.i34.restart.preheader_crit_edge, %read_seqbegin_or_lock.exit.restart.preheader_crit_edge
  br label %restart

restart:                                          ; preds = %need_seqretry.exit.restart_crit_edge, %restart.preheader
  %tobool.not.i42 = phi i1 [ false, %need_seqretry.exit.restart_crit_edge ], [ true, %restart.preheader ]
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p, align 4
  %12 = ptrtoint ptr %p.sroa_idx94 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p.sroa_idx94, align 4
  %14 = inttoptr i32 %11 to ptr
  br i1 %tobool.not.i42, label %if.then.i45, label %if.else.i51

if.then.i45:                                      ; preds = %restart
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef nonnull @rename_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %15 = load volatile i32, ptr @rename_lock, align 4
  %and18.i.i43 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i43)
  %tobool.not19.i.i44 = icmp eq i32 %and18.i.i43, 0
  br i1 %tobool.not19.i.i44, label %if.then.i45.read_seqbegin.exit.i50_crit_edge, label %if.then.i45.do.end.i.i48_crit_edge

if.then.i45.do.end.i.i48_crit_edge:               ; preds = %if.then.i45
  br label %do.end.i.i48

if.then.i45.read_seqbegin.exit.i50_crit_edge:     ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit.i50

do.end.i.i48:                                     ; preds = %do.end.i.i48.do.end.i.i48_crit_edge, %if.then.i45.do.end.i.i48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %16 = load volatile i32, ptr @rename_lock, align 4
  %and.i.i46 = and i32 %16, 1
  %tobool.not.i.i47 = icmp eq i32 %and.i.i46, 0
  br i1 %tobool.not.i.i47, label %do.end.i.i48.read_seqbegin.exit.i50_crit_edge, label %do.end.i.i48.do.end.i.i48_crit_edge

do.end.i.i48.do.end.i.i48_crit_edge:              ; preds = %do.end.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i48

do.end.i.i48.read_seqbegin.exit.i50_crit_edge:    ; preds = %do.end.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit.i50

read_seqbegin.exit.i50:                           ; preds = %do.end.i.i48.read_seqbegin.exit.i50_crit_edge, %if.then.i45.read_seqbegin.exit.i50_crit_edge
  %.lcssa.i.i49 = phi i32 [ %15, %if.then.i45.read_seqbegin.exit.i50_crit_edge ], [ %16, %do.end.i.i48.read_seqbegin.exit.i50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  br label %read_seqbegin_or_lock.exit52

if.else.i51:                                      ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #9
  br label %read_seqbegin_or_lock.exit52

read_seqbegin_or_lock.exit52:                     ; preds = %if.else.i51, %read_seqbegin.exit.i50
  %seq.1 = phi i32 [ %.lcssa.i.i49, %read_seqbegin.exit.i50 ], [ 1, %if.else.i51 ]
  %17 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry, align 4
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 -16
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %43, %read_seqbegin_or_lock.exit52
  %b.sroa.14.0.ph = phi i32 [ %dec.i.i.i, %43 ], [ %13, %read_seqbegin_or_lock.exit52 ]
  %b.sroa.0.0.ph = phi ptr [ %incdec.ptr.i.i.i, %43 ], [ %14, %read_seqbegin_or_lock.exit52 ]
  %mnt.addr.0.i.ph = phi ptr [ %mnt.addr.0.i, %43 ], [ %add.ptr.i, %read_seqbegin_or_lock.exit52 ]
  %dentry.addr.0.i.ph = phi ptr [ %26, %43 ], [ %18, %read_seqbegin_or_lock.exit52 ]
  %21 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dentry1.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end16.i, %while.cond.i.outer
  %mnt.addr.0.i = phi ptr [ %30, %do.end16.i ], [ %mnt.addr.0.i.ph, %while.cond.i.outer ]
  %dentry.addr.0.i = phi ptr [ %32, %do.end16.i ], [ %dentry.addr.0.i.ph, %while.cond.i.outer ]
  %cmp.not.i = icmp eq ptr %dentry.addr.0.i, %22
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %mnt2.i = getelementptr inbounds %struct.mount, ptr %mnt.addr.0.i, i32 0, i32 3
  %23 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %root, align 4
  %cmp4.not.i = icmp eq ptr %mnt2.i, %24
  br i1 %cmp4.not.i, label %lor.rhs.i.__prepend_path.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i.__prepend_path.exit_crit_edge:          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__prepend_path.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0.i, i32 0, i32 3
  %25 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %d_parent.i, align 8
  %mnt5.i = getelementptr inbounds %struct.mount, ptr %mnt.addr.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %mnt5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mnt5.i, align 4
  %cmp6.i = icmp eq ptr %dentry.addr.0.i, %28
  br i1 %cmp6.i, label %if.then.i53, label %if.end26.i

if.then.i53:                                      ; preds = %while.body.i
  %mnt_parent.i = getelementptr inbounds %struct.mount, ptr %mnt.addr.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %mnt_parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %mnt_parent.i, align 4
  %cmp11.not.i = icmp eq ptr %mnt.addr.0.i, %30
  br i1 %cmp11.not.i, label %do.end20.i, label %do.end16.i, !prof !51

do.end16.i:                                       ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #11
  %mnt_mountpoint.i = getelementptr inbounds %struct.mount, ptr %mnt.addr.0.i, i32 0, i32 2
  %31 = ptrtoint ptr %mnt_mountpoint.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mnt_mountpoint.i, align 4
  br label %while.cond.i

do.end20.i:                                       ; preds = %if.then.i53
  %mnt_ns22.i = getelementptr inbounds %struct.mount, ptr %mnt.addr.0.i, i32 0, i32 16
  %33 = ptrtoint ptr %mnt_ns22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %mnt_ns22.i, align 4
  %tobool.not.i.i54 = icmp eq ptr %34, null
  %cmp.i.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i54, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end20.i.if.else.i56_crit_edge, label %land.lhs.true.i55

do.end20.i.if.else.i56_crit_edge:                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i56

land.lhs.true.i55:                                ; preds = %do.end20.i
  %seq.i.i = getelementptr inbounds %struct.mnt_namespace, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp.i55.i = icmp eq i64 %36, 0
  br i1 %cmp.i55.i, label %land.lhs.true.i55.if.else.i56_crit_edge, label %land.lhs.true.i55.__prepend_path.exit_crit_edge

land.lhs.true.i55.__prepend_path.exit_crit_edge:  ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %__prepend_path.exit

land.lhs.true.i55.if.else.i56_crit_edge:          ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i56

if.else.i56:                                      ; preds = %land.lhs.true.i55.if.else.i56_crit_edge, %do.end20.i.if.else.i56_crit_edge
  br label %__prepend_path.exit

if.end26.i:                                       ; preds = %while.body.i
  %cmp27.i = icmp eq ptr %dentry.addr.0.i, %26
  br i1 %cmp27.i, label %if.end26.i.__prepend_path.exit_crit_edge, label %if.end35.i, !prof !51

if.end26.i.__prepend_path.exit_crit_edge:         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__prepend_path.exit

if.end35.i:                                       ; preds = %if.end26.i
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %26) #9, !srcloc !56
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0.i, i32 0, i32 4
  %name1.i.i = getelementptr inbounds %struct.dentry, ptr %dentry.addr.0.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %name1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %name1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %39 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %d_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.sroa.14.0.ph)
  %cmp.i.i.i = icmp slt i32 %b.sroa.14.0.ph, 0
  br i1 %cmp.i.i.i, label %if.end35.i.__prepend_path.exit_crit_edge, label %if.end.i.i.i

if.end35.i.__prepend_path.exit_crit_edge:         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__prepend_path.exit

if.end.i.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.14.0.ph, i32 %40)
  %cmp2.i.i.i = icmp slt i32 %b.sroa.14.0.ph, %40
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.end10.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %40, %b.sroa.14.0.ph
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %sub.i.i.i
  %idx.neg.i.i.i = sub nsw i32 0, %b.sroa.14.0.ph
  %add.ptr6.i.i.i = getelementptr i8, ptr %b.sroa.0.0.ph, i32 %idx.neg.i.i.i
  %call.i.i.i.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr6.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %b.sroa.14.0.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then3.i.i.i.__prepend_path.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

if.then3.i.i.i.__prepend_path.exit_crit_edge:     ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__prepend_path.exit

if.then.i.i.i.i:                                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call ptr @memset(ptr %add.ptr6.i.i.i, i32 120, i32 %b.sroa.14.0.ph)
  br label %__prepend_path.exit

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %sub12.i.i.i = sub i32 %b.sroa.14.0.ph, %40
  %idx.neg14.i.i.i = sub i32 0, %40
  %add.ptr15.i.i.i = getelementptr i8, ptr %b.sroa.0.0.ph, i32 %idx.neg14.i.i.i
  %call.i34.i.i.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr15.i.i.i, ptr noundef %38, i32 noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i.i.i)
  %tobool.not.i35.i.i.i = icmp eq i32 %call.i34.i.i.i, 0
  br i1 %tobool.not.i35.i.i.i, label %land.rhs.i.i, label %if.then.i36.i.i.i, !prof !50

if.then.i36.i.i.i:                                ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call ptr @memset(ptr %add.ptr15.i.i.i, i32 120, i32 %40)
  br label %__prepend_path.exit

land.rhs.i.i:                                     ; preds = %if.end10.i.i.i
  %cmp.i14.i.i = icmp sgt i32 %sub12.i.i.i, 0
  br i1 %cmp.i14.i.i, label %43, label %land.rhs.i.i.__prepend_path.exit_crit_edge, !prof !50

land.rhs.i.i.__prepend_path.exit_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__prepend_path.exit

43:                                               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i.i.i = add nsw i32 %sub12.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %add.ptr15.i.i.i, i32 -1
  %44 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 47, ptr %incdec.ptr.i.i.i, align 1
  br label %while.cond.i.outer

__prepend_path.exit:                              ; preds = %land.rhs.i.i.__prepend_path.exit_crit_edge, %if.then.i36.i.i.i, %if.then.i.i.i.i, %if.then3.i.i.i.__prepend_path.exit_crit_edge, %if.end35.i.__prepend_path.exit_crit_edge, %if.end26.i.__prepend_path.exit_crit_edge, %if.else.i56, %land.lhs.true.i55.__prepend_path.exit_crit_edge, %lor.rhs.i.__prepend_path.exit_crit_edge
  %b.sroa.14.2 = phi i32 [ %b.sroa.14.0.ph, %if.else.i56 ], [ %b.sroa.14.0.ph, %land.lhs.true.i55.__prepend_path.exit_crit_edge ], [ %sub12.i.i.i, %if.then.i36.i.i.i ], [ -1, %if.then.i.i.i.i ], [ -1, %if.then3.i.i.i.__prepend_path.exit_crit_edge ], [ %b.sroa.14.0.ph, %lor.rhs.i.__prepend_path.exit_crit_edge ], [ %b.sroa.14.0.ph, %if.end26.i.__prepend_path.exit_crit_edge ], [ %b.sroa.14.0.ph, %if.end35.i.__prepend_path.exit_crit_edge ], [ -1, %land.rhs.i.i.__prepend_path.exit_crit_edge ]
  %b.sroa.0.2 = phi ptr [ %b.sroa.0.0.ph, %if.else.i56 ], [ %b.sroa.0.0.ph, %land.lhs.true.i55.__prepend_path.exit_crit_edge ], [ %add.ptr15.i.i.i, %if.then.i36.i.i.i ], [ %add.ptr6.i.i.i, %if.then.i.i.i.i ], [ %add.ptr6.i.i.i, %if.then3.i.i.i.__prepend_path.exit_crit_edge ], [ %b.sroa.0.0.ph, %lor.rhs.i.__prepend_path.exit_crit_edge ], [ %b.sroa.0.0.ph, %if.end26.i.__prepend_path.exit_crit_edge ], [ %b.sroa.0.0.ph, %if.end35.i.__prepend_path.exit_crit_edge ], [ %add.ptr15.i.i.i, %land.rhs.i.i.__prepend_path.exit_crit_edge ]
  %cmp = phi i1 [ false, %if.else.i56 ], [ false, %land.lhs.true.i55.__prepend_path.exit_crit_edge ], [ false, %if.then.i36.i.i.i ], [ false, %if.then.i.i.i.i ], [ false, %if.then3.i.i.i.__prepend_path.exit_crit_edge ], [ false, %lor.rhs.i.__prepend_path.exit_crit_edge ], [ %cmp27.i, %land.rhs.i.i.__prepend_path.exit_crit_edge ], [ %cmp27.i, %if.end26.i.__prepend_path.exit_crit_edge ], [ %cmp27.i, %if.end35.i.__prepend_path.exit_crit_edge ]
  %retval.3.i = phi i32 [ 2, %if.else.i56 ], [ 1, %land.lhs.true.i55.__prepend_path.exit_crit_edge ], [ 0, %if.then.i36.i.i.i ], [ 0, %if.then.i.i.i.i ], [ 0, %if.then3.i.i.i.__prepend_path.exit_crit_edge ], [ 0, %lor.rhs.i.__prepend_path.exit_crit_edge ], [ 3, %if.end26.i.__prepend_path.exit_crit_edge ], [ 0, %if.end35.i.__prepend_path.exit_crit_edge ], [ 0, %land.rhs.i.i.__prepend_path.exit_crit_edge ]
  %and = and i32 %seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.then.i71

if.then:                                          ; preds = %__prepend_path.exit
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i57, label %if.then.need_seqretry.exit_crit_edge, label %land.lhs.true.i60

if.then.need_seqretry.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit

land.lhs.true.i60:                                ; preds = %if.then
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.need_seqretry.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.need_seqretry.exit_crit_edge:   ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.need_seqretry.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.need_seqretry.exit_crit_edge:  ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %need_seqretry.exit

need_seqretry.exit:                               ; preds = %if.then.i63, %land.lhs.true2.i62.need_seqretry.exit_crit_edge, %land.lhs.true.i60.need_seqretry.exit_crit_edge, %if.then.need_seqretry.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %45 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i64 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i66 = add i32 %48, -1
  store volatile i32 %sub.i.i.i66, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %49 = load volatile i32, ptr @rename_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %49, %seq.1
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.restart_crit_edge

need_seqretry.exit.restart_crit_edge:             ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_seqretry.exit

if.then.i71:                                      ; preds = %__prepend_path.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #9
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i71, %need_seqretry.exit.done_seqretry.exit_crit_edge
  %and6 = and i32 %m_seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then.i91

if.then8:                                         ; preds = %done_seqretry.exit
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i72, label %if.then8.need_seqretry.exit88_crit_edge, label %land.lhs.true.i75

if.then8.need_seqretry.exit88_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit88

land.lhs.true.i75:                                ; preds = %if.then8
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.need_seqretry.exit88_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.need_seqretry.exit88_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit88

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.need_seqretry.exit88_crit_edge, label %if.then.i78

land.lhs.true2.i77.need_seqretry.exit88_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit88

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %need_seqretry.exit88

need_seqretry.exit88:                             ; preds = %if.then.i78, %land.lhs.true2.i77.need_seqretry.exit88_crit_edge, %land.lhs.true.i75.need_seqretry.exit88_crit_edge, %if.then8.need_seqretry.exit88_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %50 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i79 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i81 = add i32 %53, -1
  store volatile i32 %sub.i.i.i81, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mount_lock to i32))
  %54 = load volatile i32, ptr @mount_lock, align 4
  %cmp.i.i.i.i85.not = icmp eq i32 %54, %m_seq.1
  br i1 %cmp.i.i.i.i85.not, label %need_seqretry.exit88.done_seqretry.exit92_crit_edge, label %if.else.i

need_seqretry.exit88.done_seqretry.exit92_crit_edge: ; preds = %need_seqretry.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_seqretry.exit92

if.then.i91:                                      ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #9
  br label %done_seqretry.exit92

done_seqretry.exit92:                             ; preds = %if.then.i91, %need_seqretry.exit88.done_seqretry.exit92_crit_edge
  br i1 %cmp, label %if.then16, label %done_seqretry.exit92.if.end17_crit_edge, !prof !51

done_seqretry.exit92.if.end17_crit_edge:          ; preds = %done_seqretry.exit92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %done_seqretry.exit92
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p, align 4
  %57 = ptrtoint ptr %p.sroa_idx94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %p.sroa_idx94, align 4
  %59 = inttoptr i32 %56 to ptr
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %done_seqretry.exit92.if.end17_crit_edge
  %b.sroa.14.3 = phi i32 [ %58, %if.then16 ], [ %b.sroa.14.2, %done_seqretry.exit92.if.end17_crit_edge ]
  %b.sroa.0.3 = phi ptr [ %59, %if.then16 ], [ %b.sroa.0.2, %done_seqretry.exit92.if.end17_crit_edge ]
  %60 = ptrtoint ptr %p.sroa_idx94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %p.sroa_idx94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.14.3, i32 %61)
  %cmp19 = icmp eq i32 %b.sroa.14.3, %61
  br i1 %cmp19, label %if.then20, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.sroa.14.3)
  %cmp.i = icmp sgt i32 %b.sroa.14.3, 0
  br i1 %cmp.i, label %if.then.i93, label %if.then20.if.end22_crit_edge, !prof !50

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then.i93:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %b.sroa.14.3, -1
  %incdec.ptr.i = getelementptr i8, ptr %b.sroa.0.3, i32 -1
  %62 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 47, ptr %incdec.ptr.i, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then.i93, %if.then20.if.end22_crit_edge, %if.end17.if.end22_crit_edge
  %b.sroa.14.5 = phi i32 [ %b.sroa.14.3, %if.end17.if.end22_crit_edge ], [ %dec.i, %if.then.i93 ], [ -1, %if.then20.if.end22_crit_edge ]
  %b.sroa.0.5 = phi ptr [ %b.sroa.0.3, %if.end17.if.end22_crit_edge ], [ %incdec.ptr.i, %if.then.i93 ], [ %b.sroa.0.3, %if.then20.if.end22_crit_edge ]
  %63 = ptrtoint ptr %b.sroa.0.5 to i32
  %64 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %p, align 4
  %65 = ptrtoint ptr %p.sroa_idx94 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %b.sroa.14.5, ptr %p.sroa_idx94, align 4
  ret i32 %retval.3.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @d_absolute_path(ptr nocapture noundef readonly %path, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %root = alloca %struct.path, align 8
  %b = alloca %struct.prepend_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root) #9
  %0 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %root, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %1 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %buflen
  %2 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i = icmp sgt i32 %buflen, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !50

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %buflen, -1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec.i, ptr %1, align 4
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 -1
  %4 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr.i, ptr %b, align 4
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %incdec.ptr.i, align 1
  br label %prepend_char.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %1, align 4
  br label %prepend_char.exit

prepend_char.exit:                                ; preds = %if.end.i, %if.then.i
  %call2 = call fastcc i32 @prepend_path(ptr noundef %path, ptr noundef nonnull %root, ptr noundef nonnull %b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp sgt i32 %call2, 1
  br i1 %cmp, label %prepend_char.exit.cleanup_crit_edge, label %if.end, !prof !51

prepend_char.exit.cleanup_crit_edge:              ; preds = %prepend_char.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %prepend_char.exit
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i9 = icmp sgt i32 %8, -1
  br i1 %cmp.i9, label %if.then.i10, label %if.end.cleanup_crit_edge, !prof !50

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i10, %if.end.cleanup_crit_edge, %prepend_char.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %prepend_char.exit.cleanup_crit_edge ], [ %10, %if.then.i10 ], [ inttoptr (i32 -36 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @d_path(ptr nocapture noundef readonly %path, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %b = alloca %struct.prepend_buffer, align 4
  %root = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %0 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %buflen
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %b, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %buflen, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root) #9
  %3 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %root, align 8, !annotation !60
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %d_op = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %d_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %d_dname = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %d_dname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_dname, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %d_parent = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_parent, align 8
  %cmp = icmp eq ptr %5, %11
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true5.if.then_crit_edge

land.lhs.true5.if.then_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp9.not = icmp eq ptr %5, %15
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true5.if.then_crit_edge
  %call = tail call ptr %9(ptr noundef %5, ptr noundef %buf, i32 noundef %buflen) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %20 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 107
  %24 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fs, align 128
  %seq1.i = getelementptr inbounds %struct.fs_struct, ptr %25, i32 0, i32 2
  %root19.i = getelementptr inbounds %struct.fs_struct, ptr %25, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %rcu_read_lock.exit
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %seq1.i) #9
  %26 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %seq1.i, align 4
  %and29.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !62
  %28 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %seq1.i, align 4
  %and.i40 = and i32 %29, 1
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i41, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %27, %do.body.i.while.end.i_crit_edge ], [ %29, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %30 = ptrtoint ptr %root19.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %root19.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %32 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %seq1.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %33, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %get_fs_root_rcu.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

get_fs_root_rcu.exit:                             ; preds = %while.end.i
  %34 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %31, ptr %root, align 8
  %35 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.not.i, label %d_unlinked.exit, label %get_fs_root_rcu.exit.if.else_crit_edge

get_fs_root_rcu.exit.if.else_crit_edge:           ; preds = %get_fs_root_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

d_unlinked.exit:                                  ; preds = %get_fs_root_rcu.exit
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_parent.i, align 8
  %cmp.i.not = icmp eq ptr %40, %36
  br i1 %cmp.i.not, label %d_unlinked.exit.if.else_crit_edge, label %if.then20, !prof !50

d_unlinked.exit.if.else_crit_edge:                ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then20:                                        ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call fastcc zeroext i1 @prepend(ptr noundef nonnull %b, ptr noundef nonnull @.str, i32 noundef 11)
  br label %if.end23

if.else:                                          ; preds = %d_unlinked.exit.if.else_crit_edge, %get_fs_root_rcu.exit.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i42 = icmp sgt i32 %buflen, 0
  br i1 %cmp.i42, label %if.then.i43, label %if.end.i, !prof !50

if.then.i43:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %buflen, -1
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dec.i, ptr %0, align 4
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 -1
  %42 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %incdec.ptr.i, ptr %b, align 4
  %43 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %incdec.ptr.i, align 1
  br label %if.end23

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %0, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %if.then.i43, %if.then20
  %call24 = call fastcc i32 @prepend_path(ptr noundef %path, ptr noundef nonnull %root, ptr noundef nonnull %b)
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i44, label %if.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

if.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %if.end23
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %if.end23.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %45 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i51 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i55 = icmp sgt i32 %50, -1
  br i1 %cmp.i55, label %if.then.i56, label %rcu_read_unlock.exit.cleanup_crit_edge, !prof !50

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i56:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i56, %rcu_read_unlock.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %52, %if.then.i56 ], [ inttoptr (i32 -36 to ptr), %rcu_read_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepend(ptr nocapture noundef %p, ptr noundef %str, i32 noundef %namelen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.prepend_buffer, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %namelen)
  %cmp2 = icmp slt i32 %1, %namelen
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %sub = sub i32 %namelen, %1
  %add.ptr = getelementptr i8, ptr %str, i32 %sub
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %idx.neg = sub nsw i32 0, %1
  %add.ptr6 = getelementptr i8, ptr %3, i32 %idx.neg
  store ptr %add.ptr6, ptr %p, align 4
  %call.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr6, ptr noundef %add.ptr, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then3.prepend_copy.exit_crit_edge, label %if.then.i, !prof !50

if.then3.prepend_copy.exit_crit_edge:             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepend_copy.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memset(ptr %add.ptr6, i32 120, i32 %1)
  br label %prepend_copy.exit

prepend_copy.exit:                                ; preds = %if.then.i, %if.then3.prepend_copy.exit_crit_edge
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %sub12 = sub i32 %1, %namelen
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub12, ptr %len, align 4
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %idx.neg14 = sub i32 0, %namelen
  %add.ptr15 = getelementptr i8, ptr %8, i32 %idx.neg14
  store ptr %add.ptr15, ptr %p, align 4
  %call.i34 = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr15, ptr noundef %str, i32 noundef %namelen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end10.return_crit_edge, label %if.then.i36, !prof !50

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i36:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memset(ptr %add.ptr15, i32 120, i32 %namelen)
  br label %return

return:                                           ; preds = %if.then.i36, %if.end10.return_crit_edge, %prepend_copy.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %prepend_copy.exit ], [ false, %entry.return_crit_edge ], [ true, %if.end10.return_crit_edge ], [ false, %if.then.i36 ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dynamic_dname(ptr nocapture noundef readnone %dentry, ptr noundef writeonly %buffer, i32 noundef %buflen, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %temp = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp) #9
  %1 = call ptr @memset(ptr %temp, i32 255, i32 64)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %temp, i32 noundef 64, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %add = add i32 %call, 1
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp = icmp ugt i32 %add, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %buflen)
  %cmp1 = icmp sgt i32 %add, %buflen
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %buflen, %add
  %add.ptr = getelementptr i8, ptr %buffer, i32 %sub
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %temp, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @simple_dname(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buffer, i32 %buflen
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i = icmp slt i32 %buflen, 0
  br i1 %cmp.i, label %entry.extract_string.exit_crit_edge, label %if.end.i

entry.extract_string.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %extract_string.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %buflen)
  %cmp2.i = icmp ult i32 %buflen, 11
  br i1 %cmp2.i, label %if.then3.i, label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 11, %buflen
  %add.ptr.i = getelementptr i8, ptr @.str, i32 %sub.i
  %call.i.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %buffer, ptr noundef %add.ptr.i, i32 noundef %buflen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then3.i.extract_string.exit_crit_edge, label %if.then.i.i, !prof !50

if.then3.i.extract_string.exit_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %extract_string.exit

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memset(ptr %buffer, i32 120, i32 %buflen)
  br label %extract_string.exit

if.end10.i:                                       ; preds = %if.end.i
  %sub12.i = add nsw i32 %buflen, -11
  %add.ptr15.i = getelementptr i8, ptr %add.ptr, i32 -11
  %call.i34.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr15.i, ptr noundef nonnull @.str, i32 noundef 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool.not.i35.i, label %if.end10.i.if.end.i11_crit_edge, label %if.then.i36.i, !prof !50

if.end10.i.if.end.i11_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

if.then.i36.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %1 = call ptr @memset(ptr %add.ptr15.i, i32 120, i32 11)
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i36.i, %if.end10.i.if.end.i11_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %4 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i, i32 %5)
  %cmp2.i10 = icmp slt i32 %sub12.i, %5
  br i1 %cmp2.i10, label %if.then3.i18, label %if.end10.i25

if.then3.i18:                                     ; preds = %if.end.i11
  %sub.i12 = sub i32 %5, %sub12.i
  %add.ptr.i13 = getelementptr i8, ptr %3, i32 %sub.i12
  %idx.neg.i14 = sub nsw i32 11, %buflen
  %add.ptr6.i15 = getelementptr i8, ptr %add.ptr15.i, i32 %idx.neg.i14
  %call.i.i16 = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr6.i15, ptr noundef %add.ptr.i13, i32 noundef %sub12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %call.i.i16, 0
  br i1 %tobool.not.i.i17, label %if.then3.i18.extract_string.exit_crit_edge, label %if.then.i.i19, !prof !50

if.then3.i18.extract_string.exit_crit_edge:       ; preds = %if.then3.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %extract_string.exit

if.then.i.i19:                                    ; preds = %if.then3.i18
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memset(ptr %add.ptr6.i15, i32 120, i32 %sub12.i)
  br label %extract_string.exit

if.end10.i25:                                     ; preds = %if.end.i11
  %sub12.i21 = sub i32 %sub12.i, %5
  %idx.neg14.i = sub i32 0, %5
  %add.ptr15.i22 = getelementptr i8, ptr %add.ptr15.i, i32 %idx.neg14.i
  %call.i34.i23 = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr15.i22, ptr noundef %3, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i23)
  %tobool.not.i35.i24 = icmp eq i32 %call.i34.i23, 0
  br i1 %tobool.not.i35.i24, label %if.end10.i25.prepend.exit28_crit_edge, label %if.then.i36.i26, !prof !50

if.end10.i25.prepend.exit28_crit_edge:            ; preds = %if.end10.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepend.exit28

if.then.i36.i26:                                  ; preds = %if.end10.i25
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memset(ptr %add.ptr15.i22, i32 120, i32 %5)
  br label %prepend.exit28

prepend.exit28:                                   ; preds = %if.then.i36.i26, %if.end10.i25.prepend.exit28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i21)
  %cmp.i30 = icmp sgt i32 %sub12.i21, 0
  br i1 %cmp.i30, label %if.then.i34, label %prepend.exit28.extract_string.exit_crit_edge, !prof !50

prepend.exit28.extract_string.exit_crit_edge:     ; preds = %prepend.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %extract_string.exit

if.then.i34:                                      ; preds = %prepend.exit28
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr15.i22, i32 -1
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 47, ptr %incdec.ptr.i, align 1
  br label %extract_string.exit

extract_string.exit:                              ; preds = %if.then.i34, %prepend.exit28.extract_string.exit_crit_edge, %if.then.i.i19, %if.then3.i18.extract_string.exit_crit_edge, %if.then.i.i, %if.then3.i.extract_string.exit_crit_edge, %entry.extract_string.exit_crit_edge
  %retval.0.i35 = phi ptr [ %incdec.ptr.i, %if.then.i34 ], [ inttoptr (i32 -36 to ptr), %prepend.exit28.extract_string.exit_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.then.i.i19 ], [ inttoptr (i32 -36 to ptr), %if.then3.i18.extract_string.exit_crit_edge ], [ inttoptr (i32 -36 to ptr), %entry.extract_string.exit_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.then.i.i ], [ inttoptr (i32 -36 to ptr), %if.then3.i.extract_string.exit_crit_edge ]
  ret ptr %retval.0.i35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dentry_path_raw(ptr noundef %dentry, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %b = alloca %struct.prepend_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %0 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %buflen
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i = icmp sgt i32 %buflen, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !50

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %buflen, -1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec.i, ptr %0, align 4
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 -1
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %incdec.ptr.i, ptr %b, align 4
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %incdec.ptr.i, align 1
  br label %prepend_char.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %0, align 4
  br label %prepend_char.exit

prepend_char.exit:                                ; preds = %if.end.i, %if.then.i
  %call2 = call fastcc ptr @__dentry_path(ptr noundef %dentry, ptr noundef nonnull %b)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dentry_path(ptr noundef %d, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %p.sroa_idx = getelementptr inbounds i8, ptr %p, i32 4
  %d_parent81 = getelementptr inbounds %struct.dentry, ptr %d, i32 0, i32 3
  br label %restart

restart:                                          ; preds = %need_seqretry.exit.restart_crit_edge, %rcu_read_lock.exit
  %tobool.not.i22 = phi i1 [ false, %need_seqretry.exit.restart_crit_edge ], [ true, %rcu_read_lock.exit ]
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p, align 4
  %6 = ptrtoint ptr %p.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p.sroa_idx, align 4
  %8 = inttoptr i32 %5 to ptr
  br i1 %tobool.not.i22, label %if.then.i23, label %if.else.i

if.then.i23:                                      ; preds = %restart
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef nonnull @rename_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %9 = load volatile i32, ptr @rename_lock, align 4
  %and18.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %if.then.i23.read_seqbegin.exit.i_crit_edge, label %if.then.i23.do.end.i.i_crit_edge

if.then.i23.do.end.i.i_crit_edge:                 ; preds = %if.then.i23
  br label %do.end.i.i

if.then.i23.read_seqbegin.exit.i_crit_edge:       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.then.i23.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %10 = load volatile i32, ptr @rename_lock, align 4
  %and.i.i = and i32 %10, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %if.then.i23.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %9, %if.then.i23.read_seqbegin.exit.i_crit_edge ], [ %10, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  br label %read_seqbegin_or_lock.exit

if.else.i:                                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #9
  br label %read_seqbegin_or_lock.exit

read_seqbegin_or_lock.exit:                       ; preds = %if.else.i, %read_seqbegin.exit.i
  %seq.1 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ 1, %if.else.i ]
  %11 = ptrtoint ptr %d_parent81 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent81, align 8
  %cmp.not82 = icmp eq ptr %12, %d
  br i1 %cmp.not82, label %read_seqbegin_or_lock.exit.while.end_crit_edge, label %read_seqbegin_or_lock.exit.while.body_crit_edge

read_seqbegin_or_lock.exit.while.body_crit_edge:  ; preds = %read_seqbegin_or_lock.exit
  br label %while.body

read_seqbegin_or_lock.exit.while.end_crit_edge:   ; preds = %read_seqbegin_or_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %read_seqbegin_or_lock.exit.while.body_crit_edge
  %13 = phi ptr [ %22, %while.cond.while.body_crit_edge ], [ %12, %read_seqbegin_or_lock.exit.while.body_crit_edge ]
  %dentry.085 = phi ptr [ %13, %while.cond.while.body_crit_edge ], [ %d, %read_seqbegin_or_lock.exit.while.body_crit_edge ]
  %b.sroa.0.084 = phi ptr [ %incdec.ptr.i.i, %while.cond.while.body_crit_edge ], [ %8, %read_seqbegin_or_lock.exit.while.body_crit_edge ]
  %b.sroa.13.083 = phi i32 [ %dec.i.i, %while.cond.while.body_crit_edge ], [ %7, %read_seqbegin_or_lock.exit.while.body_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %13) #9, !srcloc !56
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry.085, i32 0, i32 4
  %name1.i = getelementptr inbounds %struct.dentry, ptr %dentry.085, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %name1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %16 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.sroa.13.083)
  %cmp.i.i = icmp slt i32 %b.sroa.13.083, 0
  br i1 %cmp.i.i, label %while.body.while.end_crit_edge, label %if.end.i.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.13.083, i32 %17)
  %cmp2.i.i = icmp slt i32 %b.sroa.13.083, %17
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end10.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = sub i32 %17, %b.sroa.13.083
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %sub.i.i
  %idx.neg.i.i = sub nsw i32 0, %b.sroa.13.083
  %add.ptr6.i.i = getelementptr i8, ptr %b.sroa.0.084, i32 %idx.neg.i.i
  %call.i.i.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr6.i.i, ptr noundef %add.ptr.i.i, i32 noundef %b.sroa.13.083) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3.i.i.while.end_crit_edge, label %if.then.i.i.i, !prof !50

if.then3.i.i.while.end_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then.i.i.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = call ptr @memset(ptr %add.ptr6.i.i, i32 120, i32 %b.sroa.13.083)
  br label %while.end

if.end10.i.i:                                     ; preds = %if.end.i.i
  %sub12.i.i = sub i32 %b.sroa.13.083, %17
  %idx.neg14.i.i = sub i32 0, %17
  %add.ptr15.i.i = getelementptr i8, ptr %b.sroa.0.084, i32 %idx.neg14.i.i
  %call.i34.i.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr15.i.i, ptr noundef %15, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i.i)
  %tobool.not.i35.i.i = icmp eq i32 %call.i34.i.i, 0
  br i1 %tobool.not.i35.i.i, label %land.rhs.i, label %if.then.i36.i.i, !prof !50

if.then.i36.i.i:                                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call ptr @memset(ptr %add.ptr15.i.i, i32 120, i32 %17)
  br label %while.end

land.rhs.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i.i)
  %cmp.i14.i = icmp sgt i32 %sub12.i.i, 0
  br i1 %cmp.i14.i, label %while.cond, label %land.rhs.i.while.end_crit_edge, !prof !50

land.rhs.i.while.end_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond:                                       ; preds = %land.rhs.i
  %dec.i.i = add nsw i32 %sub12.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr15.i.i, i32 -1
  %20 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 47, ptr %incdec.ptr.i.i, align 1
  %d_parent = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent, align 8
  %cmp.not = icmp eq ptr %13, %22
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %land.rhs.i.while.end_crit_edge, %if.then.i36.i.i, %if.then.i.i.i, %if.then3.i.i.while.end_crit_edge, %while.body.while.end_crit_edge, %read_seqbegin_or_lock.exit.while.end_crit_edge
  %b.sroa.13.2 = phi i32 [ -1, %if.then3.i.i.while.end_crit_edge ], [ -1, %if.then.i.i.i ], [ %sub12.i.i, %if.then.i36.i.i ], [ %7, %read_seqbegin_or_lock.exit.while.end_crit_edge ], [ %dec.i.i, %while.cond.while.end_crit_edge ], [ -1, %land.rhs.i.while.end_crit_edge ], [ %b.sroa.13.083, %while.body.while.end_crit_edge ]
  %b.sroa.0.2 = phi ptr [ %add.ptr6.i.i, %if.then3.i.i.while.end_crit_edge ], [ %add.ptr6.i.i, %if.then.i.i.i ], [ %add.ptr15.i.i, %if.then.i36.i.i ], [ %8, %read_seqbegin_or_lock.exit.while.end_crit_edge ], [ %incdec.ptr.i.i, %while.cond.while.end_crit_edge ], [ %add.ptr15.i.i, %land.rhs.i.while.end_crit_edge ], [ %b.sroa.0.084, %while.body.while.end_crit_edge ]
  %and = and i32 %seq.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.then.i38

if.then2:                                         ; preds = %while.end
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i24, label %if.then2.need_seqretry.exit_crit_edge, label %land.lhs.true.i27

if.then2.need_seqretry.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit

land.lhs.true.i27:                                ; preds = %if.then2
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.need_seqretry.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.need_seqretry.exit_crit_edge:   ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.need_seqretry.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.need_seqretry.exit_crit_edge:  ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %need_seqretry.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %need_seqretry.exit

need_seqretry.exit:                               ; preds = %if.then.i30, %land.lhs.true2.i29.need_seqretry.exit_crit_edge, %land.lhs.true.i27.need_seqretry.exit_crit_edge, %if.then2.need_seqretry.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %23 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i31 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rename_lock to i32))
  %27 = load volatile i32, ptr @rename_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %27, %seq.1
  br i1 %cmp.i.i.i.i.not, label %need_seqretry.exit.done_seqretry.exit_crit_edge, label %need_seqretry.exit.restart_crit_edge

need_seqretry.exit.restart_crit_edge:             ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart

need_seqretry.exit.done_seqretry.exit_crit_edge:  ; preds = %need_seqretry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_seqretry.exit

if.then.i38:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #9
  br label %done_seqretry.exit

done_seqretry.exit:                               ; preds = %if.then.i38, %need_seqretry.exit.done_seqretry.exit_crit_edge
  %28 = ptrtoint ptr %p.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.13.2, i32 %29)
  %cmp9 = icmp eq i32 %b.sroa.13.2, %29
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.sroa.13.2)
  %cmp.i = icmp sgt i32 %b.sroa.13.2, 0
  br i1 %cmp.i, label %if.end12.thread, label %if.then10.extract_string.exit_crit_edge, !prof !50

if.then10.extract_string.exit_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %extract_string.exit

if.end12.thread:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr i8, ptr %b.sroa.0.2, i32 -1
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 47, ptr %incdec.ptr.i, align 1
  br label %if.then.i42

if.end12:                                         ; preds = %done_seqretry.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %b.sroa.13.2)
  %cmp.i41 = icmp sgt i32 %b.sroa.13.2, -1
  br i1 %cmp.i41, label %if.end12.if.then.i42_crit_edge, label %if.end12.extract_string.exit_crit_edge, !prof !50

if.end12.extract_string.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %extract_string.exit

if.end12.if.then.i42_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i42

if.then.i42:                                      ; preds = %if.end12.if.then.i42_crit_edge, %if.end12.thread
  %b.sroa.0.464 = phi ptr [ %incdec.ptr.i, %if.end12.thread ], [ %b.sroa.0.2, %if.end12.if.then.i42_crit_edge ]
  br label %extract_string.exit

extract_string.exit:                              ; preds = %if.then.i42, %if.end12.extract_string.exit_crit_edge, %if.then10.extract_string.exit_crit_edge
  %retval.0.i = phi ptr [ %b.sroa.0.464, %if.then.i42 ], [ inttoptr (i32 -36 to ptr), %if.end12.extract_string.exit_crit_edge ], [ inttoptr (i32 -36 to ptr), %if.then10.extract_string.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dentry_path(ptr noundef %dentry, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %b = alloca %struct.prepend_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #9
  %0 = getelementptr inbounds %struct.prepend_buffer, ptr %b, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %buflen
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %b, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %buflen, ptr %0, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.not.i, label %d_unlinked.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

d_unlinked.exit:                                  ; preds = %entry
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %5 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_parent.i, align 8
  %cmp.i.not = icmp eq ptr %6, %dentry
  br i1 %cmp.i.not, label %d_unlinked.exit.if.else_crit_edge, label %if.then, !prof !50

d_unlinked.exit.if.else_crit_edge:                ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call fastcc zeroext i1 @prepend(ptr noundef nonnull %b, ptr noundef nonnull @.str.1, i32 noundef 10)
  br label %if.end

if.else:                                          ; preds = %d_unlinked.exit.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.i9 = icmp sgt i32 %buflen, 0
  br i1 %cmp.i9, label %if.then.i, label %if.end.i, !prof !50

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %buflen, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec.i, ptr %0, align 4
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 -1
  %8 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %incdec.ptr.i, ptr %b, align 4
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %incdec.ptr.i, align 1
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.i, %if.then
  %call6 = call fastcc ptr @__dentry_path(ptr noundef %dentry, ptr noundef nonnull %b)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #9
  ret ptr %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getcwd(i32 noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %pwd.i = alloca %struct.path, align 8
  %root.i = alloca %struct.path, align 8
  %b.i = alloca %struct.prepend_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pwd.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %1 = load ptr, ptr @names_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__do_sys_getcwd.exit_crit_edge, label %if.end.i

entry.__do_sys_getcwd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_getcwd.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 107
  %10 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs.i, align 128
  %seq1.i.i = getelementptr inbounds %struct.fs_struct, ptr %11, i32 0, i32 2
  %root19.i.i = getelementptr inbounds %struct.fs_struct, ptr %11, i32 0, i32 5
  %pwd20.i.i = getelementptr inbounds %struct.fs_struct, ptr %11, i32 0, i32 6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %rcu_read_lock.exit.i
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %seq1.i.i) #9
  %12 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %seq1.i.i, align 4
  %and31.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool.not32.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool.not32.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !65
  %14 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %seq1.i.i, align 4
  %and.i57.i = and i32 %15, 1
  %tobool.not.i58.i = icmp eq i32 %and.i57.i, 0
  br i1 %tobool.not.i58.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %13, %do.body.i.i.while.end.i.i_crit_edge ], [ %15, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  %16 = ptrtoint ptr %root19.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %root19.i.i, align 4
  %18 = ptrtoint ptr %pwd20.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %pwd20.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %20 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %seq1.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %21, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %get_fs_root_and_pwd_rcu.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

get_fs_root_and_pwd_rcu.exit.i:                   ; preds = %while.end.i.i
  %22 = ptrtoint ptr %root.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %17, ptr %root.i, align 8
  %23 = ptrtoint ptr %pwd.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %19, ptr %pwd.i, align 8
  %24 = trunc i64 %19 to i32
  %25 = inttoptr i32 %24 to ptr
  %pprev.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.not.i.i, label %d_unlinked.exit.i, label %get_fs_root_and_pwd_rcu.exit.i.prepend_char.exit.i_crit_edge

get_fs_root_and_pwd_rcu.exit.i.prepend_char.exit.i_crit_edge: ; preds = %get_fs_root_and_pwd_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepend_char.exit.i

d_unlinked.exit.i:                                ; preds = %get_fs_root_and_pwd_rcu.exit.i
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_parent.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %29, %25
  br i1 %cmp.i.not.i, label %d_unlinked.exit.i.prepend_char.exit.i_crit_edge, label %if.then6.i, !prof !50

d_unlinked.exit.i.prepend_char.exit.i_crit_edge:  ; preds = %d_unlinked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepend_char.exit.i

if.then6.i:                                       ; preds = %d_unlinked.exit.i
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.then6.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.then6.i.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i9 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.then6.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %30 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end47.i

prepend_char.exit.i:                              ; preds = %d_unlinked.exit.i.prepend_char.exit.i_crit_edge, %get_fs_root_and_pwd_rcu.exit.i.prepend_char.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i) #9
  %34 = getelementptr inbounds %struct.prepend_buffer, ptr %b.i, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4095, ptr %34, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i, i32 4095
  %36 = ptrtoint ptr %b.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %incdec.ptr.i.i, ptr %b.i, align 4
  %37 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %incdec.ptr.i.i, align 1
  %call10.i = call fastcc i32 @prepend_path(ptr noundef nonnull %pwd.i, ptr noundef nonnull %root.i, ptr noundef nonnull %b.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp sgt i32 %call10.i, 0
  br i1 %cmp.i, label %if.then17.i, label %prepend_char.exit.i.if.end19.i_crit_edge, !prof !51

prepend_char.exit.i.if.end19.i_crit_edge:         ; preds = %prepend_char.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then17.i:                                      ; preds = %prepend_char.exit.i
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i1 = icmp slt i32 %39, 0
  br i1 %cmp.i1, label %if.then17.i.if.end19.i_crit_edge, label %if.end.i2

if.then17.i.if.end19.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.end.i2:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %39)
  %cmp2.i = icmp ult i32 %39, 13
  br i1 %cmp2.i, label %if.then3.i, label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i2
  %sub.i3 = sub nuw nsw i32 13, %39
  %add.ptr.i = getelementptr i8, ptr @.str.12, i32 %sub.i3
  %40 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b.i, align 4
  %idx.neg.i = sub nsw i32 0, %39
  %add.ptr6.i = getelementptr i8, ptr %41, i32 %idx.neg.i
  store ptr %add.ptr6.i, ptr %b.i, align 4
  %call.i.i4 = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr6.i, ptr noundef %add.ptr.i, i32 noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %call.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.then3.i.prepend_copy.exit.i_crit_edge, label %if.then.i.i6, !prof !50

if.then3.i.prepend_copy.exit.i_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %prepend_copy.exit.i

if.then.i.i6:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call ptr @memset(ptr %add.ptr6.i, i32 120, i32 %39)
  br label %prepend_copy.exit.i

prepend_copy.exit.i:                              ; preds = %if.then.i.i6, %if.then3.i.prepend_copy.exit.i_crit_edge
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %34, align 4
  br label %if.end19.i

if.end10.i:                                       ; preds = %if.end.i2
  %sub12.i = add nsw i32 %39, -13
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub12.i, ptr %34, align 4
  %45 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %46, i32 -13
  store ptr %add.ptr15.i, ptr %b.i, align 4
  %call.i34.i = tail call i32 @copy_from_kernel_nofault(ptr noundef %add.ptr15.i, ptr noundef nonnull @.str.12, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool.not.i35.i, label %if.end10.i.if.end19.i_crit_edge, label %if.then.i36.i, !prof !50

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then.i36.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = call ptr @memset(ptr %add.ptr15.i, i32 120, i32 13)
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then.i36.i, %if.end10.i.if.end19.i_crit_edge, %prepend_copy.exit.i, %if.then17.i.if.end19.i_crit_edge, %prepend_char.exit.i.if.end19.i_crit_edge
  %call.i61.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i61.i, label %if.end19.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i64.i

if.end19.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i64.i:                              ; preds = %if.end19.i
  %call1.i62.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call1.i62.i, 0
  br i1 %tobool.not.i63.i, label %land.lhs.true.i64.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i66.i

land.lhs.true.i64.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i66.i:                             ; preds = %land.lhs.true.i64.i
  %.b4.i65.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65.i, label %land.lhs.true2.i66.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i67.i

land.lhs.true2.i66.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i67.i:                                    ; preds = %land.lhs.true2.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i67.i, %land.lhs.true2.i66.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i64.i.rcu_read_unlock.exit.i_crit_edge, %if.end19.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %48 = tail call i32 @llvm.read_register.i32(metadata !40) #9
  %and.i.i.i.i.i68.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i68.i to ptr
  %preempt_count.i.i.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i69.i, align 4
  %sub.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i69.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %52 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %34, align 4
  %sub.i = sub i32 4096, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %53)
  %cmp21.i = icmp ugt i32 %53, 4096
  br i1 %cmp21.i, label %rcu_read_unlock.exit.i.if.end46.i_crit_edge, label %if.else29.i, !prof !51

rcu_read_unlock.exit.i.if.end46.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.else29.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %size)
  %cmp30.i = icmp ugt i32 %sub.i, %size
  br i1 %cmp30.i, label %if.else29.i.if.end46.i_crit_edge, label %if.else38.i, !prof !51

if.else29.i.if.end46.i_crit_edge:                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.else38.i:                                      ; preds = %if.else29.i
  %54 = ptrtoint ptr %b.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b.i, align 4
  tail call void @__check_object_size(ptr noundef %55, i32 noundef %sub.i, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.else38.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.else38.i.copy_to_user.exit.i_crit_edge:        ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.else38.i
  %56 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %sub.i, i32 -1226833920) #12, !srcloc !67
  %asmresult.i.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %55, i32 noundef %sub.i) #9
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %55, i32 noundef %sub.i) #9
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.else38.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %sub.i, %if.else38.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %sub.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool41.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool41.not.i, i32 %sub.i, i32 -14
  br label %if.end46.i

if.end46.i:                                       ; preds = %copy_to_user.exit.i, %if.else29.i.if.end46.i_crit_edge, %rcu_read_unlock.exit.i.if.end46.i_crit_edge
  %error.0.i = phi i32 [ -36, %rcu_read_unlock.exit.i.if.end46.i_crit_edge ], [ -34, %if.else29.i.if.end46.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #9
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end46.i, %rcu_read_unlock.exit
  %error.1.i = phi i32 [ -2, %rcu_read_unlock.exit ], [ %error.0.i, %if.end46.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %57 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %call.i) #9
  br label %__do_sys_getcwd.exit

__do_sys_getcwd.exit:                             ; preds = %if.end47.i, %entry.__do_sys_getcwd.exit_crit_edge
  %retval.0.i = phi i32 [ %error.1.i, %if.end47.i ], [ -12, %entry.__do_sys_getcwd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pwd.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !68
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #9
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !69
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !51

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/d_path.c", i32 287, i32 15}
!2 = !{ptr @__ksymtab_d_path, !3, !"__ksymtab_d_path", i1 false, i1 false}
!3 = !{!"../fs/d_path.c", i32 295, i32 1}
!4 = !{ptr @__ksymtab_dentry_path_raw, !5, !"__ksymtab_dentry_path_raw", i1 false, i1 false}
!5 = !{!"../fs/d_path.c", i32 369, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/d_path.c", i32 376, i32 15}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/d_path.c", i32 412, i32 1}
!10 = !{ptr @event_enter__getcwd, !9, !"event_enter__getcwd", i1 false, i1 false}
!11 = !{ptr @__event_enter__getcwd, !9, !"__event_enter__getcwd", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @event_exit__getcwd, !9, !"event_exit__getcwd", i1 false, i1 false}
!14 = !{ptr @__event_exit__getcwd, !9, !"__event_exit__getcwd", i1 false, i1 false}
!15 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__syscall_meta__getcwd, !9, !"__syscall_meta__getcwd", i1 false, i1 false}
!17 = !{ptr @__p_syscall_meta__getcwd, !9, !"__p_syscall_meta__getcwd", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @types__getcwd, !9, !"types__getcwd", i1 false, i1 false}
!28 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @args__getcwd, !9, !"args__getcwd", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/d_path.c", i32 433, i32 16}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2149534855}
!53 = !{i64 2150165983}
!54 = !{i64 2150165825}
!55 = !{i64 2150166153}
!56 = !{i64 1221677}
!57 = !{i64 2154900219}
!58 = !{i64 2149535121}
!59 = !{i64 2150151224}
!60 = !{!"auto-init"}
!61 = !{i64 2154918107}
!62 = !{i64 2154917949}
!63 = !{i64 2154918277}
!64 = !{i64 2154925797}
!65 = !{i64 2154925639}
!66 = !{i64 2154925967}
!67 = !{i64 2152235569, i64 2152235594}
!68 = !{i64 1127089, i64 1127150}
!69 = !{i64 1129821}
!70 = !{i64 1130106}
