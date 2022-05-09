; ModuleID = '/llk/IR_all_yes/fs/afs/vl_probe.c_pt.bc'
source_filename = "../fs/afs/vl_probe.c"
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
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.147, i16, i16, [0 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { i32, i32, i16, i16 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.0 }
%union.anon.0 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.afs_error = type { i16, i8 }
%struct.afs_vlserver_list = type <{ %struct.callback_head, %struct.atomic_t, i8, i8, i8, i16, [3 x i8], %struct.rwlock_t, [0 x %struct.afs_vlserver_entry] }>
%struct.afs_vlserver_entry = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_vlserver_probe_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s(%s,%u,%u,%d,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_vlserver_probe_result\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/vl_probe.c\00", [46 x i8] zeroinitializer }, align 32
@afs_vlserver_probe_result._entry_ptr = internal global ptr @afs_vlserver_probe_result._entry, section ".printk_index", align 4
@afs_vlserver_probe_result._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%-6.6s]     probe [%u][%u] %pISpc rtt=%u ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_vlserver_probe_result._entry_ptr.5 = internal global ptr @afs_vlserver_probe_result._entry.3, section ".printk_index", align 4
@afs_wait_for_vl_probes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] ==> %s(%u,%lx)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_wait_for_vl_probes\00", [41 x i8] zeroinitializer }, align 32
@afs_wait_for_vl_probes._entry_ptr = internal global ptr @afs_wait_for_vl_probes._entry, section ".printk_index", align 4
@afs_wait_for_vl_probes._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] <== %s() = 0 [%u]\0A\00", [36 x i8] zeroinitializer }, align 32
@afs_wait_for_vl_probes._entry_ptr.11 = internal global ptr @afs_wait_for_vl_probes._entry.9, section ".printk_index", align 4
@__tracepoint_afs_io_error = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_io_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@afs_do_probe_vlserver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s] ==> %s(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"afs_do_probe_vlserver\00", [42 x i8] zeroinitializer }, align 32
@afs_do_probe_vlserver._entry_ptr = internal global ptr @afs_do_probe_vlserver._entry, section ".printk_index", align 4
@afs_do_probe_vlserver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4294967167, i64 4294967168, i64 4294967169, i64 4294967193, i64 4294967232, i64 4294967284]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 65426, i64 65474]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 57, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 133, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 219, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 290, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1174, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 108, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 155, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [21 x i8] c"../fs/afs/vl_probe.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 158, i32 13 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @afs_do_probe_vlserver._entry, ptr @afs_do_probe_vlserver._entry_ptr, ptr @afs_vlserver_probe_result._entry, ptr @afs_vlserver_probe_result._entry.3, ptr @afs_vlserver_probe_result._entry_ptr, ptr @afs_vlserver_probe_result._entry_ptr.5, ptr @afs_wait_for_vl_probes._entry, ptr @afs_wait_for_vl_probes._entry.9, ptr @afs_wait_for_vl_probes._entry_ptr, ptr @afs_wait_for_vl_probes._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vlserver_probe_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vlserver_probe_result._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_vl_probes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_wait_for_vl_probes._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_probe_vlserver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_vlserver_probe_result(ptr nocapture noundef readonly %call) local_unnamed_addr #0 align 64 {
entry:
  %rtt_us = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %alist1 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %alist1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alist1, align 4
  %vlserver = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %vlserver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlserver, align 4
  %server_index2 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %server_index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %server_index2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtt_us) #8
  %6 = ptrtoint ptr %rtt_us to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rtt_us, align 4
  %addr_ix = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 30
  %7 = ptrtoint ptr %addr_ix to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_ix, align 1
  %conv = zext i8 %8 to i32
  %error = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 23
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !49

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 12
  %abort_code = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %16 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %abort_code, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %5, i32 noundef %conv, i32 noundef %10, i32 noundef %17) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %probe_lock = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %probe_lock) #8
  %18 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %sw.default [
    i32 0, label %do.end10.responded67.sink.split_crit_edge
    i32 -103, label %sw.bb12
    i32 -12, label %do.end10.sw.bb25_crit_edge
    i32 -64, label %do.end10.sw.bb25_crit_edge216
    i32 -127, label %do.end10.sw.bb25_crit_edge217
    i32 -128, label %do.end10.sw.bb25_crit_edge218
    i32 -129, label %do.end10.sw.bb25_crit_edge219
  ]

do.end10.sw.bb25_crit_edge219:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

do.end10.sw.bb25_crit_edge218:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

do.end10.sw.bb25_crit_edge217:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

do.end10.sw.bb25_crit_edge216:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

do.end10.sw.bb25_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

do.end10.responded67.sink.split_crit_edge:        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %responded67.sink.split

sw.bb12:                                          ; preds = %do.end10
  %flags = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool16.not = icmp eq i16 %21, 0
  br i1 %tobool16.not, label %if.then17, label %sw.bb12.responded67_crit_edge

sw.bb12.responded67_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %responded67

