; ModuleID = '/llk/IR_all_yes/kernel/pid_namespace.c_pt.bc'
source_filename = "../kernel/pid_namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+put_pid_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_put_pid_ns\09\09\09\09"
module asm "\09.long\09__crc_put_pid_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22put_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_put_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ctl_path = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.54 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.54 = type { %struct.callback_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.52 }
%union.anon.52 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.55, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@__kstrtab_put_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_put_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_pid_ns to i32), ptr @__kstrtab_put_pid_ns, ptr @__kstrtabns_put_pid_ns }, section "___ksymtab_gpl+put_pid_ns", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@pidns_operations = dso_local constant { %struct.proc_ns_operations, [32 x i8] } { %struct.proc_ns_operations { ptr @.str.2, ptr null, i32 536870912, ptr @pidns_get, ptr @pidns_put, ptr @pidns_install, ptr @pidns_owner, ptr @pidns_get_parent }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pid_for_children\00", [47 x i8] zeroinitializer }, align 32
@pidns_for_children_operations = dso_local constant { %struct.proc_ns_operations, [32 x i8] } { %struct.proc_ns_operations { ptr @.str.3, ptr @.str.2, i32 536870912, ptr @pidns_for_children_get, ptr @pidns_put, ptr @pidns_install, ptr @pidns_owner, ptr @pidns_get_parent }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_pid_namespace__257_461_pid_namespaces_init6 = internal global ptr @pid_namespaces_init, section ".initcall6.init", align 4
@pid_ns_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@pid_cache = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pid_%u\00", [25 x i8] zeroinitializer }, align 32
@pid_caches_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pid_caches_mutex, i64 52), ptr getelementptr (i8, ptr @pid_caches_mutex, i64 52) }, ptr @pid_caches_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pid_caches_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pid_caches_mutex\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pid_namespace\00", [18 x i8] zeroinitializer }, align 32
@kern_path = internal global { [2 x %struct.ctl_path], [24 x i8] } { [2 x %struct.ctl_path] [%struct.ctl_path { ptr @.str.12 }, %struct.ctl_path zeroinitializer], [24 x i8] zeroinitializer }, align 32
@pid_ns_ctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.13, ptr null, i32 4, i16 438, ptr null, ptr @pid_ns_ctl_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @pid_max }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ns_last_pid\00", [20 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@pid_max = external dso_local global i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 19088743, i64 1126301404, i64 2712847316, i64 3454992675]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 431, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"pidns_operations\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 430, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 441, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"pidns_for_children_operations\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 440, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"pid_ns_cachep\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 28, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 378, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"pid_cache\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 30, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 49, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"pid_caches_mutex\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 453, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"kern_path\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 297, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"pid_ns_ctl_table\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 286, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 297, i32 54 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [26 x i8] c"../kernel/pid_namespace.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 288, i32 15 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_pid_namespace__257_461_pid_namespaces_init6, ptr @__ksymtab_put_pid_ns, ptr @.str.2, ptr @pidns_operations, ptr @.str.3, ptr @pidns_for_children_operations, ptr @pid_ns_cachep, ptr @xa_init_flags.__key, ptr @.str.4, ptr @pid_cache, ptr @.str.5, ptr @pid_caches_mutex, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @kern_path, ptr @pid_ns_ctl_table, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidns_operations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidns_for_children_operations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_ns_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_cache to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_caches_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kern_path to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_ns_ctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_pid_ns(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %old_ns) local_unnamed_addr #0 align 64 {
entry:
  %name.i.i = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp.not.i = icmp eq ptr %old_ns, @init_pid_ns
  br i1 %cmp.not.i, label %if.then.return_crit_edge, label %if.then.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i:                                        ; preds = %if.then
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %old_ns, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.return_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %return

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %call2 = tail call ptr @task_active_pid_ns(ptr noundef %5) #10
  %cmp.not = icmp eq ptr %call2, %old_ns
  br i1 %cmp.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end
  %level1.i = getelementptr inbounds %struct.pid_namespace, ptr %old_ns, i32 0, i32 5
  %6 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level1.i, align 4
  %add.i = add i32 %7, 1
  %user_ns2.i = getelementptr inbounds %struct.pid_namespace, ptr %old_ns, i32 0, i32 8
  %8 = ptrtoint ptr %user_ns2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns2.i, align 4
  %call.i = tail call zeroext i1 @in_userns(ptr noundef %9, ptr noundef %user_ns) #10
  br i1 %call.i, label %if.end.i, label %if.end5.out.i_crit_edge

