; ModuleID = '/llk/IR_all_yes/fs/afs/fs_probe.c_pt.bc'
source_filename = "../fs/afs/fs_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.afs_call = type { ptr, ptr, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.iov_iter, ptr, ptr, %union.anon.148, ptr, %union.anon.149, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, %union.anon.168, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.22, %union.anon.81 }
%union.anon.22 = type { ptr }
%union.anon.81 = type { i64 }
%union.anon.148 = type { [1 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.149 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%union.anon.168 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_server = type { %struct.callback_head, %union.anon.145, ptr, ptr, %struct.rb_node, ptr, ptr, %struct.list_head, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.work_struct, ptr, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.rwlock_t, i32, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.146 }
%union.anon.145 = type { %struct.afs_uuid }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.146 = type { i32, i32, i16, i8 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.0 }
%union.anon.0 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.anon.169 = type { i32, i32 }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_server_list = type { [3 x i64], %struct.refcount_struct, i8, i8, i16, i32, %struct.rwlock_t, [0 x %struct.afs_server_entry] }
%struct.afs_server_entry = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_fileserver_probe_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%pU,%u)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"afs_fileserver_probe_result\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/fs_probe.c\00", [46 x i8] zeroinitializer }, align 32
@afs_fileserver_probe_result._entry_ptr = internal global ptr @afs_fileserver_probe_result._entry, section ".printk_index", align 4
@afs_fileserver_probe_result._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%-6.6s]     probe %pU [%u] %pISpc rtt=%u ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_fileserver_probe_result._entry_ptr.5 = internal global ptr @afs_fileserver_probe_result._entry.3, section ".printk_index", align 4
@afs_fs_probe_fileserver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%-6.6s] ==> %s(%pU)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_fs_probe_fileserver\00", [40 x i8] zeroinitializer }, align 32
@afs_fs_probe_fileserver._entry_ptr = internal global ptr @afs_fs_probe_fileserver._entry, section ".printk_index", align 4
@afs_fs_probe_fileserver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@afs_wait_for_fs_probes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%u,%lx)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_wait_for_fs_probes\00", [41 x i8] zeroinitializer }, align 32
@afs_wait_for_fs_probes._entry_ptr = internal global ptr @afs_wait_for_fs_probes._entry, section ".printk_index", align 4
@afs_wq = external dso_local local_unnamed_addr global ptr, align 4
@afs_fs_probe_dispatcher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_fs_probe_dispatcher\00", [40 x i8] zeroinitializer }, align 32
@afs_fs_probe_dispatcher._entry_ptr = internal global ptr @afs_fs_probe_dispatcher._entry, section ".printk_index", align 4
@afs_fs_probe_dispatcher._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] <== %s() [none]\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_fs_probe_dispatcher._entry_ptr.16 = internal global ptr @afs_fs_probe_dispatcher._entry.14, section ".printk_index", align 4
@afs_fs_probe_dispatcher._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     probe %pU\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_fs_probe_dispatcher._entry_ptr.19 = internal global ptr @afs_fs_probe_dispatcher._entry.17, section ".printk_index", align 4
@afs_fs_probe_dispatcher._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [requeue]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_fs_probe_dispatcher._entry_ptr.22 = internal global ptr @afs_fs_probe_dispatcher._entry.20, section ".printk_index", align 4
@afs_fs_probe_dispatcher._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%-6.6s] <== %s() [timer]\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_fs_probe_dispatcher._entry_ptr.25 = internal global ptr @afs_fs_probe_dispatcher._entry.23, section ".printk_index", align 4
@afs_fs_probe_dispatcher._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() [quiesce]\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_fs_probe_dispatcher._entry_ptr.28 = internal global ptr @afs_fs_probe_dispatcher._entry.26, section ".printk_index", align 4
@__tracepoint_afs_io_error = external dso_local global %struct.tracepoint, align 4
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_io_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_done_one_fs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.32, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_done_one_fs_probe\00", [42 x i8] zeroinitializer }, align 32
@afs_done_one_fs_probe._entry_ptr = internal global ptr @afs_done_one_fs_probe._entry, section ".printk_index", align 4
@afs_fs_probe_not_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.33, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_fs_probe_not_done\00", [42 x i8] zeroinitializer }, align 32
@afs_fs_probe_not_done._entry_ptr = internal global ptr @afs_fs_probe_not_done._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967193, i64 4294967232, i64 4294967284]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 65426, i64 65474]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 109, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 184, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 202, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 205, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 242, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 372, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 375, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 409, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 422, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 426, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 429, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1174, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 108, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 63, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [21 x i8] c"../fs/afs/fs_probe.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 82, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @afs_done_one_fs_probe._entry, ptr @afs_done_one_fs_probe._entry_ptr, ptr @afs_fileserver_probe_result._entry, ptr @afs_fileserver_probe_result._entry.3, ptr @afs_fileserver_probe_result._entry_ptr, ptr @afs_fileserver_probe_result._entry_ptr.5, ptr @afs_fs_probe_dispatcher._entry, ptr @afs_fs_probe_dispatcher._entry.14, ptr @afs_fs_probe_dispatcher._entry.17, ptr @afs_fs_probe_dispatcher._entry.20, ptr @afs_fs_probe_dispatcher._entry.23, ptr @afs_fs_probe_dispatcher._entry.26, ptr @afs_fs_probe_dispatcher._entry_ptr, ptr @afs_fs_probe_dispatcher._entry_ptr.16, ptr @afs_fs_probe_dispatcher._entry_ptr.19, ptr @afs_fs_probe_dispatcher._entry_ptr.22, ptr @afs_fs_probe_dispatcher._entry_ptr.25, ptr @afs_fs_probe_dispatcher._entry_ptr.28, ptr @afs_fs_probe_fileserver._entry, ptr @afs_fs_probe_fileserver._entry_ptr, ptr @afs_fs_probe_not_done._entry, ptr @afs_fs_probe_not_done._entry_ptr, ptr @afs_wait_for_fs_probes._entry, ptr @afs_wait_for_fs_probes._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fileserver_probe_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fileserver_probe_result._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_fileserver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_fs_probes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_dispatcher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_dispatcher._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_dispatcher._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_dispatcher._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_dispatcher._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_dispatcher._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_done_one_fs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_fs_probe_not_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fileserver_probe_result(ptr nocapture noundef readonly %call) local_unnamed_addr #0 align 64 {
entry:
  %rtt_us = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alist1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %alist1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alist1, align 4
  %server2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %server2, align 8
  %addr_ix = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 30
  %4 = ptrtoint ptr %addr_ix to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_ix, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtt_us) #9
  %6 = ptrtoint ptr %rtt_us to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rtt_us, align 4
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !82

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %14 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %conv) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %probe_lock = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %probe_lock) #9
  %15 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 0, label %do.end9.responded52.sink.split_crit_edge
    i32 -103, label %sw.bb11
    i32 -12, label %do.end9.sw.bb20_crit_edge
    i32 -64, label %do.end9.sw.bb20_crit_edge204
  ]

do.end9.sw.bb20_crit_edge204:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

do.end9.sw.bb20_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

do.end9.responded52.sink.split_crit_edge:         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %responded52.sink.split

sw.bb11:                                          ; preds = %do.end9
  %responded = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 3
  %16 = ptrtoint ptr %responded to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %responded, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then13, label %sw.bb11.responded52_crit_edge

sw.bb11.responded52_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %responded52

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %abort_code = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %17 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %abort_code, align 4
  %abort_code15 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 1
  %19 = ptrtoint ptr %abort_code15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %abort_code15, align 4
  br label %responded52.sink.split