if.then17:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %abort_code18 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 24
  %22 = ptrtoint ptr %abort_code18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %abort_code18, align 4
  %abort_code20 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %abort_code20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %abort_code20, align 4
  br label %responded67.sink.split

sw.bb25:                                          ; preds = %do.end10.sw.bb25_crit_edge, %do.end10.sw.bb25_crit_edge216, %do.end10.sw.bb25_crit_edge217, %do.end10.sw.bb25_crit_edge218, %do.end10.sw.bb25_crit_edge219
  %flags27 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %flags27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags27, align 2
  %27 = or i16 %26, 8
  store i16 %27, ptr %flags27, align 2
  %error31 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %error31 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %error31, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp = icmp eq i16 %29, 0
  br i1 %cmp, label %if.then34, label %sw.bb25.if.end38_crit_edge

sw.bb25.if.end38_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %conv35 = trunc i32 %10 to i16
  %30 = ptrtoint ptr %error31 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv35, ptr %error31, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %sw.bb25.if.end38_crit_edge
  %debug_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %31 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_id, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %32, i32 noundef %10)
  br label %out

sw.default:                                       ; preds = %do.end10
  %responded = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %responded) #8
  %failed = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %failed) #8
  %flags41 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %flags41 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags41, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool44.not = icmp eq i16 %35, 0
  br i1 %tobool44.not, label %land.lhs.true, label %sw.default.if.end65_crit_edge

sw.default.if.end65_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

land.lhs.true:                                    ; preds = %sw.default
  %error46 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %error46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %error46, align 4
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %37, label %land.lhs.true.if.end65_crit_edge [
    i16 0, label %land.lhs.true.if.then61_crit_edge
    i16 -110, label %land.lhs.true.if.then61_crit_edge220
    i16 -62, label %land.lhs.true.if.then61_crit_edge221
  ]

land.lhs.true.if.then61_crit_edge221:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

land.lhs.true.if.then61_crit_edge220:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

land.lhs.true.if.then61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then61:                                        ; preds = %land.lhs.true.if.then61_crit_edge, %land.lhs.true.if.then61_crit_edge220, %land.lhs.true.if.then61_crit_edge221
  %conv62 = trunc i32 %10 to i16
  %39 = ptrtoint ptr %error46 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv62, ptr %error46, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %land.lhs.true.if.end65_crit_edge, %sw.default.if.end65_crit_edge
  %debug_id66 = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 39
  %40 = ptrtoint ptr %debug_id66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug_id66, align 4
  tail call fastcc void @trace_afs_io_error(i32 noundef %41, i32 noundef %10)
  br label %out

responded67.sink.split:                           ; preds = %if.then17, %do.end10.responded67.sink.split_crit_edge
  %.sink = phi i16 [ -103, %if.then17 ], [ 0, %do.end10.responded67.sink.split_crit_edge ]
  %error23 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 2
  %42 = ptrtoint ptr %error23 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %.sink, ptr %error23, align 4
  br label %responded67

responded67:                                      ; preds = %responded67.sink.split, %sw.bb12.responded67_crit_edge
  %responded68 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %responded68) #8
  %failed69 = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %failed69) #8
  %service_id = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 38
  %43 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %service_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2503, i16 %44)
  %cmp71 = icmp eq i16 %44, 2503
  %flags75 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 3
  %45 = ptrtoint ptr %flags75 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags75, align 2
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %responded67
  call void @__sanitizer_cov_trace_pc() #10
  %47 = or i16 %46, 2
  %48 = ptrtoint ptr %flags75 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %flags75, align 2
  %flags79 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags79) #8
  br label %if.end98.sink.split

if.else:                                          ; preds = %responded67
  %49 = or i16 %46, 4
  %50 = ptrtoint ptr %flags75 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %flags75, align 2
  %51 = and i16 %46, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool90.not = icmp eq i16 %51, 0
  br i1 %tobool90.not, label %if.then91, label %if.else.if.end98_crit_edge

if.else.if.end98_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %flags92 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags92) #8
  br label %if.end98.sink.split

if.end98.sink.split:                              ; preds = %if.then91, %if.then73
  %52 = ptrtoint ptr %service_id to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %service_id, align 2
  %srx_service96 = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %conv, i32 1
  %54 = ptrtoint ptr %srx_service96 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %srx_service96, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.end98.sink.split, %if.else.if.end98_crit_edge
  %net = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 7
  %55 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net, align 4
  %socket = getelementptr inbounds %struct.afs_net, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %socket, align 4
  %rxcall = getelementptr inbounds %struct.afs_call, ptr %call, i32 0, i32 5
  %59 = ptrtoint ptr %rxcall to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rxcall, align 4
  %call99 = call zeroext i1 @rxrpc_kernel_get_srtt(ptr noundef %58, ptr noundef %60, ptr noundef nonnull %rtt_us) #8
  br i1 %call99, label %land.lhs.true101, label %if.end98.do.end114_crit_edge

