; ModuleID = '/llk/IR_all_yes/security/keys/keyctl.c_pt.bc'
source_filename = "../security/keys/keyctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.24, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.32, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.33, %union.anon.38, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.24 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.32 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.33 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.34, ptr, ptr, ptr }
%union.anon.34 = type { i32 }
%union.anon.38 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.40 }
%struct.llist_node = type { ptr }
%union.anon.40 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.31 = type { %struct.callback_head }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.key_notification = type { %struct.watch_notification, i32, i32 }
%struct.watch_notification = type { i32, i32 }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.70, %union.anon.71 }
%union.anon.70 = type { ptr }
%union.anon.71 = type { i64 }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }
%struct.watch_list = type { %struct.callback_head, %struct.hlist_head, ptr, %struct.spinlock }
%struct.hlist_head = type { ptr }
%struct.watch = type { %union.anon.25, ptr, %struct.hlist_node, ptr, %struct.hlist_node, ptr, ptr, i64, %struct.kref }
%union.anon.25 = type { %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_add_key\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__add_key = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 5, ptr @types__add_key, ptr @args__add_key, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__add_key, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__add_key, i64 20) }, ptr @event_enter__add_key, ptr @event_exit__add_key }, align 4
@event_enter__add_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__add_key, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__add_key = internal global ptr @event_enter__add_key, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_add_key\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__add_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__add_key, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__add_key = internal global ptr @event_exit__add_key, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_add_key\00", [20 x i8] zeroinitializer }, align 32
@types__add_key = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.18, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [44 x i8] zeroinitializer }, align 32
@args__add_key = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__add_key = internal global ptr @__syscall_meta__add_key, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_request_key\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__request_key = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 4, ptr @types__request_key, ptr @args__request_key, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__request_key, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__request_key, i64 20) }, ptr @event_enter__request_key, ptr @event_exit__request_key }, align 4
@event_enter__request_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__request_key, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__request_key = internal global ptr @event_enter__request_key, section "_ftrace_events", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_request_key\00", [43 x i8] zeroinitializer }, align 32
@event_exit__request_key = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__request_key, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__request_key = internal global ptr @event_exit__request_key, section "_ftrace_events", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_request_key\00", [16 x i8] zeroinitializer }, align 32
@types__request_key = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@args__request_key = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.28, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__request_key = internal global ptr @__syscall_meta__request_key, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s;%d;%d;%08x;\00", [17 x i8] zeroinitializer }, align 32
@key_quota_root_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_root_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@keyctl_session_to_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security/keys/keyctl.c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@keyctl_session_to_parent.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@keyrings_capabilities = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\07", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_keyctl\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__keyctl = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 5, ptr @types__keyctl, ptr @args__keyctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__keyctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__keyctl, i64 20) }, ptr @event_enter__keyctl, ptr @event_exit__keyctl }, align 4
@event_enter__keyctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__keyctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__keyctl = internal global ptr @event_enter__keyctl, section "_ftrace_events", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_keyctl\00", [16 x i8] zeroinitializer }, align 32
@event_exit__keyctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__keyctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__keyctl = internal global ptr @event_exit__keyctl, section "_ftrace_events", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_keyctl\00", [21 x i8] zeroinitializer }, align 32
@types__keyctl = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.39, ptr @.str.39, ptr @.str.39], [44 x i8] zeroinitializer }, align 32
@args__keyctl = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__keyctl = internal global ptr @__syscall_meta__keyctl, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"key_serial_t\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_type\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_description\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_payload\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plen\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ringid\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"keyring\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_callout_info\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"destringid\00", [21 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_watch_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&wlist->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"option\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg2\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg3\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg4\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"arg5\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967283]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 512, i64 513, i64 514, i64 516]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [35 x i64] [i64 33, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"event_enter__add_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"event_exit__add_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"types__add_key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"args__add_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [25 x i8] c"event_enter__request_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"event_exit__request_key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"types__request_key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"args__request_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 681, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1590, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1654, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1668, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"keyrings_capabilities\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 29, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"event_enter__keyctl\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"event_exit__keyctl\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"types__keyctl\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"args__keyctl\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 74, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 105, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 167, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 230, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 214, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 156, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 695, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 723, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 286, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"../include/linux/watch_queue.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 99, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [26 x i8] c"../security/keys/keyctl.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1869, i32 1 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__event_enter__add_key, ptr @__event_enter__keyctl, ptr @__event_enter__request_key, ptr @__event_exit__add_key, ptr @__event_exit__keyctl, ptr @__event_exit__request_key, ptr @__p_syscall_meta__add_key, ptr @__p_syscall_meta__keyctl, ptr @__p_syscall_meta__request_key, ptr @__syscall_meta__add_key, ptr @__syscall_meta__keyctl, ptr @__syscall_meta__request_key, ptr @event_enter__add_key, ptr @event_enter__keyctl, ptr @event_enter__request_key, ptr @event_exit__add_key, ptr @event_exit__keyctl, ptr @event_exit__request_key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__add_key, ptr @args__add_key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__request_key, ptr @args__request_key, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @keyrings_capabilities, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__keyctl, ptr @args__keyctl, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @init_watch_list.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__add_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__add_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__add_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__add_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__request_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__request_key to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__request_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__request_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyrings_capabilities to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__keyctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__keyctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__keyctl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__keyctl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_watch_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_add_key = dso_local alias i32 (ptr, ptr, ptr, i32, i32), ptr @__se_sys_add_key
@sys_request_key = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_request_key
@sys_keyctl = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_keyctl

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_add_key(i32 noundef %_type, i32 noundef %_description, i32 noundef %_payload, i32 noundef %plen, i32 noundef %ringid) #0 align 64 {
entry:
  %type.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %_description to ptr
  %1 = inttoptr i32 %_payload to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %type.i) #11
  %2 = getelementptr inbounds [32 x i8], ptr %type.i, i32 0, i32 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %plen)
  %cmp.i = icmp ugt i32 %plen, 1048575
  %3 = call ptr @memset(ptr %type.i, i32 255, i32 32)
  br i1 %cmp.i, label %entry.__do_sys_add_key.exit_crit_edge, label %if.end.i

entry.__do_sys_add_key.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_add_key.exit

if.end.i:                                         ; preds = %entry
  %4 = inttoptr i32 %_type to ptr
  %call.i.i = call i32 @strncpy_from_user(ptr noundef nonnull %type.i, ptr noundef %4, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.__do_sys_add_key.exit_crit_edge, label %if.end.i.i

if.end.i.__do_sys_add_key.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_add_key.exit

if.end.i.i:                                       ; preds = %if.end.i
  %5 = add nsw i32 %call.i.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %5)
  %6 = icmp ult i32 %5, -31
  br i1 %6, label %if.end.i.i.__do_sys_add_key.exit_crit_edge, label %if.end4.i.i

if.end.i.i.__do_sys_add_key.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_add_key.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp5.i.i = icmp eq i8 %8, 46
  br i1 %cmp5.i.i, label %if.end4.i.i.__do_sys_add_key.exit_crit_edge, label %if.end3.i

if.end4.i.i.__do_sys_add_key.exit_crit_edge:      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_add_key.exit

if.end3.i:                                        ; preds = %if.end4.i.i
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_description)
  %tobool.not.i = icmp eq i32 %_description, 0
  br i1 %tobool.not.i, label %if.end3.i.if.end21.i_crit_edge, label %if.then4.i

if.end3.i.if.end21.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then4.i:                                       ; preds = %if.end3.i
  %call5.i = call ptr @strndup_user(ptr noundef nonnull %0, i32 noundef 4096) #11
  %cmp.i69.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call5.i to i32
  br label %__do_sys_add_key.exit

if.end9.i:                                        ; preds = %if.then4.i
  %11 = ptrtoint ptr %call5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call5.i, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.end9.i.if.end21.i_crit_edge [
    i8 0, label %if.then11.i
    i8 46, label %land.lhs.true.i
  ]

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %call5.i) #11
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %type.i, ptr noundef nonnull dereferenceable(7) @.str.27, i32 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp16.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp16.i, label %land.lhs.true.i.error2.i_crit_edge, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

land.lhs.true.i.error2.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2.i

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %if.then11.i, %if.end9.i.if.end21.i_crit_edge, %if.end3.i.if.end21.i_crit_edge
  %description.0.i = phi ptr [ %call5.i, %land.lhs.true.i.if.end21.i_crit_edge ], [ null, %if.then11.i ], [ null, %if.end3.i.if.end21.i_crit_edge ], [ %call5.i, %if.end9.i.if.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plen)
  %tobool22.not.i = icmp eq i32 %plen, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end33.i_crit_edge, label %if.then23.i

if.end21.i.if.end33.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then23.i:                                      ; preds = %if.end21.i
  %call.i70.i = call noalias ptr @kvmalloc_node(i32 noundef %plen, i32 noundef 3264, i32 noundef -1) #15
  %tobool25.not.i = icmp eq ptr %call.i70.i, null
  br i1 %tobool25.not.i, label %if.then23.i.error2.i_crit_edge, label %if.then.i.i.i.i

if.then23.i.error2.i_crit_edge:                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2.i

if.then.i.i.i.i:                                  ; preds = %if.then23.i
  call void @__check_object_size(ptr noundef nonnull %call.i70.i, i32 noundef %plen, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.then11.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %plen, i32 -1226833920) #16, !srcloc !120
  %asmresult.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !121

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i70.i, i32 noundef %plen) #11
  %15 = call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !122
  %and.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i70.i, ptr noundef %1, i32 noundef %plen) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end33.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !121

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i.if.end33.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i78.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %plen, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge ], [ %plen, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %plen, %res.0.i.i78.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i70.i, i32 %sub.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i78.i)
  br label %error3.i

if.end33.i:                                       ; preds = %if.end.i.i.i.if.end33.i_crit_edge, %if.end21.i.if.end33.i_crit_edge
  %payload.0.i = phi ptr [ null, %if.end21.i.if.end33.i_crit_edge ], [ %call.i70.i, %if.end.i.i.i.if.end33.i_crit_edge ]
  %call34.i = call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i71.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i, label %if.then36.i, label %if.end38.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call34.i to i32
  br label %error3.i

if.end38.i:                                       ; preds = %if.end33.i
  %call40.i = call ptr @key_create_or_update(ptr noundef %call34.i, ptr noundef nonnull %type.i, ptr noundef %description.0.i, ptr noundef %payload.0.i, i32 noundef %plen, i32 noundef -1, i32 noundef 0) #11
  %cmp.i72.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call40.i to i32
  br i1 %cmp.i72.i, label %if.end38.i.if.end46.i_crit_edge, label %if.then42.i

if.end38.i.if.end46.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %20, -2
  %21 = inttoptr i32 %and.i.i to ptr
  %serial.i = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %serial.i, align 4
  call void @key_put(ptr noundef %21) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end46.i_crit_edge
  %ret.0.i = phi i32 [ %23, %if.then42.i ], [ %20, %if.end38.i.if.end46.i_crit_edge ]
  %24 = ptrtoint ptr %call34.i to i32
  %and.i.i73.i = and i32 %24, -2
  %25 = inttoptr i32 %and.i.i73.i to ptr
  call void @key_put(ptr noundef %25) #11
  br label %error3.i

error3.i:                                         ; preds = %if.end46.i, %if.then36.i, %if.then11.i.i.i
  %payload.1.i = phi ptr [ %payload.0.i, %if.then36.i ], [ %payload.0.i, %if.end46.i ], [ %call.i70.i, %if.then11.i.i.i ]
  %ret.1.i = phi i32 [ %19, %if.then36.i ], [ %ret.0.i, %if.end46.i ], [ -14, %if.then11.i.i.i ]
  call void @kvfree_sensitive(ptr noundef %payload.1.i, i32 noundef %plen) #11
  br label %error2.i

error2.i:                                         ; preds = %error3.i, %if.then23.i.error2.i_crit_edge, %land.lhs.true.i.error2.i_crit_edge
  %description.1.i = phi ptr [ %description.0.i, %error3.i ], [ %description.0.i, %if.then23.i.error2.i_crit_edge ], [ %call5.i, %land.lhs.true.i.error2.i_crit_edge ]
  %ret.2.i = phi i32 [ %ret.1.i, %error3.i ], [ -12, %if.then23.i.error2.i_crit_edge ], [ -1, %land.lhs.true.i.error2.i_crit_edge ]
  call void @kfree(ptr noundef %description.1.i) #11
  br label %__do_sys_add_key.exit

__do_sys_add_key.exit:                            ; preds = %error2.i, %if.then7.i, %if.end4.i.i.__do_sys_add_key.exit_crit_edge, %if.end.i.i.__do_sys_add_key.exit_crit_edge, %if.end.i.__do_sys_add_key.exit_crit_edge, %entry.__do_sys_add_key.exit_crit_edge
  %ret.3.i = phi i32 [ -22, %entry.__do_sys_add_key.exit_crit_edge ], [ %10, %if.then7.i ], [ %ret.2.i, %error2.i ], [ -1, %if.end4.i.i.__do_sys_add_key.exit_crit_edge ], [ -22, %if.end.i.i.__do_sys_add_key.exit_crit_edge ], [ %call.i.i, %if.end.i.__do_sys_add_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %type.i) #11
  ret i32 %ret.3.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_request_key(i32 noundef %_type, i32 noundef %_description, i32 noundef %_callout_info, i32 noundef %destringid) #0 align 64 {
entry:
  %type.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %_type to ptr
  %1 = inttoptr i32 %_description to ptr
  %2 = inttoptr i32 %_callout_info to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %type.i) #11
  %3 = getelementptr inbounds [32 x i8], ptr %type.i, i32 0, i32 31
  %4 = call ptr @memset(ptr %type.i, i32 255, i32 32)
  %call.i.i = call i32 @strncpy_from_user(ptr noundef nonnull %type.i, ptr noundef %0, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.__do_sys_request_key.exit_crit_edge, label %if.end.i.i

entry.__do_sys_request_key.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_request_key.exit

if.end.i.i:                                       ; preds = %entry
  %5 = add nsw i32 %call.i.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %5)
  %6 = icmp ult i32 %5, -31
  br i1 %6, label %if.end.i.i.__do_sys_request_key.exit_crit_edge, label %if.end4.i.i

if.end.i.i.__do_sys_request_key.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_request_key.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp5.i.i = icmp eq i8 %8, 46
  br i1 %cmp5.i.i, label %if.end4.i.i.__do_sys_request_key.exit_crit_edge, label %if.end.i

if.end4.i.i.__do_sys_request_key.exit_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_request_key.exit

if.end.i:                                         ; preds = %if.end4.i.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call1.i = call ptr @strndup_user(ptr noundef %1, i32 noundef 4096) #11
  %cmp.i59.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call1.i to i32
  br label %__do_sys_request_key.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_callout_info)
  %tobool.not.i = icmp eq i32 %_callout_info, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then6.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end5.i
  %call7.i = call ptr @strndup_user(ptr noundef nonnull %2, i32 noundef 4096) #11
  %cmp.i60.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call7.i to i32
  br label %error2.i

if.end11.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call i32 @strlen(ptr noundef %call7.i) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end11.i, %if.end5.i.if.end13.i_crit_edge
  %callout_len.0.i = phi i32 [ %call12.i, %if.end11.i ], [ 0, %if.end5.i.if.end13.i_crit_edge ]
  %callout_info.0.i = phi ptr [ %call7.i, %if.end11.i ], [ null, %if.end5.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destringid)
  %tobool14.not.i = icmp eq i32 %destringid, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end21.i_crit_edge, label %if.then15.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = call ptr @lookup_user_key(i32 noundef %destringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i61.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i, label %if.then18.i, label %if.then15.i.if.end21.i_crit_edge

if.then15.i.if.end21.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call16.i to i32
  br label %error3.i

if.end21.i:                                       ; preds = %if.then15.i.if.end21.i_crit_edge, %if.end13.i.if.end21.i_crit_edge
  %dest_ref.0.i = phi ptr [ %call16.i, %if.then15.i.if.end21.i_crit_edge ], [ null, %if.end13.i.if.end21.i_crit_edge ]
  %call23.i = call ptr @key_type_lookup(ptr noundef nonnull %type.i) #11
  %cmp.i62.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call23.i to i32
  %.pre.i = ptrtoint ptr %dest_ref.0.i to i32
  %.pre66.i = and i32 %.pre.i, -2
  %.pre67.i = inttoptr i32 %.pre66.i to ptr
  br label %error4.i

if.end27.i:                                       ; preds = %if.end21.i
  %14 = ptrtoint ptr %dest_ref.0.i to i32
  %and.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and.i.i to ptr
  %call29.i = call ptr @request_key_and_link(ptr noundef %call23.i, ptr noundef %call1.i, ptr noundef null, ptr noundef %callout_info.0.i, i32 noundef %callout_len.0.i, ptr noundef null, ptr noundef %15, i32 noundef 0) #11
  %cmp.i63.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then31.i, label %if.end33.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call29.i to i32
  br label %error5.i

if.end33.i:                                       ; preds = %if.end27.i
  %call34.i = call i32 @wait_for_key_construction(ptr noundef %call29.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end33.i.error6.i_crit_edge, label %if.end37.i

if.end33.i.error6.i_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error6.i

if.end37.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i = getelementptr inbounds %struct.key, ptr %call29.i, i32 0, i32 1
  %17 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %serial.i, align 4
  br label %error6.i

error6.i:                                         ; preds = %if.end37.i, %if.end33.i.error6.i_crit_edge
  %ret.0.i = phi i32 [ %call34.i, %if.end33.i.error6.i_crit_edge ], [ %18, %if.end37.i ]
  call void @key_put(ptr noundef %call29.i) #11
  br label %error5.i

error5.i:                                         ; preds = %error6.i, %if.then31.i
  %ret.1.i = phi i32 [ %16, %if.then31.i ], [ %ret.0.i, %error6.i ]
  call void @key_type_put(ptr noundef %call23.i) #11
  br label %error4.i

error4.i:                                         ; preds = %error5.i, %if.then25.i
  %.pre-phi68.i = phi ptr [ %15, %error5.i ], [ %.pre67.i, %if.then25.i ]
  %ret.2.i = phi i32 [ %ret.1.i, %error5.i ], [ %13, %if.then25.i ]
  call void @key_put(ptr noundef %.pre-phi68.i) #11
  br label %error3.i

error3.i:                                         ; preds = %error4.i, %if.then18.i
  %ret.3.i = phi i32 [ %12, %if.then18.i ], [ %ret.2.i, %error4.i ]
  call void @kfree(ptr noundef %callout_info.0.i) #11
  br label %error2.i

error2.i:                                         ; preds = %error3.i, %if.then9.i
  %ret.4.i = phi i32 [ %11, %if.then9.i ], [ %ret.3.i, %error3.i ]
  call void @kfree(ptr noundef %call1.i) #11
  br label %__do_sys_request_key.exit

__do_sys_request_key.exit:                        ; preds = %error2.i, %if.then3.i, %if.end4.i.i.__do_sys_request_key.exit_crit_edge, %if.end.i.i.__do_sys_request_key.exit_crit_edge, %entry.__do_sys_request_key.exit_crit_edge
  %ret.5.i = phi i32 [ %10, %if.then3.i ], [ %ret.4.i, %error2.i ], [ -1, %if.end4.i.i.__do_sys_request_key.exit_crit_edge ], [ -22, %if.end.i.i.__do_sys_request_key.exit_crit_edge ], [ %call.i.i, %entry.__do_sys_request_key.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %type.i) #11
  ret i32 %ret.5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_get_keyring_ID(i32 noundef %id, i32 noundef %create) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp ne i32 %create, 0
  %cond = zext i1 %tobool.not to i32
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef %cond, i32 noundef 4) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %serial = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %serial, align 4
  tail call void @key_put(ptr noundef %1) #11
  br label %error

error:                                            ; preds = %if.end, %entry.error_crit_edge
  %ret.0 = phi i32 [ %3, %if.end ], [ %0, %entry.error_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_join_session_keyring(ptr noundef %_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_name, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call ptr @strndup_user(ptr noundef nonnull %_name, i32 noundef 4096) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %error

if.end:                                           ; preds = %if.then
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %2)
  %cmp = icmp eq i8 %2, 46
  br i1 %cmp, label %if.end.error_name_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.error_name_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_name

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %name.0 = phi ptr [ %call, %if.end.if.end7_crit_edge ], [ null, %entry.if.end7_crit_edge ]
  %call8 = tail call i32 @join_session_keyring(ptr noundef %name.0) #11
  br label %error_name

error_name:                                       ; preds = %if.end7, %if.end.error_name_crit_edge
  %name.1 = phi ptr [ %call, %if.end.error_name_crit_edge ], [ %name.0, %if.end7 ]
  %ret.0 = phi i32 [ -1, %if.end.error_name_crit_edge ], [ %call8, %if.end7 ]
  tail call void @kfree(ptr noundef %name.1) #11
  br label %error

error:                                            ; preds = %error_name, %if.then2
  %ret.1 = phi i32 [ %0, %if.then2 ], [ %ret.0, %error_name ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @join_session_keyring(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_update_key(i32 noundef %id, ptr noundef %_payload, i32 noundef %plen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %plen)
  %cmp = icmp ugt i32 %plen, 4096
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plen)
  %tobool.not = icmp eq i32 %plen, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then1

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then1:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %plen, i32 noundef 3264, i32 noundef -1) #15
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then1.error_crit_edge, label %if.then.i.i.i

if.then1.error_crit_edge:                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then.i.i.i:                                    ; preds = %if.then1
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %plen, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_payload, i32 %plen, i32 -1226833920) #16, !srcloc !120
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !121

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %plen) #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !122
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %_payload, i32 noundef %plen) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !121

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i.if.end9_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i29 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %plen, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %plen, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %plen, %res.0.i.i29
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i29)
  br label %error2