sw.bb20:                                          ; preds = %do.end9.sw.bb20_crit_edge, %do.end9.sw.bb20_crit_edge204
  %responded21 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %responded21) #9
  %local_failure = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 3
  %20 = ptrtoint ptr %local_failure to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load23 = load i8, ptr %local_failure, align 2
  %bf.set = or i8 %bf.load23, 16
  store i8 %bf.set, ptr %local_failure, align 2
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %21 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %22, i32 noundef %8)
  br label %out

sw.default:                                       ; preds = %do.end9
  %responded25 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %responded25) #9
  %failed = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %failed) #9
  %responded27 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 3
  %23 = ptrtoint ptr %responded27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load28 = load i8, ptr %responded27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %bf.cast30.not = icmp sgt i8 %bf.load28, -1
  br i1 %bf.cast30.not, label %land.lhs.true, label %sw.default.if.end50_crit_edge

sw.default.if.end50_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %sw.default
  %error32 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 2
  %24 = ptrtoint ptr %error32 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %error32, align 8
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %25, label %land.lhs.true.if.end50_crit_edge [
    i16 0, label %land.lhs.true.if.then46_crit_edge
    i16 -110, label %land.lhs.true.if.then46_crit_edge205
    i16 -62, label %land.lhs.true.if.then46_crit_edge206
  ]

land.lhs.true.if.then46_crit_edge206:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

land.lhs.true.if.then46_crit_edge205:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then46:                                        ; preds = %land.lhs.true.if.then46_crit_edge, %land.lhs.true.if.then46_crit_edge205, %land.lhs.true.if.then46_crit_edge206
  %conv47 = trunc i32 %8 to i16
  %27 = ptrtoint ptr %error32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv47, ptr %error32, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %land.lhs.true.if.end50_crit_edge, %sw.default.if.end50_crit_edge
  %debug_id51 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %28 = ptrtoint ptr %debug_id51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_id51, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %29, i32 noundef %8)
  br label %out

responded52.sink.split:                           ; preds = %if.then13, %do.end9.responded52.sink.split_crit_edge
  %.sink = phi i16 [ -103, %if.then13 ], [ 0, %do.end9.responded52.sink.split_crit_edge ]
  %error18 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 2
  %30 = ptrtoint ptr %error18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %.sink, ptr %error18, align 8
  br label %responded52

responded52:                                      ; preds = %responded52.sink.split, %sw.bb11.responded52_crit_edge
  %failed53 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %failed53) #9
  %service_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %31 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %service_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2500, i16 %32)
  %cmp55 = icmp eq i16 %32, 2500
  %is_yfs = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 3
  %33 = ptrtoint ptr %is_yfs to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load59 = load i8, ptr %is_yfs, align 2
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %responded52
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set61 = or i8 %bf.load59, 64
  %34 = ptrtoint ptr %is_yfs to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set61, ptr %is_yfs, align 2
  %flags = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags) #9
  %35 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %service_id, align 2
  %srx_service = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %conv, i32 1
  %37 = ptrtoint ptr %srx_service to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %srx_service, align 2
  br label %if.end88

if.else:                                          ; preds = %responded52
  %bf.set66 = or i8 %bf.load59, 32
  %38 = ptrtoint ptr %is_yfs to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %bf.set66, ptr %is_yfs, align 2
  %39 = and i8 %bf.load59, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %bf.cast72.not = icmp eq i8 %39, 0
  br i1 %bf.cast72.not, label %if.then73, label %if.else.if.end79_crit_edge

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %flags74 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags74) #9
  %40 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %service_id, align 2
  %srx_service78 = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %conv, i32 1
  %42 = ptrtoint ptr %srx_service78 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %srx_service78, align 2
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %if.else.if.end79_crit_edge
  %43 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 42
  %tmp80 = getelementptr inbounds %struct.anon.169, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %tmp80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp80, align 4
  %and81 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %flags86 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 14
  br i1 %tobool82.not, label %if.else85, label %if.then83

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 19, ptr noundef %flags86) #9
  br label %if.end88

if.else85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %flags86) #9
  br label %if.end88

if.end88:                                         ; preds = %if.else85, %if.then83, %if.then57
  %net = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %46 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net, align 4
  %socket = getelementptr inbounds %struct.afs_net, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %socket, align 4
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %50 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rxcall, align 4
  %call89 = call zeroext i1 @rxrpc_kernel_get_srtt(ptr noundef %49, ptr noundef %51, ptr noundef nonnull %rtt_us) #9
  br i1 %call89, label %land.lhs.true91, label %if.end88.do.end104_crit_edge

if.end88.do.end104_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

land.lhs.true91:                                  ; preds = %if.end88
  %52 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rtt_us, align 4
  %probe92 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26
  %54 = ptrtoint ptr %probe92 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %probe92, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp93 = icmp ult i32 %53, %55
  br i1 %cmp93, label %if.then95, label %land.lhs.true91.do.end104_crit_edge

land.lhs.true91.do.end104_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

if.then95:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %probe92 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %probe92, align 8
  %rtt98 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 18
  %57 = ptrtoint ptr %rtt98 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %53, ptr %rtt98, align 8
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %preferred to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %5, ptr %preferred, align 2
  br label %do.end104

do.end104:                                        ; preds = %if.then95, %land.lhs.true91.do.end104_crit_edge, %if.end88.do.end104_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  %responded108 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 26, i32 3
  %59 = ptrtoint ptr %responded108 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load109 = load i8, ptr %responded108, align 2
  %bf.set111 = or i8 %bf.load109, -128
  store i8 %bf.set111, ptr %responded108, align 2
  %responded112 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  call void @_set_bit(i32 noundef %conv, ptr noundef %responded112) #9
  %flags113 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 14
  call void @_set_bit(i32 noundef 0, ptr noundef %flags113) #9
  br label %out

out:                                              ; preds = %do.end104, %if.end50, %sw.bb20
  call void @_raw_spin_unlock(ptr noundef %probe_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %60 = load i32, ptr @afs_debug, align 4
  %and116 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %out.do.end138_crit_edge, label %do.end127, !prof !82

out.do.end138_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end138

do.end127:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %61 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i203 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i203 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task130, align 8
  %comm131 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 101
  %65 = getelementptr inbounds %struct.afs_server, ptr %3, i32 0, i32 1
  %transport = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %conv, i32 4
  %66 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rtt_us, align 4
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm131, ptr noundef %65, i32 noundef %conv, ptr noundef %transport, i32 noundef %67, i32 noundef %8) #12
  br label %do.end138

do.end138:                                        ; preds = %do.end127, %out.do.end138_crit_edge
  %net139 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %68 = ptrtoint ptr %net139 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net139, align 4
  call fastcc void @afs_done_one_fs_probe(ptr noundef %69, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtt_us) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_io_error(i32 noundef %call, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 1), ptr blockaddress(@trace_afs_io_error, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !82

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %call43 = tail call i32 @__traceiter_afs_io_error(ptr noundef null, i32 noundef %call, i32 noundef %error, i32 noundef 2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !82

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_io_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_afs_io_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1194, ptr noundef nonnull @.str.30) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_kernel_get_srtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_done_one_fs_probe(ptr noundef %net, ptr noundef %server) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !82

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.32) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %probe_outstanding = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %probe_outstanding, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %probe_outstanding, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %probe_outstanding, ptr %probe_outstanding, i32 1, ptr elementtype(i32) %probe_outstanding) #9, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %do.end5.if.end8_crit_edge

