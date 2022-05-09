; ModuleID = '/llk/IR_all_yes/kernel/seccomp.c_pt.bc'
source_filename = "../kernel/seccomp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%struct.seccomp_notif_sizes = type { i16, i16, i16 }
%struct.ctl_path = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seccomp_log_name = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%union.anon.94 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_seccomp\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__seccomp = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__seccomp, ptr @args__seccomp, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__seccomp, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__seccomp, i64 20) }, ptr @event_enter__seccomp, ptr @event_exit__seccomp }, align 4
@event_enter__seccomp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.21 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__seccomp, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__seccomp = internal global ptr @event_enter__seccomp, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_seccomp\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__seccomp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.21 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.22 zeroinitializer, ptr @__syscall_meta__seccomp, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__seccomp = internal global ptr @event_exit__seccomp, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_seccomp\00", [20 x i8] zeroinitializer }, align 32
@types__seccomp = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.3, ptr @.str.4], [20 x i8] zeroinitializer }, align 32
@args__seccomp = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__seccomp = internal global ptr @__syscall_meta__seccomp, section "__syscalls_metadata", align 4
@__initcall__kmod_seccomp__255_2369_seccomp_sysctl_init6 = internal global ptr @seccomp_sysctl_init, section ".initcall6.init", align 4
@seccomp_actions_logged = internal global { i32, [28 x i8] } { i32 191, [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uargs\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__const.seccomp_get_notif_sizes.sizes = private unnamed_addr constant %struct.seccomp_notif_sizes { i16 80, i16 24, i16 64 }, align 2
@seccomp_sysctl_path = internal global { [3 x %struct.ctl_path], [20 x i8] } { [3 x %struct.ctl_path] [%struct.ctl_path { ptr @.str.14 }, %struct.ctl_path { ptr @.str.15 }, %struct.ctl_path zeroinitializer], [20 x i8] zeroinitializer }, align 32
@seccomp_sysctl_table = internal global { [3 x %struct.ctl_table], [52 x i8] } { [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.16, ptr @seccomp_actions_avail, i32 63, i16 292, ptr null, ptr @proc_dostring, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr null, i32 0, i16 420, ptr null, ptr @seccomp_actions_logged_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@seccomp_sysctl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 2362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014seccomp: sysctl registration failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"seccomp_sysctl_init\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/seccomp.c\00", [47 x i8] zeroinitializer }, align 32
@seccomp_sysctl_init._entry_ptr = internal global ptr @seccomp_sysctl_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seccomp\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"actions_avail\00", [18 x i8] zeroinitializer }, align 32
@seccomp_actions_avail = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"kill_process kill_thread trap errno user_notif trace log allow\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"actions_logged\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@seccomp_log_names = internal constant { [9 x %struct.seccomp_log_name], [56 x i8] } { [9 x %struct.seccomp_log_name] [%struct.seccomp_log_name { i32 1, ptr @.str.19 }, %struct.seccomp_log_name { i32 2, ptr @.str.20 }, %struct.seccomp_log_name { i32 4, ptr @.str.21 }, %struct.seccomp_log_name { i32 8, ptr @.str.22 }, %struct.seccomp_log_name { i32 128, ptr @.str.23 }, %struct.seccomp_log_name { i32 16, ptr @.str.24 }, %struct.seccomp_log_name { i32 32, ptr @.str.25 }, %struct.seccomp_log_name { i32 64, ptr @.str.26 }, %struct.seccomp_log_name zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kill_process\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kill_thread\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trap\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"errno\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_notif\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"allow\00", [26 x i8] zeroinitializer }, align 32
@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 173]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 196608, i64 327680, i64 2143289344, i64 2146435072, i64 2147221504, i64 2147418112, i64 2147483648]
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"event_enter__seccomp\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"event_exit__seccomp\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"types__seccomp\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"args__seccomp\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"seccomp_actions_logged\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 940, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1970, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"seccomp_sysctl_path\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2334, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"seccomp_sysctl_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2340, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2362, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2335, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2336, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2342, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"seccomp_actions_avail\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2143, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2349, i32 15 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2224, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"seccomp_log_names\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2158, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2159, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2160, i32 29 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2161, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2162, i32 23 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2163, i32 28 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2164, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2165, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2166, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [20 x i8] c"../kernel/seccomp.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2302, i32 27 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__event_enter__seccomp, ptr @__event_exit__seccomp, ptr @__initcall__kmod_seccomp__255_2369_seccomp_sysctl_init6, ptr @__p_syscall_meta__seccomp, ptr @__syscall_meta__seccomp, ptr @event_enter__seccomp, ptr @event_exit__seccomp, ptr @seccomp_sysctl_init._entry, ptr @seccomp_sysctl_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__seccomp, ptr @args__seccomp, ptr @seccomp_actions_logged, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @seccomp_sysctl_path, ptr @seccomp_sysctl_table, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @seccomp_actions_avail, ptr @.str.17, ptr @.str.18, ptr @seccomp_log_names, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__seccomp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__seccomp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__seccomp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__seccomp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seccomp_actions_logged to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seccomp_sysctl_path to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seccomp_sysctl_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seccomp_sysctl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seccomp_actions_avail to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seccomp_log_names to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_seccomp = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_seccomp

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_seccomp_spec_mitigate(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @secure_computing_strict(i32 noundef %this_syscall) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %seccomp = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 123
  %ptrace = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptrace, align 16
  %and = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !86

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %seccomp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seccomp, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %9 = zext i32 %this_syscall to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %this_syscall, label %do.cond.3.i [
    i32 3, label %if.then8.cleanup_crit_edge
    i32 4, label %if.then8.cleanup_crit_edge16
    i32 1, label %if.then8.cleanup_crit_edge17
    i32 173, label %if.then8.cleanup_crit_edge18
  ]

if.then8.cleanup_crit_edge18:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.cleanup_crit_edge17:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.cleanup_crit_edge16:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.3.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %seccomp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %seccomp, align 8
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef 9) #12
  unreachable

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1035, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

cleanup:                                          ; preds = %if.then8.cleanup_crit_edge, %if.then8.cleanup_crit_edge16, %if.then8.cleanup_crit_edge17, %if.then8.cleanup_crit_edge18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prctl_get_seccomp() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %seccomp = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 123
  %4 = ptrtoint ptr %seccomp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seccomp, align 8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_seccomp(i32 noundef %op, i32 noundef %flags, i32 noundef %uargs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %uargs to ptr
  %call.i = tail call fastcc i32 @do_seccomp(i32 noundef %op, i32 noundef %flags, ptr noundef %0) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prctl_set_seccomp(i32 noundef %seccomp_mode, ptr noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %seccomp_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %seccomp_mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %op.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %uargs.0 = phi ptr [ %filter, %sw.bb1 ], [ null, %entry.sw.epilog_crit_edge ]
  %call = tail call fastcc i32 @do_seccomp(i32 noundef %op.0, i32 noundef 0, ptr noundef %uargs.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_seccomp(i32 noundef %op, i32 noundef %flags, ptr noundef %uargs) unnamed_addr #0 align 64 {
entry:
  %sizes.i = alloca %struct.seccomp_notif_sizes, align 2
  %action.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i8.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %op, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb9
    i32 2, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp.not = icmp eq i32 %flags, 0
  %cmp1.not = icmp eq ptr %uargs, null
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %sw.bb
  %1 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 112
  %5 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i, align 8
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 112
  %11 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sighand.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %12, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body5.i.i, label %seccomp_may_assign_mode.exit.i, !prof !88

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 432, 0\0A.popsection", ""() #9, !srcloc !89
  unreachable

seccomp_may_assign_mode.exit.i:                   ; preds = %if.end
  %seccomp.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 123
  %15 = ptrtoint ptr %seccomp.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seccomp.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i.i = icmp ult i32 %16, 2
  br i1 %switch.i.i, label %if.end.i, label %seccomp_may_assign_mode.exit.i.seccomp_set_mode_strict.exit_crit_edge

seccomp_may_assign_mode.exit.i.seccomp_set_mode_strict.exit_crit_edge: ; preds = %seccomp_may_assign_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seccomp_set_mode_strict.exit

if.end.i:                                         ; preds = %seccomp_may_assign_mode.exit.i
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %sighand.i9.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 112
  %19 = ptrtoint ptr %sighand.i9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sighand.i9.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i8.i)
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %agg.tmp.sroa.0.0.copyload.i.i10.i = load volatile i32, ptr %20, align 4
  %22 = ptrtoint ptr %agg.tmp.sroa.0.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i10.i, ptr %agg.tmp.sroa.0.i.i8.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i11.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i10.i, 16
  %conv.i.i.i12.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i10.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i12.i, i32 %lock.sroa.0.0.extract.shift.i.i.i11.i)
  %cmp.i.i.not.i13.i = icmp eq i32 %conv.i.i.i12.i, %lock.sroa.0.0.extract.shift.i.i.i11.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i8.i)
  br i1 %cmp.i.i.not.i13.i, label %do.body4.i.i, label %seccomp_assign_mode.exit.i, !prof !88

do.body4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #9, !srcloc !90
  unreachable

seccomp_assign_mode.exit.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %seccomp.i14.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 123
  %23 = ptrtoint ptr %seccomp.i14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %seccomp.i14.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arch_seccomp_spec_mitigate(ptr noundef %18) #9
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %25) #9
  br label %seccomp_set_mode_strict.exit

seccomp_set_mode_strict.exit:                     ; preds = %seccomp_assign_mode.exit.i, %seccomp_may_assign_mode.exit.i.seccomp_set_mode_strict.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %seccomp_assign_mode.exit.i ], [ -22, %seccomp_may_assign_mode.exit.i.seccomp_set_mode_strict.exit_crit_edge ]
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %sighand6.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 112
  %28 = ptrtoint ptr %sighand6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sighand6.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %29) #9
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp5.not = icmp eq i32 %flags, 0
  br i1 %cmp5.not, label %if.end7, label %sw.bb4.return_crit_edge

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7:                                          ; preds = %sw.bb4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %action.i) #9
  %30 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %action.i, align 4, !annotation !92
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end7.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end7.if.then11.i.i.i_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end7
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uargs, i32 4, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !86

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %action.i, i32 noundef 4) #9
  %32 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !94
  %and.i.i.i.i.i = and i32 %34, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %action.i, ptr noundef %uargs, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i20, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !86

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end7.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 4, %if.end7.if.then11.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 4, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %action.i, i32 %sub.i.i.i
  %35 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %seccomp_get_action_avail.exit