if.end9:                                          ; preds = %if.end.i.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %payload.0 = phi ptr [ null, %if.end.if.end9_crit_edge ], [ %call.i, %if.end.i.i.if.end9_crit_edge ]
  %call10 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 3) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call10 to i32
  br label %error2

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 @key_update(ptr noundef %call10, ptr noundef %payload.0, i32 noundef %plen) #11
  %6 = ptrtoint ptr %call10 to i32
  %and.i.i = and i32 %6, -2
  %7 = inttoptr i32 %and.i.i to ptr
  tail call void @key_put(ptr noundef %7) #11
  br label %error2

error2:                                           ; preds = %if.end14, %if.then12, %if.then11.i.i
  %payload.1 = phi ptr [ %payload.0, %if.then12 ], [ %payload.0, %if.end14 ], [ %call.i, %if.then11.i.i ]
  %ret.0 = phi i32 [ %5, %if.then12 ], [ %call15, %if.end14 ], [ -14, %if.then11.i.i ]
  tail call void @kvfree_sensitive(ptr noundef %payload.1, i32 noundef %plen) #11
  br label %error

error:                                            ; preds = %error2, %if.then1.error_crit_edge, %entry.error_crit_edge
  %ret.1 = phi i32 [ -22, %entry.error_crit_edge ], [ %ret.0, %error2 ], [ -12, %if.then1.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_revoke_key(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 3) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -13 to ptr)
  br i1 %cmp.not, label %if.end, label %if.then.error_crit_edge

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.then
  %call4 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 6) #11
  %cmp.i22 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call4 to i32
  br label %error

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %key_ref.0 = phi ptr [ %call4, %if.end.if.end9_crit_edge ], [ %call, %entry.if.end9_crit_edge ]
  %2 = ptrtoint ptr %key_ref.0 to i32
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  %flags = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @key_revoke(ptr noundef %3) #11
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end9.if.end13_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -1, %if.end9.if.end13_crit_edge ]
  tail call void @key_put(ptr noundef %3) #11
  br label %error

error:                                            ; preds = %if.end13, %if.then6, %if.then.error_crit_edge
  %ret.1 = phi i32 [ %0, %if.then.error_crit_edge ], [ %1, %if.then6 ], [ %ret.0, %if.end13 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_invalidate_key(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 4) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %if.then, label %entry.invalidate_crit_edge

entry.invalidate_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre34 = and i32 %0, -2
  %.pre35 = inttoptr i32 %.pre34 to ptr
  br label %invalidate

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call3, label %if.then4, label %if.then.error_crit_edge

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then4:                                         ; preds = %if.then
  %call5 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 8) #11
  %cmp.i30 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then4.error_crit_edge, label %if.end

if.then4.error_crit_edge:                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.then4
  %1 = ptrtoint ptr %call5 to i32
  %and.i = and i32 %1, -2
  %2 = inttoptr i32 %and.i to ptr
  %flags = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.error_put_crit_edge, label %if.end.invalidate_crit_edge

if.end.invalidate_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalidate

if.end.error_put_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

invalidate:                                       ; preds = %if.end.invalidate_crit_edge, %entry.invalidate_crit_edge
  %.pre-phi36 = phi ptr [ %.pre35, %entry.invalidate_crit_edge ], [ %2, %if.end.invalidate_crit_edge ]
  %flags15 = getelementptr inbounds %struct.key, ptr %.pre-phi36, i32 0, i32 15
  %6 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags15, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %if.else, label %invalidate.error_put_crit_edge

invalidate.error_put_crit_edge:                   ; preds = %invalidate
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

if.else:                                          ; preds = %invalidate
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @key_invalidate(ptr noundef %.pre-phi36) #11
  br label %error_put

error_put:                                        ; preds = %if.else, %invalidate.error_put_crit_edge, %if.end.error_put_crit_edge
  %.pre-phi32 = phi ptr [ %.pre-phi36, %invalidate.error_put_crit_edge ], [ %.pre-phi36, %if.else ], [ %2, %if.end.error_put_crit_edge ]
  %ret.0 = phi i32 [ -1, %invalidate.error_put_crit_edge ], [ 0, %if.else ], [ %0, %if.end.error_put_crit_edge ]
  tail call void @key_put(ptr noundef %.pre-phi32) #11
  br label %error

error:                                            ; preds = %error_put, %if.then4.error_crit_edge, %if.then.error_crit_edge
  %ret.1 = phi i32 [ %0, %if.then4.error_crit_edge ], [ %ret.0, %error_put ], [ %0, %if.then.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_clear(i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %if.then, label %entry.clear_crit_edge

entry.clear_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre34 = and i32 %0, -2
  %.pre35 = inttoptr i32 %.pre34 to ptr
  br label %clear

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call3, label %if.then4, label %if.then.error_crit_edge

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then4:                                         ; preds = %if.then
  %call5 = tail call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 0, i32 noundef 8) #11
  %cmp.i30 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then4.error_crit_edge, label %if.end

if.then4.error_crit_edge:                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.then4
  %1 = ptrtoint ptr %call5 to i32
  %and.i = and i32 %1, -2
  %2 = inttoptr i32 %and.i to ptr
  %flags = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.error_put_crit_edge, label %if.end.clear_crit_edge

if.end.clear_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %clear

if.end.error_put_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

clear:                                            ; preds = %if.end.clear_crit_edge, %entry.clear_crit_edge
  %.pre-phi36 = phi ptr [ %.pre35, %entry.clear_crit_edge ], [ %2, %if.end.clear_crit_edge ]
  %flags15 = getelementptr inbounds %struct.key, ptr %.pre-phi36, i32 0, i32 15
  %6 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags15, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  br i1 %tobool17.not, label %if.else, label %clear.error_put_crit_edge

clear.error_put_crit_edge:                        ; preds = %clear
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

if.else:                                          ; preds = %clear
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @keyring_clear(ptr noundef %.pre-phi36) #11
  br label %error_put

error_put:                                        ; preds = %if.else, %clear.error_put_crit_edge, %if.end.error_put_crit_edge
  %.pre-phi32 = phi ptr [ %.pre-phi36, %clear.error_put_crit_edge ], [ %.pre-phi36, %if.else ], [ %2, %if.end.error_put_crit_edge ]
  %ret.0 = phi i32 [ -1, %clear.error_put_crit_edge ], [ %call19, %if.else ], [ %0, %if.end.error_put_crit_edge ]
  tail call void @key_put(ptr noundef %.pre-phi32) #11
  br label %error

error:                                            ; preds = %error_put, %if.then4.error_crit_edge, %if.then.error_crit_edge
  %ret.1 = phi i32 [ %0, %if.then4.error_crit_edge ], [ %ret.0, %error_put ], [ %0, %if.then.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyring_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_link(i32 noundef %id, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %error

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 1, i32 noundef 5) #11
  %cmp.i17 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call3 to i32
  %.pre = ptrtoint ptr %call to i32
  %.pre20 = and i32 %.pre, -2
  %.pre21 = inttoptr i32 %.pre20 to ptr
  br label %error2

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call to i32
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  %4 = ptrtoint ptr %call3 to i32
  %and.i18 = and i32 %4, -2
  %5 = inttoptr i32 %and.i18 to ptr
  %call10 = tail call i32 @key_link(ptr noundef %3, ptr noundef %5) #11
  tail call void @key_put(ptr noundef %5) #11
  br label %error2

error2:                                           ; preds = %if.end7, %if.then5
  %.pre-phi22 = phi ptr [ %3, %if.end7 ], [ %.pre21, %if.then5 ]
  %ret.0 = phi i32 [ %call10, %if.end7 ], [ %1, %if.then5 ]
  tail call void @key_put(ptr noundef %.pre-phi22) #11
  br label %error

error:                                            ; preds = %error2, %if.then
  %ret.1 = phi i32 [ %0, %if.then ], [ %ret.0, %error2 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_unlink(i32 noundef %id, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 0, i32 noundef 3) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %error

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 2, i32 noundef 7) #11
  %cmp.i27 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call3 to i32
  %.pre = ptrtoint ptr %call to i32
  %.pre30 = and i32 %.pre, -2
  %.pre31 = inttoptr i32 %.pre30 to ptr
  br label %error2

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  %4 = ptrtoint ptr %call3 to i32
  %and.i28 = and i32 %4, -2
  %5 = inttoptr i32 %and.i28 to ptr
  %flags = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end7.if.else_crit_edge, label %land.lhs.true

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %flags11 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 15
  %9 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags11, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  %call15 = tail call i32 @key_unlink(ptr noundef %3, ptr noundef %5) #11
  br label %if.end16

if.end16:                                         ; preds = %if.else, %land.lhs.true.if.end16_crit_edge
  %ret.0 = phi i32 [ %call15, %if.else ], [ -1, %land.lhs.true.if.end16_crit_edge ]
  tail call void @key_put(ptr noundef %5) #11
  br label %error2

error2:                                           ; preds = %if.end16, %if.then5
  %.pre-phi32 = phi ptr [ %3, %if.end16 ], [ %.pre31, %if.then5 ]
  %ret.1 = phi i32 [ %ret.0, %if.end16 ], [ %1, %if.then5 ]
  tail call void @key_put(ptr noundef %.pre-phi32) #11
  br label %error

error:                                            ; preds = %error2, %if.then
  %ret.2 = phi i32 [ %0, %if.then ], [ %ret.1, %error2 ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_move(i32 noundef %id, i32 noundef %from_ringid, i32 noundef %to_ringid, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 1, i32 noundef 5) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @lookup_user_key(i32 noundef %from_ringid, i32 noundef 0, i32 noundef 3) #11
  %cmp.i32 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call5 to i32
  br label %error2

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @lookup_user_key(i32 noundef %to_ringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i33 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call10 to i32
  %.pre = ptrtoint ptr %call5 to i32
  %.pre38 = and i32 %.pre, -2
  %.pre39 = inttoptr i32 %.pre38 to ptr
  br label %error3

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  %and.i = and i32 %3, -2
  %4 = inttoptr i32 %and.i to ptr
  %5 = ptrtoint ptr %call5 to i32
  %and.i34 = and i32 %5, -2
  %6 = inttoptr i32 %and.i34 to ptr
  %7 = ptrtoint ptr %call10 to i32
  %and.i35 = and i32 %7, -2
  %8 = inttoptr i32 %and.i35 to ptr
  %call18 = tail call i32 @key_move(ptr noundef %4, ptr noundef %6, ptr noundef %8, i32 noundef %flags) #11
  tail call void @key_put(ptr noundef %8) #11
  br label %error3

error3:                                           ; preds = %if.end14, %if.then12
  %.pre-phi40 = phi ptr [ %6, %if.end14 ], [ %.pre39, %if.then12 ]
  %ret.0 = phi i32 [ %call18, %if.end14 ], [ %2, %if.then12 ]
  tail call void @key_put(ptr noundef %.pre-phi40) #11
  br label %error2

error2:                                           ; preds = %error3, %if.then7
  %ret.1 = phi i32 [ %1, %if.then7 ], [ %ret.0, %error3 ]
  %9 = ptrtoint ptr %call to i32
  %and.i.i37 = and i32 %9, -2
  %10 = inttoptr i32 %and.i.i37 to ptr
  tail call void @key_put(ptr noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %error2, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then2 ], [ %ret.1, %error2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_describe_key(i32 noundef %keyid, ptr noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %keyid, i32 noundef 2, i32 noundef 1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.okay_crit_edge

entry.okay_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %okay

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call, inttoptr (i32 -13 to ptr)
  br i1 %cmp, label %if.then3, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @key_get_instantiation_authkey(i32 noundef %keyid) #11
  %cmp.i93 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then3.if.end11_crit_edge, label %if.then6

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then6:                                         ; preds = %if.then3
  tail call void @key_put(ptr noundef %call4) #11
  %call7 = tail call ptr @lookup_user_key(i32 noundef %keyid, i32 noundef 2, i32 noundef 9) #11
  %cmp.i94 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then6.if.end11_crit_edge, label %if.then6.okay_crit_edge

if.then6.okay_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %okay

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.then3.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %key_ref.0 = phi ptr [ inttoptr (i32 -13 to ptr), %if.then3.if.end11_crit_edge ], [ %call7, %if.then6.if.end11_crit_edge ], [ %call, %if.then.if.end11_crit_edge ]
  %0 = ptrtoint ptr %key_ref.0 to i32
  br label %error

okay:                                             ; preds = %if.then6.okay_crit_edge, %entry.okay_crit_edge
  %key_ref.1 = phi ptr [ %call7, %if.then6.okay_crit_edge ], [ %call, %entry.okay_crit_edge ]
  %1 = ptrtoint ptr %key_ref.1 to i32
  %and.i = and i32 %1, -2
  %2 = inttoptr i32 %and.i to ptr
  %description = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 16, i32 0, i32 4
  %3 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %description, align 8
  %call15 = tail call i32 @strlen(ptr noundef %4) #17
  %type = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 16, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i95 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i95 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 9
  %17 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %uid, align 8
  %18 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call18 = tail call i32 @from_kuid_munged(ptr noundef %16, [1 x i32] %18) #11
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %cred26 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred26, align 16
  %user_ns27 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %user_ns27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns27, align 4
  %gid = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 10
  %25 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack69 = load i32, ptr %gid, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack69, 0
  %call29 = tail call i32 @from_kgid_munged(ptr noundef %24, [1 x i32] %26) #11
  %perm = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 11
  %27 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %perm, align 8
  %call30 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %8, i32 noundef %call18, i32 noundef %call29, i32 noundef %28) #11
  %tobool.not = icmp eq ptr %call30, null
  br i1 %tobool.not, label %okay.error2_crit_edge, label %if.end32

okay.error2_crit_edge:                            ; preds = %okay
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2

if.end32:                                         ; preds = %okay
  %call33 = tail call i32 @strlen(ptr noundef nonnull %call30) #17
  %add = add i32 %call15, 1
  %add34 = add i32 %add, %call33
  %tobool35.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %buflen)
  %cmp36.not = icmp ugt i32 %add34, %buflen
  %or.cond = select i1 %tobool35.not, i1 true, i1 %cmp36.not
  br i1 %or.cond, label %if.end32.if.end46_crit_edge, label %if.end8.i.i

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end8.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp9.i.i = icmp slt i32 %call33, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then44_crit_edge, label %land.rhs16.i.i.if.then44.sink.split_crit_edge, !prof !121

land.rhs16.i.i.if.then44.sink.split_crit_edge:    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44.sink.split

land.rhs16.i.i.if.then44_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call30, i32 noundef %call33, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 %call33, i32 -1226833920) #16, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call30, i32 noundef %call33) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %buffer, ptr noundef nonnull %call30, i32 noundef %call33) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call33, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call33, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp39.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %cmp39.not, label %lor.lhs.false, label %copy_to_user.exit.if.then44_crit_edge

copy_to_user.exit.if.then44_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

lor.lhs.false:                                    ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call33
  %30 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %description, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i76 = icmp slt i32 %add, 0
  br i1 %cmp9.i.i76, label %land.rhs16.i.i79, label %if.then.i.i.i82

land.rhs16.i.i79:                                 ; preds = %lor.lhs.false
  %.b71.i.i78 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i78, label %land.rhs16.i.i79.if.then44_crit_edge, label %land.rhs16.i.i79.if.then44.sink.split_crit_edge, !prof !121

land.rhs16.i.i79.if.then44.sink.split_crit_edge:  ; preds = %land.rhs16.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44.sink.split

land.rhs16.i.i79.if.then44_crit_edge:             ; preds = %land.rhs16.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then.i.i.i82:                                  ; preds = %lor.lhs.false
  tail call void @__check_object_size(ptr noundef %31, i32 noundef %add, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #11
  %call.i.i83 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i83, label %if.then.i.i.i82.copy_to_user.exit92_crit_edge, label %if.end.i.i87

if.then.i.i.i82.copy_to_user.exit92_crit_edge:    ; preds = %if.then.i.i.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit92

if.end.i.i87:                                     ; preds = %if.then.i.i.i82
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %add, i32 -1226833920) #16, !srcloc !125
  %asmresult.i.i85 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i85)
  %cmp.i6.i86 = icmp eq i32 %asmresult.i.i85, 0
  br i1 %cmp.i6.i86, label %if.then2.i.i90, label %if.end.i.i87.copy_to_user.exit92_crit_edge

if.end.i.i87.copy_to_user.exit92_crit_edge:       ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit92

if.then2.i.i90:                                   ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i88 = tail call zeroext i1 @__kasan_check_read(ptr noundef %31, i32 noundef %add) #11
  %call.i12.i.i89 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %31, i32 noundef %add) #11
  br label %copy_to_user.exit92

copy_to_user.exit92:                              ; preds = %if.then2.i.i90, %if.end.i.i87.copy_to_user.exit92_crit_edge, %if.then.i.i.i82.copy_to_user.exit92_crit_edge
  %n.addr.0.i91 = phi i32 [ %add, %if.then.i.i.i82.copy_to_user.exit92_crit_edge ], [ %call.i12.i.i89, %if.then2.i.i90 ], [ %add, %if.end.i.i87.copy_to_user.exit92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i91)
  %cmp43.not = icmp eq i32 %n.addr.0.i91, 0
  br i1 %cmp43.not, label %copy_to_user.exit92.if.end46_crit_edge, label %copy_to_user.exit92.if.then44_crit_edge

copy_to_user.exit92.if.then44_crit_edge:          ; preds = %copy_to_user.exit92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

copy_to_user.exit92.if.end46_crit_edge:           ; preds = %copy_to_user.exit92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44.sink.split:                             ; preds = %land.rhs16.i.i79.if.then44.sink.split_crit_edge, %land.rhs16.i.i.if.then44.sink.split_crit_edge
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then44

if.then44:                                        ; preds = %if.then44.sink.split, %copy_to_user.exit92.if.then44_crit_edge, %land.rhs16.i.i79.if.then44_crit_edge, %copy_to_user.exit.if.then44_crit_edge, %land.rhs16.i.i.if.then44_crit_edge
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %copy_to_user.exit92.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %ret.0 = phi i32 [ -14, %if.then44 ], [ %add34, %copy_to_user.exit92.if.end46_crit_edge ], [ %add34, %if.end32.if.end46_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call30) #11
  br label %error2

error2:                                           ; preds = %if.end46, %okay.error2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end46 ], [ -12, %okay.error2_crit_edge ]
  tail call void @key_put(ptr noundef %2) #11
  br label %error