do.end5.if.end8_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %do.end5
  %responded1.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %responded1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %responded1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  %fs_lock.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18
  %lock.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #9
  %7 = ptrtoint ptr %fs_lock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i.i.i, ptr %fs_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %dep_map.i.i.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 0, i32 0, i32 1
  %9 = tail call ptr @llvm.returnaddress(i32 0) #9
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %10) #9
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  %probe_link.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7
  %fs_probe_slow.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 21
  %prev.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 21, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %probe_link.i, ptr noundef %12, ptr noundef %fs_probe_slow.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %probe_link.i, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %probe_link.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fs_probe_slow.i, ptr %probe_link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %probe_link.i, ptr %12, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then7
  %rtt.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 18
  %17 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %rtt.i, align 8
  %flags.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  %probe_link2.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7
  %fs_probe_fast.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 20
  %prev.i15.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i15.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %probe_link2.i, ptr noundef %19, ptr noundef %fs_probe_fast.i) #9
  br i1 %call.i.i16.i, label %if.end.i.i18.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i18.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %probe_link2.i, ptr %prev.i15.i, align 4
  %21 = ptrtoint ptr %probe_link2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fs_probe_fast.i, ptr %probe_link2.i, align 4
  %prev3.i.i17.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %prev3.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i17.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %probe_link2.i, ptr %19, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i18.i, %if.else.i.if.end.i_crit_edge, %if.end.i.i.i, %if.then.i.if.end.i_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %24 = ptrtoint ptr %fs_lock.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fs_lock.i, align 4
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %fs_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #9
  %live.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 2
  %26 = ptrtoint ptr %live.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %live.i.i, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end8_crit_edge, label %if.end.i.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i.i:                                       ; preds = %if.end.i
  %probed_at.i.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 22
  %28 = ptrtoint ptr %probed_at.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %probed_at.i.i, align 8
  %..i.i = select i1 %bf.cast.not.i, i32 3000, i32 30000
  %add.i.i = add i32 %29, %..i.i
  %servers_outstanding.i.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i.i, ptr %servers_outstanding.i.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i.i) #9, !srcloc !95
  %fs_probe_timer.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 29
  %call.i.i11 = tail call i32 @timer_reduce(ptr noundef %fs_probe_timer.i.i, i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool2.not.i.i = icmp eq i32 %call.i.i11, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end8_crit_edge, label %if.then3.i.i

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i.i.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i.i.i, ptr %servers_outstanding.i.i.i, i32 1, ptr elementtype(i32) %servers_outstanding.i.i.i) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i, label %if.then3.i.i.if.end8_crit_edge

if.then3.i.i.if.end8_crit_edge:                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then.i.i.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i.i.i) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then.i.i.i, %if.then3.i.i.if.end8_crit_edge, %if.end.i.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %do.end5.if.end8_crit_edge
  %probe_wq = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %probe_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_probe_fileserver(ptr noundef %net, ptr noundef %server, ptr noundef %key, i1 noundef zeroext %all) local_unnamed_addr #0 align 64 {
entry:
  %ac = alloca %struct.afs_addr_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ac) #9
  %0 = getelementptr inbounds i8, ptr %ac, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !82

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %7 = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 1
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7, ptr noundef %7) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %fs_lock = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 20
  tail call void @_raw_read_lock(ptr noundef %fs_lock) #9
  %dep_map = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 20, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %land.lhs.true, label %do.end6.do.end18_crit_edge

do.end6.do.end18_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true:                                    ; preds = %do.end6
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @afs_fs_probe_fileserver.__warned, align 1
  br i1 %.b75, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @afs_fs_probe_fileserver.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 206, ptr noundef nonnull @.str.8) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %do.end6.do.end18_crit_edge
  %addresses = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 2
  %8 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addresses, align 8
  %10 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ac, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end18.afs_get_addrlist.exit_crit_edge, label %if.then.i

do.end18.afs_get_addrlist.exit_crit_edge:         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_get_addrlist.exit

if.then.i:                                        ; preds = %do.end18
  %usage.i = getelementptr inbounds %struct.afs_addr_list, ptr %9, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !97

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !82

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_get_addrlist.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %afs_get_addrlist.exit

afs_get_addrlist.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.afs_get_addrlist.exit_crit_edge, %do.end18.afs_get_addrlist.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %fs_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %probed_at = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 22
  %14 = ptrtoint ptr %probed_at to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %probed_at, align 8
  %probe_outstanding = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 24
  br i1 %all, label %cond.true, label %afs_get_addrlist.exit.cond.end_crit_edge

afs_get_addrlist.exit.cond.end_crit_edge:         ; preds = %afs_get_addrlist.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %afs_get_addrlist.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac, align 4
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_addrs, align 1
  %conv = zext i8 %18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %afs_get_addrlist.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 1, %afs_get_addrlist.exit.cond.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %probe_outstanding, i32 noundef 4) #9
  %19 = ptrtoint ptr %probe_outstanding to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %cond, ptr %probe_outstanding, align 4
  %probe = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 26
  %20 = call ptr @memset(ptr %probe, i32 0, i32 12)
  %21 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %probe, align 8
  %22 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ac, align 4
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %preferred, align 2
  %index = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 2
  %26 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp slt i8 %25, 0
  br i1 %cmp, label %cond.end.if.then40_crit_edge, label %lor.lhs.false

cond.end.if.then40_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

lor.lhs.false:                                    ; preds = %cond.end
  %nr_addrs33 = getelementptr inbounds %struct.afs_addr_list, ptr %23, i32 0, i32 4
  %27 = ptrtoint ptr %nr_addrs33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_addrs33, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %28)
  %cmp35.not = icmp uge i8 %25, %28
  %brmerge = or i1 %cmp35.not, %all
  br i1 %brmerge, label %lor.lhs.false.if.then40_crit_edge, label %if.else

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %cond.end.if.then40_crit_edge
  %29 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %index, align 4
  %30 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ac, align 4
  %nr_addrs4577 = getelementptr inbounds %struct.afs_addr_list, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %nr_addrs4577 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_addrs4577, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp4779.not = icmp eq i8 %33, 0
  br i1 %cmp4779.not, label %if.then40.if.end56_crit_edge, label %if.then40.for.body_crit_edge

if.then40.for.body_crit_edge:                     ; preds = %if.then40
  br label %for.body

if.then40.if.end56_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then40.for.body_crit_edge
  %call49 = call zeroext i1 @afs_fs_get_capabilities(ptr noundef %net, ptr noundef %server, ptr noundef nonnull %ac, ptr noundef %key) #9
  br i1 %call49, label %for.body.for.inc_crit_edge, label %if.then50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @afs_fs_probe_not_done(ptr noundef %net, ptr noundef %server, ptr noundef nonnull %ac)
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %index, align 4
  %inc = add i8 %35, 1
  store i8 %inc, ptr %index, align 4
  %conv43 = sext i8 %inc to i32
  %36 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ac, align 4
  %nr_addrs45 = getelementptr inbounds %struct.afs_addr_list, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %nr_addrs45 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nr_addrs45, align 1
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp slt i32 %conv43, %conv46
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.if.end56_crit_edge

for.inc.if.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %lor.lhs.false
  %call53 = call zeroext i1 @afs_fs_get_capabilities(ptr noundef %net, ptr noundef %server, ptr noundef nonnull %ac, ptr noundef %key) #9
  br i1 %call53, label %if.else.if.end56_crit_edge, label %if.then54

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @afs_fs_probe_not_done(ptr noundef %net, ptr noundef %server, ptr noundef nonnull %ac)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.else.if.end56_crit_edge, %for.inc.if.end56_crit_edge, %if.then40.if.end56_crit_edge
  %40 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ac, align 4
  call void @afs_put_addrlist(ptr noundef %41) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ac) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_fs_get_capabilities(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_fs_probe_not_done(ptr noundef %net, ptr noundef %server, ptr nocapture noundef readonly %ac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 4
  %index2 = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac, i32 0, i32 2
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %4 = load i32, ptr @afs_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !82

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.33) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  tail call fastcc void @trace_afs_io_error(i32 noundef 0, i32 noundef -12)
  %probe_lock = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %probe_lock) #9
  %local_failure = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 26, i32 3
  %9 = ptrtoint ptr %local_failure to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %local_failure, align 2
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %local_failure, align 2
  %error = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %if.then12, label %do.end8.if.end15_crit_edge

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -12, ptr %error, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.end8.if.end15_crit_edge
  %conv = sext i8 %3 to i32
  %failed = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %failed) #9
  tail call void @_raw_spin_unlock(ptr noundef %probe_lock) #9
  tail call fastcc void @afs_done_one_fs_probe(ptr noundef %net, ptr noundef %server)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_addrlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_wait_for_fs_probes(ptr nocapture noundef %slist, i32 noundef %untried) #0 align 64 {