if.end5.out.i_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 32
  br i1 %cmp.i, label %if.end.i.out.i_crit_edge, label %if.end4.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %10 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred.i.i, align 16
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %euid.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  %call1.i.i = tail call ptr @inc_ucount(ptr noundef %user_ns, [1 x i32] %.fca.0.insert.i.i, i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %if.end4.i.out.i_crit_edge, label %if.end7.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end7.i:                                        ; preds = %if.end4.i
  %17 = load ptr, ptr @pid_ns_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3520) #10
  %cmp9.i = icmp eq ptr %call.i.i, null
  br i1 %cmp9.i, label %if.end7.i.out_dec.i_crit_edge, label %if.end11.i

if.end7.i.out_dec.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dec.i

if.end11.i:                                       ; preds = %if.end7.i
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.xarray, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.xarray, ptr %call.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %xa_head.i.i.i.i, align 8
  %idr_base.i.i.i = getelementptr inbounds %struct.idr, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.idr, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idr_next.i.i.i, align 8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @pid_cache, i32 0, i32 %7
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %name.i.i) #10
  %22 = call ptr @memset(ptr %name.i.i, i32 255, i32 15)
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %create_pid_cachep.exit.thread.i

create_pid_cachep.exit.thread.i:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %name.i.i) #10
  %pid_cachep74.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %pid_cachep74.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %pid_cachep74.i, align 4
  br label %if.end16.i

if.end.i.i:                                       ; preds = %if.end11.i
  %add.i.i = add nsw i32 %7, 2
  %call.i57.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i, i32 noundef 15, ptr noundef nonnull @.str.5, i32 noundef %add.i.i) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @pid_caches_mutex, i32 noundef 0) #10
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i.create_pid_cachep.exit.i_crit_edge

if.end.i.i.create_pid_cachep.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_pid_cachep.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = shl nuw nsw i32 %add.i, 3
  %add1.i.i = add nuw nsw i32 %mul.i.i, 140
  %call5.i.i = call ptr @kmem_cache_create(ptr noundef nonnull %name.i.i, i32 noundef %add1.i.i, i32 noundef 0, i32 noundef 67117056, ptr noundef null) #10
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %arrayidx.i.i, align 4
  br label %create_pid_cachep.exit.i

create_pid_cachep.exit.i:                         ; preds = %if.then3.i.i, %if.end.i.i.create_pid_cachep.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @pid_caches_mutex) #10
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %name.i.i) #10
  %pid_cachep.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %pid_cachep.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pid_cachep.i, align 4
  %cmp14.i = icmp eq ptr %30, null
  br i1 %cmp14.i, label %create_pid_cachep.exit.i.out_free_idr.i_crit_edge, label %create_pid_cachep.exit.i.if.end16.i_crit_edge

create_pid_cachep.exit.i.if.end16.i_crit_edge:    ; preds = %create_pid_cachep.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

create_pid_cachep.exit.i.out_free_idr.i_crit_edge: ; preds = %create_pid_cachep.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_idr.i

if.end16.i:                                       ; preds = %create_pid_cachep.exit.i.if.end16.i_crit_edge, %create_pid_cachep.exit.thread.i
  %ns17.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ns17.i, i32 noundef 4) #10
  %32 = ptrtoint ptr %ns17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %ns17.i, align 8
  %inum.i.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 11, i32 2
  %call.i58.i = call i32 @proc_alloc_inum(ptr noundef %inum.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool19.not.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.out_free_idr.i_crit_edge

if.end16.i.out_free_idr.i_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_idr.i

if.end21.i:                                       ; preds = %if.end16.i
  %ops.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pidns_operations, ptr %ops.i, align 4
  %count.i9 = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 11, i32 3
  %call.i.i.i59.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i9, i32 noundef 4) #10
  %34 = ptrtoint ptr %count.i9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %count.i9, align 4
  %level24.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %level24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %level24.i, align 8
  %cmp.not.i.i = icmp eq ptr %old_ns, @init_pid_ns
  br i1 %cmp.not.i.i, label %if.end21.i.get_pid_ns.exit.i_crit_edge, label %if.then.i.i

if.end21.i.get_pid_ns.exit.i_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit.i