error:                                            ; preds = %error2, %if.end11
  %ret.2 = phi i32 [ %0, %if.end11 ], [ %ret.1, %error2 ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_get_instantiation_authkey(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_search(i32 noundef %ringid, ptr noundef %_type, ptr noundef %_description, i32 noundef %destringid) local_unnamed_addr #0 align 64 {
entry:
  %type = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %type) #11
  %0 = getelementptr inbounds [32 x i8], ptr %type, i32 0, i32 31
  %1 = call ptr @memset(ptr %type, i32 255, i32 32)
  %call.i = call i32 @strncpy_from_user(ptr noundef nonnull %type, ptr noundef %_type, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.error_crit_edge, label %if.end.i

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %entry
  %2 = add nsw i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %2)
  %3 = icmp ult i32 %2, -31
  br i1 %3, label %if.end.i.error_crit_edge, label %if.end4.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %5)
  %cmp5.i = icmp eq i8 %5, 46
  br i1 %cmp5.i, label %if.end4.i.error_crit_edge, label %if.end

if.end4.i.error_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.end4.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 1
  %call1 = call ptr @strndup_user(ptr noundef %_description, i32 noundef 4096) #11
  %cmp.i69 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call1 to i32
  br label %error

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 0, i32 noundef 4) #11
  %cmp.i70 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call6 to i32
  br label %error2

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destringid)
  %tobool.not = icmp eq i32 %destringid, 0
  br i1 %tobool.not, label %if.end10.if.end17_crit_edge, label %if.then11

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11:                                        ; preds = %if.end10
  %call12 = call ptr @lookup_user_key(i32 noundef %destringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i71 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then14, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call12 to i32
  br label %error3

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %dest_ref.0 = phi ptr [ %call12, %if.then11.if.end17_crit_edge ], [ null, %if.end10.if.end17_crit_edge ]
  %call19 = call ptr @key_type_lookup(ptr noundef nonnull %type) #11
  %cmp.i72 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call19 to i32
  br label %error4

if.end23:                                         ; preds = %if.end17
  %call24 = call ptr @keyring_search(ptr noundef %call6, ptr noundef %call19, ptr noundef %call1, i1 noundef zeroext true) #11
  %cmp.i73 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call24 to i32
  %cmp28 = icmp eq ptr %call24, inttoptr (i32 -11 to ptr)
  %spec.store.select = select i1 %cmp28, i32 -126, i32 %11
  br label %error5

if.end31:                                         ; preds = %if.end23
  %tobool32.not = icmp eq ptr %dest_ref.0, null
  br i1 %tobool32.not, label %if.end31.if.end44_crit_edge, label %if.then33

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = ptrtoint ptr %call24 to i32
  %.pre81 = and i32 %.pre, -2
  %.pre82 = inttoptr i32 %.pre81 to ptr
  br label %if.end44

if.then33:                                        ; preds = %if.end31
  %12 = call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i, align 16
  %call1.i = call i32 @key_task_permission(ptr noundef %call24, ptr noundef %17, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp35 = icmp slt i32 %call1.i, 0
  br i1 %cmp35, label %if.then33.error6_crit_edge, label %if.end37

if.then33.error6_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %.pre84 = ptrtoint ptr %call24 to i32
  %.pre86 = and i32 %.pre84, -2
  %.pre87 = inttoptr i32 %.pre86 to ptr
  br label %error6

if.end37:                                         ; preds = %if.then33
  %18 = ptrtoint ptr %dest_ref.0 to i32
  %and.i = and i32 %18, -2
  %19 = inttoptr i32 %and.i to ptr
  %20 = ptrtoint ptr %call24 to i32
  %and.i74 = and i32 %20, -2
  %21 = inttoptr i32 %and.i74 to ptr
  %call40 = call i32 @key_link(ptr noundef %19, ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end37.error6_crit_edge, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end37.error6_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %error6

if.end44:                                         ; preds = %if.end37.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %.pre-phi83 = phi ptr [ %.pre82, %if.end31.if.end44_crit_edge ], [ %21, %if.end37.if.end44_crit_edge ]
  %serial = getelementptr inbounds %struct.key, ptr %.pre-phi83, i32 0, i32 1
  %22 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %serial, align 4
  br label %error6

error6:                                           ; preds = %if.end44, %if.end37.error6_crit_edge, %if.then33.error6_crit_edge
  %.pre-phi88 = phi ptr [ %.pre87, %if.then33.error6_crit_edge ], [ %21, %if.end37.error6_crit_edge ], [ %.pre-phi83, %if.end44 ]
  %ret.0 = phi i32 [ %call1.i, %if.then33.error6_crit_edge ], [ %call40, %if.end37.error6_crit_edge ], [ %23, %if.end44 ]
  call void @key_put(ptr noundef %.pre-phi88) #11
  br label %error5

error5:                                           ; preds = %error6, %if.then26
  %ret.1 = phi i32 [ %spec.store.select, %if.then26 ], [ %ret.0, %error6 ]
  call void @key_type_put(ptr noundef %call19) #11
  br label %error4

error4:                                           ; preds = %error5, %if.then21
  %ret.2 = phi i32 [ %10, %if.then21 ], [ %ret.1, %error5 ]
  %24 = ptrtoint ptr %dest_ref.0 to i32
  %and.i.i77 = and i32 %24, -2
  %25 = inttoptr i32 %and.i.i77 to ptr
  call void @key_put(ptr noundef %25) #11
  br label %error3

error3:                                           ; preds = %error4, %if.then14
  %ret.3 = phi i32 [ %9, %if.then14 ], [ %ret.2, %error4 ]
  %26 = ptrtoint ptr %call6 to i32
  %and.i.i78 = and i32 %26, -2
  %27 = inttoptr i32 %and.i.i78 to ptr
  call void @key_put(ptr noundef %27) #11
  br label %error2

error2:                                           ; preds = %error3, %if.then8
  %ret.4 = phi i32 [ %8, %if.then8 ], [ %ret.3, %error3 ]
  call void @kfree(ptr noundef %call1) #11
  br label %error

error:                                            ; preds = %error2, %if.then3, %if.end4.i.error_crit_edge, %if.end.i.error_crit_edge, %entry.error_crit_edge
  %ret.5 = phi i32 [ %7, %if.then3 ], [ %ret.4, %error2 ], [ -1, %if.end4.i.error_crit_edge ], [ -22, %if.end.i.error_crit_edge ], [ %call.i, %entry.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %type) #11
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_type_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_type_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_read_key(i32 noundef %keyid, ptr noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %keyid, i32 noundef 0, i32 noundef 10) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %state.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %state.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %conv = sext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp slt i16 %3, 0
  br i1 %cmp, label %if.end.key_put_out_crit_edge, label %if.end6

if.end.key_put_out_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_put_out

if.end6:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred.i, align 16
  %call1.i = tail call i32 @key_task_permission(ptr noundef %call, ptr noundef %9, i32 noundef 2) #11
  %10 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call1.i, label %if.end6.key_put_out_crit_edge [
    i32 0, label %if.end6.can_read_key_crit_edge
    i32 -13, label %if.end15
  ]

if.end6.can_read_key_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_read_key

if.end6.key_put_out_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_put_out

if.end15:                                         ; preds = %if.end6
  %and.i87 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.i.not = icmp eq i32 %and.i87, 0
  br i1 %tobool.i.not, label %if.end15.key_put_out_crit_edge, label %if.end15.can_read_key_crit_edge

if.end15.can_read_key_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_read_key

if.end15.key_put_out_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_put_out

can_read_key:                                     ; preds = %if.end15.can_read_key_crit_edge, %if.end6.can_read_key_crit_edge
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 8
  %read = getelementptr inbounds %struct.key_type, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %can_read_key.key_put_out_crit_edge, label %if.end20

can_read_key.key_put_out_crit_edge:               ; preds = %can_read_key
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_put_out

if.end20:                                         ; preds = %can_read_key
  %tobool21.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool22.not = icmp eq i32 %buflen, 0
  %or.cond = or i1 %tobool21.not, %tobool22.not
  br i1 %or.cond, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %sem.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem.i) #11
  %call.i = tail call i32 @key_validate(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i88 = icmp eq i32 %call.i, 0
  br i1 %cmp.i88, label %if.then.i90, label %if.then23.__keyctl_read_key.exit_crit_edge

if.then23.__keyctl_read_key.exit_crit_edge:       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %__keyctl_read_key.exit

if.then.i90:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type, align 8
  %read.i = getelementptr inbounds %struct.key_type, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %call1.i89 = tail call i32 %18(ptr noundef %1, ptr noundef null, i32 noundef 0) #11
  br label %__keyctl_read_key.exit

__keyctl_read_key.exit:                           ; preds = %if.then.i90, %if.then23.__keyctl_read_key.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i89, %if.then.i90 ], [ %call.i, %if.then23.__keyctl_read_key.exit_crit_edge ]
  tail call void @up_read(ptr noundef %sem.i) #11
  br label %key_put_out

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %buflen)
  %cmp26 = icmp ult i32 %buflen, 4097
  %sem.i92 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  %spec.select = select i1 %cmp26, i32 %buflen, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end25
  %key_data.0 = phi ptr [ null, %if.end25 ], [ %key_data.1, %for.cond.backedge ]
  %key_data_len.0 = phi i32 [ %spec.select, %if.end25 ], [ %ret.0.i99, %for.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_data_len.0)
  %tobool28.not = icmp eq i32 %key_data_len.0, 0
  br i1 %tobool28.not, label %for.cond.if.end34_crit_edge, label %if.then29

for.cond.if.end34_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then29:                                        ; preds = %for.cond
  %call.i91 = tail call noalias ptr @kvmalloc_node(i32 noundef %key_data_len.0, i32 noundef 3264, i32 noundef -1) #15
  %tobool31.not = icmp eq ptr %call.i91, null
  br i1 %tobool31.not, label %if.then29.key_put_out_crit_edge, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then29.key_put_out_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_put_out

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %for.cond.if.end34_crit_edge
  %key_data.1 = phi ptr [ %call.i91, %if.then29.if.end34_crit_edge ], [ %key_data.0, %for.cond.if.end34_crit_edge ]
  tail call void @down_read(ptr noundef %sem.i92) #11
  %call.i93 = tail call i32 @key_validate(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp eq i32 %call.i93, 0
  br i1 %cmp.i94, label %if.then.i98, label %if.end34.__keyctl_read_key.exit100_crit_edge

if.end34.__keyctl_read_key.exit100_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %__keyctl_read_key.exit100

if.then.i98:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 8
  %read.i96 = getelementptr inbounds %struct.key_type, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read.i96 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i96, align 4
  %call1.i97 = tail call i32 %22(ptr noundef %1, ptr noundef %key_data.1, i32 noundef %key_data_len.0) #11
  br label %__keyctl_read_key.exit100

__keyctl_read_key.exit100:                        ; preds = %if.then.i98, %if.end34.__keyctl_read_key.exit100_crit_edge
  %ret.0.i99 = phi i32 [ %call1.i97, %if.then.i98 ], [ %call.i93, %if.end34.__keyctl_read_key.exit100_crit_edge ]
  tail call void @up_read(ptr noundef %sem.i92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i99)
  %cmp36 = icmp slt i32 %ret.0.i99, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i99, i32 %buflen)
  %cmp39 = icmp ugt i32 %ret.0.i99, %buflen
  %or.cond85 = or i1 %cmp36, %cmp39
  br i1 %or.cond85, label %__keyctl_read_key.exit100.for.end_crit_edge, label %if.end42

__keyctl_read_key.exit100.for.end_crit_edge:      ; preds = %__keyctl_read_key.exit100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end42:                                         ; preds = %__keyctl_read_key.exit100
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i99, i32 %key_data_len.0)
  %cmp43 = icmp ugt i32 %ret.0.i99, %key_data_len.0
  br i1 %cmp43, label %if.then45, label %if.then.i.i.i

if.then45:                                        ; preds = %if.end42
  %tobool46.not = icmp eq ptr %key_data.1, null
  br i1 %tobool46.not, label %if.then45.for.cond.backedge_crit_edge, label %if.then49, !prof !121

if.then45.for.cond.backedge_crit_edge:            ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree_sensitive(ptr noundef nonnull %key_data.1, i32 noundef %key_data_len.0) #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then49, %if.then45.for.cond.backedge_crit_edge
  br label %for.cond

if.then.i.i.i:                                    ; preds = %if.end42
  tail call void @__check_object_size(ptr noundef %key_data.1, i32 noundef %ret.0.i99, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.for.end_crit_edge, label %if.end.i.i

if.then.i.i.i.for.end_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %ret.0.i99, i32 -1226833920) #16, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.for.end_crit_edge

if.end.i.i.for.end_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key_data.1, i32 noundef %ret.0.i99) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %key_data.1, i32 noundef %ret.0.i99) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool53.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select122 = select i1 %tobool53.not, i32 %ret.0.i99, i32 -14
  br label %for.end

for.end:                                          ; preds = %copy_to_user.exit, %if.end.i.i.for.end_crit_edge, %if.then.i.i.i.for.end_crit_edge, %__keyctl_read_key.exit100.for.end_crit_edge
  %ret.0 = phi i32 [ -14, %if.then.i.i.i.for.end_crit_edge ], [ -14, %if.end.i.i.for.end_crit_edge ], [ %spec.select122, %copy_to_user.exit ], [ %ret.0.i99, %__keyctl_read_key.exit100.for.end_crit_edge ]
  tail call void @kvfree_sensitive(ptr noundef %key_data.1, i32 noundef %key_data_len.0) #11
  br label %key_put_out

key_put_out:                                      ; preds = %for.end, %if.then29.key_put_out_crit_edge, %__keyctl_read_key.exit, %can_read_key.key_put_out_crit_edge, %if.end15.key_put_out_crit_edge, %if.end6.key_put_out_crit_edge, %if.end.key_put_out_crit_edge
  %ret.1 = phi i32 [ %conv, %if.end.key_put_out_crit_edge ], [ %ret.0, %for.end ], [ %ret.0.i, %__keyctl_read_key.exit ], [ %call1.i, %if.end6.key_put_out_crit_edge ], [ -13, %if.end15.key_put_out_crit_edge ], [ -95, %can_read_key.key_put_out_crit_edge ], [ -12, %if.then29.key_put_out_crit_edge ]
  tail call void @key_put(ptr noundef %1) #11
  br label %out

out:                                              ; preds = %key_put_out, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %key_put_out ], [ -126, %entry.out_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_chown_key(i32 noundef %id, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #11
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
  %call3 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %user) #11
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred12 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred12, align 16
  %user_ns13 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns13, align 4
  %call14 = tail call i32 @make_kgid(ptr noundef %13, i32 noundef %group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %user)
  %cmp.not = icmp eq i32 %user, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i = icmp ne i32 %call3, -1
  %or.cond241 = select i1 %cmp.not, i1 true, i1 %cmp.i
  br i1 %or.cond241, label %if.end, label %entry.cleanup139_crit_edge

entry.cleanup139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup139

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %group)
  %cmp18.not = icmp eq i32 %group, -1
  br i1 %cmp18.not, label %if.end23, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp.i230.not = icmp eq i32 %call14, -1
  br i1 %cmp.i230.not, label %land.lhs.true19.cleanup139_crit_edge, label %land.lhs.true19.if.end28_crit_edge

land.lhs.true19.if.end28_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true19.cleanup139_crit_edge:             ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup139

if.end23:                                         ; preds = %if.end
  br i1 %cmp.not, label %if.end23.cleanup139_crit_edge, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end23.cleanup139_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup139