entry:
  %untried.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %untried.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %untried, ptr %untried.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !82

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i366 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i366 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %nr_servers = getelementptr inbounds %struct.afs_server_list, ptr %slist, i32 0, i32 2
  %6 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %7 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %untried) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %nr_servers7 = getelementptr inbounds %struct.afs_server_list, ptr %slist, i32 0, i32 2
  %8 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_servers7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp390.not = icmp eq i8 %9, 0
  br i1 %cmp390.not, label %do.end6.lor.lhs.false_crit_edge, label %do.end6.for.body_crit_edge

do.end6.for.body_crit_edge:                       ; preds = %do.end6
  br label %for.body

do.end6.lor.lhs.false_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end6.for.body_crit_edge
  %have_responders.0.off0393 = phi i1 [ %have_responders.1.off0, %for.inc.for.body_crit_edge ], [ false, %do.end6.for.body_crit_edge ]
  %i.0391 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end6.for.body_crit_edge ]
  %10 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %untried.addr.0.418 = load volatile i32, ptr %untried.addr, align 4
  %and.i = and i32 %i.0391, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %untried.addr.0.418, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.afs_server_list, ptr %slist, i32 0, i32 7, i32 %i.0391
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %probe_outstanding = getelementptr inbounds %struct.afs_server, ptr %14, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %probe_outstanding, i32 noundef 4) #9
  %15 = ptrtoint ptr %probe_outstanding to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %probe_outstanding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %if.then16, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i = xor i32 %11, -1
  %17 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %untried.addr.0.420 = load i32, ptr %untried.addr, align 4
  %and.i348 = and i32 %untried.addr.0.420, %neg.i
  store i32 %and.i348, ptr %untried.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then12.if.end17_crit_edge
  %responded = getelementptr inbounds %struct.afs_server, ptr %14, i32 0, i32 26, i32 3
  %18 = ptrtoint ptr %responded to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %responded, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast.not = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %bf.cast.not, i1 true, i1 %have_responders.0.off0393
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  %have_responders.1.off0 = phi i1 [ %have_responders.0.off0393, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end17 ]
  %inc = add nuw nsw i32 %i.0391, 1
  %19 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr_servers7, align 4
  %conv8 = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %conv8.le = zext i8 %20 to i32
  br i1 %have_responders.1.off0, label %for.end.cleanup288_crit_edge, label %for.end.lor.lhs.false_crit_edge

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end.cleanup288_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup288

lor.lhs.false:                                    ; preds = %for.end.lor.lhs.false_crit_edge, %do.end6.lor.lhs.false_crit_edge
  %conv8.le425 = phi i32 [ %conv8.le, %for.end.lor.lhs.false_crit_edge ], [ 0, %do.end6.lor.lhs.false_crit_edge ]
  %21 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %untried.addr.0.419 = load i32, ptr %untried.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %untried.addr.0.419)
  %tobool23.not = icmp eq i32 %untried.addr.0.419, 0
  br i1 %tobool23.not, label %lor.lhs.false.cleanup288_crit_edge, label %if.end8.i

lor.lhs.false.cleanup288_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup288

if.end8.i:                                        ; preds = %lor.lhs.false
  %22 = mul nuw nsw i32 %conv8.le425, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #13
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end8.i.cleanup288_crit_edge, label %for.cond33.preheader

if.end8.i.cleanup288_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup288

for.cond33.preheader:                             ; preds = %if.end8.i
  %23 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_servers7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp36397.not = icmp eq i8 %24, 0
  br i1 %cmp36397.not, label %for.cond33.preheader.__here.preheader_crit_edge, label %for.cond33.preheader.for.body38_crit_edge

for.cond33.preheader.for.body38_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body38

for.cond33.preheader.__here.preheader_crit_edge:  ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here.preheader

for.body38:                                       ; preds = %for.inc50.for.body38_crit_edge, %for.cond33.preheader.for.body38_crit_edge
  %i.1398 = phi i32 [ %inc51, %for.inc50.for.body38_crit_edge ], [ 0, %for.cond33.preheader.for.body38_crit_edge ]
  %25 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %untried.addr.0.417 = load volatile i32, ptr %untried.addr, align 4
  %and.i351 = and i32 %i.1398, 31
  %26 = shl nuw i32 1, %and.i351
  %27 = and i32 %untried.addr.0.417, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool40.not = icmp eq i32 %27, 0
  br i1 %tobool40.not, label %for.body38.for.inc50_crit_edge, label %if.then41

for.body38.for.inc50_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc50

if.then41:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx43 = getelementptr %struct.afs_server_list, ptr %slist, i32 0, i32 7, i32 %i.1398
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx43, align 4
  %arrayidx45 = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.1398
  %30 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i367 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i367 to ptr
  %task47 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task47, align 8
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx45, align 4
  %private.i = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.1398, i32 1
  %35 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %private.i, align 4
  %func.i = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.1398, i32 2
  %36 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @default_wake_function, ptr %func.i, align 4
  %probe_wq = getelementptr inbounds %struct.afs_server, ptr %29, i32 0, i32 23
  tail call void @add_wait_queue(ptr noundef %probe_wq, ptr noundef %arrayidx45) #9
  br label %for.inc50

for.inc50:                                        ; preds = %if.then41, %for.body38.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %i.1398, 1
  %37 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_servers7, align 4
  %conv35 = zext i8 %38 to i32
  %cmp36 = icmp ult i32 %inc51, %conv35
  br i1 %cmp36, label %for.inc50.for.body38_crit_edge, label %for.inc50.__here.preheader_crit_edge

for.inc50.__here.preheader_crit_edge:             ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here.preheader

for.inc50.for.body38_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38

__here.preheader:                                 ; preds = %for.inc50.__here.preheader_crit_edge, %for.cond33.preheader.__here.preheader_crit_edge
  br label %__here

__here:                                           ; preds = %cleanup, %__here.preheader
  %39 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i368 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i368 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task103, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_fs_probes, %__here) to i32), ptr %task_state_change, align 4
  %44 = load ptr, ptr %task103, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 1, ptr %44, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  %46 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nr_servers7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp131401.not = icmp eq i8 %47, 0
  br i1 %cmp131401.not, label %__here.__here215_crit_edge, label %__here.for.body133_crit_edge

__here.for.body133_crit_edge:                     ; preds = %__here
  br label %for.body133

__here.__here215_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

for.body133:                                      ; preds = %for.inc153.for.body133_crit_edge, %__here.for.body133_crit_edge
  %still_probing.0.off0404 = phi i1 [ %still_probing.1.off0, %for.inc153.for.body133_crit_edge ], [ false, %__here.for.body133_crit_edge ]
  %i.2402 = phi i32 [ %inc154, %for.inc153.for.body133_crit_edge ], [ 0, %__here.for.body133_crit_edge ]
  %48 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %untried.addr.0.416 = load volatile i32, ptr %untried.addr, align 4
  %and.i356 = and i32 %i.2402, 31
  %49 = shl nuw i32 1, %and.i356
  %50 = and i32 %untried.addr.0.416, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool135.not = icmp eq i32 %50, 0
  br i1 %tobool135.not, label %for.body133.for.inc153_crit_edge, label %if.then136