if.then.i.i:                                      ; preds = %if.end21.i
  %count.i.i = getelementptr inbounds %struct.pid_namespace, ptr %old_ns, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !60

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid_ns.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid_ns.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %get_pid_ns.exit.i

get_pid_ns.exit.i:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid_ns.exit.i_crit_edge, %if.end21.i.get_pid_ns.exit.i_crit_edge
  %parent.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %old_ns, ptr %parent.i, align 4
  %tobool.not.i61.i = icmp eq ptr %user_ns, null
  br i1 %tobool.not.i61.i, label %get_pid_ns.exit.i.get_user_ns.exit.i_crit_edge, label %if.then.i66.i

get_pid_ns.exit.i.get_user_ns.exit.i_crit_edge:   ; preds = %get_pid_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_user_ns.exit.i

if.then.i66.i:                                    ; preds = %get_pid_ns.exit.i
  %count.i62.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i63.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i62.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %count.i62.i, i32 1, i32 3, i32 1) #10
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i62.i, ptr %count.i62.i, i32 1, ptr elementtype(i32) %count.i62.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i64.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i64.i)
  %tobool1.not.i.i.i.i65.i = icmp eq i32 %asmresult.i.i.i.i.i.i64.i, 0
  br i1 %tobool1.not.i.i.i.i65.i, label %if.then.i66.i.if.end15.sink.split.i.i.i.i71.i_crit_edge, label %if.else.i.i.i.i69.i, !prof !60

if.then.i66.i.if.end15.sink.split.i.i.i.i71.i_crit_edge: ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i71.i

if.else.i.i.i.i69.i:                              ; preds = %if.then.i66.i
  %add.i.i.i.i67.i = add i32 %asmresult.i.i.i.i.i.i64.i, 1
  %40 = or i32 %add.i.i.i.i67.i, %asmresult.i.i.i.i.i.i64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i68.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i68.i, label %if.else.i.i.i.i69.i.get_user_ns.exit.i_crit_edge, label %if.else.i.i.i.i69.i.if.end15.sink.split.i.i.i.i71.i_crit_edge, !prof !61

if.else.i.i.i.i69.i.if.end15.sink.split.i.i.i.i71.i_crit_edge: ; preds = %if.else.i.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i71.i

if.else.i.i.i.i69.i.get_user_ns.exit.i_crit_edge: ; preds = %if.else.i.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_user_ns.exit.i

if.end15.sink.split.i.i.i.i71.i:                  ; preds = %if.else.i.i.i.i69.i.if.end15.sink.split.i.i.i.i71.i_crit_edge, %if.then.i66.i.if.end15.sink.split.i.i.i.i71.i_crit_edge
  %.sink.i.i.i.i70.i = phi i32 [ 2, %if.then.i66.i.if.end15.sink.split.i.i.i.i71.i_crit_edge ], [ 1, %if.else.i.i.i.i69.i.if.end15.sink.split.i.i.i.i71.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i62.i, i32 noundef %.sink.i.i.i.i70.i) #10
  br label %get_user_ns.exit.i

get_user_ns.exit.i:                               ; preds = %if.end15.sink.split.i.i.i.i71.i, %if.else.i.i.i.i69.i.get_user_ns.exit.i_crit_edge, %get_pid_ns.exit.i.get_user_ns.exit.i_crit_edge
  %user_ns27.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %user_ns27.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %user_ns, ptr %user_ns27.i, align 4
  %ucounts28.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %ucounts28.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call1.i.i, ptr %ucounts28.i, align 8
  %pid_allocated.i = getelementptr inbounds %struct.pid_namespace, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %pid_allocated.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2147483648, ptr %pid_allocated.i, align 4
  br label %return

out_free_idr.i:                                   ; preds = %if.end16.i.out_free_idr.i_crit_edge, %create_pid_cachep.exit.i.out_free_idr.i_crit_edge
  %err.0.i = phi i32 [ -12, %create_pid_cachep.exit.i.out_free_idr.i_crit_edge ], [ %call.i58.i, %if.end16.i.out_free_idr.i_crit_edge ]
  call void @idr_destroy(ptr noundef nonnull %call.i.i) #10
  %44 = load ptr, ptr @pid_ns_cachep, align 4
  call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %call.i.i) #10
  br label %out_dec.i