if.end28:                                         ; preds = %if.end23.if.end28_crit_edge, %land.lhs.true19.if.end28_crit_edge
  %call29 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 3, i32 noundef 6) #11
  %cmp.i231 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call29 to i32
  br i1 %cmp.i231, label %if.end28.cleanup139_crit_edge, label %if.end33

if.end28.cleanup139_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup139

if.end33:                                         ; preds = %if.end28
  %and.i232 = and i32 %14, -2
  %15 = inttoptr i32 %and.i232 to ptr
  %sem = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #11
  %call35 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call35, label %if.end33.if.end56_crit_edge, label %if.then36

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then36:                                        ; preds = %if.end33
  br i1 %cmp.not, label %if.then36.if.end44_crit_edge, label %land.lhs.true38

if.then36.if.end44_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true38:                                  ; preds = %if.then36
  %uid39 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %uid39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack224 = load i32, ptr %uid39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack224, i32 %call3)
  %cmp.i233 = icmp eq i32 %.unpack224, %call3
  br i1 %cmp.i233, label %land.lhs.true38.if.end44_crit_edge, label %land.lhs.true38.error_put_crit_edge

land.lhs.true38.error_put_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

land.lhs.true38.if.end44_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true38.if.end44_crit_edge, %if.then36.if.end44_crit_edge
  br i1 %cmp18.not, label %if.end44.if.end56_crit_edge, label %land.lhs.true46

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true46:                                  ; preds = %if.end44
  %gid47 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 10
  %17 = ptrtoint ptr %gid47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack223 = load i32, ptr %gid47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %.unpack223)
  %cmp.i234 = icmp eq i32 %call14, %.unpack223
  br i1 %cmp.i234, label %land.lhs.true46.if.end56_crit_edge, label %land.lhs.true51

land.lhs.true46.if.end56_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %.fca.0.insert150 = insertvalue [1 x i32] poison, i32 %call14, 0
  %call53 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert150) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool.not = icmp eq i32 %call53, 0
  br i1 %tobool.not, label %land.lhs.true51.error_put_crit_edge, label %land.lhs.true51.if.end56_crit_edge

land.lhs.true51.if.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true51.error_put_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

if.end56:                                         ; preds = %land.lhs.true51.if.end56_crit_edge, %land.lhs.true46.if.end56_crit_edge, %if.end44.if.end56_crit_edge, %if.end33.if.end56_crit_edge
  br i1 %cmp.not, label %if.end56.if.end128_crit_edge, label %land.lhs.true58

if.end56.if.end128_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

land.lhs.true58:                                  ; preds = %if.end56
  %uid59 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 9
  %18 = ptrtoint ptr %uid59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack = load i32, ptr %uid59, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %.unpack)
  %cmp.i235 = icmp eq i32 %call3, %.unpack
  br i1 %cmp.i235, label %land.lhs.true58.if.end128_crit_edge, label %if.then63

land.lhs.true58.if.end128_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then63:                                        ; preds = %land.lhs.true58
  %.fca.0.insert162 = insertvalue [1 x i32] poison, i32 %call3, 0
  %call65 = tail call ptr @key_user_lookup([1 x i32] %.fca.0.insert162) #11
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then63.error_put_crit_edge, label %if.end68

if.then63.error_put_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_put

if.end68:                                         ; preds = %if.then63
  %flags = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 15
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool70.not = icmp eq i32 %21, 0
  br i1 %tobool70.not, label %if.end68.if.end115_crit_edge, label %if.then71

if.end68.if.end115_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.i236 = icmp eq i32 %call3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_root_maxkeys to i32))
  %key_quota_root_maxkeys.val = load i32, ptr @key_quota_root_maxkeys, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_maxkeys to i32))
  %key_quota_maxkeys.val = load i32, ptr @key_quota_maxkeys, align 4
  %cond = select i1 %cmp.i236, i32 %key_quota_root_maxkeys.val, i32 %key_quota_maxkeys.val
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_root_maxbytes to i32))
  %key_quota_root_maxbytes.val = load i32, ptr @key_quota_root_maxbytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_quota_maxbytes to i32))
  %key_quota_maxbytes.val = load i32, ptr @key_quota_maxbytes, align 4
  %lock = getelementptr inbounds %struct.key_user, ptr %call65, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %call65, i32 0, i32 7
  %22 = ptrtoint ptr %qnkeys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qnkeys, align 4
  %add = add i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond)
  %cmp84 = icmp ugt i32 %add, %cond
  br i1 %cmp84, label %if.then71.quota_overrun_crit_edge, label %lor.lhs.false

if.then71.quota_overrun_crit_edge:                ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %quota_overrun

lor.lhs.false:                                    ; preds = %if.then71
  %cond83 = select i1 %cmp.i236, i32 %key_quota_root_maxbytes.val, i32 %key_quota_maxbytes.val
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %call65, i32 0, i32 8
  %24 = ptrtoint ptr %qnbytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qnbytes, align 4
  %quotalen = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 12
  %26 = ptrtoint ptr %quotalen to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %quotalen, align 4
  %conv = zext i16 %27 to i32
  %add85 = add i32 %25, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %cond83)
  %cmp86 = icmp ugt i32 %add85, %cond83
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %25)
  %cmp94 = icmp slt i32 %add85, %25
  %or.cond225 = or i1 %cmp86, %cmp94
  br i1 %or.cond225, label %lor.lhs.false.quota_overrun_crit_edge, label %cleanup

lor.lhs.false.quota_overrun_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %quota_overrun

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %qnkeys to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %qnkeys, align 4
  %29 = ptrtoint ptr %quotalen to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %quotalen, align 4
  %conv100 = zext i16 %30 to i32
  %add102 = add i32 %25, %conv100
  %31 = ptrtoint ptr %qnbytes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add102, ptr %qnbytes, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %user104 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 5
  %32 = ptrtoint ptr %user104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user104, align 8
  %lock105 = getelementptr inbounds %struct.key_user, ptr %33, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock105) #11
  %34 = ptrtoint ptr %user104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user104, align 8
  %qnkeys107 = getelementptr inbounds %struct.key_user, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %qnkeys107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qnkeys107, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %qnkeys107, align 4
  %38 = ptrtoint ptr %quotalen to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %quotalen, align 4
  %conv109 = zext i16 %39 to i32
  %40 = load ptr, ptr %user104, align 8
  %qnbytes111 = getelementptr inbounds %struct.key_user, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %qnbytes111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qnbytes111, align 4
  %sub = sub i32 %42, %conv109
  store i32 %sub, ptr %qnbytes111, align 4
  %43 = load ptr, ptr %user104, align 8
  %lock113 = getelementptr inbounds %struct.key_user, ptr %43, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock113) #11
  br label %if.end115

if.end115:                                        ; preds = %cleanup, %if.end68.if.end115_crit_edge
  %user116 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 5
  %44 = ptrtoint ptr %user116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %user116, align 8
  %nkeys = getelementptr inbounds %struct.key_user, ptr %45, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nkeys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nkeys, i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nkeys, ptr %nkeys, i32 1, ptr elementtype(i32) %nkeys) #11, !srcloc !127
  %nkeys117 = getelementptr inbounds %struct.key_user, ptr %call65, i32 0, i32 4
  %call.i.i227 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nkeys117, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nkeys117, i32 1, i32 3, i32 1) #11
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nkeys117, ptr %nkeys117, i32 1, ptr elementtype(i32) %nkeys117) #11, !srcloc !128
  %state = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 14
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp119.not = icmp eq i16 %49, 0
  br i1 %cmp119.not, label %if.end115.if.end124_crit_edge, label %if.then121

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then121:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %user116 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user116, align 8
  %nikeys = getelementptr inbounds %struct.key_user, ptr %51, i32 0, i32 5
  %call.i.i228 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nikeys, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nikeys, i32 1, i32 3, i32 1) #11
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nikeys, ptr %nikeys, i32 1, ptr elementtype(i32) %nikeys) #11, !srcloc !127
  %nikeys123 = getelementptr inbounds %struct.key_user, ptr %call65, i32 0, i32 5
  %call.i.i229 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nikeys123, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nikeys123, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nikeys123, ptr %nikeys123, i32 1, ptr elementtype(i32) %nikeys123) #11, !srcloc !128
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %if.end115.if.end124_crit_edge
  %54 = ptrtoint ptr %user116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user116, align 8
  store ptr %call65, ptr %user116, align 8
  %56 = ptrtoint ptr %uid59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call3, ptr %uid59, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.end124, %land.lhs.true58.if.end128_crit_edge, %if.end56.if.end128_crit_edge
  %zapowner.0 = phi ptr [ null, %land.lhs.true58.if.end128_crit_edge ], [ %55, %if.end124 ], [ null, %if.end56.if.end128_crit_edge ]
  br i1 %cmp18.not, label %if.end128.if.end133_crit_edge, label %if.then131

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %gid132 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 10
  %57 = ptrtoint ptr %gid132 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call14, ptr %gid132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end128.if.end133_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #11
  %58 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %59 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %61 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 263, ptr %n.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.not.i.i = icmp eq i32 %and.i232, 0
  br i1 %tobool.not.i.i, label %if.end133.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.end133.key_serial.exit.i_crit_edge:            ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i.i = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 1
  %63 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.end133.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %64, %cond.true.i.i ], [ 0, %if.end133.key_serial.exit.i_crit_edge ]
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond.i.i, ptr %59, align 4
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %60, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 3
  %67 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i1.i = icmp eq ptr %68, null
  br i1 %tobool.not.i1.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !121

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i32 %cond.i.i to i64
  %69 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 99
  %73 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %68, ptr noundef nonnull %n.i, ptr noundef %74, i64 noundef %conv.i) #11
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #11
  br label %error_put

error_put:                                        ; preds = %quota_overrun, %notify_key.exit, %if.then63.error_put_crit_edge, %land.lhs.true51.error_put_crit_edge, %land.lhs.true38.error_put_crit_edge
  %ret.0 = phi i32 [ 0, %notify_key.exit ], [ -122, %quota_overrun ], [ -12, %if.then63.error_put_crit_edge ], [ -13, %land.lhs.true51.error_put_crit_edge ], [ -13, %land.lhs.true38.error_put_crit_edge ]
  %zapowner.1 = phi ptr [ %zapowner.0, %notify_key.exit ], [ %call65, %quota_overrun ], [ null, %if.then63.error_put_crit_edge ], [ null, %land.lhs.true51.error_put_crit_edge ], [ null, %land.lhs.true38.error_put_crit_edge ]
  call void @up_write(ptr noundef %sem) #11
  call void @key_put(ptr noundef %15) #11
  %tobool135.not = icmp eq ptr %zapowner.1, null
  br i1 %tobool135.not, label %error_put.cleanup139_crit_edge, label %if.then136

error_put.cleanup139_crit_edge:                   ; preds = %error_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup139

if.then136:                                       ; preds = %error_put
  call void @__sanitizer_cov_trace_pc() #13
  call void @key_user_put(ptr noundef nonnull %zapowner.1) #11
  br label %cleanup139

quota_overrun:                                    ; preds = %lor.lhs.false.quota_overrun_crit_edge, %if.then71.quota_overrun_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %error_put

cleanup139:                                       ; preds = %if.then136, %error_put.cleanup139_crit_edge, %if.end28.cleanup139_crit_edge, %if.end23.cleanup139_crit_edge, %land.lhs.true19.cleanup139_crit_edge, %entry.cleanup139_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then136 ], [ %ret.0, %error_put.cleanup139_crit_edge ], [ -22, %land.lhs.true19.cleanup139_crit_edge ], [ 0, %if.end23.cleanup139_crit_edge ], [ -22, %entry.cleanup139_crit_edge ], [ %14, %if.end28.cleanup139_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_user_lookup([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_user_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_setperm_key(i32 noundef %id, i32 noundef %perm) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %perm, -1061109568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 3, i32 noundef 6) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4:                                          ; preds = %if.end
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #11
  %call6 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call6, label %if.end4.if.then10_crit_edge, label %lor.lhs.false

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end4
  %uid = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 9
  %2 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i22 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i22 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %9 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %uid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i23 = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i23, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  %perm11 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %perm11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %perm, ptr %perm11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #11
  %11 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %14 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 263, ptr %n.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.i, label %if.then10.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.then10.key_serial.exit.i_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.then10.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %17, %cond.true.i.i ], [ 0, %if.then10.key_serial.exit.i_crit_edge ]
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i.i, ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %13, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i1.i = icmp eq ptr %21, null
  br i1 %tobool.not.i1.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !121

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i32 %cond.i.i to i64
  %22 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 99
  %26 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %21, ptr noundef nonnull %n.i, ptr noundef %27, i64 noundef %conv.i) #11
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #11
  br label %if.end12

if.end12:                                         ; preds = %notify_key.exit, %lor.lhs.false.if.end12_crit_edge
  %ret.0 = phi i32 [ 0, %notify_key.exit ], [ -13, %lor.lhs.false.if.end12_crit_edge ]
  call void @up_write(ptr noundef %sem) #11
  call void @key_put(ptr noundef %1) #11
  br label %error

error:                                            ; preds = %if.end12, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.1 = phi i32 [ -22, %entry.error_crit_edge ], [ %ret.0, %if.end12 ], [ %0, %if.end.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_instantiate_key(i32 noundef %id, ptr noundef %_payload, i32 noundef %plen, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca %struct.iovec, align 4
  %from = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_payload, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plen)
  %tobool1.not = icmp eq i32 %plen, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #11
  %0 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !129
  %1 = getelementptr inbounds %struct.iovec, ptr %iov, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #11
  %3 = call ptr @memset(ptr %from, i32 255, i32 24)
  %call = call i32 @import_single_range(i32 noundef 1, ptr noundef nonnull %_payload, i32 noundef %plen, ptr noundef nonnull %iov, ptr noundef nonnull %from) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge, !prof !121

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %id, ptr noundef nonnull %from, i32 noundef %ringid)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #11
  br label %return

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %id, ptr noundef null, i32 noundef %ringid)
  br label %return

return:                                           ; preds = %if.end9, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call10, %if.end9 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_instantiate_key_common(i32 noundef %id, ptr noundef %from, i32 noundef %ringid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #11
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
  %tobool.not = icmp eq ptr %from, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %cond.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

cond.end:                                         ; preds = %entry
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %cond.end.if.end6_crit_edge, label %8

cond.end.if.end6_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

8:                                                ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %7)
  %cmp = icmp ugt i32 %7, 1048575
  br i1 %cmp, label %.error_crit_edge, label %.if.end6_crit_edge

.if.end6_crit_edge:                               ; preds = %8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

.error_crit_edge:                                 ; preds = %8
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end6:                                          ; preds = %.if.end6_crit_edge, %cond.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %9 = phi ptr [ %from, %.if.end6_crit_edge ], [ null, %cond.end.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %cond5963 = phi i32 [ %7, %.if.end6_crit_edge ], [ 0, %cond.end.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request_key_auth, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.error_crit_edge, label %if.end9

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end9:                                          ; preds = %if.end6
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %target_key, align 4
  %serial = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %id)
  %cmp10.not = icmp eq i32 %18, %id
  br i1 %cmp10.not, label %if.end12, label %if.end9.error_crit_edge

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end12:                                         ; preds = %if.end9
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end12.if.end22_crit_edge, label %if.then14

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then14:                                        ; preds = %if.end12
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %cond5963, i32 noundef 3264, i32 noundef -1) #15
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.then14.error_crit_edge, label %if.then.i.i.i.i

if.then14.error_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then.i.i.i.i:                                  ; preds = %if.then14
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %cond5963, i1 noundef zeroext false) #11
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call.i, i32 noundef %cond5963, ptr noundef nonnull %9) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %cond5963)
  %cmp.i = icmp eq i32 %call3.i.i, %cond5963
  br i1 %cmp.i, label %if.then.i.i.i.i.if.end22_crit_edge, label %copy_from_iter_full.exit, !prof !121

if.then.i.i.i.i.if.end22_crit_edge:               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

copy_from_iter_full.exit:                         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef nonnull %9, i32 noundef %call3.i.i) #11
  br label %error2

if.end22:                                         ; preds = %if.then.i.i.i.i.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %payload.0 = phi ptr [ null, %if.end12.if.end22_crit_edge ], [ %call.i, %if.then.i.i.i.i.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ringid)
  %cmp.i50 = icmp eq i32 %ringid, 0
  br i1 %cmp.i50, label %if.end22.if.end26_crit_edge, label %if.end.i51

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end.i51:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ringid)
  %cmp1.i = icmp sgt i32 %ringid, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i51
  %call.i52 = tail call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i.i = icmp ugt ptr %call.i52, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call.i52 to i32
  br i1 %cmp.i.i, label %get_instantiation_keyring.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %19, -2
  %20 = inttoptr i32 %and.i.i to ptr
  br label %if.end26

if.end8.i:                                        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %ringid)
  %cmp9.i = icmp eq i32 %ringid, -7
  br i1 %cmp9.i, label %if.end8.i.error2_crit_edge, label %if.end11.i

if.end8.i.error2_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %ringid)
  %cmp12.i = icmp ugt i32 %ringid, -9
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.error2_crit_edge

if.end11.i.error2_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2

if.then13.i:                                      ; preds = %if.end11.i
  %dest_keyring.i = getelementptr inbounds %struct.request_key_auth, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %dest_keyring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dest_keyring.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then13.i.if.end26_crit_edge, label %cond.true.i.i

if.then13.i.if.end26_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

cond.true.i.i:                                    ; preds = %if.then13.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !131

cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %cond.true.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end26_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !121

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end26_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %if.end26

get_instantiation_keyring.exit:                   ; preds = %if.then2.i
  %cmp24 = icmp slt ptr %call.i52, null
  br i1 %cmp24, label %get_instantiation_keyring.exit.error2_crit_edge, label %get_instantiation_keyring.exit.if.end26_crit_edge

get_instantiation_keyring.exit.if.end26_crit_edge: ; preds = %get_instantiation_keyring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

get_instantiation_keyring.exit.error2_crit_edge:  ; preds = %get_instantiation_keyring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2