for.body133.for.inc153_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc153

if.then136:                                       ; preds = %for.body133
  %arrayidx138 = getelementptr %struct.afs_server_list, ptr %slist, i32 0, i32 7, i32 %i.2402
  %51 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx138, align 4
  %responded141 = getelementptr inbounds %struct.afs_server, ptr %52, i32 0, i32 26, i32 3
  %53 = ptrtoint ptr %responded141 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load142 = load i8, ptr %responded141, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load142)
  %bf.cast144.not = icmp sgt i8 %bf.load142, -1
  br i1 %bf.cast144.not, label %if.end146, label %if.then136.__here215_crit_edge

if.then136.__here215_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

if.end146:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %probe_outstanding147 = getelementptr inbounds %struct.afs_server, ptr %52, i32 0, i32 24
  %call.i.i359 = tail call zeroext i1 @__kasan_check_read(ptr noundef %probe_outstanding147, i32 noundef 4) #9
  %54 = ptrtoint ptr %probe_outstanding147 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %probe_outstanding147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool149.not = icmp ne i32 %55, 0
  %spec.select347 = select i1 %tobool149.not, i1 true, i1 %still_probing.0.off0404
  br label %for.inc153

for.inc153:                                       ; preds = %if.end146, %for.body133.for.inc153_crit_edge
  %still_probing.1.off0 = phi i1 [ %still_probing.0.off0404, %for.body133.for.inc153_crit_edge ], [ %spec.select347, %if.end146 ]
  %inc154 = add nuw nsw i32 %i.2402, 1
  %56 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nr_servers7, align 4
  %conv130 = zext i8 %57 to i32
  %cmp131 = icmp ult i32 %inc154, %conv130
  br i1 %cmp131, label %for.inc153.for.body133_crit_edge, label %for.end155

for.inc153.for.body133_crit_edge:                 ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body133

for.end155:                                       ; preds = %for.inc153
  br i1 %still_probing.1.off0, label %lor.lhs.false157, label %for.end155.__here215_crit_edge

for.end155.__here215_crit_edge:                   ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

lor.lhs.false157:                                 ; preds = %for.end155
  %58 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task103, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %stack.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.lhs.false157.__here215_crit_edge, !prof !82

lor.lhs.false157.__here215_crit_edge:             ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

signal_pending.exit:                              ; preds = %lor.lhs.false157
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %61, align 4
  %and1.i.i.i.i.i = and i32 %66, 1
  %tobool161.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool161.not, label %cleanup, label %signal_pending.exit.__here215_crit_edge

signal_pending.exit.__here215_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here215

cleanup:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @schedule() #9
  br label %__here

__here215:                                        ; preds = %signal_pending.exit.__here215_crit_edge, %lor.lhs.false157.__here215_crit_edge, %for.end155.__here215_crit_edge, %if.then136.__here215_crit_edge, %__here.__here215_crit_edge
  %67 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task103, align 8
  %task_state_change219 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 212
  %69 = ptrtoint ptr %task_state_change219 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_fs_probes, %__here215) to i32), ptr %task_state_change219, align 4
  %70 = load ptr, ptr %task103, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %70, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %72 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nr_servers7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp248407.not = icmp eq i8 %73, 0
  br i1 %cmp248407.not, label %for.end273.thread, label %__here215.for.body250_crit_edge

__here215.for.body250_crit_edge:                  ; preds = %__here215
  br label %for.body250

for.end273.thread:                                ; preds = %__here215
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %land.lhs.true276

for.body250:                                      ; preds = %for.inc271.for.body250_crit_edge, %__here215.for.body250_crit_edge
  %rtt.0411 = phi i32 [ %rtt.2, %for.inc271.for.body250_crit_edge ], [ -1, %__here215.for.body250_crit_edge ]
  %pref.0410 = phi i32 [ %pref.2, %for.inc271.for.body250_crit_edge ], [ -1, %__here215.for.body250_crit_edge ]
  %i.3408 = phi i32 [ %inc272, %for.inc271.for.body250_crit_edge ], [ 0, %__here215.for.body250_crit_edge ]
  %74 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %untried.addr.0. = load volatile i32, ptr %untried.addr, align 4
  %and.i362 = and i32 %i.3408, 31
  %75 = shl nuw i32 1, %and.i362
  %76 = and i32 %untried.addr.0., %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool252.not = icmp eq i32 %76, 0
  br i1 %tobool252.not, label %for.body250.for.inc271_crit_edge, label %if.then253

for.body250.for.inc271_crit_edge:                 ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc271

if.then253:                                       ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx255 = getelementptr %struct.afs_server_list, ptr %slist, i32 0, i32 7, i32 %i.3408
  %77 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx255, align 4
  %rtt261 = getelementptr inbounds %struct.afs_server, ptr %78, i32 0, i32 18
  %79 = ptrtoint ptr %rtt261 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %rtt261, align 8
  %flags = getelementptr inbounds %struct.afs_server, ptr %78, i32 0, i32 14
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags, align 4
  %and1.i365 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i365)
  %tobool263.not = icmp ne i32 %and1.i365, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %rtt.0411)
  %cmp264 = icmp ult i32 %80, %rtt.0411
  %or.cond = select i1 %tobool263.not, i1 %cmp264, i1 false
  %pref.1 = select i1 %or.cond, i32 %i.3408, i32 %pref.0410
  %rtt.1 = select i1 %or.cond, i32 %80, i32 %rtt.0411
  %probe_wq268 = getelementptr inbounds %struct.afs_server, ptr %78, i32 0, i32 23
  %arrayidx269 = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.3408
  tail call void @remove_wait_queue(ptr noundef %probe_wq268, ptr noundef %arrayidx269) #9
  br label %for.inc271

for.inc271:                                       ; preds = %if.then253, %for.body250.for.inc271_crit_edge
  %pref.2 = phi i32 [ %pref.1, %if.then253 ], [ %pref.0410, %for.body250.for.inc271_crit_edge ]
  %rtt.2 = phi i32 [ %rtt.1, %if.then253 ], [ %rtt.0411, %for.body250.for.inc271_crit_edge ]
  %inc272 = add nuw nsw i32 %i.3408, 1
  %83 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nr_servers7, align 4
  %conv247 = zext i8 %84 to i32
  %cmp248 = icmp ult i32 %inc272, %conv247
  br i1 %cmp248, label %for.inc271.for.body250_crit_edge, label %for.end273

for.inc271.for.body250_crit_edge:                 ; preds = %for.inc271
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body250

for.end273:                                       ; preds = %for.inc271
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pref.2)
  %cmp274 = icmp eq i32 %pref.2, -1
  br i1 %cmp274, label %for.end273.land.lhs.true276_crit_edge, label %if.end282

for.end273.land.lhs.true276_crit_edge:            ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true276

land.lhs.true276:                                 ; preds = %for.end273.land.lhs.true276_crit_edge, %for.end273.thread
  %85 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task103, align 8
  %stack.i.i371 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %stack.i.i371 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stack.i.i371, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %91 = and i32 %90, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i372 = icmp eq i32 %91, 0
  br i1 %tobool.not.i372, label %signal_pending.exit376, label %land.lhs.true276.cleanup288_crit_edge, !prof !82

land.lhs.true276.cleanup288_crit_edge:            ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup288

signal_pending.exit376:                           ; preds = %land.lhs.true276
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %88, align 4
  %and1.i.i.i.i.i373 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i373)
  %tobool280.not = icmp eq i32 %and1.i.i.i.i.i373, 0
  %spec.select383 = select i1 %tobool280.not, i32 0, i32 -512
  br label %cleanup288