if.end.i20:                                       ; preds = %if.end.i.i.i
  %36 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %action.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %37, label %if.end.i20.seccomp_get_action_avail.exit_crit_edge [
    i32 -2147483648, label %if.end.i20.sw.epilog.i_crit_edge
    i32 0, label %if.end.i20.sw.epilog.i_crit_edge26
    i32 196608, label %if.end.i20.sw.epilog.i_crit_edge27
    i32 327680, label %if.end.i20.sw.epilog.i_crit_edge28
    i32 2143289344, label %if.end.i20.sw.epilog.i_crit_edge29
    i32 2146435072, label %if.end.i20.sw.epilog.i_crit_edge30
    i32 2147221504, label %if.end.i20.sw.epilog.i_crit_edge31
    i32 2147418112, label %if.end.i20.sw.epilog.i_crit_edge32
  ]

if.end.i20.sw.epilog.i_crit_edge32:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge31:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge30:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge29:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge28:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge27:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge26:               ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.sw.epilog.i_crit_edge:                 ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i20.seccomp_get_action_avail.exit_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %seccomp_get_action_avail.exit

sw.epilog.i:                                      ; preds = %if.end.i20.sw.epilog.i_crit_edge, %if.end.i20.sw.epilog.i_crit_edge26, %if.end.i20.sw.epilog.i_crit_edge27, %if.end.i20.sw.epilog.i_crit_edge28, %if.end.i20.sw.epilog.i_crit_edge29, %if.end.i20.sw.epilog.i_crit_edge30, %if.end.i20.sw.epilog.i_crit_edge31, %if.end.i20.sw.epilog.i_crit_edge32
  br label %seccomp_get_action_avail.exit