if.end26:                                         ; preds = %get_instantiation_keyring.exit.if.end26_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end26_crit_edge, %if.then13.i.if.end26_crit_edge, %if.end6.i, %if.end22.if.end26_crit_edge
  %dest_keyring.067 = phi ptr [ null, %get_instantiation_keyring.exit.if.end26_crit_edge ], [ %22, %if.end15.sink.split.i.i.i.i.i.i ], [ %22, %if.else.i.i.i.i.i.i.if.end26_crit_edge ], [ null, %if.then13.i.if.end26_crit_edge ], [ %20, %if.end6.i ], [ null, %if.end22.if.end26_crit_edge ]
  %25 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %target_key, align 4
  %call28 = tail call i32 @key_instantiate_and_link(ptr noundef %26, ptr noundef %payload.0, i32 noundef %cond5963, ptr noundef %dest_keyring.067, ptr noundef nonnull %11) #11
  tail call void @key_put(ptr noundef %dest_keyring.067) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end26.error2_crit_edge

if.end26.error2_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2

if.then30:                                        ; preds = %if.end26
  %call.i53 = tail call ptr @prepare_creds() #11
  %tobool.not.i = icmp eq ptr %call.i53, null
  br i1 %tobool.not.i, label %if.then30.error2_crit_edge, label %if.end.i54

if.then30.error2_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %error2

if.end.i54:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %request_key_auth.i = getelementptr inbounds %struct.cred, ptr %call.i53, i32 0, i32 22
  %27 = ptrtoint ptr %request_key_auth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request_key_auth.i, align 4
  tail call void @key_put(ptr noundef %28) #11
  %29 = ptrtoint ptr %request_key_auth.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %request_key_auth.i, align 4
  %call3.i = tail call i32 @commit_creds(ptr noundef nonnull %call.i53) #11
  br label %error2

error2:                                           ; preds = %if.end.i54, %if.then30.error2_crit_edge, %if.end26.error2_crit_edge, %get_instantiation_keyring.exit.error2_crit_edge, %if.end11.i.error2_crit_edge, %if.end8.i.error2_crit_edge, %copy_from_iter_full.exit
  %payload.1 = phi ptr [ %payload.0, %get_instantiation_keyring.exit.error2_crit_edge ], [ %payload.0, %if.end26.error2_crit_edge ], [ %call.i, %copy_from_iter_full.exit ], [ %payload.0, %if.then30.error2_crit_edge ], [ %payload.0, %if.end.i54 ], [ %payload.0, %if.end8.i.error2_crit_edge ], [ %payload.0, %if.end11.i.error2_crit_edge ]
  %ret.0 = phi i32 [ %19, %get_instantiation_keyring.exit.error2_crit_edge ], [ %call28, %if.end26.error2_crit_edge ], [ -14, %copy_from_iter_full.exit ], [ 0, %if.then30.error2_crit_edge ], [ 0, %if.end.i54 ], [ -22, %if.end8.i.error2_crit_edge ], [ -126, %if.end11.i.error2_crit_edge ]
  tail call void @kvfree_sensitive(ptr noundef %payload.1, i32 noundef %cond5963) #11
  br label %error

error:                                            ; preds = %error2, %if.then14.error_crit_edge, %if.end9.error_crit_edge, %if.end6.error_crit_edge, %.error_crit_edge
  %ret.1 = phi i32 [ -22, %.error_crit_edge ], [ -1, %if.end9.error_crit_edge ], [ %ret.0, %error2 ], [ -12, %if.then14.error_crit_edge ], [ -1, %if.end6.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_instantiate_key_iov(i32 noundef %id, ptr noundef %_payload_iov, i32 noundef %ioc, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  %iovstack = alloca [8 x %struct.iovec], align 4
  %iov = alloca ptr, align 4
  %from = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack) #11
  %0 = call ptr @memset(ptr %iovstack, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov) #11
  %1 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %iovstack, ptr %iov, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from) #11
  %2 = call ptr @memset(ptr %from, i32 255, i32 24)
  %tobool.not = icmp eq ptr %_payload_iov, null
  %spec.select = select i1 %tobool.not, i32 0, i32 %ioc
  %call = call i32 @import_iovec(i32 noundef 1, ptr noundef %_payload_iov, i32 noundef %spec.select, i32 noundef 8, ptr noundef nonnull %iov, ptr noundef nonnull %from) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %id, ptr noundef nonnull %from, i32 noundef %ringid)
  %3 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iov, align 4
  call void @kfree(ptr noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_negate_key(i32 noundef %id, i32 noundef %timeout, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @keyctl_reject_key(i32 noundef %id, i32 noundef %timeout, i32 noundef 126, i32 noundef %ringid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_reject_key(i32 noundef %id, i32 noundef %timeout, i32 noundef %error, i32 noundef %ringid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #11
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %error)
  %cmp3 = icmp ugt i32 %error, 4094
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %switch.early.test

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test:                                ; preds = %entry
  %6 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %error, label %if.end [
    i32 516, label %switch.early.test.cleanup_crit_edge
    i32 514, label %switch.early.test.cleanup_crit_edge58
    i32 513, label %switch.early.test.cleanup_crit_edge59
    i32 512, label %switch.early.test.cleanup_crit_edge60
    i32 0, label %switch.early.test.cleanup_crit_edge61
  ]

switch.early.test.cleanup_crit_edge61:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge60:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge59:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge58:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %switch.early.test
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %request_key_auth, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %9 = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 17
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %target_key = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target_key, align 4
  %serial = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %serial, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %id)
  %cmp14.not = icmp eq i32 %15, %id
  br i1 %cmp14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ringid)
  %cmp.i = icmp eq i32 %ringid, 0
  br i1 %cmp.i, label %if.end16.if.end20_crit_edge, label %if.end.i

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ringid)
  %cmp1.i = icmp sgt i32 %ringid, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @lookup_user_key(i32 noundef %ringid, i32 noundef 1, i32 noundef 3) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call.i to i32
  br i1 %cmp.i.i, label %get_instantiation_keyring.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i = and i32 %16, -2
  %17 = inttoptr i32 %and.i.i to ptr
  br label %if.end20

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %ringid)
  %cmp9.i = icmp eq i32 %ringid, -7
  br i1 %cmp9.i, label %if.end8.i.cleanup_crit_edge, label %if.end11.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %ringid)
  %cmp12.i = icmp ugt i32 %ringid, -9
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13.i:                                      ; preds = %if.end11.i
  %dest_keyring.i = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %dest_keyring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dest_keyring.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then13.i.if.end20_crit_edge, label %cond.true.i.i

if.then13.i.if.end20_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

cond.true.i.i:                                    ; preds = %if.then13.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !131

cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %cond.true.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end20_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !121

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end20_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %cond.true.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %19, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %if.end20

get_instantiation_keyring.exit:                   ; preds = %if.then2.i
  %cmp18 = icmp slt ptr %call.i, null
  br i1 %cmp18, label %get_instantiation_keyring.exit.cleanup_crit_edge, label %get_instantiation_keyring.exit.if.end20_crit_edge

get_instantiation_keyring.exit.if.end20_crit_edge: ; preds = %get_instantiation_keyring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

get_instantiation_keyring.exit.cleanup_crit_edge: ; preds = %get_instantiation_keyring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %get_instantiation_keyring.exit.if.end20_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end20_crit_edge, %if.then13.i.if.end20_crit_edge, %if.end6.i, %if.end16.if.end20_crit_edge
  %dest_keyring.052 = phi ptr [ null, %get_instantiation_keyring.exit.if.end20_crit_edge ], [ %19, %if.end15.sink.split.i.i.i.i.i.i ], [ %19, %if.else.i.i.i.i.i.i.if.end20_crit_edge ], [ null, %if.then13.i.if.end20_crit_edge ], [ %17, %if.end6.i ], [ null, %if.end16.if.end20_crit_edge ]
  %22 = ptrtoint ptr %target_key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %target_key, align 4
  %call22 = tail call i32 @key_reject_and_link(ptr noundef %23, i32 noundef %timeout, i32 noundef %error, ptr noundef %dest_keyring.052, ptr noundef nonnull %8) #11
  tail call void @key_put(ptr noundef %dest_keyring.052) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call fastcc i32 @keyctl_change_reqkey_auth(ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %get_instantiation_keyring.exit.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge58, %switch.early.test.cleanup_crit_edge59, %switch.early.test.cleanup_crit_edge60, %switch.early.test.cleanup_crit_edge61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %switch.early.test.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ %16, %get_instantiation_keyring.exit.cleanup_crit_edge ], [ 0, %if.then24 ], [ %call22, %if.end20.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge58 ], [ -22, %switch.early.test.cleanup_crit_edge59 ], [ -22, %switch.early.test.cleanup_crit_edge60 ], [ -22, %switch.early.test.cleanup_crit_edge61 ], [ -126, %if.end11.i.cleanup_crit_edge ], [ -22, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_reject_and_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_change_reqkey_auth(ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_key_auth, align 4
  tail call void @key_put(ptr noundef %1) #11
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %if.end.key_get.exit_crit_edge, label %cond.true.i

if.end.key_get.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

cond.true.i:                                      ; preds = %if.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %key, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %key, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %key, ptr nonnull %key, i32 1, ptr nonnull elementtype(i32) %key) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !131

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !121

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %key, i32 noundef %.sink.i.i.i.i.i) #11
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %if.end.key_get.exit_crit_edge
  %4 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %key, ptr %request_key_auth, align 4
  %call3 = tail call i32 @commit_creds(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %key_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %key_get.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_set_reqkey_keyring(i32 noundef %reqkey_defl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #11
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
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %jit_keyring, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reqkey_defl)
  %cmp = icmp eq i32 %reqkey_defl, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @prepare_creds() #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = zext i32 %reqkey_defl to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %reqkey_defl, label %if.end5.error_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %if.end5.set_crit_edge
    i32 3, label %if.end5.set_crit_edge34
    i32 4, label %if.end5.set_crit_edge35
    i32 5, label %if.end5.set_crit_edge36
    i32 7, label %if.end5.set_crit_edge37
  ]

if.end5.set_crit_edge37:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

if.end5.set_crit_edge36:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

if.end5.set_crit_edge35:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

if.end5.set_crit_edge34:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

if.end5.set_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

sw.bb:                                            ; preds = %if.end5
  %call6 = tail call i32 @install_thread_keyring_to_cred(ptr noundef nonnull %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb.error_crit_edge, label %sw.bb.set_crit_edge

sw.bb.set_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

sw.bb11:                                          ; preds = %if.end5
  %call12 = tail call i32 @install_process_keyring_to_cred(ptr noundef nonnull %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %sw.bb11.error_crit_edge, label %sw.bb11.set_crit_edge

sw.bb11.set_crit_edge:                            ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %set

sw.bb11.error_crit_edge:                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

set:                                              ; preds = %sw.bb11.set_crit_edge, %sw.bb.set_crit_edge, %if.end5.set_crit_edge, %if.end5.set_crit_edge34, %if.end5.set_crit_edge35, %if.end5.set_crit_edge36, %if.end5.set_crit_edge37
  %conv19 = trunc i32 %reqkey_defl to i8
  %jit_keyring20 = getelementptr inbounds %struct.cred, ptr %call3, i32 0, i32 18
  %9 = ptrtoint ptr %jit_keyring20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv19, ptr %jit_keyring20, align 4
  %call21 = tail call i32 @commit_creds(ptr noundef nonnull %call3) #11
  br label %cleanup

error:                                            ; preds = %sw.bb11.error_crit_edge, %sw.bb.error_crit_edge, %if.end5.error_crit_edge
  %ret.0 = phi i32 [ %call12, %sw.bb11.error_crit_edge ], [ %call6, %sw.bb.error_crit_edge ], [ -22, %if.end5.error_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %set, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %conv, %set ], [ %conv, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_thread_keyring_to_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_process_keyring_to_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_set_timeout(i32 noundef %id, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.key_notification, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 3, i32 noundef 6) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.okay_crit_edge

entry.okay_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %okay

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call, inttoptr (i32 -13 to ptr)
  br i1 %cmp, label %if.then3, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then3:                                         ; preds = %if.then
  %call4 = tail call ptr @key_get_instantiation_authkey(i32 noundef %id) #11
  %cmp.i28 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.then3.if.end11_crit_edge, label %if.then6

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then6:                                         ; preds = %if.then3
  tail call void @key_put(ptr noundef %call4) #11
  %call7 = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 2, i32 noundef 9) #11
  %cmp.i29 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.then6.if.end11_crit_edge, label %if.then6.okay_crit_edge

if.then6.okay_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %okay

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.then3.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %key_ref.0 = phi ptr [ inttoptr (i32 -13 to ptr), %if.then3.if.end11_crit_edge ], [ %call7, %if.then6.if.end11_crit_edge ], [ %call, %if.then.if.end11_crit_edge ]
  %0 = ptrtoint ptr %key_ref.0 to i32
  br label %error

okay:                                             ; preds = %if.then6.okay_crit_edge, %entry.okay_crit_edge
  %key_ref.1 = phi ptr [ %call7, %if.then6.okay_crit_edge ], [ %call, %entry.okay_crit_edge ]
  %1 = ptrtoint ptr %key_ref.1 to i32
  %and.i = and i32 %1, -2
  %2 = inttoptr i32 %and.i to ptr
  %flags = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %okay.if.end17_crit_edge

okay.if.end17_crit_edge:                          ; preds = %okay
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %okay
  tail call void @key_set_timeout(ptr noundef %2, i32 noundef %timeout) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n.i) #11
  %6 = getelementptr inbounds %struct.watch_notification, ptr %n.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.key_notification, ptr %n.i, i32 0, i32 2
  %9 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 263, ptr %n.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.i, label %if.else.key_serial.exit.i_crit_edge, label %cond.true.i.i

if.else.key_serial.exit.i_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i.i = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %if.else.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %12, %cond.true.i.i ], [ 0, %if.else.key_serial.exit.i_crit_edge ]
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i.i, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %8, align 4
  %watchers.i = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %watchers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %watchers.i, align 4
  %tobool.not.i1.i = icmp eq ptr %16, null
  br i1 %tobool.not.i1.i, label %key_serial.exit.i.notify_key.exit_crit_edge, label %if.then.i.i, !prof !121

key_serial.exit.i.notify_key.exit_crit_edge:      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_key.exit

if.then.i.i:                                      ; preds = %key_serial.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i32 %cond.i.i to i64
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred.i, align 16
  call void @__post_watch_notification(ptr noundef nonnull %16, ptr noundef nonnull %n.i, ptr noundef %22, i64 noundef %conv.i) #11
  br label %notify_key.exit

notify_key.exit:                                  ; preds = %if.then.i.i, %key_serial.exit.i.notify_key.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n.i) #11
  br label %if.end17

if.end17:                                         ; preds = %notify_key.exit, %okay.if.end17_crit_edge
  %ret.0 = phi i32 [ 0, %notify_key.exit ], [ -1, %okay.if.end17_crit_edge ]
  call void @key_put(ptr noundef %2) #11
  br label %error

error:                                            ; preds = %if.end17, %if.end11
  %ret.1 = phi i32 [ %0, %if.end11 ], [ %ret.0, %if.end17 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_assume_authority(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp1 = icmp eq i32 %id, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %call.i = tail call ptr @prepare_creds() #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then2.error_crit_edge, label %if.end.i

if.then2.error_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %request_key_auth.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 22
  %0 = ptrtoint ptr %request_key_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_key_auth.i, align 4
  tail call void @key_put(ptr noundef %1) #11
  %2 = ptrtoint ptr %request_key_auth.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %request_key_auth.i, align 4
  %call3.i = tail call i32 @commit_creds(ptr noundef nonnull %call.i) #11
  br label %error

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @key_get_instantiation_authkey(i32 noundef %id) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call4 to i32
  br label %error

if.end8:                                          ; preds = %if.end3
  %call9 = tail call fastcc i32 @keyctl_change_reqkey_auth(ptr noundef %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %serial = getelementptr inbounds %struct.key, ptr %call4, i32 0, i32 1
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %serial, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %ret.0 = phi i32 [ %5, %if.then11 ], [ %call9, %if.end8.if.end12_crit_edge ]
  tail call void @key_put(ptr noundef %call4) #11
  br label %error

error:                                            ; preds = %if.end12, %if.then6, %if.end.i, %if.then2.error_crit_edge, %entry.error_crit_edge
  %ret.1 = phi i32 [ -22, %entry.error_crit_edge ], [ %3, %if.then6 ], [ %ret.0, %if.end12 ], [ %call3.i, %if.end.i ], [ -12, %if.then2.error_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_get_security(i32 noundef %keyid, ptr noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %context = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %context) #11
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %context, align 4, !annotation !129
  %call = tail call ptr @lookup_user_key(i32 noundef %keyid, i32 noundef 2, i32 noundef 1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -13 to ptr)
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call ptr @key_get_instantiation_authkey(i32 noundef %keyid) #11
  %cmp.i82 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @key_put(ptr noundef %call5) #11
  %call10 = tail call ptr @lookup_user_key(i32 noundef %keyid, i32 noundef 2, i32 noundef 9) #11
  %cmp.i83 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %entry.if.end15_crit_edge
  %key_ref.0 = phi ptr [ %call10, %if.end9.if.end15_crit_edge ], [ %call, %entry.if.end15_crit_edge ]
  %4 = ptrtoint ptr %key_ref.0 to i32
  %and.i = and i32 %4, -2
  %5 = inttoptr i32 %and.i to ptr
  %call17 = call i32 @security_key_getsecurity(ptr noundef %5, ptr noundef nonnull %context) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %tobool.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp20.not = icmp eq i32 %buflen, 0
  %or.cond = or i1 %tobool.not, %cmp20.not
  br i1 %or.cond, label %if.then19.if.end41_crit_edge, label %if.end8.i.i

if.then19.if.end41_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end8.i.i:                                      ; preds = %if.then19
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.end41_crit_edge, label %if.end.i.i

if.end8.i.i.if.end41_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end.i.i:                                       ; preds = %if.end8.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 1, i32 -1226833920) #16, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.end41_crit_edge

if.end.i.i.if.end41_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @.str.9, i32 noundef 1) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.9, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp23.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %cmp23.not, i32 1, i32 -14
  br label %if.end41

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp26 = icmp sgt i32 %call17, 0
  br i1 %cmp26, label %if.then27, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then27:                                        ; preds = %if.else
  %tobool28.not = icmp eq ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp30.not = icmp eq i32 %buflen, 0
  %or.cond66 = or i1 %tobool28.not, %cmp30.not
  br i1 %or.cond66, label %if.then27.if.end39_crit_edge, label %if.then31

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then31:                                        ; preds = %if.then27
  %7 = call i32 @llvm.umin.i32(i32 %call17, i32 %buflen)
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  call void @__check_object_size(ptr noundef %9, i32 noundef %7, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #11
  %call.i.i73 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i73, label %if.then31.if.end39_crit_edge, label %if.end.i.i76

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end.i.i76:                                     ; preds = %if.then31
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buffer, i32 %7, i32 -1226833920) #16, !srcloc !125
  %asmresult.i.i74 = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i74)
  %cmp.i6.i75 = icmp eq i32 %asmresult.i.i74, 0
  br i1 %cmp.i6.i75, label %copy_to_user.exit81, label %if.end.i.i76.if.end39_crit_edge

if.end.i.i76.if.end39_crit_edge:                  ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

copy_to_user.exit81:                              ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i77 = call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef %7) #11
  %call.i12.i.i78 = call i32 @arm_copy_to_user(ptr noundef nonnull %buffer, ptr noundef %9, i32 noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i78)
  %cmp36.not = icmp eq i32 %call.i12.i.i78, 0
  %spec.select88 = select i1 %cmp36.not, i32 %call17, i32 -14
  br label %if.end39