if.end98.do.end114_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114

land.lhs.true101:                                 ; preds = %if.end98
  %61 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rtt_us, align 4
  %probe102 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9
  %63 = ptrtoint ptr %probe102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %probe102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp103 = icmp ult i32 %62, %64
  br i1 %cmp103, label %if.then105, label %land.lhs.true101.do.end114_crit_edge

land.lhs.true101.do.end114_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114

if.then105:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %probe102 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %probe102, align 4
  %rtt108 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 5
  %66 = ptrtoint ptr %rtt108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %62, ptr %rtt108, align 4
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %preferred to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %8, ptr %preferred, align 2
  br label %do.end114

do.end114:                                        ; preds = %if.then105, %land.lhs.true101.do.end114_crit_edge, %if.end98.do.end114_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %flags118 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 9, i32 3
  %68 = ptrtoint ptr %flags118 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %flags118, align 2
  %70 = or i16 %69, 1
  store i16 %70, ptr %flags118, align 2
  %flags122 = getelementptr inbounds %struct.afs_vlserver, ptr %3, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags122) #8
  call void @_set_bit(i32 noundef 3, ptr noundef %flags122) #8
  br label %out

out:                                              ; preds = %do.end114, %if.end65, %if.end38
  %have_result.0.off0 = phi i1 [ false, %if.end65 ], [ false, %if.end38 ], [ true, %do.end114 ]
  call void @_raw_spin_unlock(ptr noundef %probe_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %71 = load i32, ptr @afs_debug, align 4
  %and126 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %out.do.end148_crit_edge, label %do.end137, !prof !49

out.do.end148_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end148

do.end137:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %72 = call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i214 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i214 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task140, align 8
  %comm141 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 101
  %transport = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %conv, i32 4
  %76 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rtt_us, align 4
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm141, i32 noundef %5, i32 noundef %conv, ptr noundef %transport, i32 noundef %77, i32 noundef %10) #11
  br label %do.end148

do.end148:                                        ; preds = %do.end137, %out.do.end148_crit_edge
  call fastcc void @afs_done_one_vl_probe(ptr noundef %3, i1 noundef zeroext %have_result.0.off0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtt_us) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_io_error(i32 noundef %call, i32 noundef %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 1), ptr blockaddress(@trace_afs_io_error, %do.body)) #8
          to label %if.end49 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !49

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %call43 = tail call i32 @__traceiter_afs_io_error(ptr noundef null, i32 noundef %call, i32 noundef %error, i32 noundef 4) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !39) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !39) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !49

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_io_error, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_io_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_afs_io_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1194, ptr noundef nonnull @.str.13) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !39) #8
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_kernel_get_srtt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afs_done_one_vl_probe(ptr noundef %server, i1 noundef zeroext %wake_up) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %probe_outstanding = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %probe_outstanding, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %probe_outstanding, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %probe_outstanding, ptr %probe_outstanding, i32 1, ptr elementtype(i32) %probe_outstanding) #8, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 9, i32 3
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 2
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.afs_finished_vl_probe.exit_crit_edge

if.then.afs_finished_vl_probe.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_finished_vl_probe.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %rtt.i = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 5
  %4 = ptrtoint ptr %rtt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rtt.i, align 4
  %flags1.i = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags1.i) #8
  br label %afs_finished_vl_probe.exit

afs_finished_vl_probe.exit:                       ; preds = %if.then.i, %if.then.afs_finished_vl_probe.exit_crit_edge
  %flags2.i = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags2.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %flags2.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags2.i, ptr %flags2.i, i32 2, ptr elementtype(i32) %flags2.i) #8, !srcloc !60
  tail call void @wake_up_bit(ptr noundef %flags2.i, i32 noundef 1) #8
  br label %if.then1

if.end:                                           ; preds = %entry
  br i1 %wake_up, label %if.end.if.then1_crit_edge, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.then1:                                         ; preds = %if.end.if.then1_crit_edge, %afs_finished_vl_probe.exit
  %probe_wq = getelementptr inbounds %struct.afs_vlserver, ptr %server, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %probe_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_send_vl_probes(ptr noundef %net, ptr noundef %key, ptr nocapture noundef readonly %vllist) local_unnamed_addr #0 align 64 {
entry:
  %ac.i = alloca %struct.afs_addr_cursor, align 4
  %e = alloca %struct.afs_error, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #8
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %e, align 4, !annotation !61
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 2
  %1 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr_servers, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp26.not = icmp eq i8 %2, 0
  br i1 %cmp26.not, label %entry.cond.false_crit_edge, label %for.body.lr.ph

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds i8, ptr %ac.i, i32 4
  %index.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac.i, i32 0, i32 2
  %abort_code.i = getelementptr inbounds %struct.afs_addr_cursor, ptr %ac.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %in_progress.0.off027 = phi i1 [ false, %for.body.lr.ph ], [ %in_progress.1.off0, %for.inc.for.body_crit_edge ]
  %server2 = getelementptr %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 8, i32 %i.028, i32 3
  %4 = ptrtoint ptr %server2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server2, align 4
  %flags = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