out_dec.i:                                        ; preds = %out_free_idr.i, %if.end7.i.out_dec.i_crit_edge
  %err.1.i = phi i32 [ -12, %if.end7.i.out_dec.i_crit_edge ], [ %err.0.i, %out_free_idr.i ]
  call void @dec_ucount(ptr noundef nonnull %call1.i.i, i32 noundef 1) #10
  br label %out.i

out.i:                                            ; preds = %out_dec.i, %if.end4.i.out.i_crit_edge, %if.end.i.out.i_crit_edge, %if.end5.out.i_crit_edge
  %err.2.i = phi i32 [ -28, %if.end.i.out.i_crit_edge ], [ %err.1.i, %out_dec.i ], [ -28, %if.end4.i.out.i_crit_edge ], [ -22, %if.end5.out.i_crit_edge ]
  %45 = inttoptr i32 %err.2.i to ptr
  br label %return

return:                                           ; preds = %out.i, %get_user_ns.exit.i, %if.end.return_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi ptr [ @init_pid_ns, %if.then.return_crit_edge ], [ %old_ns, %if.else.i.i.i.i.return_crit_edge ], [ %old_ns, %if.end15.sink.split.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.end.return_crit_edge ], [ %45, %out.i ], [ %call.i.i, %get_user_ns.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_pid_ns(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not6 = icmp eq ptr %ns, @init_pid_ns
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %ns.addr.07 = phi ptr [ %1, %if.end.while.body_crit_edge ], [ %ns, %entry.while.body_crit_edge ]
  %parent1 = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.07, i32 0, i32 6
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %count = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.07, i32 0, i32 11, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %while.body
  %asmresult.i.i.i.i.i.i.le = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.le)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.le, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.while.end_crit_edge, label %if.then10.i.i.i, !prof !61

if.end5.i.i.i.while.end_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #10
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %inum.i = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.07, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inum.i, align 4
  tail call void @proc_free_inum(i32 noundef %4) #10
  tail call void @idr_destroy(ptr noundef %ns.addr.07) #10
  %rcu.i = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.07, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @delayed_free_pidns) #10
  %cmp.not = icmp eq ptr %1, @init_pid_ns
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zap_pid_ns_processes(ptr noundef %pid_ns) #0 align 64 {
entry:
  %nr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 59
  %4 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  %cond = select i1 %cmp.i, i32 1, i32 2
  tail call void @disable_pid_allocation(ptr noundef %pid_ns) #10
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %6 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #10
  %8 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sighand, align 4
  %arrayidx = getelementptr %struct.sighand_struct, ptr %9, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 1 to ptr), ptr %arrayidx, align 4
  %11 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %nr, align 4
  %call6 = call ptr @idr_get_next(ptr noundef %pid_ns, ptr noundef nonnull %nr) #10
  %tobool.not190 = icmp eq ptr %call6, null
  br i1 %tobool.not190, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pid.0191 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %call6, %rcu_read_lock.exit.for.body_crit_edge ]
  %call7 = call ptr @pid_task(ptr noundef nonnull %pid.0191, i32 noundef 0) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call7, i32 0, i32 116, i32 1
  %17 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signal.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 @group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %call7, i32 noundef 4) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %nr, align 4
  %call13 = call ptr @idr_get_next(ptr noundef %pid_ns, ptr noundef nonnull %nr) #10
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #10
  %call.i181 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i181, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i184

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i184:                               ; preds = %for.end
  %call1.i182 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %tobool.not.i183 = icmp eq i32 %call1.i182, 0
  br i1 %tobool.not.i183, label %land.lhs.true.i184.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i186

land.lhs.true.i184.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i186:                              ; preds = %land.lhs.true.i184
  %.b4.i185 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i185, label %land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge, label %if.then.i187

land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i187:                                     ; preds = %land.lhs.true2.i186
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i187, %land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i184.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %22 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i188 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i188 to ptr
  %preempt_count.i.i.i.i189 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i189, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i189, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %rcu_read_unlock.exit
  call void @_clear_bit(i32 noundef 0, ptr noundef %1) #10
  %call15 = call i32 @kernel_wait4(i32 noundef -1, ptr noundef null, i32 noundef 1073741824, ptr noundef null) #10
  %cmp.not = icmp eq i32 %call15, -10
  br i1 %cmp.not, label %for.cond16.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.cond16.preheader:                             ; preds = %do.body
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %pid_ns, i32 0, i32 2
  br label %__here