if.end39:                                         ; preds = %copy_to_user.exit81, %if.end.i.i76.if.end39_crit_edge, %if.then31.if.end39_crit_edge, %if.then27.if.end39_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then27.if.end39_crit_edge ], [ -14, %if.then31.if.end39_crit_edge ], [ -14, %if.end.i.i76.if.end39_crit_edge ], [ %spec.select88, %copy_to_user.exit81 ]
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  call void @kfree(ptr noundef %12) #11
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.else.if.end41_crit_edge, %copy_to_user.exit, %if.end.i.i.if.end41_crit_edge, %if.end8.i.i.if.end41_crit_edge, %if.then19.if.end41_crit_edge
  %ret.1 = phi i32 [ 1, %if.then19.if.end41_crit_edge ], [ %ret.0, %if.end39 ], [ %call17, %if.else.if.end41_crit_edge ], [ -14, %if.end8.i.i.if.end41_crit_edge ], [ -14, %if.end.i.i.if.end41_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @key_put(ptr noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then12, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then7 ], [ %3, %if.then12 ], [ %ret.1, %if.end41 ], [ %1, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %context) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_key_getsecurity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_session_to_parent() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef -3, i32 noundef 0, i32 noundef 5) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @cred_alloc_blank() #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %error_keyring, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.cred, ptr %call3, i32 0, i32 28
  %2 = ptrtoint ptr %call to i32
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  %session_keyring = getelementptr inbounds %struct.cred, ptr %call3, i32 0, i32 19
  %4 = ptrtoint ptr %session_keyring to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %session_keyring, align 4
  %func1.i = getelementptr inbounds %struct.cred, ptr %call3, i32 0, i32 28, i32 0, i32 1
  %5 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @key_change_session_keyring, ptr %func1.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i178 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i178 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end5
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end5.rcu_read_lock.exit_crit_edge
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #11
  %call.i179 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @tasklist_lock, i32 0, i32 4), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool9.not = icmp eq i32 %call.i179, 0
  br i1 %tobool9.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b176 = load i1, ptr @keyctl_session_to_parent.__warned, align 1
  br i1 %.b176, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @keyctl_session_to_parent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1655, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 71
  %12 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %real_parent, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp slt i32 %15, 2
  br i1 %cmp, label %do.end.unlock_crit_edge, label %lor.lhs.false

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false:                                    ; preds = %do.end
  %mm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %16 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %lor.lhs.false.unlock_crit_edge, label %if.end18

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end18:                                         ; preds = %lor.lhs.false
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 80
  %18 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %19, %thread_group.i
  br i1 %cmp.i.i.not, label %do.end25, label %if.end18.unlock_crit_edge

if.end18.unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

do.end25:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %cred29 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred29, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 98
  %24 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %real_cred, align 4
  %call35 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %do.end25.do.end45_crit_edge

do.end25.do.end45_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

land.lhs.true37:                                  ; preds = %do.end25
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true37.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true37.do.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %.b159175 = load i1, ptr @keyctl_session_to_parent.__warned.13, align 1
  br i1 %.b159175, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @keyctl_session_to_parent.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 1668, ptr noundef nonnull @.str.14) #11
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true37.do.end45_crit_edge, %do.end25.do.end45_crit_edge
  %cmp47 = icmp eq ptr %23, %25
  br i1 %cmp47, label %do.end45.unlock_crit_edge, label %lor.lhs.false48

do.end45.unlock_crit_edge:                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false48:                                  ; preds = %do.end45
  %session_keyring49 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 19
  %26 = ptrtoint ptr %session_keyring49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %session_keyring49, align 4
  %session_keyring50 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 19
  %28 = ptrtoint ptr %session_keyring50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %session_keyring50, align 4
  %cmp51 = icmp eq ptr %27, %29
  br i1 %cmp51, label %lor.lhs.false48.unlock_crit_edge, label %if.end53

lor.lhs.false48.unlock_crit_edge:                 ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end53:                                         ; preds = %lor.lhs.false48
  %uid = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 4
  %euid = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 8
  %30 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack = load i32, ptr %uid, align 4
  %31 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack160 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack160)
  %cmp.i180 = icmp eq i32 %.unpack, %.unpack160
  br i1 %cmp.i180, label %lor.lhs.false56, label %if.end53.unlock_crit_edge

if.end53.unlock_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false56:                                  ; preds = %if.end53
  %euid57 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 8
  %32 = ptrtoint ptr %euid57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack161 = load i32, ptr %euid57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack161, i32 %.unpack)
  %cmp.i181 = icmp eq i32 %.unpack161, %.unpack
  br i1 %cmp.i181, label %lor.lhs.false62, label %lor.lhs.false56.unlock_crit_edge

lor.lhs.false56.unlock_crit_edge:                 ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %suid = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 6
  %33 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack163 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack163, i32 %.unpack)
  %cmp.i182 = icmp eq i32 %.unpack163, %.unpack
  br i1 %cmp.i182, label %lor.lhs.false67, label %lor.lhs.false62.unlock_crit_edge

lor.lhs.false62.unlock_crit_edge:                 ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false67:                                  ; preds = %lor.lhs.false62
  %gid = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 5
  %egid = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 9
  %34 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack165 = load i32, ptr %gid, align 4
  %35 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack166 = load i32, ptr %egid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack165, i32 %.unpack166)
  %cmp.i183 = icmp eq i32 %.unpack165, %.unpack166
  br i1 %cmp.i183, label %lor.lhs.false71, label %lor.lhs.false67.unlock_crit_edge

lor.lhs.false67.unlock_crit_edge:                 ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false71:                                  ; preds = %lor.lhs.false67
  %egid72 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 9
  %36 = ptrtoint ptr %egid72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack167 = load i32, ptr %egid72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack167, i32 %.unpack165)
  %cmp.i184 = icmp eq i32 %.unpack167, %.unpack165
  br i1 %cmp.i184, label %lor.lhs.false77, label %lor.lhs.false71.unlock_crit_edge

lor.lhs.false71.unlock_crit_edge:                 ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false77:                                  ; preds = %lor.lhs.false71
  %sgid = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 7
  %37 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack169 = load i32, ptr %sgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack169, i32 %.unpack165)
  %cmp.i185 = icmp eq i32 %.unpack169, %.unpack165
  br i1 %cmp.i185, label %if.end83, label %lor.lhs.false77.unlock_crit_edge

lor.lhs.false77.unlock_crit_edge:                 ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end83:                                         ; preds = %lor.lhs.false77
  %tobool85.not = icmp eq ptr %29, null
  br i1 %tobool85.not, label %if.end83.lor.lhs.false93_crit_edge, label %land.lhs.true86

if.end83.lor.lhs.false93_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false93

land.lhs.true86:                                  ; preds = %if.end83
  %uid88 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 9
  %38 = ptrtoint ptr %uid88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack173 = load i32, ptr %uid88, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack173, i32 %.unpack)
  %cmp.i186 = icmp eq i32 %.unpack173, %.unpack
  br i1 %cmp.i186, label %land.lhs.true86.lor.lhs.false93_crit_edge, label %land.lhs.true86.unlock_crit_edge

land.lhs.true86.unlock_crit_edge:                 ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

land.lhs.true86.lor.lhs.false93_crit_edge:        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true86.lor.lhs.false93_crit_edge, %if.end83.lor.lhs.false93_crit_edge
  %uid95 = getelementptr inbounds %struct.key, ptr %27, i32 0, i32 9
  %39 = ptrtoint ptr %uid95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack171 = load i32, ptr %uid95, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack171, i32 %.unpack)
  %cmp.i187 = icmp eq i32 %.unpack171, %.unpack
  br i1 %cmp.i187, label %if.end101, label %lor.lhs.false93.unlock_crit_edge

lor.lhs.false93.unlock_crit_edge:                 ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end101:                                        ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #13
  %call102 = tail call ptr @task_work_cancel(ptr noundef %13, ptr noundef nonnull @key_change_session_keyring) #11
  %call103 = tail call i32 @task_work_add(ptr noundef %13, ptr noundef %1, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  %spec.select177 = select i1 %tobool104.not, ptr null, ptr %1
  br label %unlock

unlock:                                           ; preds = %if.end101, %lor.lhs.false93.unlock_crit_edge, %land.lhs.true86.unlock_crit_edge, %lor.lhs.false77.unlock_crit_edge, %lor.lhs.false71.unlock_crit_edge, %lor.lhs.false67.unlock_crit_edge, %lor.lhs.false62.unlock_crit_edge, %lor.lhs.false56.unlock_crit_edge, %if.end53.unlock_crit_edge, %lor.lhs.false48.unlock_crit_edge, %do.end45.unlock_crit_edge, %if.end18.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %do.end.unlock_crit_edge
  %oldwork.0 = phi ptr [ null, %do.end.unlock_crit_edge ], [ null, %lor.lhs.false93.unlock_crit_edge ], [ null, %land.lhs.true86.unlock_crit_edge ], [ null, %lor.lhs.false77.unlock_crit_edge ], [ null, %lor.lhs.false71.unlock_crit_edge ], [ null, %lor.lhs.false67.unlock_crit_edge ], [ null, %lor.lhs.false62.unlock_crit_edge ], [ null, %lor.lhs.false56.unlock_crit_edge ], [ null, %if.end53.unlock_crit_edge ], [ null, %if.end18.unlock_crit_edge ], [ null, %lor.lhs.false.unlock_crit_edge ], [ null, %lor.lhs.false48.unlock_crit_edge ], [ null, %do.end45.unlock_crit_edge ], [ %call102, %if.end101 ]
  %ret.0 = phi i32 [ -1, %do.end.unlock_crit_edge ], [ -1, %lor.lhs.false93.unlock_crit_edge ], [ -1, %land.lhs.true86.unlock_crit_edge ], [ -1, %lor.lhs.false77.unlock_crit_edge ], [ -1, %lor.lhs.false71.unlock_crit_edge ], [ -1, %lor.lhs.false67.unlock_crit_edge ], [ -1, %lor.lhs.false62.unlock_crit_edge ], [ -1, %lor.lhs.false56.unlock_crit_edge ], [ -1, %if.end53.unlock_crit_edge ], [ -1, %if.end18.unlock_crit_edge ], [ -1, %lor.lhs.false.unlock_crit_edge ], [ 0, %lor.lhs.false48.unlock_crit_edge ], [ 0, %do.end45.unlock_crit_edge ], [ %call103, %if.end101 ]
  %newwork.0 = phi ptr [ %1, %do.end.unlock_crit_edge ], [ %1, %lor.lhs.false93.unlock_crit_edge ], [ %1, %land.lhs.true86.unlock_crit_edge ], [ %1, %lor.lhs.false77.unlock_crit_edge ], [ %1, %lor.lhs.false71.unlock_crit_edge ], [ %1, %lor.lhs.false67.unlock_crit_edge ], [ %1, %lor.lhs.false62.unlock_crit_edge ], [ %1, %lor.lhs.false56.unlock_crit_edge ], [ %1, %if.end53.unlock_crit_edge ], [ %1, %if.end18.unlock_crit_edge ], [ %1, %lor.lhs.false.unlock_crit_edge ], [ %1, %lor.lhs.false48.unlock_crit_edge ], [ %1, %do.end45.unlock_crit_edge ], [ %spec.select177, %if.end101 ]
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #11
  %call.i188 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i188, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i191

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i191:                               ; preds = %unlock
  %call1.i189 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i189)
  %tobool.not.i190 = icmp eq i32 %call1.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i193

land.lhs.true.i191.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i193:                              ; preds = %land.lhs.true.i191
  %.b4.i192 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i192, label %land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge, label %if.then.i194

land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i194:                                     ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i194, %land.lhs.true2.i193.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i191.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %40 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i195 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i196, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool107.not = icmp eq ptr %oldwork.0, null
  br i1 %tobool107.not, label %rcu_read_unlock.exit.if.end110_crit_edge, label %if.then108

rcu_read_unlock.exit.if.end110_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then108:                                       ; preds = %rcu_read_unlock.exit
  %add.ptr = getelementptr i8, ptr %oldwork.0, i32 -132
  %tobool.not.i197 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i197, label %if.then108.if.end110_crit_edge, label %do.body.i

if.then108.if.end110_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

do.body.i:                                        ; preds = %if.then108
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %add.ptr) #11
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !131

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.36, i32 noundef 286) #11
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr, ptr nonnull %add.ptr, i32 1, ptr nonnull elementtype(i32) %add.ptr) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.if.end110_crit_edge

__validate_creds.exit.i.if.end110_crit_edge:      ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %add.ptr) #11
  br label %if.end110

if.end110:                                        ; preds = %if.then1.i, %__validate_creds.exit.i.if.end110_crit_edge, %if.then108.if.end110_crit_edge, %rcu_read_unlock.exit.if.end110_crit_edge
  %tobool111.not = icmp eq ptr %newwork.0, null
  br i1 %tobool111.not, label %if.end110.cleanup_crit_edge, label %do.body.i200

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i200:                                     ; preds = %if.end110
  %call.i.i199 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call3) #11
  br i1 %call.i.i199, label %if.then.i.i201, label %do.body.i200.__validate_creds.exit.i205_crit_edge, !prof !131

do.body.i200.__validate_creds.exit.i205_crit_edge: ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i205

if.then.i.i201:                                   ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %call3, ptr noundef nonnull @.str.36, i32 noundef 286) #11
  br label %__validate_creds.exit.i205

__validate_creds.exit.i205:                       ; preds = %if.then.i.i201, %do.body.i200.__validate_creds.exit.i205_crit_edge
  %call.i.i.i202 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #11
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i203 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i203)
  %cmp.i.i.i204 = icmp eq i32 %asmresult.i.i.i.i.i.i203, 0
  br i1 %cmp.i.i.i204, label %if.then1.i206, label %__validate_creds.exit.i205.cleanup_crit_edge

__validate_creds.exit.i205.cleanup_crit_edge:     ; preds = %__validate_creds.exit.i205
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i206:                                    ; preds = %__validate_creds.exit.i205
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %call3) #11
  br label %cleanup

error_keyring:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call to i32
  %and.i.i = and i32 %46, -2
  %47 = inttoptr i32 %and.i.i to ptr
  tail call void @key_put(ptr noundef %47) #11
  br label %cleanup

cleanup:                                          ; preds = %error_keyring, %if.then1.i206, %__validate_creds.exit.i205.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -12, %error_keyring ], [ %ret.0, %if.end110.cleanup_crit_edge ], [ %ret.0, %__validate_creds.exit.i205.cleanup_crit_edge ], [ %ret.0, %if.then1.i206 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cred_alloc_blank() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_change_session_keyring(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_work_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_restrict_keyring(i32 noundef %id, ptr noundef %_type, ptr noundef %_restriction) local_unnamed_addr #0 align 64 {
entry:
  %type = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %type) #11
  %0 = getelementptr inbounds [32 x i8], ptr %type, i32 0, i32 31
  %1 = call ptr @memset(ptr %type, i32 255, i32 32)
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 6) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %_type, null
  %tobool15.not = icmp eq ptr %_restriction, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool15.not, label %if.then3.error_crit_edge, label %if.end6

if.then3.error_crit_edge:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end6:                                          ; preds = %if.then3
  %call.i = call i32 @strncpy_from_user(ptr noundef nonnull %type, ptr noundef nonnull %_type, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i36 = icmp slt i32 %call.i, 0
  br i1 %cmp.i36, label %if.end6.error_crit_edge, label %if.end.i

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %if.end6
  %3 = add nsw i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %3)
  %4 = icmp ult i32 %3, -31
  br i1 %4, label %if.end.i.error_crit_edge, label %if.end4.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %6)
  %cmp5.i = icmp eq i8 %6, 46
  br i1 %cmp5.i, label %if.end4.i.error_crit_edge, label %if.end9

if.end4.i.error_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end9:                                          ; preds = %if.end4.i
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %call10 = call ptr @strndup_user(ptr noundef nonnull %_restriction, i32 noundef 4096) #11
  %cmp.i37 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %if.then12, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call10 to i32
  br label %error

if.else:                                          ; preds = %if.end
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.else.error_crit_edge

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %cond = phi ptr [ null, %if.else.if.end18_crit_edge ], [ %type, %if.end9.if.end18_crit_edge ]
  %restriction.0 = phi ptr [ null, %if.else.if.end18_crit_edge ], [ %call10, %if.end9.if.end18_crit_edge ]
  %call21 = call i32 @keyring_restrict(ptr noundef %call, ptr noundef %cond, ptr noundef %restriction.0) #11
  call void @kfree(ptr noundef %restriction.0) #11
  br label %error

error:                                            ; preds = %if.end18, %if.else.error_crit_edge, %if.then12, %if.end4.i.error_crit_edge, %if.end.i.error_crit_edge, %if.end6.error_crit_edge, %if.then3.error_crit_edge
  %ret.0 = phi i32 [ %8, %if.then12 ], [ %call21, %if.end18 ], [ -22, %if.then3.error_crit_edge ], [ -22, %if.else.error_crit_edge ], [ -1, %if.end4.i.error_crit_edge ], [ -22, %if.end.i.error_crit_edge ], [ %call.i, %if.end6.error_crit_edge ]
  %9 = ptrtoint ptr %call to i32
  %and.i.i = and i32 %9, -2
  %10 = inttoptr i32 %and.i.i to ptr
  call void @key_put(ptr noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %error ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %type) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyring_restrict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_watch_key(i32 noundef %id, i32 noundef %watch_queue_fd, i32 noundef %watch_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %watch_id, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %0)
  %1 = icmp ult i32 %0, -257
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @lookup_user_key(i32 noundef %id, i32 noundef 1, i32 noundef 1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %call to i32
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  %call7 = tail call ptr @get_watch_queue(i32 noundef %watch_queue_fd) #11
  %cmp.i91 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call7 to i32
  br label %err_key

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %watch_id)
  %cmp12 = icmp sgt i32 %watch_id, -1
  %watchers = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %watchers, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  br i1 %tobool.not, label %if.then14, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.then13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #18
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.then14.err_wqueue_crit_edge, label %if.end18