if.end282:                                        ; preds = %for.end273
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pref.2)
  %cmp283 = icmp sgt i32 %pref.2, -1
  br i1 %cmp283, label %if.then285, label %if.end282.cleanup288_crit_edge

if.end282.cleanup288_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup288

if.then285:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #11
  %conv286 = trunc i32 %pref.2 to i8
  %preferred = getelementptr inbounds %struct.afs_server_list, ptr %slist, i32 0, i32 3
  %94 = ptrtoint ptr %preferred to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv286, ptr %preferred, align 1
  br label %cleanup288

cleanup288:                                       ; preds = %if.then285, %if.end282.cleanup288_crit_edge, %signal_pending.exit376, %land.lhs.true276.cleanup288_crit_edge, %if.end8.i.cleanup288_crit_edge, %lor.lhs.false.cleanup288_crit_edge, %for.end.cleanup288_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup288_crit_edge ], [ 0, %for.end.cleanup288_crit_edge ], [ -12, %if.end8.i.cleanup288_crit_edge ], [ 0, %if.then285 ], [ 0, %if.end282.cleanup288_crit_edge ], [ -512, %land.lhs.true276.cleanup288_crit_edge ], [ %spec.select383, %signal_pending.exit376 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_probe_timer(ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %live = getelementptr i8, ptr %timer, i32 -872
  %0 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %live, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %2 = load ptr, ptr @afs_wq, align 4
  %fs_prober = getelementptr i8, ptr %timer, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %fs_prober) #9
  br i1 %call.i, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %servers_outstanding.i = getelementptr i8, ptr %timer, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_probe_fileserver(ptr noundef %net, ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18
  %lock.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %0 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fs_lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %fs_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %dep_map.i.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #9
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #9
  %probe_link = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7
  %4 = ptrtoint ptr %probe_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %probe_link, align 4
  %cmp.i.not = icmp eq ptr %5, %probe_link
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @afs_dispatch_fs_probe(ptr noundef %net, ptr noundef %server, i1 noundef zeroext true)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %6 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs_lock, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %fs_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_dispatch_fs_probe(ptr noundef %net, ptr noundef %server, i1 noundef zeroext %all) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %probe_link = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %probe_link) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %probe_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %probe_link to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %probe_link, ptr %probe_link, align 4
  %prev.i3.i = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %probe_link, ptr %prev.i3.i, align 4
  %call = tail call ptr @afs_get_server(ptr noundef %server, i32 noundef 10) #9
  %fs_lock = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18
  %dep_map.i.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 0, i32 0, i32 1
  %8 = tail call ptr @llvm.returnaddress(i32 0) #9
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %10 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs_lock, align 4
  %inc.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i, ptr %fs_lock, align 4
  %lock.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 18, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  tail call void @afs_fs_probe_fileserver(ptr noundef %net, ptr noundef %server, ptr noundef null, i1 noundef zeroext %all)
  tail call void @afs_put_server(ptr noundef %net, ptr noundef %server, i32 noundef 16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_probe_dispatcher(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -848
  %live = getelementptr i8, ptr %work, i32 -828
  %0 = ptrtoint ptr %live to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %live, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end10_crit_edge, label %do.end, !prof !82

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.13) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %fs_probe_fast = getelementptr i8, ptr %work, i32 -200
  %7 = ptrtoint ptr %fs_probe_fast to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %fs_probe_fast, align 4
  %cmp.i.not = icmp eq ptr %8, %fs_probe_fast
  br i1 %cmp.i.not, label %land.lhs.true, label %do.end10.if.end38_crit_edge

do.end10.if.end38_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %do.end10
  %fs_probe_slow = getelementptr i8, ptr %work, i32 -192
  %9 = ptrtoint ptr %fs_probe_slow to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %fs_probe_slow, align 4
  %cmp.i228.not = icmp eq ptr %10, %fs_probe_slow
  br i1 %cmp.i228.not, label %do.body16, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.body16:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and17 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.cleanup_crit_edge, label %do.body16.cleanup.sink.split_crit_edge, !prof !82

do.body16.cleanup.sink.split_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %do.end10.if.end38_crit_edge
  %fs_lock = getelementptr i8, ptr %work, i32 -284
  %lock.i = getelementptr i8, ptr %work, i32 -248
  %dep_map.i.i.i = getelementptr i8, ptr %work, i32 -280
  %fs_probe_slow51 = getelementptr i8, ptr %work, i32 -192
  br label %again

again:                                            ; preds = %if.then101, %if.end38
  %set_timer.0.off0 = phi i1 [ false, %if.end38 ], [ %set_timer.2.off0, %if.then101 ]
  %first_pass.0.off0 = phi i1 [ true, %if.end38 ], [ false, %if.then101 ]
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %12 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fs_lock, align 4
  %inc.i.i.i.i = add i32 %13, 1
  store i32 %inc.i.i.i.i, ptr %fs_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %14 = tail call ptr @llvm.returnaddress(i32 0) #9
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %15) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 1073741822
  %17 = ptrtoint ptr %fs_probe_fast to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %fs_probe_fast, align 4
  %cmp.i231.not = icmp eq ptr %18, %fs_probe_fast
  br i1 %cmp.i231.not, label %again.if.end50_crit_edge, label %if.then42

again.if.end50_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then42:                                        ; preds = %again
  %add.ptr46 = getelementptr i8, ptr %18, i32 -52
  %probed_at = getelementptr i8, ptr %18, i32 164
  %19 = ptrtoint ptr %probed_at to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %probed_at, align 8
  %add47 = add i32 %20, 3000
  %sub = sub i32 %16, %add47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then48, label %if.then42.if.end50_crit_edge

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then42.if.end50_crit_edge, %again.if.end50_crit_edge
  %set_timer.1.off0 = phi i1 [ %set_timer.0.off0, %again.if.end50_crit_edge ], [ true, %if.then48 ], [ %set_timer.0.off0, %if.then42.if.end50_crit_edge ]
  %timer_at.0 = phi i32 [ %add, %again.if.end50_crit_edge ], [ %add47, %if.then48 ], [ %add, %if.then42.if.end50_crit_edge ]
  %fast.0 = phi ptr [ null, %again.if.end50_crit_edge ], [ null, %if.then48 ], [ %add.ptr46, %if.then42.if.end50_crit_edge ]
  %21 = ptrtoint ptr %fs_probe_slow51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %fs_probe_slow51, align 4
  %cmp.i233.not = icmp eq ptr %22, %fs_probe_slow51
  br i1 %cmp.i233.not, label %if.end50.if.end70_crit_edge, label %if.then54

if.end50.if.end70_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then54:                                        ; preds = %if.end50
  %add.ptr59 = getelementptr i8, ptr %22, i32 -52
  %probed_at60 = getelementptr i8, ptr %22, i32 164
  %23 = ptrtoint ptr %probed_at60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %probed_at60, align 8
  %add61 = add i32 %24, 30000
  %sub62 = sub i32 %16, %add61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp63 = icmp slt i32 %sub62, 0
  br i1 %cmp63, label %if.then64, label %if.then54.if.end70_crit_edge

if.then54.if.end70_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %sub65 = sub i32 %add61, %timer_at.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub65)
  %cmp66 = icmp slt i32 %sub65, 0
  %spec.select = select i1 %cmp66, i32 %add61, i32 %timer_at.0
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.then54.if.end70_crit_edge, %if.end50.if.end70_crit_edge
  %set_timer.2.off0 = phi i1 [ %set_timer.1.off0, %if.end50.if.end70_crit_edge ], [ true, %if.then64 ], [ %set_timer.1.off0, %if.then54.if.end70_crit_edge ]
  %timer_at.2 = phi i32 [ %timer_at.0, %if.end50.if.end70_crit_edge ], [ %spec.select, %if.then64 ], [ %timer_at.0, %if.then54.if.end70_crit_edge ]
  %slow.0 = phi ptr [ null, %if.end50.if.end70_crit_edge ], [ null, %if.then64 ], [ %add.ptr59, %if.then54.if.end70_crit_edge ]
  %tobool71.not = icmp eq ptr %fast.0, null
  %spec.select226 = select i1 %tobool71.not, ptr %slow.0, ptr %fast.0
  %tobool72.not = icmp eq ptr %spec.select226, null
  br i1 %tobool72.not, label %if.else.critedge, label %do.body74