seccomp_get_action_avail.exit:                    ; preds = %sw.epilog.i, %if.end.i20.seccomp_get_action_avail.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -95, %if.end.i20.seccomp_get_action_avail.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %action.i) #9
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp10.not = icmp eq i32 %flags, 0
  br i1 %cmp10.not, label %if.end12, label %sw.bb9.return_crit_edge

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end12:                                         ; preds = %sw.bb9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sizes.i) #9
  %39 = call ptr @memcpy(ptr %sizes.i, ptr @__const.seccomp_get_notif_sizes.sizes, i32 6)
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #9
  %call.i.i.i21 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i21, label %if.end12.seccomp_get_notif_sizes.exit_crit_edge, label %if.end.i.i.i24

if.end12.seccomp_get_notif_sizes.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %seccomp_get_notif_sizes.exit

if.end.i.i.i24:                                   ; preds = %if.end12
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uargs, i32 6, i32 -1226833920) #13, !srcloc !97
  %asmresult.i.i.i22 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i22)
  %cmp.i1.i.i23 = icmp eq i32 %asmresult.i.i.i22, 0
  br i1 %cmp.i1.i.i23, label %copy_to_user.exit.i, label %if.end.i.i.i24.seccomp_get_notif_sizes.exit_crit_edge

if.end.i.i.i24.seccomp_get_notif_sizes.exit_crit_edge: ; preds = %if.end.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %seccomp_get_notif_sizes.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i25 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sizes.i, i32 noundef 6) #9
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %uargs, ptr noundef nonnull %sizes.i, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %seccomp_get_notif_sizes.exit

seccomp_get_notif_sizes.exit:                     ; preds = %copy_to_user.exit.i, %if.end.i.i.i24.seccomp_get_notif_sizes.exit_crit_edge, %if.end12.seccomp_get_notif_sizes.exit_crit_edge
  %41 = phi i32 [ -14, %if.end12.seccomp_get_notif_sizes.exit_crit_edge ], [ -14, %if.end.i.i.i24.seccomp_get_notif_sizes.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sizes.i) #9
  br label %return

return:                                           ; preds = %seccomp_get_notif_sizes.exit, %sw.bb9.return_crit_edge, %seccomp_get_action_avail.exit, %sw.bb4.return_crit_edge, %seccomp_set_mode_strict.exit, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %41, %seccomp_get_notif_sizes.exit ], [ %retval.0.i, %seccomp_get_action_avail.exit ], [ %ret.0.i, %seccomp_set_mode_strict.exit ], [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb4.return_crit_edge ], [ -22, %sw.bb9.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @seccomp_sysctl_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl_paths(ptr noundef nonnull @seccomp_sysctl_path, ptr noundef nonnull @seccomp_sysctl_table) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_paths(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #6 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seccomp_actions_logged_handler(ptr nocapture noundef readonly %ro_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %names.i15 = alloca [63 x i8], align 1
  %table.i16 = alloca %struct.ctl_table, align 4
  %names.i7 = alloca [63 x i8], align 1
  %old_names.i = alloca [63 x i8], align 1
  %names.addr.i.i = alloca ptr, align 4
  %names.i = alloca [63 x i8], align 1
  %table.i = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @seccomp_actions_logged, align 4
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %names.i) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table.i) #9
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end.i, label %if.then.write_actions_logged.exit_crit_edge

if.then.write_actions_logged.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_actions_logged.exit

if.end.i:                                         ; preds = %if.then
  %1 = call ptr @memset(ptr %names.i, i32 0, i32 63)
  %2 = call ptr @memcpy(ptr %table.i, ptr %ro_table, i32 36)
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.i, i32 0, i32 1
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %names.i, ptr %data.i, align 4
  %maxlen.i = getelementptr inbounds %struct.ctl_table, ptr %table.i, i32 0, i32 2
  %4 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %maxlen.i, align 4
  %call2.i = call i32 @proc_dostring(ptr noundef nonnull %table.i, i32 noundef 1, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.write_actions_logged.exit_crit_edge

if.end.i.write_actions_logged.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_actions_logged.exit

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names.addr.i.i) #9
  %7 = ptrtoint ptr %names.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %names.addr.i.i, align 4
  %call9.i.i = call ptr @strsep(ptr noundef nonnull %names.addr.i.i, ptr noundef nonnull @.str.18) #9
  %tobool.not10.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not10.i.i, label %if.end8.i.thread, label %if.end4.i.land.rhs.i.i_crit_edge

if.end4.i.land.rhs.i.i_crit_edge:                 ; preds = %if.end4.i
  br label %land.rhs.i.i

if.end8.i.thread:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.addr.i.i) #9
  br label %if.end11.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.end4.i.land.rhs.i.i_crit_edge
  %actions_logged.0 = phi i32 [ %or.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end4.i.land.rhs.i.i_crit_edge ]
  %call11.i.i = phi ptr [ %call.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %call9.i.i, %if.end4.i.land.rhs.i.i_crit_edge ]
  %8 = ptrtoint ptr %call11.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.if.end8.i_crit_edge, label %while.body.i.i