if.then14.err_wqueue_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_wqueue

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %watchers.i = getelementptr inbounds %struct.watch_list, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %watchers.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %watchers.i, align 8
  %lock.i = getelementptr inbounds %struct.watch_list, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_watch_list.__key, i16 noundef signext 3) #11
  %release_watch1.i = getelementptr inbounds %struct.watch_list, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %release_watch1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %release_watch1.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then13.if.end19_crit_edge
  %wlist.0 = phi ptr [ null, %if.then13.if.end19_crit_edge ], [ %call7.i.i, %if.end18 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i92 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 56) #18
  %tobool21.not = icmp eq ptr %call7.i.i92, null
  br i1 %tobool21.not, label %if.end19.err_wlist_crit_edge, label %if.end23

if.end19.err_wlist_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_wlist

if.end23:                                         ; preds = %if.end19
  tail call void @init_watch(ptr noundef nonnull %call7.i.i92, ptr noundef %call7) #11
  %serial = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serial, align 4
  %conv = sext i32 %12 to i64
  %id24 = getelementptr inbounds %struct.watch, ptr %call7.i.i92, i32 0, i32 7
  %13 = ptrtoint ptr %id24 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %id24, align 8
  %shl = shl nuw nsw i32 %watch_id, 8
  %14 = ptrtoint ptr %call7.i.i92 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %call7.i.i92, align 8
  %call25 = tail call i32 @security_watch_key(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.err_watch_crit_edge, label %if.end29

if.end23.err_watch_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_watch

if.end29:                                         ; preds = %if.end23
  %sem = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem) #11
  %15 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %watchers, align 4
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %watchers to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wlist.0, ptr %watchers, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %wlist.1 = phi ptr [ %wlist.0, %if.end29.if.end34_crit_edge ], [ null, %if.then32 ]
  %18 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %watchers, align 4
  %call36 = tail call i32 @add_watch_to_object(ptr noundef nonnull %call7.i.i92, ptr noundef %19) #11
  tail call void @up_write(ptr noundef %sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp38 = icmp eq i32 %call36, 0
  %spec.select = select i1 %cmp38, ptr null, ptr %call7.i.i92
  br label %err_watch

if.else:                                          ; preds = %if.end11
  br i1 %tobool.not, label %if.else.err_watch_crit_edge, label %if.then44

if.else.err_watch_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_watch

if.then44:                                        ; preds = %if.else
  %sem45 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 4
  tail call void @down_write(ptr noundef %sem45) #11
  %20 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %watchers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then44.key_serial.exit_crit_edge, label %cond.true.i

if.then44.key_serial.exit_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %key_serial.exit

cond.true.i:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %serial.i = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %if.then44.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %23, %cond.true.i ], [ 0, %if.then44.key_serial.exit_crit_edge ]
  %conv48 = sext i32 %cond.i to i64
  %call49 = tail call i32 @remove_watch_from_object(ptr noundef %21, ptr noundef %call7, i64 noundef %conv48, i1 noundef zeroext false) #11
  tail call void @up_write(ptr noundef %sem45) #11
  br label %err_watch

err_watch:                                        ; preds = %key_serial.exit, %if.else.err_watch_crit_edge, %if.end34, %if.end23.err_watch_crit_edge
  %wlist.2 = phi ptr [ %wlist.0, %if.end23.err_watch_crit_edge ], [ null, %key_serial.exit ], [ null, %if.else.err_watch_crit_edge ], [ %wlist.1, %if.end34 ]
  %watch.0 = phi ptr [ %call7.i.i92, %if.end23.err_watch_crit_edge ], [ null, %key_serial.exit ], [ null, %if.else.err_watch_crit_edge ], [ %spec.select, %if.end34 ]
  %ret.0 = phi i32 [ %call25, %if.end23.err_watch_crit_edge ], [ %call49, %key_serial.exit ], [ -57, %if.else.err_watch_crit_edge ], [ %call36, %if.end34 ]
  tail call void @kfree(ptr noundef %watch.0) #11
  br label %err_wlist

err_wlist:                                        ; preds = %err_watch, %if.end19.err_wlist_crit_edge
  %wlist.3 = phi ptr [ %wlist.2, %err_watch ], [ %wlist.0, %if.end19.err_wlist_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %err_watch ], [ -12, %if.end19.err_wlist_crit_edge ]
  tail call void @kfree(ptr noundef %wlist.3) #11
  br label %err_wqueue

err_wqueue:                                       ; preds = %err_wlist, %if.then14.err_wqueue_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_wlist ], [ -12, %if.then14.err_wqueue_crit_edge ]
  tail call void @put_watch_queue(ptr noundef %call7) #11
  br label %err_key

err_key:                                          ; preds = %err_wqueue, %if.then9
  %ret.3 = phi i32 [ %4, %if.then9 ], [ %ret.2, %err_wqueue ]
  tail call void @key_put(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %err_key, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_key ], [ -22, %entry.cleanup_crit_edge ], [ %2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_watch_queue(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_watch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_watch_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_watch_to_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_watch_from_object(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_watch_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_capabilities(ptr noundef %_buffer, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp.not = icmp eq i32 %buflen, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %buflen, i32 2)
  tail call void @__check_object_size(ptr noundef nonnull @keyrings_capabilities, i32 noundef %0, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.cleanup_crit_edge, label %if.end.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_buffer, i32 %0, i32 -1226833920) #16, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @keyrings_capabilities, i32 noundef %0) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %_buffer, ptr noundef nonnull @keyrings_capabilities, i32 noundef %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp3.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %cmp3.not, label %if.end5, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buflen)
  %cmp1 = icmp ugt i32 %buflen, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %_buffer, i32 %0
  %sub = sub nuw i32 %buflen, %0
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub, i32 -1226833920) #16, !srcloc !137
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %clear_user.exit, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

clear_user.exit:                                  ; preds = %land.lhs.true
  %3 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !122
  %and.i.i.i = and i32 %5, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %add.ptr, i32 noundef %sub) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp8.not = icmp eq i32 %call1.i.i, 0
  br i1 %cmp8.not, label %clear_user.exit.if.end11_crit_edge, label %clear_user.exit.cleanup_crit_edge

clear_user.exit.cleanup_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

clear_user.exit.if.end11_crit_edge:               ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %clear_user.exit.if.end11_crit_edge, %if.end5.if.end11_crit_edge, %entry.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %clear_user.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end11 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %clear_user.exit.cleanup_crit_edge ], [ -14, %if.then.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_keyctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #0 align 64 {
entry:
  %iovstack.i.i = alloca [8 x %struct.iovec], align 4
  %iov.i175.i = alloca ptr, align 4
  %from.i176.i = alloca %struct.iov_iter, align 8
  %iov.i.i = alloca %struct.iovec, align 4
  %from.i.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %option to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %option, label %entry.__do_sys_keyctl.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
    i32 6, label %sw.bb7.i
    i32 7, label %sw.bb9.i
    i32 8, label %sw.bb11.i
    i32 9, label %sw.bb13.i
    i32 10, label %sw.bb15.i
    i32 11, label %sw.bb17.i
    i32 4, label %sw.bb19.i
    i32 5, label %sw.bb21.i
    i32 12, label %sw.bb23.i
    i32 13, label %sw.bb25.i
    i32 14, label %sw.bb27.i
    i32 15, label %sw.bb29.i
    i32 16, label %sw.bb31.i
    i32 17, label %sw.bb33.i
    i32 18, label %sw.bb35.i
    i32 19, label %sw.bb37.i
    i32 20, label %sw.bb39.i
    i32 21, label %sw.bb41.i
    i32 22, label %sw.bb43.i
    i32 23, label %sw.bb45.i
    i32 29, label %sw.bb47.i
    i32 24, label %sw.bb49.i
    i32 25, label %entry.sw.bb51.i_crit_edge
    i32 26, label %entry.sw.bb51.i_crit_edge1
    i32 27, label %entry.sw.bb51.i_crit_edge2
    i32 28, label %sw.bb53.i
    i32 30, label %sw.bb55.i
    i32 31, label %sw.bb57.i
    i32 32, label %sw.bb59.i
  ]

entry.sw.bb51.i_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb51.i

entry.sw.bb51.i_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb51.i

entry.sw.bb51.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb51.i

entry.__do_sys_keyctl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_keyctl.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg3)
  %tobool.not.i.i = icmp ne i32 %arg3, 0
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %call.i.i = tail call ptr @lookup_user_key(i32 noundef %arg2, i32 noundef %cond.i.i, i32 noundef 4) #11
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call.i.i to i32
  br i1 %cmp.i.i.i, label %sw.bb.i.__do_sys_keyctl.exit_crit_edge, label %if.end.i.i

sw.bb.i.__do_sys_keyctl.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_keyctl.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i.i = and i32 %1, -2
  %2 = inttoptr i32 %and.i.i.i to ptr
  %serial.i.i = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %serial.i.i, align 4
  tail call void @key_put(ptr noundef %2) #11
  br label %__do_sys_keyctl.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg2)
  %tobool.not.i138.i = icmp eq i32 %arg2, 0
  br i1 %tobool.not.i138.i, label %sw.bb1.i.if.end7.i.i_crit_edge, label %if.then.i.i

sw.bb1.i.if.end7.i.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %sw.bb1.i
  %5 = inttoptr i32 %arg2 to ptr
  %call.i139.i = tail call ptr @strndup_user(ptr noundef nonnull %5, i32 noundef 4096) #11
  %cmp.i.i140.i = icmp ugt ptr %call.i139.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i140.i, label %if.then2.i.i, label %if.end.i141.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call.i139.i to i32
  br label %__do_sys_keyctl.exit

if.end.i141.i:                                    ; preds = %if.then.i.i
  %7 = ptrtoint ptr %call.i139.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 46
  br i1 %cmp.i.i, label %if.end.i141.i.error_name.i.i_crit_edge, label %if.end.i141.i.if.end7.i.i_crit_edge

if.end.i141.i.if.end7.i.i_crit_edge:              ; preds = %if.end.i141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.end.i141.i.error_name.i.i_crit_edge:           ; preds = %if.end.i141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_name.i.i

if.end7.i.i:                                      ; preds = %if.end.i141.i.if.end7.i.i_crit_edge, %sw.bb1.i.if.end7.i.i_crit_edge
  %name.0.i.i = phi ptr [ %call.i139.i, %if.end.i141.i.if.end7.i.i_crit_edge ], [ null, %sw.bb1.i.if.end7.i.i_crit_edge ]
  %call8.i.i = tail call i32 @join_session_keyring(ptr noundef %name.0.i.i) #11
  br label %error_name.i.i

error_name.i.i:                                   ; preds = %if.end7.i.i, %if.end.i141.i.error_name.i.i_crit_edge
  %name.1.i.i = phi ptr [ %call.i139.i, %if.end.i141.i.error_name.i.i_crit_edge ], [ %name.0.i.i, %if.end7.i.i ]
  %ret.0.i142.i = phi i32 [ -1, %if.end.i141.i.error_name.i.i_crit_edge ], [ %call8.i.i, %if.end7.i.i ]
  tail call void @kfree(ptr noundef %name.1.i.i) #11
  br label %__do_sys_keyctl.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = inttoptr i32 %arg3 to ptr
  %call4.i = tail call i32 @keyctl_update_key(i32 noundef %arg2, ptr noundef %9, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

sw.bb5.i:                                         ; preds = %entry
  %call.i143.i = tail call ptr @lookup_user_key(i32 noundef %arg2, i32 noundef 0, i32 noundef 3) #11
  %cmp.i.i144.i = icmp ugt ptr %call.i143.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i144.i, label %if.then.i145.i, label %sw.bb5.i.if.end9.i.i_crit_edge

sw.bb5.i.if.end9.i.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then.i145.i:                                   ; preds = %sw.bb5.i
  %10 = ptrtoint ptr %call.i143.i to i32
  %cmp.not.i.i = icmp eq ptr %call.i143.i, inttoptr (i32 -13 to ptr)
  br i1 %cmp.not.i.i, label %if.end.i146.i, label %if.then.i145.i.__do_sys_keyctl.exit_crit_edge

if.then.i145.i.__do_sys_keyctl.exit_crit_edge:    ; preds = %if.then.i145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_keyctl.exit

if.end.i146.i:                                    ; preds = %if.then.i145.i
  %call4.i.i = tail call ptr @lookup_user_key(i32 noundef %arg2, i32 noundef 0, i32 noundef 6) #11
  %cmp.i22.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i.i, label %if.then6.i.i, label %if.end.i146.i.if.end9.i.i_crit_edge

if.end.i146.i.if.end9.i.i_crit_edge:              ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call4.i.i to i32
  br label %__do_sys_keyctl.exit

if.end9.i.i:                                      ; preds = %if.end.i146.i.if.end9.i.i_crit_edge, %sw.bb5.i.if.end9.i.i_crit_edge
  %key_ref.0.i.i = phi ptr [ %call4.i.i, %if.end.i146.i.if.end9.i.i_crit_edge ], [ %call.i143.i, %sw.bb5.i.if.end9.i.i_crit_edge ]
  %12 = ptrtoint ptr %key_ref.0.i.i to i32
  %and.i.i147.i = and i32 %12, -2
  %13 = inttoptr i32 %and.i.i147.i to ptr
  %flags.i.i = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i.i, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i148.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i148.i, label %if.else.i.i, label %if.end9.i.i.if.end13.i.i_crit_edge

if.end9.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @key_revoke(ptr noundef %13) #11
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else.i.i, %if.end9.i.i.if.end13.i.i_crit_edge
  %ret.0.i149.i = phi i32 [ 0, %if.else.i.i ], [ -1, %if.end9.i.i.if.end13.i.i_crit_edge ]
  tail call void @key_put(ptr noundef %13) #11
  br label %__do_sys_keyctl.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = inttoptr i32 %arg3 to ptr
  %call8.i = tail call i32 @keyctl_describe_key(i32 noundef %arg2, ptr noundef %17, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 @keyctl_keyring_clear(i32 noundef %arg2) #11
  br label %__do_sys_keyctl.exit

sw.bb11.i:                                        ; preds = %entry
  %call.i151.i = tail call ptr @lookup_user_key(i32 noundef %arg3, i32 noundef 1, i32 noundef 3) #11
  %cmp.i.i152.i = icmp ugt ptr %call.i151.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i152.i, label %if.then.i153.i, label %if.end.i154.i

if.then.i153.i:                                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %call.i151.i to i32
  br label %__do_sys_keyctl.exit

if.end.i154.i:                                    ; preds = %sw.bb11.i
  %call3.i.i = tail call ptr @lookup_user_key(i32 noundef %arg2, i32 noundef 1, i32 noundef 5) #11
  %cmp.i17.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i.i, label %if.then5.i.i, label %if.end7.i156.i

if.then5.i.i:                                     ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call3.i.i to i32
  %.pre.i.i = ptrtoint ptr %call.i151.i to i32
  %.pre20.i.i = and i32 %.pre.i.i, -2
  %.pre21.i.i = inttoptr i32 %.pre20.i.i to ptr
  br label %error2.i.i

if.end7.i156.i:                                   ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call.i151.i to i32
  %and.i.i155.i = and i32 %20, -2
  %21 = inttoptr i32 %and.i.i155.i to ptr
  %22 = ptrtoint ptr %call3.i.i to i32
  %and.i18.i.i = and i32 %22, -2
  %23 = inttoptr i32 %and.i18.i.i to ptr
  %call10.i.i = tail call i32 @key_link(ptr noundef %21, ptr noundef %23) #11
  tail call void @key_put(ptr noundef %23) #11
  br label %error2.i.i

error2.i.i:                                       ; preds = %if.end7.i156.i, %if.then5.i.i
  %.pre-phi22.i.i = phi ptr [ %21, %if.end7.i156.i ], [ %.pre21.i.i, %if.then5.i.i ]
  %ret.0.i157.i = phi i32 [ %call10.i.i, %if.end7.i156.i ], [ %19, %if.then5.i.i ]
  tail call void @key_put(ptr noundef %.pre-phi22.i.i) #11
  br label %__do_sys_keyctl.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 @keyctl_keyring_unlink(i32 noundef %arg2, i32 noundef %arg3) #11
  br label %__do_sys_keyctl.exit

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = inttoptr i32 %arg3 to ptr
  %25 = inttoptr i32 %arg4 to ptr
  %call16.i = tail call i32 @keyctl_keyring_search(i32 noundef %arg2, ptr noundef %24, ptr noundef %25, i32 noundef %arg5) #11
  br label %__do_sys_keyctl.exit

sw.bb17.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %26 = inttoptr i32 %arg3 to ptr
  %call18.i = tail call i32 @keyctl_read_key(i32 noundef %arg2, ptr noundef %26, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call i32 @keyctl_chown_key(i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 @keyctl_setperm_key(i32 noundef %arg2, i32 noundef %arg3) #11
  br label %__do_sys_keyctl.exit

sw.bb23.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg3)
  %tobool.not.i159.i = icmp eq i32 %arg3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg4)
  %tobool1.not.i.i = icmp eq i32 %arg4, 0
  %or.cond.i.i = or i1 %tobool.not.i159.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.end9.i164.i, label %if.then.i161.i

if.then.i161.i:                                   ; preds = %sw.bb23.i
  %27 = inttoptr i32 %arg3 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #11
  %28 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov.i.i, align 4, !annotation !129
  %29 = getelementptr inbounds %struct.iovec, ptr %iov.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from.i.i) #11
  %31 = call ptr @memset(ptr %from.i.i, i32 255, i32 24)
  %call.i160.i = call i32 @import_single_range(i32 noundef 1, ptr noundef nonnull %27, i32 noundef %arg4, ptr noundef nonnull %iov.i.i, ptr noundef nonnull %from.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool2.not.i.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i162.i, label %if.then.i161.i.cleanup.i.i_crit_edge, !prof !121

if.then.i161.i.cleanup.i.i_crit_edge:             ; preds = %if.then.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

if.end.i162.i:                                    ; preds = %if.then.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %arg2, ptr noundef nonnull %from.i.i, i32 noundef %arg5) #11
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i162.i, %if.then.i161.i.cleanup.i.i_crit_edge
  %retval.0.i.i = phi i32 [ %call6.i.i, %if.end.i162.i ], [ %call.i160.i, %if.then.i161.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #11
  br label %__do_sys_keyctl.exit

if.end9.i164.i:                                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i163.i = tail call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %arg2, ptr noundef null, i32 noundef %arg5) #11
  br label %__do_sys_keyctl.exit

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i165.i = tail call i32 @keyctl_reject_key(i32 noundef %arg2, i32 noundef %arg3, i32 noundef 126, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

sw.bb27.i:                                        ; preds = %entry
  %32 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i166.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i166.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 99
  %36 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cred.i.i, align 16
  %jit_keyring.i.i = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %jit_keyring.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %jit_keyring.i.i, align 4
  %conv.i.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg2)
  %cmp.i167.i = icmp eq i32 %arg2, -1
  br i1 %cmp.i167.i, label %sw.bb27.i.__do_sys_keyctl.exit_crit_edge, label %if.end.i170.i

sw.bb27.i.__do_sys_keyctl.exit_crit_edge:         ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_keyctl.exit

if.end.i170.i:                                    ; preds = %sw.bb27.i
  %call3.i168.i = tail call ptr @prepare_creds() #11
  %tobool.not.i169.i = icmp eq ptr %call3.i168.i, null
  br i1 %tobool.not.i169.i, label %if.end.i170.i.__do_sys_keyctl.exit_crit_edge, label %if.end5.i.i

if.end.i170.i.__do_sys_keyctl.exit_crit_edge:     ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_keyctl.exit

if.end5.i.i:                                      ; preds = %if.end.i170.i
  %40 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %arg2, label %if.end5.i.i.error.i.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb11.i.i
    i32 0, label %if.end5.i.i.set.i.i_crit_edge
    i32 3, label %if.end5.i.i.set.i.i_crit_edge3
    i32 4, label %if.end5.i.i.set.i.i_crit_edge4
    i32 5, label %if.end5.i.i.set.i.i_crit_edge5
    i32 7, label %if.end5.i.i.set.i.i_crit_edge6
  ]