test_and_set_bit_lock.exit:                       ; preds = %if.end
  call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #8
  %10 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 2, ptr elementtype(i32) %flags) #8, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %11 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.not = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.not, label %land.lhs.true, label %test_and_set_bit_lock.exit.for.inc_crit_edge

test_and_set_bit_lock.exit.for.inc_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %test_and_set_bit_lock.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ac.i) #8
  %12 = call ptr @memset(ptr %3, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.do.end8.i_crit_edge, label %do.end.i, !prof !49

land.lhs.true.do.end8.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i22 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i22 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %name.i = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 12
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm.i, ptr noundef nonnull @.str.16, ptr noundef %name.i) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %land.lhs.true.do.end8.i_crit_edge
  %lock.i = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 3
  call void @_raw_read_lock(ptr noundef %lock.i) #8
  %dep_map.i = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 3, i32 4
  %call.i.i23 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool12.not.i = icmp eq i32 %call.i.i23, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i, label %do.end8.i.do.end20.i_crit_edge

do.end8.i.do.end20.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

land.lhs.true.i:                                  ; preds = %do.end8.i
  %call13.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true.i.do.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %.b50.i = load i1, ptr @afs_do_probe_vlserver.__warned, align 1
  br i1 %.b50.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @afs_do_probe_vlserver.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef nonnull @.str.17) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true.i.do.end20.i_crit_edge, %do.end8.i.do.end20.i_crit_edge
  %addresses.i = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %addresses.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addresses.i, align 4
  %20 = ptrtoint ptr %ac.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %ac.i, align 4
  call void @_raw_read_unlock(ptr noundef %lock.i) #8
  %probe_outstanding.i = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 7
  %nr_addrs.i = getelementptr inbounds %struct.afs_addr_list, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_addrs.i, align 1
  %conv.i = zext i8 %22 to i32
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %probe_outstanding.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %probe_outstanding.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %conv.i, ptr %probe_outstanding.i, align 4
  %probe.i = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 9
  %24 = getelementptr inbounds %struct.afs_vlserver, ptr %5, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %24, align 4
  %26 = ptrtoint ptr %probe.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %probe.i, align 4
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %index.i, align 4
  %28 = ptrtoint ptr %nr_addrs.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_addrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp53.not.i = icmp eq i8 %29, 0
  br i1 %cmp53.not.i, label %do.end20.i.afs_do_probe_vlserver.exit_crit_edge, label %do.end20.i.for.body.i_crit_edge

do.end20.i.for.body.i_crit_edge:                  ; preds = %do.end20.i
  br label %for.body.i

do.end20.i.afs_do_probe_vlserver.exit_crit_edge:  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_do_probe_vlserver.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end20.i.for.body.i_crit_edge
  %in_progress.0.off054.i = phi i1 [ %in_progress.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %do.end20.i.for.body.i_crit_edge ]
  %call31.i = call ptr @afs_vl_get_capabilities(ptr noundef %net, ptr noundef nonnull %ac.i, ptr noundef %key, ptr noundef %5, i32 noundef %i.028) #8
  %cmp.i.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else.i, label %if.then33.i

if.then33.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @afs_put_call(ptr noundef %call31.i) #8
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call31.i to i32
  %31 = ptrtoint ptr %abort_code.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %abort_code.i, align 4
  call void @afs_prioritise_error(ptr noundef nonnull %e, i32 noundef %30, i32 noundef %32) #8
  call fastcc void @afs_done_one_vl_probe(ptr noundef %5, i1 noundef zeroext false) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then33.i
  %in_progress.1.off0.i = phi i1 [ %in_progress.0.off054.i, %if.else.i ], [ true, %if.then33.i ]
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index.i, align 4
  %inc.i = add i8 %34, 1
  store i8 %inc.i, ptr %index.i, align 4
  %conv26.i = sext i8 %inc.i to i32
  %35 = ptrtoint ptr %ac.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ac.i, align 4
  %nr_addrs28.i = getelementptr inbounds %struct.afs_addr_list, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %nr_addrs28.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_addrs28.i, align 1
  %conv29.i = zext i8 %38 to i32
  %cmp.i = icmp slt i32 %conv26.i, %conv29.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.afs_do_probe_vlserver.exit_crit_edge

for.inc.i.afs_do_probe_vlserver.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %afs_do_probe_vlserver.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

afs_do_probe_vlserver.exit:                       ; preds = %for.inc.i.afs_do_probe_vlserver.exit_crit_edge, %do.end20.i.afs_do_probe_vlserver.exit_crit_edge
  %in_progress.0.off0.lcssa.i = phi i1 [ false, %do.end20.i.afs_do_probe_vlserver.exit_crit_edge ], [ %in_progress.1.off0.i, %for.inc.i.afs_do_probe_vlserver.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ac.i) #8
  %spec.select = select i1 %in_progress.0.off0.lcssa.i, i1 true, i1 %in_progress.0.off027
  br label %for.inc