do.body74:                                        ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %25 = load i32, ptr @afs_debug, align 4
  %and75 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.land.lhs.true98_crit_edge, label %do.end86, !prof !82

do.body74.land.lhs.true98_crit_edge:              ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true98

do.end86:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i235 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i235 to ptr
  %task89 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task89 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task89, align 8
  %comm90 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %30 = getelementptr inbounds %struct.afs_server, ptr %spec.select226, i32 0, i32 1
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm90, ptr noundef %30) #12
  br label %land.lhs.true98

land.lhs.true98:                                  ; preds = %do.end86, %do.body74.land.lhs.true98_crit_edge
  br i1 %first_pass.0.off0, label %land.lhs.true98.if.then101_crit_edge, label %lor.lhs.false

land.lhs.true98.if.then101_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101

lor.lhs.false:                                    ; preds = %land.lhs.true98
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 16384
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then101_crit_edge, label %if.then106.critedge

lor.lhs.false.if.then101_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false.if.then101_crit_edge, %land.lhs.true98.if.then101_crit_edge
  %cmp102 = icmp eq ptr %spec.select226, %fast.0
  tail call fastcc void @afs_dispatch_fs_probe(ptr noundef %add.ptr, ptr noundef nonnull %spec.select226, i1 noundef zeroext %cmp102)
  br label %again

if.then106.critedge:                              ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %14 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %37 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fs_lock, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %fs_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_wq to i32))
  %39 = load ptr, ptr @afs_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #9
  br i1 %call.i, label %if.then106.critedge.do.body110_crit_edge, label %if.then108

if.then106.critedge.do.body110_crit_edge:         ; preds = %if.then106.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.then108:                                       ; preds = %if.then106.critedge
  %servers_outstanding.i = getelementptr i8, ptr %work, i32 92
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then108.do.body110_crit_edge

if.then108.do.body110_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.then.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #9
  br label %do.body110

do.body110:                                       ; preds = %if.then.i, %if.then108.do.body110_crit_edge, %if.then106.critedge.do.body110_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %41 = load i32, ptr @afs_debug, align 4
  %and111 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body110.cleanup_crit_edge, label %do.body110.cleanup.sink.split_crit_edge, !prof !82

do.body110.cleanup.sink.split_crit_edge:          ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body110.cleanup_crit_edge:                     ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.critedge:                                 ; preds = %if.end70
  %42 = ptrtoint ptr %14 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %42) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %43 = ptrtoint ptr %fs_lock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fs_lock, align 4
  %inc.i.i.i239 = add i32 %44, 1
  store i32 %inc.i.i.i239, ptr %fs_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br i1 %set_timer.2.off0, label %if.then133, label %if.else160

if.then133:                                       ; preds = %if.else.critedge
  %fs_probe_timer = getelementptr i8, ptr %work, i32 44
  %call134 = tail call i32 @timer_reduce(ptr noundef %fs_probe_timer, i32 noundef %timer_at.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then133.do.body138_crit_edge, label %if.then136

if.then133.do.body138_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

if.then136:                                       ; preds = %if.then133
  %servers_outstanding.i241 = getelementptr i8, ptr %work, i32 92
  %call.i.i.i242 = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i241, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i241, i32 1, i32 3, i32 1) #9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i241, ptr %servers_outstanding.i241, i32 1, ptr elementtype(i32) %servers_outstanding.i241) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i243 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i243)
  %cmp.i.i.i244 = icmp eq i32 %asmresult.i.i.i.i.i.i243, 0
  br i1 %cmp.i.i.i244, label %if.then.i245, label %if.then136.do.body138_crit_edge

if.then136.do.body138_crit_edge:                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

if.then.i245:                                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i241) #9
  br label %do.body138

do.body138:                                       ; preds = %if.then.i245, %if.then136.do.body138_crit_edge, %if.then133.do.body138_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %46 = load i32, ptr @afs_debug, align 4
  %and139 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.cleanup_crit_edge, label %do.body138.cleanup.sink.split_crit_edge, !prof !82

do.body138.cleanup.sink.split_crit_edge:          ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.body138.cleanup_crit_edge:                     ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else160:                                       ; preds = %if.else.critedge
  %servers_outstanding.i248 = getelementptr i8, ptr %work, i32 92
  %call.i.i.i249 = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i248, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i248, i32 1, i32 3, i32 1) #9
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i248, ptr %servers_outstanding.i248, i32 1, ptr elementtype(i32) %servers_outstanding.i248) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i250 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i250)
  %cmp.i.i.i251 = icmp eq i32 %asmresult.i.i.i.i.i.i250, 0
  br i1 %cmp.i.i.i251, label %if.then.i252, label %if.else160.afs_dec_servers_outstanding.exit253_crit_edge

if.else160.afs_dec_servers_outstanding.exit253_crit_edge: ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #11
  br label %afs_dec_servers_outstanding.exit253

if.then.i252:                                     ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i248) #9
  br label %afs_dec_servers_outstanding.exit253

afs_dec_servers_outstanding.exit253:              ; preds = %if.then.i252, %if.else160.afs_dec_servers_outstanding.exit253_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %48 = load i32, ptr @afs_debug, align 4
  %and162 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %afs_dec_servers_outstanding.exit253.cleanup_crit_edge, label %afs_dec_servers_outstanding.exit253.cleanup.sink.split_crit_edge, !prof !82

afs_dec_servers_outstanding.exit253.cleanup.sink.split_crit_edge: ; preds = %afs_dec_servers_outstanding.exit253
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

afs_dec_servers_outstanding.exit253.cleanup_crit_edge: ; preds = %afs_dec_servers_outstanding.exit253
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %afs_dec_servers_outstanding.exit253.cleanup.sink.split_crit_edge, %do.body138.cleanup.sink.split_crit_edge, %do.body110.cleanup.sink.split_crit_edge, %do.body16.cleanup.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.15, %do.body16.cleanup.sink.split_crit_edge ], [ @.str.21, %do.body110.cleanup.sink.split_crit_edge ], [ @.str.24, %do.body138.cleanup.sink.split_crit_edge ], [ @.str.27, %afs_dec_servers_outstanding.exit253.cleanup.sink.split_crit_edge ]
  %49 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i237 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i237 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task125, align 8
  %comm126 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink, ptr noundef %comm126, ptr noundef nonnull @.str.13) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %afs_dec_servers_outstanding.exit253.cleanup_crit_edge, %do.body138.cleanup_crit_edge, %do.body110.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_wait_for_one_fs_probe(ptr noundef %server, i1 noundef zeroext %is_intr) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %probe_outstanding = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 24
  %0 = call ptr @memset(ptr %wait, i32 255, i32 20)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %probe_outstanding, i32 noundef 4) #9
  %1 = ptrtoint ptr %probe_outstanding to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %probe_outstanding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.dont_wait_crit_edge, label %if.end

entry.dont_wait_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dont_wait