land.rhs.i.i.if.end8.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %call.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.19, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.i.i.i:                                    ; preds = %while.body.i.i
  %call.1.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.20, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i.i)
  %tobool3.not.1.i.i.i = icmp eq i32 %call.1.i.i.i, 0
  br i1 %tobool3.not.1.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %call.2.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.21, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i.i)
  %tobool3.not.2.i.i.i = icmp eq i32 %call.2.i.i.i, 0
  br i1 %tobool3.not.2.i.i.i, label %for.inc.1.i.i.i.if.end.i.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %call.3.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.22, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i.i)
  %tobool3.not.3.i.i.i = icmp eq i32 %call.3.i.i.i, 0
  br i1 %tobool3.not.3.i.i.i, label %for.inc.2.i.i.i.if.end.i.i_crit_edge, label %for.inc.3.i.i.i

for.inc.2.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %call.4.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.23, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i.i)
  %tobool3.not.4.i.i.i = icmp eq i32 %call.4.i.i.i, 0
  br i1 %tobool3.not.4.i.i.i, label %for.inc.3.i.i.i.if.end.i.i_crit_edge, label %for.inc.4.i.i.i

for.inc.3.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %call.5.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.24, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i.i)
  %tobool3.not.5.i.i.i = icmp eq i32 %call.5.i.i.i, 0
  br i1 %tobool3.not.5.i.i.i, label %for.inc.4.i.i.i.if.end.i.i_crit_edge, label %for.inc.5.i.i.i

for.inc.4.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %call.6.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.25, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i.i)
  %tobool3.not.6.i.i.i = icmp eq i32 %call.6.i.i.i, 0
  br i1 %tobool3.not.6.i.i.i, label %for.inc.5.i.i.i.if.end.i.i_crit_edge, label %for.inc.6.i.i.i

for.inc.5.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %call.7.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.26, ptr noundef nonnull %call11.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i.i.i)
  %tobool3.not.7.i.i.i = icmp eq i32 %call.7.i.i.i, 0
  br i1 %tobool3.not.7.i.i.i, label %for.inc.6.i.i.i.if.end.i.i_crit_edge, label %seccomp_actions_logged_from_names.exit.i

for.inc.6.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.6.i.i.i.if.end.i.i_crit_edge, %for.inc.5.i.i.i.if.end.i.i_crit_edge, %for.inc.4.i.i.i.if.end.i.i_crit_edge, %for.inc.3.i.i.i.if.end.i.i_crit_edge, %for.inc.2.i.i.i.if.end.i.i_crit_edge, %for.inc.1.i.i.i.if.end.i.i_crit_edge, %for.inc.i.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %cur.010.lcssa.i.i.i = phi ptr [ @seccomp_log_names, %while.body.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 1), %for.inc.i.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 2), %for.inc.1.i.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 3), %for.inc.2.i.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 4), %for.inc.3.i.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 5), %for.inc.4.i.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 6), %for.inc.5.i.i.i.if.end.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 7), %for.inc.6.i.i.i.if.end.i.i_crit_edge ]
  %10 = ptrtoint ptr %cur.010.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur.010.lcssa.i.i.i, align 4
  %or.i.i = or i32 %11, %actions_logged.0
  %call.i.i = call ptr @strsep(ptr noundef nonnull %names.addr.i.i, ptr noundef nonnull @.str.18) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end8.i_crit_edge, label %if.end.i.i.land.rhs.i.i_crit_edge

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

if.end.i.i.if.end8.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

seccomp_actions_logged_from_names.exit.i:         ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.addr.i.i) #9
  br label %write_actions_logged.exit

if.end8.i:                                        ; preds = %if.end.i.i.if.end8.i_crit_edge, %land.rhs.i.i.if.end8.i_crit_edge
  %actions_logged.1 = phi i32 [ %actions_logged.0, %land.rhs.i.i.if.end8.i_crit_edge ], [ %or.i.i, %if.end.i.i.if.end8.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.addr.i.i) #9
  %and.i = and i32 %actions_logged.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.end8.i.write_actions_logged.exit_crit_edge

if.end8.i.write_actions_logged.exit_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_actions_logged.exit

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end8.i.if.end11.i_crit_edge, %if.end8.i.thread
  %actions_logged.158 = phi i32 [ 0, %if.end8.i.thread ], [ %actions_logged.1, %if.end8.i.if.end11.i_crit_edge ]
  store i32 %actions_logged.158, ptr @seccomp_actions_logged, align 4
  br label %write_actions_logged.exit

write_actions_logged.exit:                        ; preds = %if.end11.i, %if.end8.i.write_actions_logged.exit_crit_edge, %seccomp_actions_logged_from_names.exit.i, %if.end.i.write_actions_logged.exit_crit_edge, %if.then.write_actions_logged.exit_crit_edge
  %actions_logged.2 = phi i32 [ %actions_logged.158, %if.end11.i ], [ %actions_logged.1, %if.end8.i.write_actions_logged.exit_crit_edge ], [ %actions_logged.0, %seccomp_actions_logged_from_names.exit.i ], [ 0, %if.end.i.write_actions_logged.exit_crit_edge ], [ 0, %if.then.write_actions_logged.exit_crit_edge ]
  %retval.0.i = phi i32 [ 0, %if.end11.i ], [ -22, %if.end8.i.write_actions_logged.exit_crit_edge ], [ -22, %seccomp_actions_logged_from_names.exit.i ], [ %call2.i, %if.end.i.write_actions_logged.exit_crit_edge ], [ -1, %if.then.write_actions_logged.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table.i) #9
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %names.i) #9
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %names.i7) #9
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %old_names.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %12 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i8 = icmp eq i32 %12, 0
  br i1 %tobool.not.i8, label %write_actions_logged.exit.audit_actions_logged.exit_crit_edge, label %if.end.i9