for.inc:                                          ; preds = %afs_do_probe_vlserver.exit, %test_and_set_bit_lock.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %in_progress.1.off0 = phi i1 [ %in_progress.0.off027, %for.body.for.inc_crit_edge ], [ %in_progress.0.off027, %test_and_set_bit_lock.exit.for.inc_crit_edge ], [ %spec.select, %afs_do_probe_vlserver.exit ], [ %in_progress.0.off027, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.028, 1
  %39 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %40 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %in_progress.1.off0, label %for.end.cond.end_crit_edge, label %for.end.cond.false_crit_edge

for.end.cond.false_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %for.end.cond.false_crit_edge, %entry.cond.false_crit_edge
  %41 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %e, align 4
  %conv12 = sext i16 %42 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %cond = phi i32 [ %conv12, %cond.false ], [ 0, %for.end.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #8
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_wait_for_vl_probes(ptr nocapture noundef %vllist, i32 noundef %untried) #0 align 64 {
entry:
  %untried.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %untried.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %untried, ptr %untried.addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !49

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i398 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i398 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 2
  %6 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %7 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %untried) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %nr_servers7 = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 2
  %8 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_servers7, align 4
  %conv8 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp420.not = icmp eq i8 %9, 0
  br i1 %cmp420.not, label %do.end6.lor.lhs.false_crit_edge, label %do.end6.for.body_crit_edge

do.end6.for.body_crit_edge:                       ; preds = %do.end6
  br label %for.body

do.end6.lor.lhs.false_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end6.for.body_crit_edge
  %have_responders.0.off0423 = phi i1 [ %have_responders.1.off0, %for.inc.for.body_crit_edge ], [ false, %do.end6.for.body_crit_edge ]
  %i.0421 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end6.for.body_crit_edge ]
  %10 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %untried.addr.0.448 = load volatile i32, ptr %untried.addr, align 4
  %and.i = and i32 %i.0421, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %untried.addr.0.448, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %server13 = getelementptr %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 8, i32 %i.0421, i32 3
  %13 = ptrtoint ptr %server13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server13, align 4
  %flags = getelementptr inbounds %struct.afs_vlserver, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.then16, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %11, -1
  %and.i378 = and i32 %untried.addr.0.448, %neg.i
  %18 = ptrtoint ptr %untried.addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i378, ptr %untried.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then12.if.end17_crit_edge
  %flags18 = getelementptr inbounds %struct.afs_vlserver, ptr %14, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %flags18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags18, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool21.not = icmp ne i16 %21, 0
  %spec.select = select i1 %tobool21.not, i1 true, i1 %have_responders.0.off0423
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  %have_responders.1.off0 = phi i1 [ %have_responders.0.off0423, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end17 ]
  %inc = add nuw nsw i32 %i.0421, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %have_responders.1.off0, label %for.end.cleanup315_crit_edge, label %for.end.lor.lhs.false_crit_edge

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end.cleanup315_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

lor.lhs.false:                                    ; preds = %for.end.lor.lhs.false_crit_edge, %do.end6.lor.lhs.false_crit_edge
  %22 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %untried.addr.0.449 = load i32, ptr %untried.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %untried.addr.0.449)
  %tobool27.not = icmp eq i32 %untried.addr.0.449, 0
  br i1 %tobool27.not, label %lor.lhs.false.cleanup315_crit_edge, label %if.end8.i

lor.lhs.false.cleanup315_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end8.i:                                        ; preds = %lor.lhs.false
  %23 = mul nuw nsw i32 %conv8, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #12
  %tobool34.not = icmp eq ptr %call9.i, null
  br i1 %tobool34.not, label %if.end8.i.cleanup315_crit_edge, label %for.cond37.preheader

if.end8.i.cleanup315_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

for.cond37.preheader:                             ; preds = %if.end8.i
  %24 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr_servers7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp40427.not = icmp eq i8 %25, 0
  br i1 %cmp40427.not, label %for.cond37.preheader.__here.preheader_crit_edge, label %for.cond37.preheader.for.body42_crit_edge

for.cond37.preheader.for.body42_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body42

for.cond37.preheader.__here.preheader_crit_edge:  ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here.preheader

for.body42:                                       ; preds = %for.inc54.for.body42_crit_edge, %for.cond37.preheader.for.body42_crit_edge
  %i.1428 = phi i32 [ %inc55, %for.inc54.for.body42_crit_edge ], [ 0, %for.cond37.preheader.for.body42_crit_edge ]
  %26 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %untried.addr.0.447 = load volatile i32, ptr %untried.addr, align 4
  %and.i381 = and i32 %i.1428, 31
  %27 = shl nuw i32 1, %and.i381
  %28 = and i32 %untried.addr.0.447, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool44.not = icmp eq i32 %28, 0
  br i1 %tobool44.not, label %for.body42.for.inc54_crit_edge, label %if.then45