if.end:                                           ; preds = %entry
  call void @init_wait_entry(ptr noundef nonnull %wait, i32 noundef 0) #9
  %responded = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 26, i32 3
  %probe_wq = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 23
  %cond = select i1 %is_intr, i32 1, i32 2
  %call156 = call i32 @prepare_to_wait_event(ptr noundef %probe_wq, ptr noundef nonnull %wait, i32 noundef %cond) #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13.lor.lhs.false_crit_edge, %if.end
  %timo.057 = phi i32 [ 200, %if.end ], [ %call14, %if.end13.lor.lhs.false_crit_edge ]
  %3 = ptrtoint ptr %responded to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %responded, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %lor.lhs.false3, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call.i.i44 = call zeroext i1 @__kasan_check_read(ptr noundef %probe_outstanding, i32 noundef 4) #9
  %4 = ptrtoint ptr %probe_outstanding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %probe_outstanding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %lor.lhs.false3.for.end_crit_edge, label %lor.lhs.false7

lor.lhs.false3.for.end_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  br i1 %is_intr, label %land.lhs.true, label %lor.lhs.false7.if.end13_crit_edge

lor.lhs.false7.if.end13_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %6 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.for.end_crit_edge, !prof !82

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit:                              ; preds = %land.lhs.true
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %11, align 4
  %and1.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool11.not, label %signal_pending.exit.if.end13_crit_edge, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

signal_pending.exit.if.end13_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %signal_pending.exit.if.end13_crit_edge, %lor.lhs.false7.if.end13_crit_edge
  %call14 = call i32 @schedule_timeout(i32 noundef %timo.057) #9
  %call1 = call i32 @prepare_to_wait_event(ptr noundef %probe_wq, ptr noundef nonnull %wait, i32 noundef %cond) #9
  %cmp2 = icmp eq i32 %call14, 0
  br i1 %cmp2, label %if.end13.for.end_crit_edge, label %if.end13.lor.lhs.false_crit_edge

if.end13.lor.lhs.false_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %lor.lhs.false3.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge
  %timo.0.lcssa = phi i32 [ %timo.057, %land.lhs.true.for.end_crit_edge ], [ 0, %if.end13.for.end_crit_edge ], [ %timo.057, %lor.lhs.false.for.end_crit_edge ], [ %timo.057, %lor.lhs.false3.for.end_crit_edge ], [ %timo.057, %signal_pending.exit.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %probe_wq, ptr noundef nonnull %wait) #9
  br label %dont_wait

dont_wait:                                        ; preds = %for.end, %entry.dont_wait_crit_edge
  %timo.1 = phi i32 [ 200, %entry.dont_wait_crit_edge ], [ %timo.0.lcssa, %for.end ]
  %responded17 = getelementptr inbounds %struct.afs_server, ptr %server, i32 0, i32 26, i32 3
  %17 = ptrtoint ptr %responded17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load18 = load i8, ptr %responded17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18)
  %bf.cast20.not = icmp sgt i8 %bf.load18, -1
  br i1 %bf.cast20.not, label %if.end22, label %dont_wait.cleanup_crit_edge

dont_wait.cleanup_crit_edge:                      ; preds = %dont_wait
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %dont_wait
  br i1 %is_intr, label %land.lhs.true24, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true24:                                  ; preds = %if.end22
  %18 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i45 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i45 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task26, align 8
  %stack.i.i46 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i46, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i47 = icmp eq i32 %26, 0
  br i1 %tobool.not.i47, label %signal_pending.exit51, label %land.lhs.true24.cleanup_crit_edge, !prof !82

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit51:                            ; preds = %land.lhs.true24
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i48 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i48)
  %tobool28.not = icmp eq i32 %and1.i.i.i.i.i48, 0
  br i1 %tobool28.not, label %signal_pending.exit51.if.end30_crit_edge, label %signal_pending.exit51.cleanup_crit_edge

signal_pending.exit51.cleanup_crit_edge:          ; preds = %signal_pending.exit51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit51.if.end30_crit_edge:         ; preds = %signal_pending.exit51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %signal_pending.exit51.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timo.1)
  %cmp31 = icmp eq i32 %timo.1, 0
  %. = select i1 %cmp31, i32 -62, i32 -89
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %signal_pending.exit51.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %dont_wait.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dont_wait.cleanup_crit_edge ], [ -512, %signal_pending.exit51.cleanup_crit_edge ], [ %., %if.end30 ], [ -512, %land.lhs.true24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_fs_probe_cleanup(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_probe_timer = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 29
  %call = tail call i32 @del_timer_sync(ptr noundef %fs_probe_timer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %servers_outstanding.i = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 30
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %servers_outstanding.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %servers_outstanding.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %servers_outstanding.i, ptr %servers_outstanding.i, i32 1, ptr elementtype(i32) %servers_outstanding.i) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wake_up_var(ptr noundef %servers_outstanding.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_io_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_get_server(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_server(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/fs_probe.c", i32 109, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_fileserver_probe_result._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_fileserver_probe_result._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/fs_probe.c", i32 184, i32 2}
!8 = !{ptr @afs_fileserver_probe_result._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_fileserver_probe_result._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/fs_probe.c", i32 202, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @afs_fs_probe_fileserver._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @afs_fs_probe_fileserver._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../fs/afs/fs_probe.c", i32 205, i32 13}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/fs_probe.c", i32 242, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @afs_wait_for_fs_probes._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_wait_for_fs_probes._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../fs/afs/fs_probe.c", i32 272, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/afs/fs_probe.c", i32 289, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/fs_probe.c", i32 372, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @afs_fs_probe_dispatcher._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @afs_fs_probe_dispatcher._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/afs/fs_probe.c", i32 375, i32 3}
!34 = !{ptr @afs_fs_probe_dispatcher._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @afs_fs_probe_dispatcher._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/afs/fs_probe.c", i32 409, i32 3}
!38 = !{ptr @afs_fs_probe_dispatcher._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @afs_fs_probe_dispatcher._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/afs/fs_probe.c", i32 422, i32 3}
!42 = !{ptr @afs_fs_probe_dispatcher._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @afs_fs_probe_dispatcher._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/afs/fs_probe.c", i32 426, i32 3}
!46 = !{ptr @afs_fs_probe_dispatcher._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @afs_fs_probe_dispatcher._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/afs/fs_probe.c", i32 429, i32 3}
!50 = !{ptr @afs_fs_probe_dispatcher._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @afs_fs_probe_dispatcher._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/trace/events/afs.h", i32 1174, i32 1}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/fs_probe.c", i32 63, i32 2}
!62 = !{ptr @afs_done_one_fs_probe._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @afs_done_one_fs_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/afs/fs_probe.c", i32 82, i32 2}
!66 = !{ptr @afs_fs_probe_not_done._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_fs_probe_not_done._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"afs_fs_probe_fast_poll_interval", i1 false, i1 false}
!69 = !{!"../fs/afs/fs_probe.c", i32 15, i32 21}
!70 = distinct !{null, !71, !"afs_fs_probe_slow_poll_interval", i1 false, i1 false}
!71 = !{!"../fs/afs/fs_probe.c", i32 16, i32 21}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2157795222}
!84 = !{i64 2148242869, i64 2148242874, i64 2148242887, i64 2148242931, i64 2148242965, i64 2148242986}
!85 = !{i64 2157527922}
!86 = !{i64 2157528145}
!87 = !{i64 2149265549}
!88 = !{i64 2149266585}
!89 = !{i64 2148517928}
!90 = !{i64 2148432661, i64 2148432693, i64 2148432722, i64 2148432756, i64 2148432787, i64 2148432810}
!91 = !{i64 2148518157}
!92 = !{i64 2150184846}
!93 = !{i64 2150185171}
!94 = !{i8 0, i8 2}
!95 = !{i64 2148429476, i64 2148429502, i64 2148429531, i64 2148429565, i64 2148429596, i64 2148429619}
!96 = !{i64 2148431006, i64 2148431038, i64 2148431067, i64 2148431101, i64 2148431132, i64 2148431155}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2157807495}
!99 = !{i64 2157812275}