write_actions_logged.exit.audit_actions_logged.exit_crit_edge: ; preds = %write_actions_logged.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %audit_actions_logged.exit

if.end.i9:                                        ; preds = %write_actions_logged.exit
  %13 = call ptr @memset(ptr %names.i7, i32 0, i32 63)
  %14 = call ptr @memset(ptr %old_names.i, i32 0, i32 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not.i = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %actions_logged.2)
  %tobool6.not.i = icmp eq i32 %actions_logged.2, 0
  %or.cond.i = or i1 %tobool6.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %if.end.i9.if.end13.i_crit_edge, label %if.end.i9.for.body.i.i_crit_edge

if.end.i9.for.body.i.i_crit_edge:                 ; preds = %if.end.i9
  br label %for.body.i.i

if.end.i9.if.end13.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i9.for.body.i.i_crit_edge
  %name14.i.i = phi ptr [ %name.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 0, i32 1), %if.end.i9.for.body.i.i_crit_edge ]
  %append_sep.0.off013.i.i = phi i1 [ %append_sep.2.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ false, %if.end.i9.for.body.i.i_crit_edge ]
  %cur.012.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ @seccomp_log_names, %if.end.i9.for.body.i.i_crit_edge ]
  %names.addr.011.i.i = phi ptr [ %names.addr.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %names.i7, %if.end.i9.for.body.i.i_crit_edge ]
  %size.addr.010.i.i = phi i32 [ %size.addr.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 63, %if.end.i9.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %cur.012.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur.012.i.i, align 4
  %and.i.i = and i32 %16, %actions_logged.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i10

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i10:                                     ; preds = %for.body.i.i
  br i1 %append_sep.0.off013.i.i, label %if.then4.i.i, label %if.end.i.i10.if.end7.i.i_crit_edge

if.end.i.i10.if.end7.i.i_crit_edge:               ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i10
  %call.i.i11 = call i32 @strscpy(ptr noundef %names.addr.011.i.i, ptr noundef nonnull @.str.29, i32 noundef %size.addr.010.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp.i.i = icmp slt i32 %call.i.i11, 0
  br i1 %cmp.i.i, label %if.then4.i.i.if.end13.i_crit_edge, label %if.end6.i.i

if.then4.i.i.if.end13.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end6.i.i:                                      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %names.addr.011.i.i, i32 %call.i.i11
  %sub.i.i = sub i32 %size.addr.010.i.i, %call.i.i11
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end6.i.i, %if.end.i.i10.if.end7.i.i_crit_edge
  %size.addr.1.i.i = phi i32 [ %sub.i.i, %if.end6.i.i ], [ %size.addr.010.i.i, %if.end.i.i10.if.end7.i.i_crit_edge ]
  %names.addr.1.i.i = phi ptr [ %add.ptr.i.i, %if.end6.i.i ], [ %names.addr.011.i.i, %if.end.i.i10.if.end7.i.i_crit_edge ]
  %17 = ptrtoint ptr %name14.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name14.i.i, align 4
  %call9.i.i12 = call i32 @strscpy(ptr noundef %names.addr.1.i.i, ptr noundef %18, i32 noundef %size.addr.1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i12)
  %cmp10.i.i = icmp slt i32 %call9.i.i12, 0
  br i1 %cmp10.i.i, label %if.end7.i.i.if.end13.i_crit_edge, label %if.end12.i.i

if.end7.i.i.if.end13.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13.i.i = getelementptr i8, ptr %names.addr.1.i.i, i32 %call9.i.i12
  %sub14.i.i = sub i32 %size.addr.1.i.i, %call9.i.i12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %size.addr.2.i.i = phi i32 [ %sub14.i.i, %if.end12.i.i ], [ %size.addr.010.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %names.addr.2.i.i = phi ptr [ %add.ptr13.i.i, %if.end12.i.i ], [ %names.addr.011.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %append_sep.2.off0.i.i = phi i1 [ true, %if.end12.i.i ], [ %append_sep.0.off013.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.seccomp_log_name, ptr %cur.012.i.i, i32 1
  %name.i.i = getelementptr %struct.seccomp_log_name, ptr %cur.012.i.i, i32 1, i32 1
  %19 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i.i, align 4
  %tobool.not.i.i13 = icmp eq ptr %20, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i.i)
  %tobool1.not.i.i14 = icmp eq i32 %size.addr.2.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i13, i1 true, i1 %tobool1.not.i.i14
  br i1 %or.cond.i.i, label %for.inc.i.i.if.end13.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end13.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %for.inc.i.i.if.end13.i_crit_edge, %if.end7.i.i.if.end13.i_crit_edge, %if.then4.i.i.if.end13.i_crit_edge, %if.end.i9.if.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool14.not.i = icmp eq i32 %0, 0
  br i1 %tobool14.not.i, label %if.end13.i.audit_actions_logged.exit_crit_edge, label %if.end13.i.for.body.i36.i_crit_edge

if.end13.i.for.body.i36.i_crit_edge:              ; preds = %if.end13.i
  br label %for.body.i36.i

if.end13.i.audit_actions_logged.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %audit_actions_logged.exit

for.body.i36.i:                                   ; preds = %for.inc.i60.i.for.body.i36.i_crit_edge, %if.end13.i.for.body.i36.i_crit_edge
  %name14.i29.i = phi ptr [ %name.i56.i, %for.inc.i60.i.for.body.i36.i_crit_edge ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 0, i32 1), %if.end13.i.for.body.i36.i_crit_edge ]
  %append_sep.0.off013.i30.i = phi i1 [ %append_sep.2.off0.i54.i, %for.inc.i60.i.for.body.i36.i_crit_edge ], [ false, %if.end13.i.for.body.i36.i_crit_edge ]
  %cur.012.i31.i = phi ptr [ %incdec.ptr.i55.i, %for.inc.i60.i.for.body.i36.i_crit_edge ], [ @seccomp_log_names, %if.end13.i.for.body.i36.i_crit_edge ]
  %names.addr.011.i32.i = phi ptr [ %names.addr.2.i53.i, %for.inc.i60.i.for.body.i36.i_crit_edge ], [ %old_names.i, %if.end13.i.for.body.i36.i_crit_edge ]
  %size.addr.010.i33.i = phi i32 [ %size.addr.2.i52.i, %for.inc.i60.i.for.body.i36.i_crit_edge ], [ 63, %if.end13.i.for.body.i36.i_crit_edge ]
  %21 = ptrtoint ptr %cur.012.i31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur.012.i31.i, align 4
  %and.i34.i = and i32 %22, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i)
  %tobool2.not.i35.i = icmp eq i32 %and.i34.i, 0
  br i1 %tobool2.not.i35.i, label %for.body.i36.i.for.inc.i60.i_crit_edge, label %if.end.i37.i

for.body.i36.i.for.inc.i60.i_crit_edge:           ; preds = %for.body.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i60.i

if.end.i37.i:                                     ; preds = %for.body.i36.i
  br i1 %append_sep.0.off013.i30.i, label %if.then4.i40.i, label %if.end.i37.i.if.end7.i48.i_crit_edge

if.end.i37.i.if.end7.i48.i_crit_edge:             ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i48.i

if.then4.i40.i:                                   ; preds = %if.end.i37.i
  %call.i38.i = call i32 @strscpy(ptr noundef %names.addr.011.i32.i, ptr noundef nonnull @.str.29, i32 noundef %size.addr.010.i33.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %cmp.i39.i = icmp slt i32 %call.i38.i, 0
  br i1 %cmp.i39.i, label %if.then4.i40.i.audit_actions_logged.exit_crit_edge, label %if.end6.i43.i

if.then4.i40.i.audit_actions_logged.exit_crit_edge: ; preds = %if.then4.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %audit_actions_logged.exit

if.end6.i43.i:                                    ; preds = %if.then4.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i41.i = getelementptr i8, ptr %names.addr.011.i32.i, i32 %call.i38.i
  %sub.i42.i = sub i32 %size.addr.010.i33.i, %call.i38.i
  br label %if.end7.i48.i

if.end7.i48.i:                                    ; preds = %if.end6.i43.i, %if.end.i37.i.if.end7.i48.i_crit_edge
  %size.addr.1.i44.i = phi i32 [ %sub.i42.i, %if.end6.i43.i ], [ %size.addr.010.i33.i, %if.end.i37.i.if.end7.i48.i_crit_edge ]
  %names.addr.1.i45.i = phi ptr [ %add.ptr.i41.i, %if.end6.i43.i ], [ %names.addr.011.i32.i, %if.end.i37.i.if.end7.i48.i_crit_edge ]
  %23 = ptrtoint ptr %name14.i29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name14.i29.i, align 4
  %call9.i46.i = call i32 @strscpy(ptr noundef %names.addr.1.i45.i, ptr noundef %24, i32 noundef %size.addr.1.i44.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i46.i)
  %cmp10.i47.i = icmp slt i32 %call9.i46.i, 0
  br i1 %cmp10.i47.i, label %if.end7.i48.i.audit_actions_logged.exit_crit_edge, label %if.end12.i51.i

if.end7.i48.i.audit_actions_logged.exit_crit_edge: ; preds = %if.end7.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %audit_actions_logged.exit

if.end12.i51.i:                                   ; preds = %if.end7.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13.i49.i = getelementptr i8, ptr %names.addr.1.i45.i, i32 %call9.i46.i
  %sub14.i50.i = sub i32 %size.addr.1.i44.i, %call9.i46.i
  br label %for.inc.i60.i

for.inc.i60.i:                                    ; preds = %if.end12.i51.i, %for.body.i36.i.for.inc.i60.i_crit_edge
  %size.addr.2.i52.i = phi i32 [ %sub14.i50.i, %if.end12.i51.i ], [ %size.addr.010.i33.i, %for.body.i36.i.for.inc.i60.i_crit_edge ]
  %names.addr.2.i53.i = phi ptr [ %add.ptr13.i49.i, %if.end12.i51.i ], [ %names.addr.011.i32.i, %for.body.i36.i.for.inc.i60.i_crit_edge ]
  %append_sep.2.off0.i54.i = phi i1 [ true, %if.end12.i51.i ], [ %append_sep.0.off013.i30.i, %for.body.i36.i.for.inc.i60.i_crit_edge ]
  %incdec.ptr.i55.i = getelementptr %struct.seccomp_log_name, ptr %cur.012.i31.i, i32 1
  %name.i56.i = getelementptr %struct.seccomp_log_name, ptr %cur.012.i31.i, i32 1, i32 1
  %25 = ptrtoint ptr %name.i56.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i56.i, align 4
  %tobool.not.i57.i = icmp eq ptr %26, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i52.i)
  %tobool1.not.i58.i = icmp eq i32 %size.addr.2.i52.i, 0
  %or.cond.i59.i = select i1 %tobool.not.i57.i, i1 true, i1 %tobool1.not.i58.i
  br i1 %or.cond.i59.i, label %for.inc.i60.i.audit_actions_logged.exit_crit_edge, label %for.inc.i60.i.for.body.i36.i_crit_edge

for.inc.i60.i.for.body.i36.i_crit_edge:           ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36.i

for.inc.i60.i.audit_actions_logged.exit_crit_edge: ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %audit_actions_logged.exit

audit_actions_logged.exit:                        ; preds = %for.inc.i60.i.audit_actions_logged.exit_crit_edge, %if.end7.i48.i.audit_actions_logged.exit_crit_edge, %if.then4.i40.i.audit_actions_logged.exit_crit_edge, %if.end13.i.audit_actions_logged.exit_crit_edge, %write_actions_logged.exit.audit_actions_logged.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %old_names.i) #9
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %names.i7) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %names.i15) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table.i16) #9
  %27 = call ptr @memset(ptr %names.i15, i32 0, i32 63)
  %28 = load i32, ptr @seccomp_actions_logged, align 4
  br label %for.body.i.i24