for.body42.for.inc54_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54

if.then45:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  %server48 = getelementptr %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 8, i32 %i.1428, i32 3
  %29 = ptrtoint ptr %server48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %server48, align 4
  %arrayidx49 = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.1428
  %31 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i399 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i399 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task51, align 8
  %35 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx49, align 4
  %private.i = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.1428, i32 1
  %36 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %private.i, align 4
  %func.i = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.1428, i32 2
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @default_wake_function, ptr %func.i, align 4
  %probe_wq = getelementptr inbounds %struct.afs_vlserver, ptr %30, i32 0, i32 6
  tail call void @add_wait_queue(ptr noundef %probe_wq, ptr noundef %arrayidx49) #8
  br label %for.inc54

for.inc54:                                        ; preds = %if.then45, %for.body42.for.inc54_crit_edge
  %inc55 = add nuw nsw i32 %i.1428, 1
  %38 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nr_servers7, align 4
  %conv39 = zext i8 %39 to i32
  %cmp40 = icmp ult i32 %inc55, %conv39
  br i1 %cmp40, label %for.inc54.for.body42_crit_edge, label %for.inc54.__here.preheader_crit_edge

for.inc54.__here.preheader_crit_edge:             ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here.preheader

for.inc54.for.body42_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42

__here.preheader:                                 ; preds = %for.inc54.__here.preheader_crit_edge, %for.cond37.preheader.__here.preheader_crit_edge
  br label %__here

__here:                                           ; preds = %cleanup, %__here.preheader
  %40 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i400 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i400 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task107, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 212
  %44 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_vl_probes, %__here) to i32), ptr %task_state_change, align 4
  %45 = load ptr, ptr %task107, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %45, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  %47 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nr_servers7, align 4
  %conv134 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp135430.not = icmp eq i8 %48, 0
  br i1 %cmp135430.not, label %__here.__here219_crit_edge, label %__here.for.body137_crit_edge

__here.for.body137_crit_edge:                     ; preds = %__here
  br label %for.body137

__here.__here219_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here219

for.body137:                                      ; preds = %for.inc157.for.body137_crit_edge, %__here.for.body137_crit_edge
  %i.2432 = phi i32 [ %inc158, %for.inc157.for.body137_crit_edge ], [ 0, %__here.for.body137_crit_edge ]
  %still_probing.0.off0431 = phi i1 [ %still_probing.1.off0, %for.inc157.for.body137_crit_edge ], [ false, %__here.for.body137_crit_edge ]
  %49 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %untried.addr.0.446 = load volatile i32, ptr %untried.addr, align 4
  %and.i386 = and i32 %i.2432, 31
  %50 = shl nuw i32 1, %and.i386
  %51 = and i32 %untried.addr.0.446, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool139.not = icmp eq i32 %51, 0
  br i1 %tobool139.not, label %for.body137.for.inc157_crit_edge, label %if.then140

for.body137.for.inc157_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc157

if.then140:                                       ; preds = %for.body137
  %server143 = getelementptr %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 8, i32 %i.2432, i32 3
  %52 = ptrtoint ptr %server143 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %server143, align 4
  %flags145 = getelementptr inbounds %struct.afs_vlserver, ptr %53, i32 0, i32 9, i32 3
  %54 = ptrtoint ptr %flags145 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags145, align 2
  %56 = and i16 %55, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool148.not = icmp eq i16 %56, 0
  br i1 %tobool148.not, label %if.end150, label %if.then140.__here219_crit_edge

if.then140.__here219_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here219

if.end150:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %flags151 = getelementptr inbounds %struct.afs_vlserver, ptr %53, i32 0, i32 2
  %57 = ptrtoint ptr %flags151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags151, align 4
  %59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool153.not = icmp ne i32 %59, 0
  %spec.select375 = select i1 %tobool153.not, i1 true, i1 %still_probing.0.off0431
  br label %for.inc157

for.inc157:                                       ; preds = %if.end150, %for.body137.for.inc157_crit_edge
  %still_probing.1.off0 = phi i1 [ %still_probing.0.off0431, %for.body137.for.inc157_crit_edge ], [ %spec.select375, %if.end150 ]
  %inc158 = add nuw nsw i32 %i.2432, 1
  %exitcond445.not = icmp eq i32 %inc158, %conv134
  br i1 %exitcond445.not, label %for.end159, label %for.inc157.for.body137_crit_edge

for.inc157.for.body137_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body137

for.end159:                                       ; preds = %for.inc157
  br i1 %still_probing.1.off0, label %lor.lhs.false161, label %for.end159.__here219_crit_edge

for.end159.__here219_crit_edge:                   ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here219

lor.lhs.false161:                                 ; preds = %for.end159
  %60 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task107, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stack.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %66 = and i32 %65, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %lor.lhs.false161.__here219_crit_edge, !prof !49

lor.lhs.false161.__here219_crit_edge:             ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here219