if.end5.i.i.set.i.i_crit_edge6:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

if.end5.i.i.set.i.i_crit_edge5:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

if.end5.i.i.set.i.i_crit_edge4:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

if.end5.i.i.set.i.i_crit_edge3:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

if.end5.i.i.set.i.i_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

if.end5.i.i.error.i.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i.i

sw.bb.i.i:                                        ; preds = %if.end5.i.i
  %call6.i171.i = tail call i32 @install_thread_keyring_to_cred(ptr noundef nonnull %call3.i168.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i171.i)
  %cmp7.i.i = icmp slt i32 %call6.i171.i, 0
  br i1 %cmp7.i.i, label %sw.bb.i.i.error.i.i_crit_edge, label %sw.bb.i.i.set.i.i_crit_edge

sw.bb.i.i.set.i.i_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

sw.bb.i.i.error.i.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i.i

sw.bb11.i.i:                                      ; preds = %if.end5.i.i
  %call12.i.i = tail call i32 @install_process_keyring_to_cred(ptr noundef nonnull %call3.i168.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %sw.bb11.i.i.error.i.i_crit_edge, label %sw.bb11.i.i.set.i.i_crit_edge

sw.bb11.i.i.set.i.i_crit_edge:                    ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set.i.i

sw.bb11.i.i.error.i.i_crit_edge:                  ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i.i

set.i.i:                                          ; preds = %sw.bb11.i.i.set.i.i_crit_edge, %sw.bb.i.i.set.i.i_crit_edge, %if.end5.i.i.set.i.i_crit_edge, %if.end5.i.i.set.i.i_crit_edge3, %if.end5.i.i.set.i.i_crit_edge4, %if.end5.i.i.set.i.i_crit_edge5, %if.end5.i.i.set.i.i_crit_edge6
  %conv19.i.i = trunc i32 %arg2 to i8
  %jit_keyring20.i.i = getelementptr inbounds %struct.cred, ptr %call3.i168.i, i32 0, i32 18
  %41 = ptrtoint ptr %jit_keyring20.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv19.i.i, ptr %jit_keyring20.i.i, align 4
  %call21.i.i = tail call i32 @commit_creds(ptr noundef nonnull %call3.i168.i) #11
  br label %__do_sys_keyctl.exit

error.i.i:                                        ; preds = %sw.bb11.i.i.error.i.i_crit_edge, %sw.bb.i.i.error.i.i_crit_edge, %if.end5.i.i.error.i.i_crit_edge
  %ret.0.i172.i = phi i32 [ %call12.i.i, %sw.bb11.i.i.error.i.i_crit_edge ], [ %call6.i171.i, %sw.bb.i.i.error.i.i_crit_edge ], [ -22, %if.end5.i.i.error.i.i_crit_edge ]
  tail call void @abort_creds(ptr noundef nonnull %call3.i168.i) #11
  br label %__do_sys_keyctl.exit

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call30.i = tail call i32 @keyctl_set_timeout(i32 noundef %arg2, i32 noundef %arg3) #11
  br label %__do_sys_keyctl.exit

sw.bb31.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = tail call i32 @keyctl_assume_authority(i32 noundef %arg2) #11
  br label %__do_sys_keyctl.exit

sw.bb33.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %42 = inttoptr i32 %arg3 to ptr
  %call34.i = tail call i32 @keyctl_get_security(i32 noundef %arg2, ptr noundef %42, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

sw.bb35.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = tail call i32 @keyctl_session_to_parent() #11
  br label %__do_sys_keyctl.exit

sw.bb37.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call38.i = tail call i32 @keyctl_reject_key(i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #11
  br label %__do_sys_keyctl.exit

sw.bb39.i:                                        ; preds = %entry
  %43 = inttoptr i32 %arg3 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i.i) #11
  %44 = call ptr @memset(ptr %iovstack.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i175.i) #11
  %45 = ptrtoint ptr %iov.i175.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %iovstack.i.i, ptr %iov.i175.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %from.i176.i) #11
  %46 = call ptr @memset(ptr %from.i176.i, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg3)
  %tobool.not.i177.i = icmp eq i32 %arg3, 0
  %spec.select.i.i = select i1 %tobool.not.i177.i, i32 0, i32 %arg4
  %call.i178.i = call i32 @import_iovec(i32 noundef 1, ptr noundef %43, i32 noundef %spec.select.i.i, i32 noundef 8, ptr noundef nonnull %iov.i175.i, ptr noundef nonnull %from.i176.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178.i)
  %cmp.i179.i = icmp slt i32 %call.i178.i, 0
  br i1 %cmp.i179.i, label %sw.bb39.i.keyctl_instantiate_key_iov.exit.i_crit_edge, label %if.end2.i.i

sw.bb39.i.keyctl_instantiate_key_iov.exit.i_crit_edge: ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %keyctl_instantiate_key_iov.exit.i

if.end2.i.i:                                      ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i180.i = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %arg2, ptr noundef nonnull %from.i176.i, i32 noundef %arg5) #11
  %47 = ptrtoint ptr %iov.i175.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iov.i175.i, align 4
  call void @kfree(ptr noundef %48) #11
  br label %keyctl_instantiate_key_iov.exit.i

keyctl_instantiate_key_iov.exit.i:                ; preds = %if.end2.i.i, %sw.bb39.i.keyctl_instantiate_key_iov.exit.i_crit_edge
  %retval.0.i181.i = phi i32 [ %call3.i180.i, %if.end2.i.i ], [ %call.i178.i, %sw.bb39.i.keyctl_instantiate_key_iov.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %from.i176.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i175.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i.i) #11
  br label %__do_sys_keyctl.exit

sw.bb41.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = tail call i32 @keyctl_invalidate_key(i32 noundef %arg2) #11
  br label %__do_sys_keyctl.exit

sw.bb43.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call44.i = tail call i32 @keyctl_get_persistent(i32 noundef %arg2, i32 noundef %arg3) #11
  br label %__do_sys_keyctl.exit

sw.bb45.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %49 = inttoptr i32 %arg2 to ptr
  %50 = inttoptr i32 %arg3 to ptr
  %51 = inttoptr i32 %arg5 to ptr
  %call46.i = tail call i32 @keyctl_dh_compute(ptr noundef %49, ptr noundef %50, i32 noundef %arg4, ptr noundef %51) #11
  br label %__do_sys_keyctl.exit

sw.bb47.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %52 = inttoptr i32 %arg3 to ptr
  %53 = inttoptr i32 %arg4 to ptr
  %call48.i = tail call i32 @keyctl_restrict_keyring(i32 noundef %arg2, ptr noundef %52, ptr noundef %53) #11
  br label %__do_sys_keyctl.exit

sw.bb49.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg3)
  %cmp.not.i = icmp eq i32 %arg3, 0
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb49.i.__do_sys_keyctl.exit_crit_edge

sw.bb49.i.__do_sys_keyctl.exit_crit_edge:         ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_keyctl.exit

if.end.i:                                         ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = inttoptr i32 %arg4 to ptr
  %55 = inttoptr i32 %arg5 to ptr
  %call50.i = tail call i32 @keyctl_pkey_query(i32 noundef %arg2, ptr noundef %54, ptr noundef %55) #11
  br label %__do_sys_keyctl.exit

sw.bb51.i:                                        ; preds = %entry.sw.bb51.i_crit_edge, %entry.sw.bb51.i_crit_edge1, %entry.sw.bb51.i_crit_edge2
  %56 = inttoptr i32 %arg2 to ptr
  %57 = inttoptr i32 %arg3 to ptr
  %58 = inttoptr i32 %arg4 to ptr
  %59 = inttoptr i32 %arg5 to ptr
  %call52.i = tail call i32 @keyctl_pkey_e_d_s(i32 noundef %option, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59) #11
  br label %__do_sys_keyctl.exit

sw.bb53.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %60 = inttoptr i32 %arg2 to ptr
  %61 = inttoptr i32 %arg3 to ptr
  %62 = inttoptr i32 %arg4 to ptr
  %63 = inttoptr i32 %arg5 to ptr
  %call54.i = tail call i32 @keyctl_pkey_verify(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63) #11
  br label %__do_sys_keyctl.exit

sw.bb55.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call56.i = tail call i32 @keyctl_keyring_move(i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #11
  br label %__do_sys_keyctl.exit

sw.bb57.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %64 = inttoptr i32 %arg2 to ptr
  %call58.i = tail call i32 @keyctl_capabilities(ptr noundef %64, i32 noundef %arg3) #11
  br label %__do_sys_keyctl.exit

sw.bb59.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call60.i = tail call i32 @keyctl_watch_key(i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4) #11
  br label %__do_sys_keyctl.exit

__do_sys_keyctl.exit:                             ; preds = %sw.bb59.i, %sw.bb57.i, %sw.bb55.i, %sw.bb53.i, %sw.bb51.i, %if.end.i, %sw.bb49.i.__do_sys_keyctl.exit_crit_edge, %sw.bb47.i, %sw.bb45.i, %sw.bb43.i, %sw.bb41.i, %keyctl_instantiate_key_iov.exit.i, %sw.bb37.i, %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %sw.bb29.i, %error.i.i, %set.i.i, %if.end.i170.i.__do_sys_keyctl.exit_crit_edge, %sw.bb27.i.__do_sys_keyctl.exit_crit_edge, %sw.bb25.i, %if.end9.i164.i, %cleanup.i.i, %sw.bb21.i, %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %error2.i.i, %if.then.i153.i, %sw.bb9.i, %sw.bb7.i, %if.end13.i.i, %if.then6.i.i, %if.then.i145.i.__do_sys_keyctl.exit_crit_edge, %sw.bb3.i, %error_name.i.i, %if.then2.i.i, %if.end.i.i, %sw.bb.i.__do_sys_keyctl.exit_crit_edge, %entry.__do_sys_keyctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call60.i, %sw.bb59.i ], [ %call58.i, %sw.bb57.i ], [ %call56.i, %sw.bb55.i ], [ %call54.i, %sw.bb53.i ], [ %call52.i, %sw.bb51.i ], [ %call50.i, %if.end.i ], [ %call48.i, %sw.bb47.i ], [ %call46.i, %sw.bb45.i ], [ %call44.i, %sw.bb43.i ], [ %call42.i, %sw.bb41.i ], [ %retval.0.i181.i, %keyctl_instantiate_key_iov.exit.i ], [ %call38.i, %sw.bb37.i ], [ %call36.i, %sw.bb35.i ], [ %call34.i, %sw.bb33.i ], [ %call32.i, %sw.bb31.i ], [ %call30.i, %sw.bb29.i ], [ %call.i165.i, %sw.bb25.i ], [ %call22.i, %sw.bb21.i ], [ %call20.i, %sw.bb19.i ], [ %call18.i, %sw.bb17.i ], [ %call16.i, %sw.bb15.i ], [ %call14.i, %sw.bb13.i ], [ %call10.i, %sw.bb9.i ], [ %call8.i, %sw.bb7.i ], [ %call4.i, %sw.bb3.i ], [ -22, %sw.bb49.i.__do_sys_keyctl.exit_crit_edge ], [ -95, %entry.__do_sys_keyctl.exit_crit_edge ], [ %4, %if.end.i.i ], [ %1, %sw.bb.i.__do_sys_keyctl.exit_crit_edge ], [ %6, %if.then2.i.i ], [ %ret.0.i142.i, %error_name.i.i ], [ %10, %if.then.i145.i.__do_sys_keyctl.exit_crit_edge ], [ %11, %if.then6.i.i ], [ %ret.0.i149.i, %if.end13.i.i ], [ %18, %if.then.i153.i ], [ %ret.0.i157.i, %error2.i.i ], [ %retval.0.i.i, %cleanup.i.i ], [ %call10.i163.i, %if.end9.i164.i ], [ %ret.0.i172.i, %error.i.i ], [ %conv.i.i, %set.i.i ], [ %conv.i.i, %sw.bb27.i.__do_sys_keyctl.exit_crit_edge ], [ -12, %if.end.i170.i.__do_sys_keyctl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_and_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_key_construction(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__post_watch_notification(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
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
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_get_persistent(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_dh_compute(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_pkey_query(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_pkey_e_d_s(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_pkey_verify(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !94, !96, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/keyctl.c", i32 74, i32 1}
!2 = !{ptr @event_enter__add_key, !1, !"event_enter__add_key", i1 false, i1 false}
!3 = !{ptr @__event_enter__add_key, !1, !"__event_enter__add_key", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__add_key, !1, !"event_exit__add_key", i1 false, i1 false}
!6 = !{ptr @__event_exit__add_key, !1, !"__event_exit__add_key", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__add_key, !1, !"__syscall_meta__add_key", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__add_key, !1, !"__p_syscall_meta__add_key", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/keys/keyctl.c", i32 167, i32 1}
!12 = !{ptr @event_enter__request_key, !11, !"event_enter__request_key", i1 false, i1 false}
!13 = !{ptr @__event_enter__request_key, !11, !"__event_enter__request_key", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__request_key, !11, !"event_exit__request_key", i1 false, i1 false}
!16 = !{ptr @__event_exit__request_key, !11, !"__event_exit__request_key", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__request_key, !11, !"__syscall_meta__request_key", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__request_key, !11, !"__p_syscall_meta__request_key", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/keys/keyctl.c", i32 681, i32 8}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../security/keys/keyctl.c", i32 683, i32 25}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../security/keys/keyctl.c", i32 684, i32 25}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../security/keys/keyctl.c", i32 958, i32 18}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/keys/keyctl.c", i32 959, i32 18}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../security/keys/keyctl.c", i32 1091, i32 49}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../security/keys/keyctl.c", i32 1333, i32 28}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../security/keys/keyctl.c", i32 1393, i32 16}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/keys/keyctl.c", i32 1590, i32 28}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../security/keys/keyctl.c", i32 1654, i32 11}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../security/keys/keyctl.c", i32 1667, i32 11}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../security/keys/keyctl.c", i32 1668, i32 10}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../security/keys/keyctl.c", i32 1869, i32 1}
!49 = !{ptr @event_enter__keyctl, !48, !"event_enter__keyctl", i1 false, i1 false}
!50 = !{ptr @__event_enter__keyctl, !48, !"__event_enter__keyctl", i1 false, i1 false}
!51 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @event_exit__keyctl, !48, !"event_exit__keyctl", i1 false, i1 false}
!53 = !{ptr @__event_exit__keyctl, !48, !"__event_exit__keyctl", i1 false, i1 false}
!54 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__syscall_meta__keyctl, !48, !"__syscall_meta__keyctl", i1 false, i1 false}
!56 = !{ptr @__p_syscall_meta__keyctl, !48, !"__p_syscall_meta__keyctl", i1 false, i1 false}
!57 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @types__add_key, !1, !"types__add_key", i1 false, i1 false}
!62 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @args__add_key, !1, !"args__add_key", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/keys/keyctl.c", i32 105, i32 22}
!70 = !{ptr @types__request_key, !11, !"types__request_key", i1 false, i1 false}
!71 = !{ptr @.str.28, !11, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !11, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @args__request_key, !11, !"args__request_key", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../security/keys/internal.h", i32 210, i32 38}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../security/keys/internal.h", i32 199, i32 51}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../security/keys/keyctl.c", i32 1171, i32 28}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/cred.h", i32 286, i32 3}
!96 = !{ptr @init_watch_list.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../include/linux/watch_queue.h", i32 99, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @keyrings_capabilities, !100, !"keyrings_capabilities", i1 false, i1 false}
!100 = !{!"../security/keys/keyctl.c", i32 29, i32 28}
!101 = !{ptr @.str.38, !48, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.39, !48, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @types__keyctl, !48, !"types__keyctl", i1 false, i1 false}
!104 = !{ptr @.str.40, !48, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.41, !48, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.42, !48, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.43, !48, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.44, !48, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @args__keyctl, !48, !"args__keyctl", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2150551419, i64 2150551444}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 3046974}
!123 = !{i64 3047171}
!124 = !{i64 2150532404}
!125 = !{i64 2150552100, i64 2150552125}
!126 = !{i64 2152757722}
!127 = !{i64 2148470455, i64 2148470481, i64 2148470510, i64 2148470544, i64 2148470575, i64 2148470598}
!128 = !{i64 2148467990, i64 2148468016, i64 2148468045, i64 2148468079, i64 2148468110, i64 2148468133}
!129 = !{!"auto-init"}
!130 = !{i64 2148469520, i64 2148469552, i64 2148469581, i64 2148469615, i64 2148469646, i64 2148469669}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2149295504}
!133 = !{i64 2149295770}
!134 = !{i64 2148556442}
!135 = !{i64 2148471175, i64 2148471207, i64 2148471236, i64 2148471270, i64 2148471301, i64 2148471324}
!136 = !{i64 2148556671}
!137 = !{i64 2150548221, i64 2150548246}