for.body.i.i24:                                   ; preds = %for.inc.i.i48.for.body.i.i24_crit_edge, %if.else
  %name14.i.i17 = phi ptr [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 0, i32 1), %if.else ], [ %name.i.i44, %for.inc.i.i48.for.body.i.i24_crit_edge ]
  %append_sep.0.off013.i.i18 = phi i1 [ false, %if.else ], [ %append_sep.2.off0.i.i42, %for.inc.i.i48.for.body.i.i24_crit_edge ]
  %cur.012.i.i19 = phi ptr [ @seccomp_log_names, %if.else ], [ %incdec.ptr.i.i43, %for.inc.i.i48.for.body.i.i24_crit_edge ]
  %names.addr.011.i.i20 = phi ptr [ %names.i15, %if.else ], [ %names.addr.2.i.i41, %for.inc.i.i48.for.body.i.i24_crit_edge ]
  %size.addr.010.i.i21 = phi i32 [ 63, %if.else ], [ %size.addr.2.i.i40, %for.inc.i.i48.for.body.i.i24_crit_edge ]
  %29 = ptrtoint ptr %cur.012.i.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur.012.i.i19, align 4
  %and.i.i22 = and i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool2.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool2.not.i.i23, label %for.body.i.i24.for.inc.i.i48_crit_edge, label %if.end.i.i25