signal_pending.exit:                              ; preds = %lor.lhs.false161
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %63, align 4
  %and1.i.i.i.i.i = and i32 %68, 1
  %tobool165.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool165.not, label %cleanup, label %signal_pending.exit.__here219_crit_edge

signal_pending.exit.__here219_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here219

cleanup:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @schedule() #8
  br label %__here

__here219:                                        ; preds = %signal_pending.exit.__here219_crit_edge, %lor.lhs.false161.__here219_crit_edge, %for.end159.__here219_crit_edge, %if.then140.__here219_crit_edge, %__here.__here219_crit_edge
  %69 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task107, align 8
  %task_state_change223 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 212
  %71 = ptrtoint ptr %task_state_change223 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 ptrtoint (ptr blockaddress(@afs_wait_for_vl_probes, %__here219) to i32), ptr %task_state_change223, align 4
  %72 = load ptr, ptr %task107, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 0, ptr %72, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  %74 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nr_servers7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp252436.not = icmp eq i8 %75, 0
  br i1 %cmp252436.not, label %for.end278.thread, label %__here219.for.body254_crit_edge

__here219.for.body254_crit_edge:                  ; preds = %__here219
  br label %for.body254

for.end278.thread:                                ; preds = %__here219
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %land.lhs.true281

for.body254:                                      ; preds = %for.inc276.for.body254_crit_edge, %__here219.for.body254_crit_edge
  %rtt.0440 = phi i32 [ %rtt.2, %for.inc276.for.body254_crit_edge ], [ -1, %__here219.for.body254_crit_edge ]
  %pref.0439 = phi i32 [ %pref.2, %for.inc276.for.body254_crit_edge ], [ -1, %__here219.for.body254_crit_edge ]
  %i.3437 = phi i32 [ %inc277, %for.inc276.for.body254_crit_edge ], [ 0, %__here219.for.body254_crit_edge ]
  %76 = ptrtoint ptr %untried.addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %untried.addr.0. = load volatile i32, ptr %untried.addr, align 4
  %and.i393 = and i32 %i.3437, 31
  %77 = shl nuw i32 1, %and.i393
  %78 = and i32 %untried.addr.0., %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool256.not = icmp eq i32 %78, 0
  br i1 %tobool256.not, label %for.body254.for.inc276_crit_edge, label %if.then257

for.body254.for.inc276_crit_edge:                 ; preds = %for.body254
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc276

if.then257:                                       ; preds = %for.body254
  call void @__sanitizer_cov_trace_pc() #10
  %server260 = getelementptr %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 8, i32 %i.3437, i32 3
  %79 = ptrtoint ptr %server260 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %server260, align 4
  %rtt265 = getelementptr inbounds %struct.afs_vlserver, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %rtt265 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %rtt265, align 4
  %flags266 = getelementptr inbounds %struct.afs_vlserver, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %flags266 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags266, align 4
  %85 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool268.not = icmp ne i32 %85, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %rtt.0440)
  %cmp269 = icmp ult i32 %82, %rtt.0440
  %or.cond = select i1 %tobool268.not, i1 %cmp269, i1 false
  %pref.1 = select i1 %or.cond, i32 %i.3437, i32 %pref.0439
  %rtt.1 = select i1 %or.cond, i32 %82, i32 %rtt.0440
  %probe_wq273 = getelementptr inbounds %struct.afs_vlserver, ptr %80, i32 0, i32 6
  %arrayidx274 = getelementptr %struct.wait_queue_entry, ptr %call9.i, i32 %i.3437
  tail call void @remove_wait_queue(ptr noundef %probe_wq273, ptr noundef %arrayidx274) #8
  br label %for.inc276

for.inc276:                                       ; preds = %if.then257, %for.body254.for.inc276_crit_edge
  %pref.2 = phi i32 [ %pref.1, %if.then257 ], [ %pref.0439, %for.body254.for.inc276_crit_edge ]
  %rtt.2 = phi i32 [ %rtt.1, %if.then257 ], [ %rtt.0440, %for.body254.for.inc276_crit_edge ]
  %inc277 = add nuw nsw i32 %i.3437, 1
  %86 = ptrtoint ptr %nr_servers7 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nr_servers7, align 4
  %conv251 = zext i8 %87 to i32
  %cmp252 = icmp ult i32 %inc277, %conv251
  br i1 %cmp252, label %for.inc276.for.body254_crit_edge, label %for.end278

for.inc276.for.body254_crit_edge:                 ; preds = %for.inc276
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body254

for.end278:                                       ; preds = %for.inc276
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pref.2)
  %cmp279 = icmp eq i32 %pref.2, -1
  br i1 %cmp279, label %for.end278.land.lhs.true281_crit_edge, label %if.end287

for.end278.land.lhs.true281_crit_edge:            ; preds = %for.end278
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true281