__here:                                           ; preds = %if.end86, %for.cond16.preheader
  %26 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task1, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@zap_pid_ns_processes, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  %31 = ptrtoint ptr %pid_allocated to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid_allocated, align 4
  %cmp84 = icmp eq i32 %32, %cond
  br i1 %cmp84, label %__here138, label %if.end86

if.end86:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  call void @schedule() #10
  br label %__here

__here138:                                        ; preds = %__here
  %33 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task1, align 8
  %task_state_change142 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change142 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@zap_pid_ns_processes, %__here138) to i32), ptr %task_state_change142, align 4
  %36 = load ptr, ptr %task1, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  %reboot = getelementptr inbounds %struct.pid_namespace, ptr %pid_ns, i32 0, i32 10
  %38 = ptrtoint ptr %reboot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reboot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool159.not = icmp eq i32 %39, 0
  br i1 %tobool159.not, label %__here138.if.end164_crit_edge, label %if.then160

__here138.if.end164_crit_edge:                    ; preds = %__here138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then160:                                       ; preds = %__here138
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task1, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 111
  %42 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %signal, align 16
  %group_exit_code = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %group_exit_code to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %group_exit_code, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %__here138.if.end164_crit_edge
  call void @acct_exit_ns(ptr noundef %pid_ns) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_pid_allocation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_wait4(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_exit_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reboot_pid_ns(ptr noundef %pid_ns, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pid_ns, @init_pid_ns
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.return_crit_edge [
    i32 -1582119980, label %if.end.sw.epilog_crit_edge
    i32 19088743, label %if.end.sw.epilog_crit_edge6
    i32 1126301404, label %if.end.sw.bb1_crit_edge
    i32 -839974621, label %if.end.sw.bb1_crit_edge7
  ]

if.end.sw.bb1_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.end.sw.epilog_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge6
  %.sink = phi i32 [ 2, %sw.bb1 ], [ 1, %if.end.sw.epilog_crit_edge ], [ 1, %if.end.sw.epilog_crit_edge6 ]
  %reboot2 = getelementptr inbounds %struct.pid_namespace, ptr %pid_ns, i32 0, i32 10
  %1 = ptrtoint ptr %reboot2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %reboot2, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %pid_ns, i32 0, i32 3
  %2 = ptrtoint ptr %child_reaper to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child_reaper, align 4
  %call = tail call i32 @send_sig(i32 noundef 9, ptr noundef %3, i32 noundef 1) #10
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #10
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef 0) #13
  unreachable

return:                                           ; preds = %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pidns_get(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @task_active_pid_ns(ptr noundef %task) #10
  %tobool.not = icmp eq ptr %call, null
  %cmp.not.i = icmp eq ptr %call, @init_pid_ns
  %or.cond = or i1 %tobool.not, %cmp.not.i
  br i1 %or.cond, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then.i7

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i7:                                       ; preds = %rcu_read_lock.exit
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %call, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.i7.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i8, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %6 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i15 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %ns3 = getelementptr inbounds %struct.pid_namespace, ptr %call, i32 0, i32 11
  %spec.select = select i1 %tobool.not, ptr null, ptr %ns3
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pidns_put(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ns, i32 -104
  tail call void @put_pid_ns(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidns_install(ptr nocapture noundef readonly %nsset, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 1
  %0 = ptrtoint ptr %nsproxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %call2 = tail call ptr @task_active_pid_ns(ptr noundef %5) #10
  %add.ptr.i = getelementptr i8, ptr %ns, i32 -104
  %user_ns = getelementptr i8, ptr %ns, i32 -12
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %call4 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #10
  br i1 %call4, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cred = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 3
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 4
  %user_ns5 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns5, align 4
  %call6 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 21) #10
  br i1 %call6, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %level = getelementptr i8, ptr %ns, i32 -24
  %12 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level, align 4
  %level7 = getelementptr inbounds %struct.pid_namespace, ptr %call2, i32 0, i32 5
  %14 = ptrtoint ptr %level7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1231 = icmp ugt i32 %17, %15
  br i1 %cmp1231, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ancestor.032 = phi ptr [ %19, %while.body.while.body_crit_edge ], [ %add.ptr.i, %while.cond.preheader.while.body_crit_edge ]
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %ancestor.032, i32 0, i32 6
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 4
  %level10 = getelementptr inbounds %struct.pid_namespace, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %level10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level10, align 4
  %cmp12 = icmp ugt i32 %21, %15
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %ancestor.0.lcssa = phi ptr [ %add.ptr.i, %while.cond.preheader.while.end_crit_edge ], [ %19, %while.body.while.end_crit_edge ]
  %cmp13.not = icmp eq ptr %ancestor.0.lcssa, %call2
  br i1 %cmp13.not, label %if.end15, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %while.end
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %pid_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pid_ns_for_children, align 4
  tail call void @put_pid_ns(ptr noundef %23)
  %cmp.not.i = icmp eq ptr %add.ptr.i, @init_pid_ns
  br i1 %cmp.not.i, label %if.end15.get_pid_ns.exit_crit_edge, label %if.then.i

if.end15.get_pid_ns.exit_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit

if.then.i:                                        ; preds = %if.end15
  %count.i = getelementptr i8, ptr %ns, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, %if.end15.get_pid_ns.exit_crit_edge
  %26 = ptrtoint ptr %pid_ns_for_children to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %pid_ns_for_children, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_pid_ns.exit, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_pid_ns.exit ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pidns_owner(ptr nocapture noundef readonly %ns) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr i8, ptr %ns, i32 -12
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pidns_get_parent(ptr nocapture noundef readonly %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @task_active_pid_ns(ptr noundef %3) #10
  %parent = getelementptr i8, ptr %ns, i32 -20
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool.not13 = icmp eq ptr %5, null
  br i1 %tobool.not13, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end5.if.end_crit_edge, %entry.if.end_crit_edge
  %p.014 = phi ptr [ %7, %if.end5.if.end_crit_edge ], [ %5, %entry.if.end_crit_edge ]
  %cmp = icmp eq ptr %p.014, %call1
  br i1 %cmp, label %for.end, label %if.end5

if.end5:                                          ; preds = %if.end
  %parent6 = getelementptr inbounds %struct.pid_namespace, ptr %p.014, i32 0, i32 6
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent6, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end5.if.end_crit_edge

if.end5.if.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %if.end
  %cmp.not.i = icmp eq ptr %5, @init_pid_ns
  br i1 %cmp.not.i, label %for.end.get_pid_ns.exit_crit_edge, label %if.then.i

for.end.get_pid_ns.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit

if.then.i:                                        ; preds = %for.end
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %5, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, %for.end.get_pid_ns.exit_crit_edge
  %ns8 = getelementptr inbounds %struct.pid_namespace, ptr %5, i32 0, i32 11
  br label %cleanup

cleanup:                                          ; preds = %get_pid_ns.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ns8, %get_pid_ns.exit ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pidns_for_children_get(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 110
  %0 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pid_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_ns_for_children, align 4
  %cmp.not.i = icmp eq ptr %3, @init_pid_ns
  br i1 %cmp.not.i, label %if.end.thread21, label %if.then.i

if.end.thread21:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  br label %if.then3

if.then.i:                                        ; preds = %if.then
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !61

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.thread21
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #10
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %child_reaper to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child_reaper, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then5, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_pid_ns(ptr noundef nonnull %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  %ns.1 = phi ptr [ %3, %if.then3.if.end6_crit_edge ], [ null, %if.then5 ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #10
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge, %if.end.thread
  %ns.2 = phi ptr [ %ns.1, %if.end6 ], [ null, %if.end.if.end7_crit_edge ], [ null, %if.end.thread ]
  %tobool8.not = icmp eq ptr %ns.2, null
  %ns9 = getelementptr inbounds %struct.pid_namespace, ptr %ns.2, i32 0, i32 11
  %spec.select = select i1 %tobool8.not, ptr null, ptr %ns9
  ret ptr %spec.select
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pid_namespaces_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 120, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #10
  store ptr %call, ptr @pid_ns_cachep, align 4
  %call1 = tail call ptr @register_sysctl_paths(ptr noundef nonnull @kern_path, ptr noundef nonnull @pid_ns_ctl_table) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @in_userns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_free_pidns(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucounts = getelementptr i8, ptr %p, i32 36
  %0 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucounts, align 4
  tail call void @dec_ucount(ptr noundef %1, i32 noundef 1) #10
  %user_ns = getelementptr i8, ptr %p, i32 32
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.put_user_ns.exit_crit_edge, label %land.lhs.true.i

entry.put_user_ns.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !63
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #10
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @__put_user_ns(ptr noundef nonnull %3) #10
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %entry.put_user_ns.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %p, i32 -60
  %5 = load ptr, ptr @pid_ns_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_paths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pid_ns_ctl_handler(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp = alloca %struct.ctl_table, align 4
  %next = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @task_active_pid_ns(ptr noundef %3) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #10
  %4 = call ptr @memcpy(ptr %tmp, ptr %table, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %user_ns = getelementptr inbounds %struct.pid_namespace, ptr %call1, i32 0, i32 8
  %5 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns, align 4
  %call.i = tail call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef 40) #10
  br i1 %call.i, label %land.lhs.true.if.end_crit_edge, label %checkpoint_restore_ns_capable.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

checkpoint_restore_ns_capable.exit:               ; preds = %land.lhs.true
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef 21) #10
  br i1 %call1.i, label %checkpoint_restore_ns_capable.exit.if.end_crit_edge, label %checkpoint_restore_ns_capable.exit.cleanup_crit_edge

checkpoint_restore_ns_capable.exit.cleanup_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

checkpoint_restore_ns_capable.exit.if.end_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %checkpoint_restore_ns_capable.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %idr_next.i = getelementptr inbounds %struct.idr, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %idr_next.i, align 4
  %sub = add i32 %8, -1
  %9 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %next, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %tmp, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %next, ptr %data, align 4
  %call4 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %tmp, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %brmerge = or i1 %tobool.not, %tobool5.not
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next, align 4
  %add = add i32 %12, 1
  %13 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %add, ptr %idr_next.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %checkpoint_restore_ns_capable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %checkpoint_restore_ns_capable.exit.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_put_pid_ns, !1, !"__ksymtab_put_pid_ns", i1 false, i1 false}
!1 = !{!"../kernel/pid_namespace.c", i32 164, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/pid_namespace.c", i32 244, i32 3}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/pid_namespace.c", i32 249, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/pid_namespace.c", i32 431, i32 11}
!9 = !{ptr @pidns_operations, !10, !"pidns_operations", i1 false, i1 false}
!10 = !{!"../kernel/pid_namespace.c", i32 430, i32 33}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/pid_namespace.c", i32 441, i32 11}
!13 = !{ptr @pidns_for_children_operations, !14, !"pidns_for_children_operations", i1 false, i1 false}
!14 = !{!"../kernel/pid_namespace.c", i32 440, i32 33}
!15 = !{ptr @__initcall__kmod_pid_namespace__257_461_pid_namespaces_init6, !16, !"__initcall__kmod_pid_namespace__257_461_pid_namespaces_init6", i1 false, i1 false}
!16 = !{!"../kernel/pid_namespace.c", i32 461, i32 1}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../kernel/pid_namespace.c", i32 63, i32 24}
!19 = !{ptr @pid_ns_cachep, !20, !"pid_ns_cachep", i1 false, i1 false}
!20 = !{!"../kernel/pid_namespace.c", i32 28, i32 27}
!21 = !{ptr @xa_init_flags.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/pid_namespace.c", i32 49, i32 31}
!26 = !{ptr @pid_cache, !27, !"pid_cache", i1 false, i1 false}
!27 = !{!"../kernel/pid_namespace.c", i32 30, i32 27}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/pid_namespace.c", i32 27, i32 8}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pid_caches_mutex, !29, !"pid_caches_mutex", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/pid_namespace.c", i32 453, i32 18}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/pid_namespace.c", i32 297, i32 54}
!43 = !{ptr @kern_path, !44, !"kern_path", i1 false, i1 false}
!44 = !{!"../kernel/pid_namespace.c", i32 297, i32 24}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/pid_namespace.c", i32 288, i32 15}
!47 = !{ptr @pid_ns_ctl_table, !48, !"pid_ns_ctl_table", i1 false, i1 false}
!48 = !{!"../kernel/pid_namespace.c", i32 286, i32 25}
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
!59 = !{i64 2148312927, i64 2148312959, i64 2148312988, i64 2148313022, i64 2148313053, i64 2148313076}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2148400952}
!63 = !{i64 2148315392, i64 2148315424, i64 2148315453, i64 2148315487, i64 2148315518, i64 2148315541}
!64 = !{i64 2149490756}
!65 = !{i64 2149179927}
!66 = !{i64 2149180193}
!67 = !{i64 2154919645}