for.body.i.i24.for.inc.i.i48_crit_edge:           ; preds = %for.body.i.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i48

if.end.i.i25:                                     ; preds = %for.body.i.i24
  br i1 %append_sep.0.off013.i.i18, label %if.then4.i.i28, label %if.end.i.i25.if.end7.i.i36_crit_edge

if.end.i.i25.if.end7.i.i36_crit_edge:             ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i36

if.then4.i.i28:                                   ; preds = %if.end.i.i25
  %call.i.i26 = call i32 @strscpy(ptr noundef %names.addr.011.i.i20, ptr noundef nonnull @.str.18, i32 noundef %size.addr.010.i.i21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.i.i27 = icmp slt i32 %call.i.i26, 0
  br i1 %cmp.i.i27, label %if.then4.i.i28.read_actions_logged.exit_crit_edge, label %if.end6.i.i31

if.then4.i.i28.read_actions_logged.exit_crit_edge: ; preds = %if.then4.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_actions_logged.exit

if.end6.i.i31:                                    ; preds = %if.then4.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i29 = getelementptr i8, ptr %names.addr.011.i.i20, i32 %call.i.i26
  %sub.i.i30 = sub i32 %size.addr.010.i.i21, %call.i.i26
  br label %if.end7.i.i36

if.end7.i.i36:                                    ; preds = %if.end6.i.i31, %if.end.i.i25.if.end7.i.i36_crit_edge
  %size.addr.1.i.i32 = phi i32 [ %sub.i.i30, %if.end6.i.i31 ], [ %size.addr.010.i.i21, %if.end.i.i25.if.end7.i.i36_crit_edge ]
  %names.addr.1.i.i33 = phi ptr [ %add.ptr.i.i29, %if.end6.i.i31 ], [ %names.addr.011.i.i20, %if.end.i.i25.if.end7.i.i36_crit_edge ]
  %31 = ptrtoint ptr %name14.i.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name14.i.i17, align 4
  %call9.i.i34 = call i32 @strscpy(ptr noundef %names.addr.1.i.i33, ptr noundef %32, i32 noundef %size.addr.1.i.i32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i34)
  %cmp10.i.i35 = icmp slt i32 %call9.i.i34, 0
  br i1 %cmp10.i.i35, label %if.end7.i.i36.read_actions_logged.exit_crit_edge, label %if.end12.i.i39

if.end7.i.i36.read_actions_logged.exit_crit_edge: ; preds = %if.end7.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_actions_logged.exit

if.end12.i.i39:                                   ; preds = %if.end7.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13.i.i37 = getelementptr i8, ptr %names.addr.1.i.i33, i32 %call9.i.i34
  %sub14.i.i38 = sub i32 %size.addr.1.i.i32, %call9.i.i34
  br label %for.inc.i.i48

for.inc.i.i48:                                    ; preds = %if.end12.i.i39, %for.body.i.i24.for.inc.i.i48_crit_edge
  %size.addr.2.i.i40 = phi i32 [ %sub14.i.i38, %if.end12.i.i39 ], [ %size.addr.010.i.i21, %for.body.i.i24.for.inc.i.i48_crit_edge ]
  %names.addr.2.i.i41 = phi ptr [ %add.ptr13.i.i37, %if.end12.i.i39 ], [ %names.addr.011.i.i20, %for.body.i.i24.for.inc.i.i48_crit_edge ]
  %append_sep.2.off0.i.i42 = phi i1 [ true, %if.end12.i.i39 ], [ %append_sep.0.off013.i.i18, %for.body.i.i24.for.inc.i.i48_crit_edge ]
  %incdec.ptr.i.i43 = getelementptr %struct.seccomp_log_name, ptr %cur.012.i.i19, i32 1
  %name.i.i44 = getelementptr %struct.seccomp_log_name, ptr %cur.012.i.i19, i32 1, i32 1
  %33 = ptrtoint ptr %name.i.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name.i.i44, align 4
  %tobool.not.i.i45 = icmp eq ptr %34, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i.i40)
  %tobool1.not.i.i46 = icmp eq i32 %size.addr.2.i.i40, 0
  %or.cond.i.i47 = select i1 %tobool.not.i.i45, i1 true, i1 %tobool1.not.i.i46
  br i1 %or.cond.i.i47, label %if.end.i51, label %for.inc.i.i48.for.body.i.i24_crit_edge