land.lhs.true281:                                 ; preds = %for.end278.land.lhs.true281_crit_edge, %for.end278.thread
  %88 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task107, align 8
  %stack.i.i403 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %stack.i.i403 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stack.i.i403, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %94 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i404 = icmp eq i32 %94, 0
  br i1 %tobool.not.i404, label %signal_pending.exit408, label %land.lhs.true281.cleanup315_crit_edge, !prof !49

land.lhs.true281.cleanup315_crit_edge:            ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

signal_pending.exit408:                           ; preds = %land.lhs.true281
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %91, align 4
  %and1.i.i.i.i.i405 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i405)
  %tobool285.not = icmp eq i32 %and1.i.i.i.i.i405, 0
  br i1 %tobool285.not, label %signal_pending.exit408.do.body293_crit_edge, label %signal_pending.exit408.cleanup315_crit_edge

signal_pending.exit408.cleanup315_crit_edge:      ; preds = %signal_pending.exit408
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

signal_pending.exit408.do.body293_crit_edge:      ; preds = %signal_pending.exit408
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body293

if.end287:                                        ; preds = %for.end278
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pref.2)
  %cmp288 = icmp sgt i32 %pref.2, -1
  br i1 %cmp288, label %if.then290, label %if.end287.do.body293_crit_edge

if.end287.do.body293_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body293

if.then290:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  %conv291 = trunc i32 %pref.2 to i8
  %preferred = getelementptr inbounds %struct.afs_vlserver_list, ptr %vllist, i32 0, i32 4
  %97 = ptrtoint ptr %preferred to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv291, ptr %preferred, align 2
  br label %do.body293

do.body293:                                       ; preds = %if.then290, %if.end287.do.body293_crit_edge, %signal_pending.exit408.do.body293_crit_edge
  %pref.0.lcssa456 = phi i32 [ -1, %signal_pending.exit408.do.body293_crit_edge ], [ %pref.2, %if.end287.do.body293_crit_edge ], [ %pref.2, %if.then290 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %98 = load i32, ptr @afs_debug, align 4
  %and294 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294)
  %tobool295.not = icmp eq i32 %and294, 0
  br i1 %tobool295.not, label %do.body293.cleanup315_crit_edge, label %do.end305, !prof !49

do.body293.cleanup315_crit_edge:                  ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

do.end305:                                        ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task107, align 8
  %comm309 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 101
  %call311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm309, ptr noundef nonnull @.str.7, i32 noundef %pref.0.lcssa456) #11
  br label %cleanup315

cleanup315:                                       ; preds = %do.end305, %do.body293.cleanup315_crit_edge, %signal_pending.exit408.cleanup315_crit_edge, %land.lhs.true281.cleanup315_crit_edge, %if.end8.i.cleanup315_crit_edge, %lor.lhs.false.cleanup315_crit_edge, %for.end.cleanup315_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup315_crit_edge ], [ 0, %for.end.cleanup315_crit_edge ], [ -12, %if.end8.i.cleanup315_crit_edge ], [ -512, %signal_pending.exit408.cleanup315_crit_edge ], [ 0, %do.end305 ], [ 0, %do.body293.cleanup315_crit_edge ], [ -512, %land.lhs.true281.cleanup315_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_io_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_vl_get_capabilities(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_put_call(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_prioritise_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/vl_probe.c", i32 57, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_vlserver_probe_result._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_vlserver_probe_result._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/vl_probe.c", i32 133, i32 2}
!8 = !{ptr @afs_vlserver_probe_result._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_vlserver_probe_result._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/vl_probe.c", i32 219, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @afs_wait_for_vl_probes._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @afs_wait_for_vl_probes._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/afs/vl_probe.c", i32 249, i32 3}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/afs/vl_probe.c", i32 266, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/afs/vl_probe.c", i32 290, i32 2}
!21 = !{ptr @afs_wait_for_vl_probes._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_wait_for_vl_probes._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/afs.h", i32 1174, i32 1}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!27 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/vl_probe.c", i32 155, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @afs_do_probe_vlserver._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @afs_do_probe_vlserver._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../fs/afs/vl_probe.c", i32 158, i32 13}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2157786378}
!51 = !{i64 2148238311, i64 2148238316, i64 2148238329, i64 2148238373, i64 2148238407, i64 2148238428}
!52 = !{i64 2157523364}
!53 = !{i64 2157523587}
!54 = !{i64 2149260991}
!55 = !{i64 2149262027}
!56 = !{i64 2148513370}
!57 = !{i64 2148428103, i64 2148428135, i64 2148428164, i64 2148428198, i64 2148428229, i64 2148428252}
!58 = !{i64 2148513599}
!59 = !{i64 2148521744}
!60 = !{i64 2148432163, i64 2148432195, i64 2148432224, i64 2148432258, i64 2148432289, i64 2148432312}
!61 = !{!"auto-init"}
!62 = !{i64 2148433776, i64 2148433808, i64 2148433837, i64 2148433871, i64 2148433902, i64 2148433925}
!63 = !{i64 2148522857}
!64 = !{i64 2157798611}
!65 = !{i64 2157803412}