for.inc.i.i48.for.body.i.i24_crit_edge:           ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i24

if.end.i51:                                       ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  %35 = call ptr @memcpy(ptr %table.i16, ptr %ro_table, i32 36)
  %data.i49 = getelementptr inbounds %struct.ctl_table, ptr %table.i16, i32 0, i32 1
  %36 = ptrtoint ptr %data.i49 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %names.i15, ptr %data.i49, align 4
  %maxlen.i50 = getelementptr inbounds %struct.ctl_table, ptr %table.i16, i32 0, i32 2
  %37 = ptrtoint ptr %maxlen.i50 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 63, ptr %maxlen.i50, align 4
  %call3.i = call i32 @proc_dostring(ptr noundef nonnull %table.i16, i32 noundef 0, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #9
  br label %read_actions_logged.exit

read_actions_logged.exit:                         ; preds = %if.end.i51, %if.end7.i.i36.read_actions_logged.exit_crit_edge, %if.then4.i.i28.read_actions_logged.exit_crit_edge
  %retval.0.i52 = phi i32 [ %call3.i, %if.end.i51 ], [ -22, %if.end7.i.i36.read_actions_logged.exit_crit_edge ], [ -22, %if.then4.i.i28.read_actions_logged.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table.i16) #9
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %names.i15) #9
  br label %if.end

if.end:                                           ; preds = %read_actions_logged.exit, %audit_actions_logged.exit
  %ret.0 = phi i32 [ %retval.0.i, %audit_actions_logged.exit ], [ %retval.0.i52, %read_actions_logged.exit ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/seccomp.c", i32 1970, i32 1}
!2 = !{ptr @event_enter__seccomp, !1, !"event_enter__seccomp", i1 false, i1 false}
!3 = !{ptr @__event_enter__seccomp, !1, !"__event_enter__seccomp", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__seccomp, !1, !"event_exit__seccomp", i1 false, i1 false}
!6 = !{ptr @__event_exit__seccomp, !1, !"__event_exit__seccomp", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__seccomp, !1, !"__syscall_meta__seccomp", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__seccomp, !1, !"__p_syscall_meta__seccomp", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_seccomp__255_2369_seccomp_sysctl_init6, !11, !"__initcall__kmod_seccomp__255_2369_seccomp_sysctl_init6", i1 false, i1 false}
!11 = !{!"../kernel/seccomp.c", i32 2369, i32 1}
!12 = distinct !{null, !13, !"mode1_syscalls", i1 false, i1 false}
!13 = !{!"../kernel/seccomp.c", i32 996, i32 18}
!14 = !{ptr @seccomp_actions_logged, !15, !"seccomp_actions_logged", i1 false, i1 false}
!15 = !{!"../kernel/seccomp.c", i32 940, i32 12}
!16 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @types__seccomp, !1, !"types__seccomp", i1 false, i1 false}
!19 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @args__seccomp, !1, !"args__seccomp", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/seccomp.c", i32 2362, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @seccomp_sysctl_init._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @seccomp_sysctl_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/seccomp.c", i32 2335, i32 16}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/seccomp.c", i32 2336, i32 16}
!40 = !{ptr @seccomp_sysctl_path, !41, !"seccomp_sysctl_path", i1 false, i1 false}
!41 = !{!"../kernel/seccomp.c", i32 2334, i32 24}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/seccomp.c", i32 2342, i32 15}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/seccomp.c", i32 2349, i32 15}
!46 = !{ptr @seccomp_sysctl_table, !47, !"seccomp_sysctl_table", i1 false, i1 false}
!47 = !{!"../kernel/seccomp.c", i32 2340, i32 25}
!48 = !{ptr @seccomp_actions_avail, !49, !"seccomp_actions_avail", i1 false, i1 false}
!49 = !{!"../kernel/seccomp.c", i32 2143, i32 19}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/seccomp.c", i32 2224, i32 32}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/seccomp.c", i32 2159, i32 30}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/seccomp.c", i32 2160, i32 29}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/seccomp.c", i32 2161, i32 22}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/seccomp.c", i32 2162, i32 23}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/seccomp.c", i32 2163, i32 28}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/seccomp.c", i32 2164, i32 23}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/seccomp.c", i32 2165, i32 21}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/seccomp.c", i32 2166, i32 23}
!68 = !{ptr @seccomp_log_names, !69, !"seccomp_log_names", i1 false, i1 false}
!69 = !{!"../kernel/seccomp.c", i32 2158, i32 38}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/seccomp.c", i32 2298, i32 9}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/seccomp.c", i32 2300, i32 9}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/seccomp.c", i32 2302, i32 27}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2155172529, i64 2155173011, i64 2155172566, i64 2155172622, i64 2155172656, i64 2155172680, i64 2155172721, i64 2155172742, i64 2155172770, i64 2155172804}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2155167155, i64 2155167636, i64 2155167192, i64 2155167248, i64 2155167282, i64 2155167306, i64 2155167347, i64 2155167368, i64 2155167396, i64 2155167430}
!90 = !{i64 2155169336, i64 2155169817, i64 2155169373, i64 2155169429, i64 2155169463, i64 2155169487, i64 2155169528, i64 2155169549, i64 2155169577, i64 2155169611}
!91 = !{i64 2155170755}
!92 = !{!"auto-init"}
!93 = !{i64 2150649355, i64 2150649380}
!94 = !{i64 3144910}
!95 = !{i64 3145107}
!96 = !{i64 2150630340}
!97 = !{i64 2150650036, i64 2150650061}
