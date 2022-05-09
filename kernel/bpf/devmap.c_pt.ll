; ModuleID = '/llk/IR_all_yes/kernel/bpf/devmap.c_pt.bc'
source_filename = "../kernel/bpf/devmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_redirect_info = type { i32, i32, ptr, ptr, i32, i32, i32, %struct.bpf_nh_params }
%struct.bpf_nh_params = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.134 }
%union.anon.134 = type { [4 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_dev_bulk_queue = type { [16 x ptr], %struct.list_head, ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.54, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.132, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.54 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.132 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.xdp_mem_info = type { i32, i32 }
%struct.bpf_dtab_netdev = type { ptr, %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, %struct.bpf_devmap_val }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_devmap_val = type { i32, %union.anon.161 }
%union.anon.161 = type { i32 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.atomic64_t = type { i64 }
%struct.bpf_dtab = type { %struct.bpf_map, ptr, %struct.list_head, ptr, %struct.spinlock, i32, i32, [60 x i8] }
%struct.xdp_txq_info = type { ptr }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.55, %union.anon.58, %union.anon.59, [48 x i8], %union.anon.60, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.62, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr, %union.anon.57 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { ptr }
%union.anon.59 = type { i64 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i32, ptr }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.64, i32, i32, i32, i16, i16, %union.anon.66, i32, %union.anon.67, %union.anon.68, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.64 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i16 }
%struct.anon.87 = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.153, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.153 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.114 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { %struct.anon.116, [0 x %struct.sock_filter] }
%struct.anon.116 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.113 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.113 = type { %struct.work_struct }

@dev_flush_list = weak dso_local global %struct.list_head zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dev_map_enqueue_multi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/bpf/devmap.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dev_map_enqueue_multi.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dev_map_redirect_multi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpf_dtab\00", [23 x i8] zeroinitializer }, align 32
@dev_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dev_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @dev_map_alloc, ptr null, ptr @dev_map_free, ptr @dev_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_map_lookup_elem, ptr @dev_map_update_elem, ptr @dev_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_map_redirect, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.4, ptr @dev_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@dev_map_hash_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dev_map_hash_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @dev_map_alloc, ptr null, ptr @dev_map_free, ptr @dev_map_hash_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_map_hash_lookup_elem, ptr @dev_map_hash_update_elem, ptr @dev_map_hash_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_hash_map_redirect, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.4, ptr @dev_map_hash_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_devmap__488_1134_dev_map_init4 = internal global ptr @dev_map_init, section ".initcall4.init", align 4
@__pcpu_unique_dev_flush_list = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_devmap_xmit = external dso_local global %struct.tracepoint, align 4
@trace_xdp_devmap_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dev_map_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dev_map_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dev_map_list, ptr @dev_map_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_map_init_map.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dtab->index_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev_map_lock\00", [19 x i8] zeroinitializer }, align 32
@__dev_map_lookup_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_redirect_info = external dso_local global %struct.bpf_redirect_info, section ".data..percpu", align 4
@__dev_map_hash_lookup_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dev_map_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dev_map_notification, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@dev_map_notification.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dev_map_notification.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 602, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 625, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1017, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"dev_map_btf_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1007, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"dev_map_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1008, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"dev_map_hash_map_btf_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1022, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"dev_map_hash_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1023, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 613, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 271, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 200, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 28, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"dev_map_lock\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"dev_map_list\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 88, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 145, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 87, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"dev_map_notifier\00", align 1
@___asan_gen_.74 = private constant [23 x i8] c"../kernel/bpf/devmap.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1116, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 695, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 723, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_devmap__488_1134_dev_map_init4, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @dev_map_btf_id, ptr @dev_map_ops, ptr @dev_map_hash_map_btf_id, ptr @dev_map_hash_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dev_map_lock, ptr @dev_map_list, ptr @dev_map_init_map.__key, ptr @.str.10, ptr @.str.11, ptr @dev_map_notifier, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_hash_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_hash_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_init_map.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_map_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dev_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @dev_flush_list to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.not23 = icmp eq ptr %8, %6
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %bq.0 = getelementptr i8, ptr %.pn.in24, i32 -64
  %9 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in24, align 4
  tail call fastcc void @bq_xmit_all(ptr noundef %bq.0, i32 noundef 1)
  %dev_rx = getelementptr i8, ptr %.pn.in24, i32 12
  %10 = ptrtoint ptr %dev_rx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dev_rx, align 4
  %xdp_prog = getelementptr i8, ptr %.pn.in24, i32 16
  %11 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xdp_prog, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %14 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  store ptr null, ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %6
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq_xmit_all(ptr noundef %bq, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %bq, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %count = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %bq, i32 0, i32 5
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge, !prof !77

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %bq, i32 0, i32 %i.069
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #13, !srcloc !78
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %xdp_prog = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %bq, i32 0, i32 4
  %6 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %for.end.if.end12_crit_edge, label %if.then6

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then6:                                         ; preds = %for.end
  %call = tail call fastcc i32 @dev_map_bpf_prog_run(ptr noundef nonnull %7, ptr noundef %bq, i32 noundef %3, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then6.out_crit_edge, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %for.end.if.end12_crit_edge
  %to_send.0 = phi i32 [ %call, %if.then6.if.end12_crit_edge ], [ %3, %for.end.if.end12_crit_edge ]
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops, align 8
  %ndo_xdp_xmit = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 77
  %10 = ptrtoint ptr %ndo_xdp_xmit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_xdp_xmit, align 4
  %call15 = tail call i32 %11(ptr noundef %1, i32 noundef %to_send.0, ptr noundef %bq, i32 noundef %flags) #13
  %12 = tail call i32 @llvm.smax.i32(i32 %call15, i32 0)
  %13 = tail call i32 @llvm.smin.i32(i32 %call15, i32 0)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %to_send.0)
  %cmp2070 = icmp slt i32 %12, %to_send.0
  br i1 %cmp2070, label %if.end12.for.body27_crit_edge, label %if.end12.out_crit_edge, !prof !77

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12.for.body27_crit_edge:                    ; preds = %if.end12
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %if.end12.for.body27_crit_edge
  %i.171 = phi i32 [ %inc31, %for.body27.for.body27_crit_edge ], [ %12, %if.end12.for.body27_crit_edge ]
  %arrayidx29 = getelementptr [16 x ptr], ptr %bq, i32 0, i32 %i.171
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29, align 4
  tail call void @xdp_return_frame_rx_napi(ptr noundef %15) #13
  %inc31 = add nuw i32 %i.171, 1
  %exitcond72.not = icmp eq i32 %inc31, %to_send.0
  br i1 %exitcond72.not, label %for.body27.out_crit_edge, label %for.body27.for.body27_crit_edge, !prof !79

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

for.body27.out_crit_edge:                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.body27.out_crit_edge, %if.end12.out_crit_edge, %if.then6.out_crit_edge
  %sent.1 = phi i32 [ 0, %if.then6.out_crit_edge ], [ %12, %if.end12.out_crit_edge ], [ %12, %for.body27.out_crit_edge ]
  %err.1 = phi i32 [ 0, %if.then6.out_crit_edge ], [ %13, %if.end12.out_crit_edge ], [ %13, %for.body27.out_crit_edge ]
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %count, align 4
  %dev_rx = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %bq, i32 0, i32 3
  %17 = ptrtoint ptr %dev_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_rx, align 4
  %sub = sub i32 %3, %sent.1
  tail call fastcc void @trace_xdp_devmap_xmit(ptr noundef %18, ptr noundef %1, i32 noundef %sent.1, i32 noundef %sub, i32 noundef %err.1)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_xdp_enqueue(ptr nocapture noundef readonly %dev, ptr noundef %xdpf, ptr noundef %dev_rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_xdp_xmit.i = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %ndo_xdp_xmit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_xdp_xmit.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.__xdp_enqueue.exit_crit_edge, label %if.end.i

entry.__xdp_enqueue.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xdp_enqueue.exit

if.end.i:                                         ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__xdp_enqueue.exit_crit_edge, label %if.end.i.i, !prof !77

if.end.i.__xdp_enqueue.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xdp_enqueue.exit

if.end.i.i:                                       ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %7 to i32
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %add.i.i = add i32 %9, 4
  %add4.i.i = add i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i, i32 %conv.i)
  %cmp.i.i = icmp ult i32 %add4.i.i, %conv.i
  br i1 %cmp.i.i, label %if.end.i.i.__xdp_enqueue.exit_crit_edge, label %if.end5.i

if.end.i.i.__xdp_enqueue.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xdp_enqueue.exit

if.end5.i:                                        ; preds = %if.end.i.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i10.i = add i32 %17, ptrtoint (ptr @dev_flush_list to i32)
  %18 = inttoptr i32 %add.i10.i to ptr
  %xdp_bulkq.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 109
  %19 = ptrtoint ptr %xdp_bulkq.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xdp_bulkq.i.i, align 64
  %21 = ptrtoint ptr %20 to i32
  %add12.i.i = add i32 %17, %21
  %22 = inttoptr i32 %add12.i.i to ptr
  %count.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp.i11.i = icmp eq i32 %24, 16
  br i1 %cmp.i11.i, label %if.then.i.i, label %if.end5.i.if.end.i12.i_crit_edge, !prof !77

if.end5.i.if.end.i12.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i12.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bq_xmit_all(ptr noundef %22, i32 noundef 0) #13
  br label %if.end.i12.i

if.end.i12.i:                                     ; preds = %if.then.i.i, %if.end5.i.if.end.i12.i_crit_edge
  %dev_rx14.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %dev_rx14.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_rx14.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %26, null
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end.i12.i.bq_enqueue.exit.i_crit_edge

if.end.i12.i.bq_enqueue.exit.i_crit_edge:         ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit.i

if.then16.i.i:                                    ; preds = %if.end.i12.i
  %27 = ptrtoint ptr %dev_rx14.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev_rx, ptr %dev_rx14.i.i, align 4
  %xdp_prog18.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %22, i32 0, i32 4
  %28 = ptrtoint ptr %xdp_prog18.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %xdp_prog18.i.i, align 4
  %flush_node.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %22, i32 0, i32 1
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %18, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flush_node.i.i, ptr noundef %18, ptr noundef %30) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then16.i.i.bq_enqueue.exit.i_crit_edge

if.then16.i.i.bq_enqueue.exit.i_crit_edge:        ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %flush_node.i.i, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %flush_node.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %flush_node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %22, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %18, ptr %prev3.i.i.i.i, align 4
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %flush_node.i.i, ptr %18, align 4
  br label %bq_enqueue.exit.i

bq_enqueue.exit.i:                                ; preds = %if.end.i.i.i.i, %if.then16.i.i.bq_enqueue.exit.i_crit_edge, %if.end.i12.i.bq_enqueue.exit.i_crit_edge
  %35 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  %arrayidx21.i.i = getelementptr [16 x ptr], ptr %22, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %xdpf, ptr %arrayidx21.i.i, align 4
  br label %__xdp_enqueue.exit

__xdp_enqueue.exit:                               ; preds = %bq_enqueue.exit.i, %if.end.i.i.__xdp_enqueue.exit_crit_edge, %if.end.i.__xdp_enqueue.exit_crit_edge, %entry.__xdp_enqueue.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %bq_enqueue.exit.i ], [ -95, %entry.__xdp_enqueue.exit_crit_edge ], [ -100, %if.end.i.__xdp_enqueue.exit_crit_edge ], [ -90, %if.end.i.i.__xdp_enqueue.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_map_enqueue(ptr nocapture noundef readonly %dst, ptr noundef %xdpf, ptr noundef %dev_rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %xdp_prog = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dst, i32 0, i32 3
  %2 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_prog, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_xdp_xmit.i = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 77
  %6 = ptrtoint ptr %ndo_xdp_xmit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndo_xdp_xmit.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.__xdp_enqueue.exit_crit_edge, label %if.end.i

entry.__xdp_enqueue.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xdp_enqueue.exit

if.end.i:                                         ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.__xdp_enqueue.exit_crit_edge, label %if.end.i.i, !prof !77

if.end.i.__xdp_enqueue.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xdp_enqueue.exit

if.end.i.i:                                       ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %11 to i32
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.i.i = add i32 %13, 4
  %add4.i.i = add i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i, i32 %conv.i)
  %cmp.i.i = icmp ult i32 %add4.i.i, %conv.i
  br i1 %cmp.i.i, label %if.end.i.i.__xdp_enqueue.exit_crit_edge, label %if.end5.i

if.end.i.i.__xdp_enqueue.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__xdp_enqueue.exit

if.end5.i:                                        ; preds = %if.end.i.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i10.i = add i32 %21, ptrtoint (ptr @dev_flush_list to i32)
  %22 = inttoptr i32 %add.i10.i to ptr
  %xdp_bulkq.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 109
  %23 = ptrtoint ptr %xdp_bulkq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdp_bulkq.i.i, align 64
  %25 = ptrtoint ptr %24 to i32
  %add12.i.i = add i32 %21, %25
  %26 = inttoptr i32 %add12.i.i to ptr
  %count.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp.i11.i = icmp eq i32 %28, 16
  br i1 %cmp.i11.i, label %if.then.i.i, label %if.end5.i.if.end.i12.i_crit_edge, !prof !77

if.end5.i.if.end.i12.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i12.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bq_xmit_all(ptr noundef %26, i32 noundef 0) #13
  br label %if.end.i12.i

if.end.i12.i:                                     ; preds = %if.then.i.i, %if.end5.i.if.end.i12.i_crit_edge
  %dev_rx14.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %dev_rx14.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_rx14.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %30, null
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end.i12.i.bq_enqueue.exit.i_crit_edge

if.end.i12.i.bq_enqueue.exit.i_crit_edge:         ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit.i

if.then16.i.i:                                    ; preds = %if.end.i12.i
  %31 = ptrtoint ptr %dev_rx14.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev_rx, ptr %dev_rx14.i.i, align 4
  %xdp_prog18.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %26, i32 0, i32 4
  %32 = ptrtoint ptr %xdp_prog18.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %xdp_prog18.i.i, align 4
  %flush_node.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %22, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flush_node.i.i, ptr noundef %22, ptr noundef %34) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then16.i.i.bq_enqueue.exit.i_crit_edge

if.then16.i.i.bq_enqueue.exit.i_crit_edge:        ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %flush_node.i.i, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %flush_node.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %flush_node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %26, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %22, ptr %prev3.i.i.i.i, align 4
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %flush_node.i.i, ptr %22, align 4
  br label %bq_enqueue.exit.i

bq_enqueue.exit.i:                                ; preds = %if.end.i.i.i.i, %if.then16.i.i.bq_enqueue.exit.i_crit_edge, %if.end.i12.i.bq_enqueue.exit.i_crit_edge
  %39 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  %arrayidx21.i.i = getelementptr [16 x ptr], ptr %26, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %xdpf, ptr %arrayidx21.i.i, align 4
  br label %__xdp_enqueue.exit

__xdp_enqueue.exit:                               ; preds = %bq_enqueue.exit.i, %if.end.i.i.__xdp_enqueue.exit_crit_edge, %if.end.i.__xdp_enqueue.exit_crit_edge, %entry.__xdp_enqueue.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %bq_enqueue.exit.i ], [ -95, %entry.__xdp_enqueue.exit_crit_edge ], [ -100, %if.end.i.__xdp_enqueue.exit_crit_edge ], [ -90, %if.end.i.i.__xdp_enqueue.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_map_enqueue_multi(ptr noundef %xdpf, ptr noundef %dev_rx, ptr noundef %map, i1 noundef zeroext %exclude_ingress) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %excluded_devices = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %excluded_devices) #13
  %0 = call ptr @memset(ptr %excluded_devices, i32 255, i32 36)
  br i1 %exclude_ingress, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #13
  %adj_list.i = getelementptr inbounds %struct.net_device, ptr %dev_rx, i32 0, i32 13
  %1 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adj_list.i, ptr %iter.i, align 4
  %call.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %dev_rx, ptr noundef nonnull %iter.i) #13
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %if.then.get_upper_ifindexes.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.get_upper_ifindexes.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_upper_ifindexes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %n.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %upper.08.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.then.for.body.i_crit_edge ]
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %upper.08.i, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex.i, align 4
  %inc.i = add i32 %n.09.i, 1
  %arrayidx.i = getelementptr i32, ptr %excluded_devices, i32 %n.09.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx.i, align 4
  %call2.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %dev_rx, ptr noundef nonnull %iter.i) #13
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.get_upper_ifindexes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.get_upper_ifindexes.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_upper_ifindexes.exit

get_upper_ifindexes.exit:                         ; preds = %for.body.i.get_upper_ifindexes.exit_crit_edge, %if.then.get_upper_ifindexes.exit_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.then.get_upper_ifindexes.exit_crit_edge ], [ %inc.i, %for.body.i.get_upper_ifindexes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #13
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev_rx, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %inc = add i32 %n.0.lcssa.i, 1
  %arrayidx = getelementptr [9 x i32], ptr %excluded_devices, i32 0, i32 %n.0.lcssa.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %get_upper_ifindexes.exit, %entry.if.end_crit_edge
  %num_excluded.0 = phi i32 [ %inc, %get_upper_ifindexes.exit ], [ 0, %entry.if.end_crit_edge ]
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp = icmp eq i32 %9, 14
  br i1 %cmp, label %for.cond.preheader, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %if.end
  %n_buckets = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %10 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_buckets, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp36213.not = icmp eq i32 %11, 0
  br i1 %cmp36213.not, label %for.cond35.preheader.if.else107_crit_edge, label %for.body37.lr.ph

for.cond35.preheader.if.else107_crit_edge:        ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else107

for.body37.lr.ph:                                 ; preds = %for.cond35.preheader
  %dev_index_head.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  %dep_map = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 4, i32 0, i32 0, i32 4
  %len.i176 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  br label %for.body37

for.cond.preheader:                               ; preds = %if.end
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %12 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2217.not = icmp eq i32 %13, 0
  br i1 %cmp2217.not, label %for.cond.preheader.if.else107_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.else107_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else107

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %netdev_map = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %last_dst.0219 = phi ptr [ null, %for.body.lr.ph ], [ %last_dst.1, %for.inc.for.body_crit_edge ]
  %i.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc34, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %netdev_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_map, align 128
  %arrayidx4 = getelementptr ptr, ptr %15, i32 %i.0218
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx4, align 4
  %call6 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %for.body.do.end17_crit_edge

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

lor.lhs.false:                                    ; preds = %for.body
  %call8 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.do.end17_crit_edge

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call10 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b160 = load i1, ptr @dev_map_enqueue_multi.__warned, align 1
  br i1 %.b160, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dev_map_enqueue_multi.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 603, ptr noundef nonnull @.str.1) #13
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %lor.lhs.false.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %tobool.not.i162 = icmp eq ptr %17, null
  br i1 %tobool.not.i162, label %do.end17.for.inc_crit_edge, label %lor.lhs.false.i

do.end17.for.inc_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %do.end17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_xdp_xmit.i = getelementptr inbounds %struct.net_device_ops, ptr %21, i32 0, i32 77
  %22 = ptrtoint ptr %ndo_xdp_xmit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndo_xdp_xmit.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.for.inc_crit_edge, label %is_valid_dst.exit, !prof !77

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

is_valid_dst.exit:                                ; preds = %if.end.i
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %27 to i32
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %28 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 19
  %30 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %31 to i32
  %add.i.i = add i32 %29, 4
  %add4.i.i = add i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i, i32 %conv.i)
  %cmp.i.i.not = icmp ult i32 %add4.i.i, %conv.i
  br i1 %cmp.i.i.not, label %is_valid_dst.exit.for.inc_crit_edge, label %if.end21

is_valid_dst.exit.for.inc_crit_edge:              ; preds = %is_valid_dst.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %is_valid_dst.exit
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %17, align 4
  %ifindex23 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %ifindex23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ifindex23, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end21
  %num_excluded.addr.0.i = phi i32 [ %num_excluded.0, %if.end21 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_excluded.addr.0.i)
  %tobool.not.i163 = icmp eq i32 %num_excluded.addr.0.i, 0
  br i1 %tobool.not.i163, label %if.end26, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i32 %num_excluded.addr.0.i, -1
  %arrayidx.i164 = getelementptr i32, ptr %excluded_devices, i32 %dec.i
  %36 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i164, align 4
  %cmp.i = icmp eq i32 %37, %35
  br i1 %cmp.i, label %while.body.i.for.inc_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.for.inc_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end26:                                         ; preds = %while.cond.i
  %tobool27.not = icmp eq ptr %last_dst.0219, null
  br i1 %tobool27.not, label %if.end26.for.inc_crit_edge, label %if.end29

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end29:                                         ; preds = %if.end26
  %call30 = call fastcc i32 @dev_map_enqueue_clone(ptr noundef nonnull %last_dst.0219, ptr noundef %dev_rx, ptr noundef %xdpf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.for.inc_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %while.body.i.for.inc_crit_edge, %is_valid_dst.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %do.end17.for.inc_crit_edge
  %last_dst.1 = phi ptr [ %last_dst.0219, %is_valid_dst.exit.for.inc_crit_edge ], [ %17, %if.end26.for.inc_crit_edge ], [ %17, %if.end29.for.inc_crit_edge ], [ %last_dst.0219, %lor.lhs.false.i.for.inc_crit_edge ], [ %last_dst.0219, %do.end17.for.inc_crit_edge ], [ %last_dst.0219, %if.end.i.for.inc_crit_edge ], [ %last_dst.0219, %while.body.i.for.inc_crit_edge ]
  %inc34 = add nuw i32 %i.0218, 1
  %38 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_entries, align 8
  %cmp2 = icmp ult i32 %inc34, %39
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.if.end103_crit_edge

for.inc.if.end103_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body37:                                       ; preds = %for.inc100.for.body37_crit_edge, %for.body37.lr.ph
  %40 = phi i32 [ %11, %for.body37.lr.ph ], [ %68, %for.inc100.for.body37_crit_edge ]
  %last_dst.2215 = phi ptr [ null, %for.body37.lr.ph ], [ %last_dst.3.lcssa, %for.inc100.for.body37_crit_edge ]
  %i.1214 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc101, %for.inc100.for.body37_crit_edge ]
  %41 = ptrtoint ptr %dev_index_head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_index_head.i, align 4
  %sub.i = add i32 %40, -1
  %and.i = and i32 %sub.i, %i.1214
  %arrayidx.i165 = getelementptr %struct.hlist_head, ptr %42, i32 %and.i
  %call.i166 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool41.not = icmp eq i32 %call.i166, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %for.body37.do.end53_crit_edge

for.body37.do.end53_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

land.lhs.true42:                                  ; preds = %for.body37
  %call43 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %land.lhs.true42.do.end53_crit_edge

land.lhs.true42.do.end53_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %call46 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true45.do.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %.b158159 = load i1, ptr @dev_map_enqueue_multi.__warned.2, align 1
  br i1 %.b158159, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dev_map_enqueue_multi.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 626, ptr noundef nonnull @.str.3) #13
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true45.do.end53_crit_edge, %land.lhs.true42.do.end53_crit_edge, %for.body37.do.end53_crit_edge
  %43 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx.i165, align 4
  %tobool60.not = icmp eq ptr %44, null
  %add.ptr63 = getelementptr i8, ptr %44, i32 -4
  %tobool65.not209223 = icmp eq ptr %add.ptr63, null
  %tobool65.not209 = or i1 %tobool60.not, %tobool65.not209223
  br i1 %tobool65.not209, label %do.end53.for.inc100_crit_edge, label %do.end53.lor.lhs.false.i171_crit_edge

do.end53.lor.lhs.false.i171_crit_edge:            ; preds = %do.end53
  br label %lor.lhs.false.i171

do.end53.for.inc100_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

lor.lhs.false.i171:                               ; preds = %for.inc83.lor.lhs.false.i171_crit_edge, %do.end53.lor.lhs.false.i171_crit_edge
  %dst.0211 = phi ptr [ %add.ptr95, %for.inc83.lor.lhs.false.i171_crit_edge ], [ %add.ptr63, %do.end53.lor.lhs.false.i171_crit_edge ]
  %last_dst.3210 = phi ptr [ %last_dst.4, %for.inc83.lor.lhs.false.i171_crit_edge ], [ %last_dst.2215, %do.end53.lor.lhs.false.i171_crit_edge ]
  %45 = ptrtoint ptr %dst.0211 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst.0211, align 4
  %netdev_ops.i168 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %netdev_ops.i168 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev_ops.i168, align 8
  %ndo_xdp_xmit.i169 = getelementptr inbounds %struct.net_device_ops, ptr %48, i32 0, i32 77
  %49 = ptrtoint ptr %ndo_xdp_xmit.i169 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndo_xdp_xmit.i169, align 4
  %tobool1.not.i170 = icmp eq ptr %50, null
  br i1 %tobool1.not.i170, label %lor.lhs.false.i171.for.inc83_crit_edge, label %if.end.i175

lor.lhs.false.i171.for.inc83_crit_edge:           ; preds = %lor.lhs.false.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83

if.end.i175:                                      ; preds = %lor.lhs.false.i171
  %flags.i.i172 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 14
  %51 = ptrtoint ptr %flags.i.i172 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i172, align 8
  %and.i.i173 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i173)
  %tobool.not.i.i174 = icmp eq i32 %and.i.i173, 0
  br i1 %tobool.not.i.i174, label %if.end.i175.for.inc83_crit_edge, label %is_valid_dst.exit186, !prof !77

if.end.i175.for.inc83_crit_edge:                  ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83

is_valid_dst.exit186:                             ; preds = %if.end.i175
  %53 = ptrtoint ptr %len.i176 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %len.i176, align 4
  %conv.i177 = zext i16 %54 to i32
  %mtu.i.i178 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 20
  %55 = ptrtoint ptr %mtu.i.i178 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mtu.i.i178, align 4
  %hard_header_len.i.i179 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 19
  %57 = ptrtoint ptr %hard_header_len.i.i179 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hard_header_len.i.i179, align 2
  %conv.i.i180 = zext i16 %58 to i32
  %add.i.i181 = add i32 %56, 4
  %add4.i.i182 = add i32 %add.i.i181, %conv.i.i180
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i182, i32 %conv.i177)
  %cmp.i.i183.not = icmp ult i32 %add4.i.i182, %conv.i177
  br i1 %cmp.i.i183.not, label %is_valid_dst.exit186.for.inc83_crit_edge, label %if.end69

is_valid_dst.exit186.for.inc83_crit_edge:         ; preds = %is_valid_dst.exit186
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83

if.end69:                                         ; preds = %is_valid_dst.exit186
  %59 = ptrtoint ptr %dst.0211 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dst.0211, align 4
  %ifindex72 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %ifindex72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ifindex72, align 4
  br label %while.cond.i189

while.cond.i189:                                  ; preds = %while.body.i193.while.cond.i189_crit_edge, %if.end69
  %num_excluded.addr.0.i187 = phi i32 [ %num_excluded.0, %if.end69 ], [ %dec.i190, %while.body.i193.while.cond.i189_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_excluded.addr.0.i187)
  %tobool.not.i188 = icmp eq i32 %num_excluded.addr.0.i187, 0
  br i1 %tobool.not.i188, label %if.end75, label %while.body.i193

while.body.i193:                                  ; preds = %while.cond.i189
  %dec.i190 = add i32 %num_excluded.addr.0.i187, -1
  %arrayidx.i191 = getelementptr i32, ptr %excluded_devices, i32 %dec.i190
  %63 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i191, align 4
  %cmp.i192 = icmp eq i32 %64, %62
  br i1 %cmp.i192, label %while.body.i193.for.inc83_crit_edge, label %while.body.i193.while.cond.i189_crit_edge

while.body.i193.while.cond.i189_crit_edge:        ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i189

while.body.i193.for.inc83_crit_edge:              ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83

if.end75:                                         ; preds = %while.cond.i189
  %tobool76.not = icmp eq ptr %last_dst.3210, null
  br i1 %tobool76.not, label %if.end75.for.inc83_crit_edge, label %if.end78

if.end75.for.inc83_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83

if.end78:                                         ; preds = %if.end75
  %call79 = call fastcc i32 @dev_map_enqueue_clone(ptr noundef nonnull %last_dst.3210, ptr noundef %dev_rx, ptr noundef %xdpf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.for.inc83_crit_edge, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end78.for.inc83_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc83

for.inc83:                                        ; preds = %if.end78.for.inc83_crit_edge, %if.end75.for.inc83_crit_edge, %while.body.i193.for.inc83_crit_edge, %is_valid_dst.exit186.for.inc83_crit_edge, %if.end.i175.for.inc83_crit_edge, %lor.lhs.false.i171.for.inc83_crit_edge
  %last_dst.4 = phi ptr [ %last_dst.3210, %is_valid_dst.exit186.for.inc83_crit_edge ], [ %dst.0211, %if.end75.for.inc83_crit_edge ], [ %dst.0211, %if.end78.for.inc83_crit_edge ], [ %last_dst.3210, %lor.lhs.false.i171.for.inc83_crit_edge ], [ %last_dst.3210, %if.end.i175.for.inc83_crit_edge ], [ %last_dst.3210, %while.body.i193.for.inc83_crit_edge ]
  %index_hlist = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dst.0211, i32 0, i32 1
  %65 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %index_hlist, align 4
  %tobool91.not = icmp eq ptr %66, null
  %add.ptr95 = getelementptr i8, ptr %66, i32 -4
  %tobool65.not228 = icmp eq ptr %add.ptr95, null
  %tobool65.not = or i1 %tobool91.not, %tobool65.not228
  br i1 %tobool65.not, label %for.inc83.for.inc100_crit_edge, label %for.inc83.lor.lhs.false.i171_crit_edge

for.inc83.lor.lhs.false.i171_crit_edge:           ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i171

for.inc83.for.inc100_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc100

for.inc100:                                       ; preds = %for.inc83.for.inc100_crit_edge, %do.end53.for.inc100_crit_edge
  %last_dst.3.lcssa = phi ptr [ %last_dst.2215, %do.end53.for.inc100_crit_edge ], [ %last_dst.4, %for.inc83.for.inc100_crit_edge ]
  %inc101 = add nuw i32 %i.1214, 1
  %67 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_buckets, align 64
  %cmp36 = icmp ult i32 %inc101, %68
  br i1 %cmp36, label %for.inc100.for.body37_crit_edge, label %for.inc100.if.end103_crit_edge

for.inc100.if.end103_crit_edge:                   ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

for.inc100.for.body37_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body37

if.end103:                                        ; preds = %for.inc100.if.end103_crit_edge, %for.inc.if.end103_crit_edge
  %last_dst.5 = phi ptr [ %last_dst.1, %for.inc.if.end103_crit_edge ], [ %last_dst.3.lcssa, %for.inc100.if.end103_crit_edge ]
  %tobool104.not = icmp eq ptr %last_dst.5, null
  br i1 %tobool104.not, label %if.end103.if.else107_crit_edge, label %if.then105

if.end103.if.else107_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else107

if.then105:                                       ; preds = %if.end103
  %69 = ptrtoint ptr %last_dst.5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %last_dst.5, align 4
  %xdp_prog = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %last_dst.5, i32 0, i32 3
  %71 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xdp_prog, align 4
  %73 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i195 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i195 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i, align 4
  %arrayidx.i196 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i196, align 4
  %add.i = add i32 %78, ptrtoint (ptr @dev_flush_list to i32)
  %79 = inttoptr i32 %add.i to ptr
  %xdp_bulkq.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 109
  %80 = ptrtoint ptr %xdp_bulkq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xdp_bulkq.i, align 64
  %82 = ptrtoint ptr %81 to i32
  %add12.i = add i32 %78, %82
  %83 = inttoptr i32 %add12.i to ptr
  %count.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %85)
  %cmp.i197 = icmp eq i32 %85, 16
  br i1 %cmp.i197, label %if.then.i, label %if.then105.if.end.i198_crit_edge, !prof !77

if.then105.if.end.i198_crit_edge:                 ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i198

if.then.i:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @bq_xmit_all(ptr noundef %83, i32 noundef 0) #13
  br label %if.end.i198

if.end.i198:                                      ; preds = %if.then.i, %if.then105.if.end.i198_crit_edge
  %dev_rx14.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %83, i32 0, i32 3
  %86 = ptrtoint ptr %dev_rx14.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_rx14.i, align 4
  %tobool15.not.i = icmp eq ptr %87, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end.i198.bq_enqueue.exit_crit_edge

if.end.i198.bq_enqueue.exit_crit_edge:            ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit

if.then16.i:                                      ; preds = %if.end.i198
  %88 = ptrtoint ptr %dev_rx14.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev_rx, ptr %dev_rx14.i, align 4
  %xdp_prog18.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %83, i32 0, i32 4
  %89 = ptrtoint ptr %xdp_prog18.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %72, ptr %xdp_prog18.i, align 4
  %flush_node.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %83, i32 0, i32 1
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %79, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %flush_node.i, ptr noundef %79, ptr noundef %91) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.i.bq_enqueue.exit_crit_edge

if.then16.i.bq_enqueue.exit_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit

if.end.i.i.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %flush_node.i, ptr %prev1.i.i.i, align 4
  %93 = ptrtoint ptr %flush_node.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %91, ptr %flush_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %83, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %79, ptr %prev3.i.i.i, align 4
  %95 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %flush_node.i, ptr %79, align 4
  br label %bq_enqueue.exit

bq_enqueue.exit:                                  ; preds = %if.end.i.i.i, %if.then16.i.bq_enqueue.exit_crit_edge, %if.end.i198.bq_enqueue.exit_crit_edge
  %96 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count.i, align 4
  %inc.i199 = add i32 %97, 1
  store i32 %inc.i199, ptr %count.i, align 4
  %arrayidx21.i = getelementptr [16 x ptr], ptr %83, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %xdpf, ptr %arrayidx21.i, align 4
  br label %cleanup

if.else107:                                       ; preds = %if.end103.if.else107_crit_edge, %for.cond.preheader.if.else107_crit_edge, %for.cond35.preheader.if.else107_crit_edge
  call void @xdp_return_frame_rx_napi(ptr noundef %xdpf) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else107, %bq_enqueue.exit, %if.end78.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else107 ], [ 0, %bq_enqueue.exit ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %excluded_devices) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_map_enqueue_clone(ptr nocapture noundef readonly %obj, ptr noundef %dev_rx, ptr noundef %xdpf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xdpf_clone(ptr noundef %xdpf) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %xdp_prog = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %obj, i32 0, i32 3
  %2 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_prog, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @dev_flush_list to i32)
  %10 = inttoptr i32 %add.i to ptr
  %xdp_bulkq.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 109
  %11 = ptrtoint ptr %xdp_bulkq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdp_bulkq.i, align 64
  %13 = ptrtoint ptr %12 to i32
  %add12.i = add i32 %9, %13
  %14 = inttoptr i32 %add12.i to ptr
  %count.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp.i = icmp eq i32 %16, 16
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge, !prof !77

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bq_xmit_all(ptr noundef %14, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dev_rx14.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %dev_rx14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_rx14.i, align 4
  %tobool15.not.i = icmp eq ptr %18, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end.i.bq_enqueue.exit_crit_edge

if.end.i.bq_enqueue.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit

if.then16.i:                                      ; preds = %if.end.i
  %19 = ptrtoint ptr %dev_rx14.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev_rx, ptr %dev_rx14.i, align 4
  %xdp_prog18.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %xdp_prog18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %xdp_prog18.i, align 4
  %flush_node.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %10, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flush_node.i, ptr noundef %10, ptr noundef %22) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.i.bq_enqueue.exit_crit_edge

if.then16.i.bq_enqueue.exit_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit

if.end.i.i.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %flush_node.i, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %flush_node.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %flush_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %14, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %flush_node.i, ptr %10, align 4
  br label %bq_enqueue.exit

bq_enqueue.exit:                                  ; preds = %if.end.i.i.i, %if.then16.i.bq_enqueue.exit_crit_edge, %if.end.i.bq_enqueue.exit_crit_edge
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %count.i, align 4
  %arrayidx21.i = getelementptr [16 x ptr], ptr %14, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call, ptr %arrayidx21.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %bq_enqueue.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bq_enqueue.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_map_generic_redirect(ptr nocapture noundef readonly %dst, ptr noundef %skb, ptr noundef %xdp_prog) local_unnamed_addr #0 align 64 {
entry:
  %txq.i = alloca %struct.xdp_txq_info, align 4
  %xdp.i = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i, !prof !77

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %7, 4
  %add4.i = add i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %3)
  %cmp.i = icmp ult i32 %add4.i, %3
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txq.i) #13
  %10 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %txq.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp.i) #13
  %11 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 5
  %xdp_prog.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dst, i32 0, i32 3
  %12 = call ptr @memset(ptr %xdp.i, i32 255, i32 28)
  %13 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.not.i13 = icmp eq ptr %14, null
  br i1 %tobool.not.i13, label %if.end.dev_map_bpf_prog_run_skb.exit.thread_crit_edge, label %if.end.i15

if.end.dev_map_bpf_prog_run_skb.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_map_bpf_prog_run_skb.exit.thread

if.end.i15:                                       ; preds = %if.end
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %15 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mac_len.i, align 4
  %conv.i14 = zext i16 %16 to i32
  %sub.i.i = sub i32 %3, %conv.i14
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i.i, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %19)
  %cmp.i.i = icmp ult i32 %sub.i.i, %19
  br i1 %cmp.i.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !77

do.body4.i.i:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !80
  unreachable

__skb_pull.exit.i:                                ; preds = %if.end.i15
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv.i14
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %txq.i, ptr %11, align 4
  %23 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xdp_prog.i, align 4
  %call4.i = call i32 @bpf_prog_run_generic_xdp(ptr noundef %skb, ptr noundef nonnull %xdp.i, ptr noundef %24) #13
  %25 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 0, label %__skb_pull.exit.i.dev_map_bpf_prog_run_skb.exit_crit_edge
    i32 1, label %dev_map_bpf_prog_run_skb.exit.thread21
  ]

__skb_pull.exit.i.dev_map_bpf_prog_run_skb.exit_crit_edge: ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_map_bpf_prog_run_skb.exit

dev_map_bpf_prog_run_skb.exit.thread21:           ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txq.i) #13
  br label %cleanup

sw.bb.i:                                          ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_len.i, align 4
  %conv6.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %idx.neg.i.i = sub nsw i32 0, %conv6.i
  %add.ptr.i29.i = getelementptr i8, ptr %29, i32 %idx.neg.i.i
  store ptr %add.ptr.i29.i, ptr %data.i.i, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %add.i.i = add i32 %31, %conv6.i
  store i32 %add.i.i, ptr %len, align 4
  br label %dev_map_bpf_prog_run_skb.exit.thread

sw.default.i:                                     ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xdp_prog.i, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef null, ptr noundef %33, i32 noundef %call4.i) #13
  br label %dev_map_bpf_prog_run_skb.exit

dev_map_bpf_prog_run_skb.exit.thread:             ; preds = %sw.bb.i, %if.end.dev_map_bpf_prog_run_skb.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txq.i) #13
  br label %if.end5

dev_map_bpf_prog_run_skb.exit:                    ; preds = %sw.default.i, %__skb_pull.exit.i.dev_map_bpf_prog_run_skb.exit_crit_edge
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst, align 4
  %36 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xdp_prog.i, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %35, ptr noundef %37, i32 noundef %call4.i) #13
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txq.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp.not = icmp eq i32 %call4.i, 2
  br i1 %cmp.not, label %dev_map_bpf_prog_run_skb.exit.if.end5_crit_edge, label %dev_map_bpf_prog_run_skb.exit.cleanup_crit_edge

dev_map_bpf_prog_run_skb.exit.cleanup_crit_edge:  ; preds = %dev_map_bpf_prog_run_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_map_bpf_prog_run_skb.exit.if.end5_crit_edge:  ; preds = %dev_map_bpf_prog_run_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %dev_map_bpf_prog_run_skb.exit.if.end5_crit_edge, %dev_map_bpf_prog_run_skb.exit.thread
  %38 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst, align 4
  %40 = getelementptr inbounds %struct.anon.56, ptr %skb, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %40, align 8
  call void @generic_xdp_tx(ptr noundef %skb, ptr noundef %xdp_prog) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %dev_map_bpf_prog_run_skb.exit.cleanup_crit_edge, %dev_map_bpf_prog_run_skb.exit.thread21, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %dev_map_bpf_prog_run_skb.exit.cleanup_crit_edge ], [ 0, %dev_map_bpf_prog_run_skb.exit.thread21 ], [ -100, %entry.cleanup_crit_edge ], [ -90, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_xdp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_map_redirect_multi(ptr noundef %dev, ptr noundef %skb, ptr noundef %xdp_prog, ptr nocapture noundef readonly %map, i1 noundef zeroext %exclude_ingress) local_unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  %excluded_devices = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %excluded_devices) #13
  %0 = call ptr @memset(ptr %excluded_devices, i32 255, i32 36)
  br i1 %exclude_ingress, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #13
  %adj_list.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 13
  %1 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adj_list.i, ptr %iter.i, align 4
  %call.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %dev, ptr noundef nonnull %iter.i) #13
  %tobool.not7.i = icmp eq ptr %call.i, null
  br i1 %tobool.not7.i, label %if.then.get_upper_ifindexes.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.get_upper_ifindexes.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_upper_ifindexes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %n.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %upper.08.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.then.for.body.i_crit_edge ]
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %upper.08.i, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex.i, align 4
  %inc.i = add i32 %n.09.i, 1
  %arrayidx.i = getelementptr i32, ptr %excluded_devices, i32 %n.09.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx.i, align 4
  %call2.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %dev, ptr noundef nonnull %iter.i) #13
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.get_upper_ifindexes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.get_upper_ifindexes.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_upper_ifindexes.exit

get_upper_ifindexes.exit:                         ; preds = %for.body.i.get_upper_ifindexes.exit_crit_edge, %if.then.get_upper_ifindexes.exit_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.then.get_upper_ifindexes.exit_crit_edge ], [ %inc.i, %for.body.i.get_upper_ifindexes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #13
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %inc = add i32 %n.0.lcssa.i, 1
  %arrayidx = getelementptr [9 x i32], ptr %excluded_devices, i32 0, i32 %n.0.lcssa.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %get_upper_ifindexes.exit, %entry.if.end_crit_edge
  %num_excluded.0 = phi i32 [ %inc, %get_upper_ifindexes.exit ], [ 0, %entry.if.end_crit_edge ]
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp = icmp eq i32 %9, 14
  br i1 %cmp, label %for.cond.preheader, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %if.end
  %n_buckets = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %10 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_buckets, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp37175.not = icmp eq i32 %11, 0
  br i1 %cmp37175.not, label %for.cond36.preheader.if.end86_crit_edge, label %for.body38.lr.ph

for.cond36.preheader.if.end86_crit_edge:          ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %dev_index_head.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  br label %for.body38

for.cond.preheader:                               ; preds = %if.end
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %12 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2179.not = icmp eq i32 %13, 0
  br i1 %cmp2179.not, label %for.cond.preheader.if.end86_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end86_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %netdev_map = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %last_dst.0181 = phi ptr [ null, %for.body.lr.ph ], [ %last_dst.1, %for.inc.for.body_crit_edge ]
  %i.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %netdev_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_map, align 128
  %arrayidx4 = getelementptr ptr, ptr %15, i32 %i.0180
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx4, align 4
  %call6 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %for.body.do.end17_crit_edge

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

lor.lhs.false:                                    ; preds = %for.body
  %call8 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.do.end17_crit_edge

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call10 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b133 = load i1, ptr @dev_map_redirect_multi.__warned, align 1
  br i1 %.b133, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dev_map_redirect_multi.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 721, ptr noundef nonnull @.str.1) #13
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %lor.lhs.false.do.end17_crit_edge, %for.body.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %do.end17.for.inc_crit_edge, label %if.end21

do.end17.for.inc_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %do.end17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %ifindex24 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %ifindex24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex24, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end21
  %num_excluded.addr.0.i = phi i32 [ %num_excluded.0, %if.end21 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_excluded.addr.0.i)
  %tobool.not.i135 = icmp eq i32 %num_excluded.addr.0.i, 0
  br i1 %tobool.not.i135, label %if.end27, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i32 %num_excluded.addr.0.i, -1
  %arrayidx.i136 = getelementptr i32, ptr %excluded_devices, i32 %dec.i
  %22 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i136, align 4
  %cmp.i = icmp eq i32 %23, %21
  br i1 %cmp.i, label %while.body.i.for.inc_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.for.inc_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end27:                                         ; preds = %while.cond.i
  %tobool28.not = icmp eq ptr %last_dst.0181, null
  br i1 %tobool28.not, label %if.end27.for.inc_crit_edge, label %if.end30

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end30:                                         ; preds = %if.end27
  %call.i137 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %tobool.not.i138 = icmp eq ptr %call.i137, null
  br i1 %tobool.not.i138, label %if.end30.cleanup_crit_edge, label %if.end.i

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = call i32 @dev_map_generic_redirect(ptr noundef nonnull %last_dst.0181, ptr noundef nonnull %call.i137, ptr noundef %xdp_prog) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then5.i, !prof !79

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef nonnull %call.i137) #13
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %while.body.i.for.inc_crit_edge, %do.end17.for.inc_crit_edge
  %last_dst.1 = phi ptr [ %last_dst.0181, %do.end17.for.inc_crit_edge ], [ %17, %if.end27.for.inc_crit_edge ], [ %17, %if.end.i.for.inc_crit_edge ], [ %last_dst.0181, %while.body.i.for.inc_crit_edge ]
  %inc35 = add nuw i32 %i.0180, 1
  %24 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_entries, align 8
  %cmp2 = icmp ult i32 %inc35, %25
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.if.end82_crit_edge

for.inc.if.end82_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body38:                                       ; preds = %for.inc79.for.body38_crit_edge, %for.body38.lr.ph
  %26 = phi i32 [ %11, %for.body38.lr.ph ], [ %40, %for.inc79.for.body38_crit_edge ]
  %last_dst.2177 = phi ptr [ null, %for.body38.lr.ph ], [ %last_dst.3.lcssa, %for.inc79.for.body38_crit_edge ]
  %i.1176 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc80, %for.inc79.for.body38_crit_edge ]
  %27 = ptrtoint ptr %dev_index_head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_index_head.i, align 4
  %sub.i = add i32 %26, -1
  %and.i = and i32 %sub.i, %i.1176
  %arrayidx.i139 = getelementptr %struct.hlist_head, ptr %28, i32 %and.i
  %29 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i139, align 4
  %tobool41.not = icmp eq ptr %30, null
  %add.ptr44 = getelementptr i8, ptr %30, i32 -4
  %tobool46.not172187 = icmp eq ptr %add.ptr44, null
  %tobool46.not172 = or i1 %tobool41.not, %tobool46.not172187
  br i1 %tobool46.not172, label %for.body38.for.inc79_crit_edge, label %for.body38.land.rhs_crit_edge

for.body38.land.rhs_crit_edge:                    ; preds = %for.body38
  br label %land.rhs

for.body38.for.inc79_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79

land.rhs:                                         ; preds = %for.inc67.land.rhs_crit_edge, %for.body38.land.rhs_crit_edge
  %dst.0174 = phi ptr [ %add.ptr74, %for.inc67.land.rhs_crit_edge ], [ %add.ptr44, %for.body38.land.rhs_crit_edge ]
  %last_dst.3173 = phi ptr [ %last_dst.4, %for.inc67.land.rhs_crit_edge ], [ %last_dst.2177, %for.body38.land.rhs_crit_edge ]
  %index_hlist = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dst.0174, i32 0, i32 1
  %31 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %index_hlist, align 4
  %33 = ptrtoint ptr %dst.0174 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst.0174, align 4
  %ifindex56 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %ifindex56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex56, align 4
  br label %while.cond.i142

while.cond.i142:                                  ; preds = %while.body.i146.while.cond.i142_crit_edge, %land.rhs
  %num_excluded.addr.0.i140 = phi i32 [ %num_excluded.0, %land.rhs ], [ %dec.i143, %while.body.i146.while.cond.i142_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_excluded.addr.0.i140)
  %tobool.not.i141 = icmp eq i32 %num_excluded.addr.0.i140, 0
  br i1 %tobool.not.i141, label %if.end59, label %while.body.i146

while.body.i146:                                  ; preds = %while.cond.i142
  %dec.i143 = add i32 %num_excluded.addr.0.i140, -1
  %arrayidx.i144 = getelementptr i32, ptr %excluded_devices, i32 %dec.i143
  %37 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i144, align 4
  %cmp.i145 = icmp eq i32 %38, %36
  br i1 %cmp.i145, label %while.body.i146.for.inc67_crit_edge, label %while.body.i146.while.cond.i142_crit_edge

while.body.i146.while.cond.i142_crit_edge:        ; preds = %while.body.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i142

while.body.i146.for.inc67_crit_edge:              ; preds = %while.body.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67

if.end59:                                         ; preds = %while.cond.i142
  %tobool60.not = icmp eq ptr %last_dst.3173, null
  br i1 %tobool60.not, label %if.end59.for.inc67_crit_edge, label %if.end62

if.end59.for.inc67_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67

if.end62:                                         ; preds = %if.end59
  %call.i148 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %tobool.not.i149 = icmp eq ptr %call.i148, null
  br i1 %tobool.not.i149, label %if.end62.cleanup_crit_edge, label %if.end.i152

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i152:                                      ; preds = %if.end62
  %call1.i150 = call i32 @dev_map_generic_redirect(ptr noundef nonnull %last_dst.3173, ptr noundef nonnull %call.i148, ptr noundef %xdp_prog) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i150)
  %tobool2.not.i151 = icmp eq i32 %call1.i150, 0
  br i1 %tobool2.not.i151, label %if.end.i152.for.inc67_crit_edge, label %if.then5.i153, !prof !79

if.end.i152.for.inc67_crit_edge:                  ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc67

if.then5.i153:                                    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef nonnull %call.i148) #13
  br label %cleanup

for.inc67:                                        ; preds = %if.end.i152.for.inc67_crit_edge, %if.end59.for.inc67_crit_edge, %while.body.i146.for.inc67_crit_edge
  %last_dst.4 = phi ptr [ %dst.0174, %if.end59.for.inc67_crit_edge ], [ %dst.0174, %if.end.i152.for.inc67_crit_edge ], [ %last_dst.3173, %while.body.i146.for.inc67_crit_edge ]
  %tobool70.not = icmp eq ptr %32, null
  %add.ptr74 = getelementptr i8, ptr %32, i32 -4
  %tobool46.not194 = icmp eq ptr %add.ptr74, null
  %tobool46.not = or i1 %tobool70.not, %tobool46.not194
  br i1 %tobool46.not, label %for.inc67.for.inc79_crit_edge, label %for.inc67.land.rhs_crit_edge

for.inc67.land.rhs_crit_edge:                     ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.inc67.for.inc79_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79

for.inc79:                                        ; preds = %for.inc67.for.inc79_crit_edge, %for.body38.for.inc79_crit_edge
  %last_dst.3.lcssa = phi ptr [ %last_dst.2177, %for.body38.for.inc79_crit_edge ], [ %last_dst.4, %for.inc67.for.inc79_crit_edge ]
  %inc80 = add nuw i32 %i.1176, 1
  %39 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_buckets, align 64
  %cmp37 = icmp ult i32 %inc80, %40
  br i1 %cmp37, label %for.inc79.for.body38_crit_edge, label %for.inc79.if.end82_crit_edge

for.inc79.if.end82_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

for.inc79.for.body38_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

if.end82:                                         ; preds = %for.inc79.if.end82_crit_edge, %for.inc.if.end82_crit_edge
  %last_dst.5 = phi ptr [ %last_dst.1, %for.inc.if.end82_crit_edge ], [ %last_dst.3.lcssa, %for.inc79.if.end82_crit_edge ]
  %tobool83.not = icmp eq ptr %last_dst.5, null
  br i1 %tobool83.not, label %if.end82.if.end86_crit_edge, label %if.then84

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %call85 = call i32 @dev_map_generic_redirect(ptr noundef nonnull %last_dst.5, ptr noundef %skb, ptr noundef %xdp_prog)
  br label %cleanup

if.end86:                                         ; preds = %if.end82.if.end86_crit_edge, %for.cond.preheader.if.end86_crit_edge, %for.cond36.preheader.if.end86_crit_edge
  call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then84, %if.then5.i153, %if.end62.cleanup_crit_edge, %if.then5.i, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call85, %if.then84 ], [ 0, %if.end86 ], [ %call1.i, %if.then5.i ], [ %call1.i150, %if.then5.i153 ], [ -12, %if.end30.cleanup_crit_edge ], [ -12, %if.end62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %excluded_devices) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dev_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 5246400, i32 noundef 512) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %value_size.i = getelementptr inbounds %struct.anon.87, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value_size.i, align 8
  %max_entries.i = getelementptr inbounds %struct.anon.87, ptr %attr, i32 0, i32 3
  %3 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %if.end5.if.then8_crit_edge, label %lor.lhs.false.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

lor.lhs.false.i:                                  ; preds = %if.end5
  %key_size.i = getelementptr inbounds %struct.anon.87, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 4
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then8_crit_edge

lor.lhs.false.i.if.then8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %7 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %2, label %lor.lhs.false2.i.if.then8_crit_edge [
    i32 4, label %lor.lhs.false2.i.lor.lhs.false5.i_crit_edge
    i32 8, label %lor.lhs.false2.i.lor.lhs.false5.i_crit_edge21
  ]

lor.lhs.false2.i.lor.lhs.false5.i_crit_edge21:    ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false5.i

lor.lhs.false2.i.lor.lhs.false5.i_crit_edge:      ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false5.i

lor.lhs.false2.i.if.then8_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false2.i.lor.lhs.false5.i_crit_edge, %lor.lhs.false2.i.lor.lhs.false5.i_crit_edge21
  %map_flags.i = getelementptr inbounds %struct.anon.87, ptr %attr, i32 0, i32 4
  %8 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %9, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false5.i.if.then8_crit_edge

lor.lhs.false5.i.if.then8_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %or.i = or i32 %9, 128
  %10 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %map_flags.i, align 8
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #13
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %12)
  %cmp7.i = icmp eq i32 %12, 25
  %max_entries10.i = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %max_entries10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_entries10.i, align 8
  br i1 %cmp7.i, label %cond.false36.i, label %if.else.i

cond.false36.i:                                   ; preds = %if.end.i
  %sub.i97.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i97.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i97.i, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i97.i, i1 true) #13, !range !81
  %sub.i.i.i.i = sub nuw nsw i32 32, %15
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %n_buckets.i = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl.i.i, ptr %n_buckets.i, align 64
  %numa_node.i = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numa_node.i, align 8
  %conv.i.i = zext i32 %shl.i.i to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 2
  %call.i.i = tail call ptr @bpf_map_area_alloc(i64 noundef %mul.i.i, i32 noundef %18) #13
  %cmp.not.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %cmp.not.i.i.not, label %dev_map_create_hash.exit.i, label %do.body.i

dev_map_create_hash.exit.i:                       ; preds = %cond.false36.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev_index_head.i = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %dev_index_head.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dev_index_head.i, align 4
  br label %if.then8

do.body.i:                                        ; preds = %cond.false36.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = shl nuw i32 %shl.i.i, 2
  %21 = call ptr @memset(ptr %call.i.i, i32 0, i32 %20)
  %dev_index_head99.i = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %dev_index_head99.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %dev_index_head99.i, align 4
  %index_lock.i = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %index_lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @dev_map_init_map.__key, i16 noundef signext 3) #13
  br label %if.end10

if.else.i:                                        ; preds = %if.end.i
  %conv61.i = zext i32 %14 to i64
  %mul.i = shl nuw nsw i64 %conv61.i, 2
  %numa_node63.i = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %numa_node63.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numa_node63.i, align 8
  %call64.i = tail call ptr @bpf_map_area_alloc(i64 noundef %mul.i, i32 noundef %24) #13
  %netdev_map.i = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %netdev_map.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call64.i, ptr %netdev_map.i, align 128
  %tobool66.not.i = icmp eq ptr %call64.i, null
  br i1 %tobool66.not.i, label %if.else.i.if.then8_crit_edge, label %if.else.i.if.end10_crit_edge

if.else.i.if.end10_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else.i.if.then8_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %if.else.i.if.then8_crit_edge, %dev_map_create_hash.exit.i, %lor.lhs.false5.i.if.then8_crit_edge, %lor.lhs.false2.i.if.then8_crit_edge, %lor.lhs.false.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.else.i.if.then8_crit_edge ], [ inttoptr (i32 -12 to ptr), %dev_map_create_hash.exit.i ], [ inttoptr (i32 -22 to ptr), %if.end5.if.then8_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.if.then8_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false5.i.if.then8_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false2.i.if.then8_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end10:                                         ; preds = %if.else.i.if.end10_crit_edge, %do.body.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @dev_map_lock) #13
  %list = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 2
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dev_map_list, i32 0, i32 1), align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %26, ptr noundef nonnull @dev_map_list) #13
  br i1 %call.i.i17, label %if.end.i.i, label %if.end10.list_add_tail_rcu.exit_crit_edge

if.end10.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dev_map_list, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.bpf_dtab, ptr %call7.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list, ptr %26, align 4
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @dev_map_list, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end10.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dev_map_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i.ph, %if.then8 ], [ %call7.i.i, %list_add_tail_rcu.exit ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dev_map_lock) #13
  %list = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dev_map_lock) #13
  tail call void @bpf_clear_redirect_map(ptr noundef %map) #13
  tail call void @synchronize_rcu() #13
  tail call void @rcu_barrier() #13
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %7 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %8)
  %cmp = icmp eq i32 %8, 25
  br i1 %cmp, label %for.cond.preheader, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %list_del_rcu.exit
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %9 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3298.not = icmp eq i32 %10, 0
  br i1 %cmp3298.not, label %for.cond30.preheader.for.end48_crit_edge, label %for.body33.lr.ph

for.cond30.preheader.for.end48_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end48

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %netdev_map = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  br label %for.body33

for.cond.preheader:                               ; preds = %list_del_rcu.exit
  %n_buckets = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %11 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_buckets, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2102.not = icmp eq i32 %12, 0
  br i1 %cmp2102.not, label %for.cond.preheader.for.end29_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end29

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_index_head.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %13 = phi i32 [ %12, %for.body.lr.ph ], [ %44, %for.end.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %dev_index_head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_index_head.i, align 4
  %sub.i = add i32 %13, -1
  %and.i = and i32 %sub.i, %i.0103
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %15, i32 %and.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %17, null
  %add.ptr6 = getelementptr i8, ptr %17, i32 -4
  %tobool8.not100104 = icmp eq ptr %add.ptr6, null
  %tobool8.not100 = or i1 %tobool.not, %tobool8.not100104
  br i1 %tobool8.not100, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs:                                         ; preds = %dev_put.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %dev.0101 = phi ptr [ %add.ptr24, %dev_put.exit.land.rhs_crit_edge ], [ %add.ptr6, %for.body.land.rhs_crit_edge ]
  %index_hlist = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.0101, i32 0, i32 1
  %18 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %index_hlist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.0101, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %19, ptr %21, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del_rcu.exit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %land.rhs.hlist_del_rcu.exit_crit_edge
  %24 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %xdp_prog = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.0101, i32 0, i32 3
  %25 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xdp_prog, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %hlist_del_rcu.exit.if.end_crit_edge, label %if.then15

hlist_del_rcu.exit.if.end_crit_edge:              ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then15:                                        ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %26) #13
  br label %if.end

if.end:                                           ; preds = %if.then15, %hlist_del_rcu.exit.if.end_crit_edge
  %27 = ptrtoint ptr %dev.0101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.0101, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.dev_put.exit_crit_edge, label %do.body1.i

if.end.dev_put.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !83
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 118
  %30 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcpu_refcnt.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %arrayidx.i82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i82, align 4
  %add.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add13.i = add i32 %41, -1
  store i32 %add13.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !84
  %and.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !77

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #13, !srcloc !85
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %dev.0101) #13
  %add.ptr24 = getelementptr i8, ptr %19, i32 -4
  %tobool8.not105 = icmp eq ptr %add.ptr24, null
  %tobool8.not = or i1 %tobool.not.i.i, %tobool8.not105
  br i1 %tobool8.not, label %dev_put.exit.for.end_crit_edge, label %dev_put.exit.land.rhs_crit_edge

dev_put.exit.land.rhs_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

dev_put.exit.for.end_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %dev_put.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw i32 %i.0103, 1
  %43 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_buckets, align 64
  %cmp2 = icmp ult i32 %inc, %44
  br i1 %cmp2, label %for.end.for.body_crit_edge, label %for.end.for.end29_crit_edge

for.end.for.end29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end29

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end29:                                        ; preds = %for.end.for.end29_crit_edge, %for.cond.preheader.for.end29_crit_edge
  %dev_index_head = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  br label %if.end50

for.body33:                                       ; preds = %cleanup.for.body33_crit_edge, %for.body33.lr.ph
  %i.199 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc47, %cleanup.for.body33_crit_edge ]
  %45 = ptrtoint ptr %netdev_map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev_map, align 128
  %arrayidx = getelementptr ptr, ptr %46, i32 %i.199
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx, align 4
  %tobool37.not = icmp eq ptr %48, null
  br i1 %tobool37.not, label %for.body33.cleanup_crit_edge, label %if.end39

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %for.body33
  %xdp_prog40 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %xdp_prog40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xdp_prog40, align 4
  %tobool41.not = icmp eq ptr %50, null
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %50) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %tobool.not.i83 = icmp eq ptr %52, null
  br i1 %tobool.not.i83, label %if.end44.dev_put.exit95_crit_edge, label %do.body1.i92

if.end44.dev_put.exit95_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit95

do.body1.i92:                                     ; preds = %if.end44
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !83
  %pcpu_refcnt.i84 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 118
  %54 = ptrtoint ptr %pcpu_refcnt.i84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pcpu_refcnt.i84, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i85 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i85 to ptr
  %cpu.i86 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i86, align 4
  %arrayidx.i87 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i87, align 4
  %add.i88 = add i32 %62, %56
  %63 = inttoptr i32 %add.i88 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add13.i89 = add i32 %65, -1
  store i32 %add13.i89, ptr %63, align 4
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !84
  %and.i.i.i90 = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i90)
  %tobool24.not.i91 = icmp eq i32 %and.i.i.i90, 0
  br i1 %tobool24.not.i91, label %if.then28.i93, label %do.body1.i92.do.end30.i94_crit_edge, !prof !77

do.body1.i92.do.end30.i94_crit_edge:              ; preds = %do.body1.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i94

if.then28.i93:                                    ; preds = %do.body1.i92
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i94

do.end30.i94:                                     ; preds = %if.then28.i93, %do.body1.i92.do.end30.i94_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #13, !srcloc !85
  br label %dev_put.exit95

dev_put.exit95:                                   ; preds = %do.end30.i94, %if.end44.dev_put.exit95_crit_edge
  tail call void @kfree(ptr noundef nonnull %48) #13
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit95, %for.body33.cleanup_crit_edge
  %inc47 = add nuw i32 %i.199, 1
  %67 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_entries, align 8
  %cmp32 = icmp ult i32 %inc47, %68
  br i1 %cmp32, label %cleanup.for.body33_crit_edge, label %cleanup.for.end48_crit_edge

cleanup.for.end48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end48

cleanup.for.body33_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body33

for.end48:                                        ; preds = %cleanup.for.end48_crit_edge, %for.cond30.preheader.for.end48_crit_edge
  %netdev_map49 = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  br label %if.end50

if.end50:                                         ; preds = %for.end48, %for.end29
  %.sink.in = phi ptr [ %netdev_map49, %for.end48 ], [ %dev_index_head, %for.end29 ]
  %69 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %69)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @bpf_map_area_free(ptr noundef %.sink) #13
  tail call void @kfree(ptr noundef %map) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dev_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %cond.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %cond.end.cleanup.sink.split_crit_edge

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp4 = icmp eq i32 %1, %sub
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nuw i32 %1, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %cond.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %if.end6 ], [ 0, %entry.cleanup.sink.split_crit_edge ], [ 0, %cond.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %next_key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.sink, ptr %next_key, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dev_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i, label %if.end.i, label %entry.__dev_map_lookup_elem.exit_crit_edge

entry.__dev_map_lookup_elem.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

if.end.i:                                         ; preds = %entry
  %netdev_map.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %netdev_map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_map.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.__dev_map_lookup_elem.exit_crit_edge

if.end.i.__dev_map_lookup_elem.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge

lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.__dev_map_lookup_elem.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.__dev_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @__dev_map_lookup_elem.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge, label %if.then9.i

land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__dev_map_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 437, ptr noundef nonnull @.str.1) #13
  br label %__dev_map_lookup_elem.exit

__dev_map_lookup_elem.exit:                       ; preds = %if.then9.i, %land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge, %land.lhs.true.i.__dev_map_lookup_elem.exit_crit_edge, %lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge, %if.end.i.__dev_map_lookup_elem.exit_crit_edge, %entry.__dev_map_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__dev_map_lookup_elem.exit_crit_edge ], [ %7, %if.then9.i ], [ %7, %land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge ], [ %7, %land.lhs.true.i.__dev_map_lookup_elem.exit_crit_edge ], [ %7, %lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge ], [ %7, %if.end.i.__dev_map_lookup_elem.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %val = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %retval.0.i, i32 0, i32 6
  %spec.select = select i1 %tobool.not, ptr null, ptr %val
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  %val.i = alloca %struct.bpf_devmap_val, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #13
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %val.i, align 8
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp.i = icmp ugt i64 %map_flags, 2
  br i1 %cmp.i, label %entry.__dev_map_update_elem.exit_crit_edge, label %if.end.i, !prof !77

entry.__dev_map_update_elem.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_update_elem.exit

if.end.i:                                         ; preds = %entry
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %11 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp3.not.i = icmp ult i32 %10, %12
  br i1 %cmp3.not.i, label %if.end11.i, label %if.end.i.__dev_map_update_elem.exit_crit_edge, !prof !79

if.end.i.__dev_map_update_elem.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_update_elem.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %map_flags)
  %cmp12.i = icmp eq i64 %map_flags, 1
  br i1 %cmp12.i, label %if.end11.i.__dev_map_update_elem.exit_crit_edge, label %if.end20.i, !prof !77

if.end11.i.__dev_map_update_elem.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_update_elem.exit

if.end20.i:                                       ; preds = %if.end11.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %13 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value_size.i, align 4
  %15 = call ptr @memcpy(ptr %val.i, ptr %value, i32 %14)
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not.i = icmp eq i32 %17, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end20.i
  %bpf_prog.i = getelementptr inbounds %struct.bpf_devmap_val, ptr %val.i, i32 0, i32 1
  %18 = ptrtoint ptr %bpf_prog.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bpf_prog.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23.i = icmp sgt i32 %19, 0
  br i1 %cmp23.i, label %if.then22.i.__dev_map_update_elem.exit_crit_edge, label %if.then22.i.if.end30.i_crit_edge

if.then22.i.if.end30.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then22.i.__dev_map_update_elem.exit_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_update_elem.exit

if.else.i:                                        ; preds = %if.end20.i
  %call.i = call fastcc ptr @__dev_map_alloc_node(ptr noundef %7, ptr noundef %map, ptr noundef nonnull %val.i, i32 noundef %10) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %if.else.i.if.end30.i_crit_edge

if.else.i.if.end30.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %call.i to i32
  br label %__dev_map_update_elem.exit

if.end30.i:                                       ; preds = %if.else.i.if.end30.i_crit_edge, %if.then22.i.if.end30.i_crit_edge
  %dev.0.i = phi ptr [ %call.i, %if.else.i.if.end30.i_crit_edge ], [ null, %if.then22.i.if.end30.i_crit_edge ]
  %netdev_map.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  %21 = ptrtoint ptr %netdev_map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev_map.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !86
  %23 = ptrtoint ptr %dev.0.i to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %23, ptr %arrayidx.i) #13, !srcloc !87
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool48.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool48.not.i, label %if.end30.i.__dev_map_update_elem.exit_crit_edge, label %if.then49.i

if.end30.i.__dev_map_update_elem.exit_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_update_elem.exit

if.then49.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = inttoptr i32 %asmresult.i.i to ptr
  %rcu.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %25, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %__dev_map_update_elem.exit

__dev_map_update_elem.exit:                       ; preds = %if.then49.i, %if.end30.i.__dev_map_update_elem.exit_crit_edge, %if.then27.i, %if.then22.i.__dev_map_update_elem.exit_crit_edge, %if.end11.i.__dev_map_update_elem.exit_crit_edge, %if.end.i.__dev_map_update_elem.exit_crit_edge, %entry.__dev_map_update_elem.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then27.i ], [ -22, %entry.__dev_map_update_elem.exit_crit_edge ], [ -7, %if.end.i.__dev_map_update_elem.exit_crit_edge ], [ -17, %if.end11.i.__dev_map_update_elem.exit_crit_edge ], [ -22, %if.then22.i.__dev_map_update_elem.exit_crit_edge ], [ 0, %if.then49.i ], [ 0, %if.end30.i.__dev_map_update_elem.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_delete_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_map = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %netdev_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_map, align 128
  %arrayidx = getelementptr ptr, ptr %5, i32 %1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx) #13, !srcloc !87
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = inttoptr i32 %asmresult.i to ptr
  %rcu = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %7, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_redirect(ptr noundef %map, i32 noundef %ifindex, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @bpf_redirect_info to i32)
  %6 = inttoptr i32 %add.i to ptr
  %and.i = and i64 %flags, -28
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bpf_xdp_redirect_map.exit_crit_edge, !prof !79

entry.__bpf_xdp_redirect_map.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bpf_xdp_redirect_map.exit

if.end.i:                                         ; preds = %entry
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %7 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ifindex)
  %cmp.not.i = icmp ugt i32 %8, %ifindex
  br i1 %cmp.not.i, label %if.end.i3, label %__dev_map_lookup_elem.exit.thread

__dev_map_lookup_elem.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %tgt_value.i8 = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %tgt_value.i8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tgt_value.i8, align 4
  %and15.i10 = and i64 %flags, 8
  br label %land.lhs.true.i

if.end.i3:                                        ; preds = %if.end.i
  %netdev_map.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 1
  %10 = ptrtoint ptr %netdev_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev_map.i, align 128
  %arrayidx.i1 = getelementptr ptr, ptr %11, i32 %ifindex
  %12 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i1, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i2 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i2, label %lor.lhs.false.i, label %if.end.i3.__dev_map_lookup_elem.exit_crit_edge

if.end.i3.__dev_map_lookup_elem.exit_crit_edge:   ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

lor.lhs.false.i:                                  ; preds = %if.end.i3
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i5, label %lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge

lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

land.lhs.true.i5:                                 ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i4 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i4, label %land.lhs.true.i5.__dev_map_lookup_elem.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i5.__dev_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i5
  %.b17.i = load i1, ptr @__dev_map_lookup_elem.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge, label %if.then9.i

land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_lookup_elem.exit

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__dev_map_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 437, ptr noundef nonnull @.str.1) #13
  br label %__dev_map_lookup_elem.exit

__dev_map_lookup_elem.exit:                       ; preds = %if.then9.i, %land.lhs.true7.i.__dev_map_lookup_elem.exit_crit_edge, %land.lhs.true.i5.__dev_map_lookup_elem.exit_crit_edge, %lor.lhs.false.i.__dev_map_lookup_elem.exit_crit_edge, %if.end.i3.__dev_map_lookup_elem.exit_crit_edge
  %tgt_value.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %tgt_value.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %tgt_value.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  %and15.i = and i64 %flags, 8
  br i1 %tobool6.not.i, label %__dev_map_lookup_elem.exit.land.lhs.true.i_crit_edge, label %if.end19.i, !prof !77

__dev_map_lookup_elem.exit.land.lhs.true.i_crit_edge: ; preds = %__dev_map_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %__dev_map_lookup_elem.exit.land.lhs.true.i_crit_edge, %__dev_map_lookup_elem.exit.thread
  %and15.i11 = phi i64 [ %and15.i10, %__dev_map_lookup_elem.exit.thread ], [ %and15.i, %__dev_map_lookup_elem.exit.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i11)
  %tobool16.not.i = icmp eq i64 %and15.i11, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end19.thread.i

if.end19.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %tgt_index2.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %tgt_index2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ifindex, ptr %tgt_index2.i, align 4
  %id3.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %16 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id3.i, align 4
  %map_id204.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %map_id204.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %map_id204.i, align 4
  %map_type215.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %19 = ptrtoint ptr %map_type215.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map_type215.i, align 4
  %map_type226.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %21 = ptrtoint ptr %map_type226.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %map_type226.i, align 4
  br label %do.body30.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %map_id.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %map_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2147483647, ptr %map_id.i, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %23 = ptrtoint ptr %map_type.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %map_type.i, align 4
  %24 = trunc i64 %flags to i32
  %conv.i = and i32 %24, 3
  br label %__bpf_xdp_redirect_map.exit

if.end19.i:                                       ; preds = %__dev_map_lookup_elem.exit
  %tgt_index.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %25 = ptrtoint ptr %tgt_index.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %ifindex, ptr %tgt_index.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %map_id20.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %28 = ptrtoint ptr %map_id20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %map_id20.i, align 4
  %map_type21.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %29 = ptrtoint ptr %map_type21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map_type21.i, align 4
  %map_type22.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %31 = ptrtoint ptr %map_type22.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %map_type22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool24.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool24.not.i, label %do.body42.i, label %if.end19.i.do.body30.i_crit_edge

if.end19.i.do.body30.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30.i

do.body30.i:                                      ; preds = %if.end19.i.do.body30.i_crit_edge, %if.end19.thread.i
  %map31.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 3
  %32 = ptrtoint ptr %map31.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %map, ptr %map31.i, align 4
  %conv36.i = trunc i64 %flags to i32
  br label %if.end49.i

do.body42.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %map43.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 3
  %33 = ptrtoint ptr %map43.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr null, ptr %map43.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.body42.i, %do.body30.i
  %storemerge.i = phi i32 [ 0, %do.body42.i ], [ %conv36.i, %do.body30.i ]
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge.i, ptr %6, align 4
  br label %__bpf_xdp_redirect_map.exit

__bpf_xdp_redirect_map.exit:                      ; preds = %if.end49.i, %if.then17.i, %entry.__bpf_xdp_redirect_map.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end49.i ], [ %conv.i, %if.then17.i ], [ 0, %entry.__bpf_xdp_redirect_map.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_hash_get_next_key(ptr noundef %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.find_first_crit_edge, label %if.end

entry.find_first_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_first

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %call = tail call fastcc ptr @__dev_map_hash_lookup_elem(ptr noundef %map, i32 noundef %1)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.find_first_crit_edge, label %if.end3

if.end.find_first_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_first

if.end3:                                          ; preds = %if.end
  %index_hlist = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %index_hlist, align 4
  %tobool8.not = icmp eq ptr %3, null
  %add.ptr11 = getelementptr i8, ptr %3, i32 -4
  %tobool12.not61 = icmp eq ptr %add.ptr11, null
  %tobool12.not = or i1 %tobool8.not, %tobool12.not61
  br i1 %tobool12.not, label %if.end15, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %n_buckets = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %4 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_buckets, align 64
  %sub = add i32 %5, -1
  %and = and i32 %sub, %1
  %inc = add i32 %and, 1
  br label %find_first

find_first:                                       ; preds = %if.end15, %if.end.find_first_crit_edge, %entry.find_first_crit_edge
  %i.0 = phi i32 [ %inc, %if.end15 ], [ 0, %if.end.find_first_crit_edge ], [ 0, %entry.find_first_crit_edge ]
  %n_buckets16 = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %6 = ptrtoint ptr %n_buckets16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets16, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %7)
  %cmp63 = icmp ult i32 %i.0, %7
  br i1 %cmp63, label %for.body.lr.ph, label %find_first.cleanup_crit_edge

find_first.cleanup_crit_edge:                     ; preds = %find_first
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %find_first
  %dev_index_head.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %dev_index_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_index_head.i, align 4
  %sub.i = add i32 %7, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc37 = add i32 %i.164, 1
  %exitcond.not = icmp eq i32 %inc37, %7
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.164 = phi i32 [ %i.0, %for.body.lr.ph ], [ %inc37, %for.cond.for.body_crit_edge ]
  %and.i = and i32 %sub.i, %i.164
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool25.not = icmp eq ptr %11, null
  %add.ptr29 = getelementptr i8, ptr %11, i32 -4
  %tobool33.not62 = icmp eq ptr %add.ptr29, null
  %tobool33.not = or i1 %tobool25.not, %tobool33.not62
  br i1 %tobool33.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %3, %if.end3.cleanup.sink.split_crit_edge ], [ %11, %for.body.cleanup.sink.split_crit_edge ]
  %idx35 = getelementptr i8, ptr %.lcssa.sink, i32 24
  %12 = ptrtoint ptr %idx35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx35, align 4
  %14 = ptrtoint ptr %next_key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %next_key, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %find_first.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %find_first.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dev_map_hash_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %call = tail call fastcc ptr @__dev_map_hash_lookup_elem(ptr noundef %map, i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  %val = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 6
  %spec.select = select i1 %tobool.not, ptr null, ptr %val
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_hash_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  %val.i = alloca %struct.bpf_devmap_val, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #13
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %val.i, align 8
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %11 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value_size.i, align 4
  %13 = call ptr @memcpy(ptr %val.i, ptr %value, i32 %12)
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp.i = icmp ugt i64 %map_flags, 2
  br i1 %cmp.i, label %entry.__dev_map_hash_update_elem.exit_crit_edge, label %lor.rhs.i, !prof !77

entry.__dev_map_hash_update_elem.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_hash_update_elem.exit

lor.rhs.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %lor.rhs.i.__dev_map_hash_update_elem.exit_crit_edge, label %do.body4.i, !prof !77

lor.rhs.i.__dev_map_hash_update_elem.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__dev_map_hash_update_elem.exit

do.body4.i:                                       ; preds = %lor.rhs.i
  %index_lock.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 4
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %index_lock.i) #13
  %call10.i = tail call fastcc ptr @__dev_map_hash_lookup_elem(ptr noundef %map, i32 noundef %10) #13
  %tobool11.not.i = icmp eq ptr %call10.i, null
  %and.i2 = and i64 %map_flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i2)
  %tobool12.not.i = icmp eq i64 %and.i2, 0
  %or.cond.i = or i1 %tobool12.not.i, %tobool11.not.i
  br i1 %or.cond.i, label %if.end14.i, label %do.body4.i.out_err.i_crit_edge

do.body4.i.out_err.i_crit_edge:                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.end14.i:                                       ; preds = %do.body4.i
  %call15.i = call fastcc ptr @__dev_map_alloc_node(ptr noundef %7, ptr noundef %map, ptr noundef nonnull %val.i, i32 noundef %10) #13
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call15.i to i32
  br label %out_err.i

if.end19.i:                                       ; preds = %if.end14.i
  br i1 %tobool11.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  %index_hlist.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call10.i, i32 0, i32 1
  %17 = ptrtoint ptr %index_hlist.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %index_hlist.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call10.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pprev2.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %18, ptr %20, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.then21.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.then21.i.hlist_del_rcu.exit.i_crit_edge:       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.then21.i.hlist_del_rcu.exit.i_crit_edge
  %23 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %index_hlist30.c66.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call15.i, i32 0, i32 1
  %dev_index_head.i.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  %24 = ptrtoint ptr %dev_index_head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_index_head.i.i, align 4
  %n_buckets.i.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %26 = ptrtoint ptr %n_buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_buckets.i.i, align 64
  %sub.i.i = add i32 %27, -1
  %and.i.i = and i32 %sub.i.i, %10
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %25, i32 %and.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %30 = ptrtoint ptr %index_hlist30.c66.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %index_hlist30.c66.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call15.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !91
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %index_hlist30.c66.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %hlist_del_rcu.exit.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

hlist_del_rcu.exit.i.hlist_add_head_rcu.exit.i_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %index_hlist30.c66.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %hlist_del_rcu.exit.i.hlist_add_head_rcu.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock.i, i32 noundef %call7.i) #13
  %rcu35.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call10.i, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu35.i, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %__dev_map_hash_update_elem.exit

if.else.i:                                        ; preds = %if.end19.i
  %items.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 5
  %34 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %items.i, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %36 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp23.not.i = icmp ult i32 %35, %37
  br i1 %cmp23.not.i, label %if.end27.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock.i, i32 noundef %call7.i) #13
  %rcu.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call15.i, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %__dev_map_hash_update_elem.exit

if.end27.i:                                       ; preds = %if.else.i
  %inc.i = add nuw i32 %35, 1
  %38 = ptrtoint ptr %items.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i, ptr %items.i, align 4
  %index_hlist30.c.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call15.i, i32 0, i32 1
  %dev_index_head.i68.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  %39 = ptrtoint ptr %dev_index_head.i68.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_index_head.i68.i, align 4
  %n_buckets.i69.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %41 = ptrtoint ptr %n_buckets.i69.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_buckets.i69.i, align 64
  %sub.i70.i = add i32 %42, -1
  %and.i71.i = and i32 %sub.i70.i, %10
  %arrayidx.i72.i = getelementptr %struct.hlist_head, ptr %40, i32 %and.i71.i
  %43 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i72.i, align 4
  %45 = ptrtoint ptr %index_hlist30.c.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %index_hlist30.c.i, align 4
  %pprev.i73.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call15.i, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %pprev.i73.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %arrayidx.i72.i, ptr %pprev.i73.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !91
  %47 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %index_hlist30.c.i, ptr %arrayidx.i72.i, align 4
  %tobool.not.i74.i = icmp eq ptr %44, null
  br i1 %tobool.not.i74.i, label %if.end27.i.hlist_add_head_rcu.exit77.i_crit_edge, label %do.body49.i76.i

if.end27.i.hlist_add_head_rcu.exit77.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head_rcu.exit77.i

do.body49.i76.i:                                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i75.i = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %pprev51.i75.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %index_hlist30.c.i, ptr %pprev51.i75.i, align 4
  br label %hlist_add_head_rcu.exit77.i

hlist_add_head_rcu.exit77.i:                      ; preds = %do.body49.i76.i, %if.end27.i.hlist_add_head_rcu.exit77.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock.i, i32 noundef %call7.i) #13
  br label %__dev_map_hash_update_elem.exit

out_err.i:                                        ; preds = %if.then17.i, %do.body4.i.out_err.i_crit_edge
  %err.0.i = phi i32 [ %16, %if.then17.i ], [ -17, %do.body4.i.out_err.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock.i, i32 noundef %call7.i) #13
  br label %__dev_map_hash_update_elem.exit

__dev_map_hash_update_elem.exit:                  ; preds = %out_err.i, %hlist_add_head_rcu.exit77.i, %if.then25.i, %hlist_add_head_rcu.exit.i, %lor.rhs.i.__dev_map_hash_update_elem.exit_crit_edge, %entry.__dev_map_hash_update_elem.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %out_err.i ], [ -7, %if.then25.i ], [ -22, %lor.rhs.i.__dev_map_hash_update_elem.exit_crit_edge ], [ 0, %hlist_add_head_rcu.exit77.i ], [ 0, %hlist_add_head_rcu.exit.i ], [ -22, %entry.__dev_map_hash_update_elem.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_hash_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %index_lock = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %index_lock) #13
  %call6 = tail call fastcc ptr @__dev_map_hash_lookup_elem(ptr noundef %map, i32 noundef %1)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %items = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 5
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %items, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %items, align 4
  %pprev.i.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call6, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i, label %if.then.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

if.then.hlist_del_init_rcu.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %if.then
  %index_hlist = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call6, i32 0, i32 1
  %6 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %index_hlist, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i7.i = icmp eq ptr %7, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.then.hlist_del_init_rcu.exit_crit_edge
  %rcu = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call6, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %if.end

if.end:                                           ; preds = %hlist_del_init_rcu.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %hlist_del_init_rcu.exit ], [ -2, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock, i32 noundef %call3) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_hash_map_redirect(ptr noundef %map, i32 noundef %ifindex, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @bpf_redirect_info to i32)
  %6 = inttoptr i32 %add.i to ptr
  %and.i = and i64 %flags, -28
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bpf_xdp_redirect_map.exit_crit_edge, !prof !79

entry.__bpf_xdp_redirect_map.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bpf_xdp_redirect_map.exit

if.end.i:                                         ; preds = %entry
  %call4.i = tail call fastcc ptr @__dev_map_hash_lookup_elem(ptr noundef %map, i32 noundef %ifindex) #13, !callees !92
  %tgt_value.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tgt_value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4.i, ptr %tgt_value.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  %and15.i = and i64 %flags, 8
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end19.i, !prof !77

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end19.thread.i

if.end19.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %tgt_index2.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %tgt_index2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ifindex, ptr %tgt_index2.i, align 4
  %id3.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %9 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id3.i, align 4
  %map_id204.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %map_id204.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %map_id204.i, align 4
  %map_type215.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %12 = ptrtoint ptr %map_type215.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %map_type215.i, align 4
  %map_type226.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %14 = ptrtoint ptr %map_type226.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %map_type226.i, align 4
  br label %do.body30.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %map_id.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %map_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2147483647, ptr %map_id.i, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %16 = ptrtoint ptr %map_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %map_type.i, align 4
  %17 = trunc i64 %flags to i32
  %conv.i = and i32 %17, 3
  br label %__bpf_xdp_redirect_map.exit

if.end19.i:                                       ; preds = %if.end.i
  %tgt_index.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %tgt_index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ifindex, ptr %tgt_index.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 4
  %map_id20.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %21 = ptrtoint ptr %map_id20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %map_id20.i, align 4
  %map_type21.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %22 = ptrtoint ptr %map_type21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %map_type21.i, align 4
  %map_type22.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %24 = ptrtoint ptr %map_type22.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %map_type22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool24.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool24.not.i, label %do.body42.i, label %if.end19.i.do.body30.i_crit_edge

if.end19.i.do.body30.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30.i

do.body30.i:                                      ; preds = %if.end19.i.do.body30.i_crit_edge, %if.end19.thread.i
  %map31.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %map31.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %map, ptr %map31.i, align 4
  %conv36.i = trunc i64 %flags to i32
  br label %if.end49.i

do.body42.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %map43.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 3
  %26 = ptrtoint ptr %map43.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr null, ptr %map43.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.body42.i, %do.body30.i
  %storemerge.i = phi i32 [ 0, %do.body42.i ], [ %conv36.i, %do.body30.i ]
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge.i, ptr %6, align 4
  br label %__bpf_xdp_redirect_map.exit

__bpf_xdp_redirect_map.exit:                      ; preds = %if.end49.i, %if.then17.i, %entry.__bpf_xdp_redirect_map.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end49.i ], [ %conv.i, %if.then17.i ], [ 0, %entry.__bpf_xdp_redirect_map.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @dev_map_notifier) #13
  %call18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %0)
  %cmp9 = icmp ult i32 %call18, %0
  br i1 %cmp9, label %entry.do.body2_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %call110 = phi i32 [ %call1, %do.body2.do.body2_crit_edge ], [ %call18, %entry.do.body2_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call110
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @dev_flush_list to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call110, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %do.body2.do.body2_crit_edge, label %do.body2.for.end_crit_edge

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

for.end:                                          ; preds = %do.body2.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_map_bpf_prog_run(ptr noundef %xdp_prog, ptr nocapture noundef %frames, i32 noundef %n, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %txq = alloca %struct.xdp_txq_info, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txq) #13
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %txq, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #13
  %1 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 5
  %6 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp36 = icmp sgt i32 %n, 0
  %7 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  br i1 %cmp36, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 0, i32 9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %xdp_prog, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %nframes.038 = phi i32 [ 0, %for.body.lr.ph ], [ %nframes.1, %sw.epilog.for.body_crit_edge ]
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %frames, i32 %i.037
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %headroom.i = getelementptr inbounds %struct.xdp_frame, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %headroom.i, align 2
  %conv.i = zext i16 %13 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -24
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr1.i, ptr %3, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %xdp, align 4
  %17 = load ptr, ptr %9, align 4
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i, align 4
  %conv5.i = zext i16 %19 to i32
  %add.ptr6.i = getelementptr i8, ptr %17, i32 %conv5.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr6.i, ptr %1, align 4
  %21 = load ptr, ptr %9, align 4
  %metasize.i = getelementptr inbounds %struct.xdp_frame, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %metasize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i = load i32, ptr %metasize.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %idx.neg8.i = sub nsw i32 0, %bf.lshr.i
  %add.ptr9.i = getelementptr i8, ptr %21, i32 %idx.neg8.i
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr9.i, ptr %2, align 4
  %bf.load10.i = load i32, ptr %metasize.i, align 4
  %bf.clear.i = and i32 %bf.load10.i, 16777215
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.clear.i, ptr %6, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %txq, ptr %5, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.5, i32 noundef 613) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@dev_map_bpf_prog_run, %if.then.i.i)) #13
          to label %if.else.i.i [label %if.then.i.i], !srcloc !93

if.then.i.i:                                      ; preds = %for.body
  %call3.i.i = call i64 @sched_clock() #13
  %26 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %27) #13
  %28 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats9.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %37, i32 0, i32 3
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !83
  %and.i.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_off() #13
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %40 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  %44 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %49, ptrtoint (ptr @lockdep_recursion to i32)
  %50 = inttoptr i32 %add.i.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %53 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i7.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool20.not.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %57 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %61 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i9.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %64, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !96
  %65 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %68, ptrtoint (ptr @hardirqs_enabled to i32)
  %69 = inttoptr i32 %add47.i.i.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %72 = call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i12.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool54.not.i.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %76 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %77, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %37, i32 0, i32 3, i32 0, i32 1
  %78 = call ptr @llvm.returnaddress(i32 0) #13
  %79 = ptrtoint ptr %78 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #13
  %80 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %37, align 8
  %inc.i.i.i = add i64 %81, 1
  store i64 %inc.i.i.i, ptr %37, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %37, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #13
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %82 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %83
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %79) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  %84 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @trace_hardirqs_on() #13
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !84
  %and.i.i.i3.i.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !77

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #13, !srcloc !85
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bpf_func.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %88) #13
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@dev_map_bpf_prog_run, %l_yes.i.i)) #13
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !93

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %4, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 14
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %94, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.default_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.default_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 15
  %95 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %96, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.sw.default_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.sw.default_crit_edge:  ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i = call i32 @xdp_master_redirect(ptr noundef nonnull %xdp) #13
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %97 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %act.0.i, label %bpf_prog_run_xdp.exit.sw.default_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %bpf_prog_run_xdp.exit.sw.bb7_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb8_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb8_crit_edge:           ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

bpf_prog_run_xdp.exit.sw.bb7_crit_edge:           ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

bpf_prog_run_xdp.exit.sw.default_crit_edge:       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit
  %98 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xdp, align 4
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %3, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %101 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %102 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %2, align 4
  %sub.ptr.rhs.cast3.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub4.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast3.i
  %104 = call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i, i32 0) #13
  %sub.i = sub i32 %sub.ptr.sub.i, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp5.i = icmp ult i32 %sub.i, 24
  br i1 %cmp5.i, label %sw.bb.if.then_crit_edge, label %if.end.i, !prof !77

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %sw.bb
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %107 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %6, align 4
  %add.ptr.i26 = getelementptr i8, ptr %101, i32 -256
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i26, i32 %108
  %cmp9.i = icmp ugt ptr %106, %add.ptr8.i
  br i1 %cmp9.i, label %if.then16.i, label %if.else, !prof !77

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_warn(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #13
  br label %if.then

if.then:                                          ; preds = %if.then16.i, %sw.bb.if.then_crit_edge
  call void @xdp_return_frame_rx_napi(ptr noundef %9) #13
  br label %sw.epilog

if.else:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %99, ptr %9, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %112 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast23.i = ptrtoint ptr %113 to i32
  %sub.ptr.sub24.i = sub i32 %sub.ptr.lhs.cast22.i, %sub.ptr.rhs.cast23.i
  %conv.i27 = trunc i32 %sub.ptr.sub24.i to i16
  %114 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i27, ptr %len.i, align 4
  %115 = trunc i32 %sub.ptr.sub.i to i16
  %conv26.i = add i16 %115, -24
  %116 = ptrtoint ptr %headroom.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv26.i, ptr %headroom.i, align 2
  %117 = ptrtoint ptr %metasize.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load.i29 = load i32, ptr %metasize.i, align 4
  %bf.shl.i = shl i32 %104, 24
  %bf.clear.i30 = and i32 %bf.load.i29, 16777215
  %bf.set.i = or i32 %bf.clear.i30, %bf.shl.i
  store i32 %bf.set.i, ptr %metasize.i, align 4
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %6, align 4
  %bf.value32.i = and i32 %119, 16777215
  %bf.set34.i = or i32 %bf.value32.i, %bf.shl.i
  store i32 %bf.set34.i, ptr %metasize.i, align 4
  %inc = add i32 %nframes.038, 1
  %arrayidx6 = getelementptr ptr, ptr %frames, i32 %nframes.038
  %120 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %9, ptr %arrayidx6, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit.sw.default_crit_edge, %netif_is_bond_slave.exit.i.sw.default_crit_edge, %land.lhs.true.i.sw.default_crit_edge
  %act.0.i33 = phi i32 [ %act.0.i, %bpf_prog_run_xdp.exit.sw.default_crit_edge ], [ 3, %netif_is_bond_slave.exit.i.sw.default_crit_edge ], [ 3, %land.lhs.true.i.sw.default_crit_edge ]
  call void @bpf_warn_invalid_xdp_action(ptr noundef null, ptr noundef %xdp_prog, i32 noundef %act.0.i33) #13
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb7_crit_edge
  %act.0.i32 = phi i32 [ %act.0.i, %bpf_prog_run_xdp.exit.sw.bb7_crit_edge ], [ %act.0.i33, %sw.default ]
  call fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp_prog, i32 noundef %act.0.i32)
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb7, %bpf_prog_run_xdp.exit.sw.bb8_crit_edge
  call void @xdp_return_frame_rx_napi(ptr noundef %9) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.else, %if.then
  %nframes.1 = phi i32 [ %nframes.038, %sw.bb8 ], [ %nframes.038, %if.then ], [ %inc, %if.else ]
  %inc9 = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc9, %n
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %nframes.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %nframes.1, %sw.epilog.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txq) #13
  ret i32 %nframes.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_devmap_xmit(ptr noundef %from_dev, ptr noundef %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_devmap_xmit, i32 0, i32 1), ptr blockaddress(@trace_xdp_devmap_xmit, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %call42 = tail call i32 @__traceiter_xdp_devmap_xmit(ptr noundef null, ptr noundef %from_dev, ptr noundef %to_dev, i32 noundef %sent, i32 noundef %drops, i32 noundef %err) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_devmap_xmit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_devmap_xmit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_devmap_xmit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xdp_devmap_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 301, ptr noundef nonnull @.str.1) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 51, ptr noundef nonnull @.str.1) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_devmap_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_upper_get_next_dev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdpf_clone(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_run_generic_xdp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_clear_redirect_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dev_map_alloc_node(ptr noundef %net, ptr noundef %dtab, ptr nocapture noundef readonly %val, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %dtab, i32 0, i32 12
  %0 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numa_node, align 8
  %call = tail call ptr @bpf_map_kmalloc_node(ptr noundef %dtab, i32 noundef 40, i32 noundef 10784, i32 noundef %1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %call3 = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %3) #13
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.err_out_crit_edge, label %if.end8

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.end8:                                          ; preds = %if.end
  %bpf_prog = getelementptr inbounds %struct.bpf_devmap_val, ptr %val, i32 0, i32 1
  %5 = ptrtoint ptr %bpf_prog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bpf_prog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then9, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %idx1958 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %idx1958 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %idx, ptr %idx1958, align 4
  %dtab2059 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %dtab2059 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dtab, ptr %dtab2059, align 4
  br label %if.else

if.then9:                                         ; preds = %if.end8
  %call11 = tail call ptr @bpf_prog_get_type_dev(i32 noundef %6, i32 noundef 6, i1 noundef zeroext false) #13
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9.err_put_dev_crit_edge, label %if.end14

if.then9.err_put_dev_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_dev

if.end14:                                         ; preds = %if.then9
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %call11, i32 0, i32 3
  %9 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expected_attach_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %cmp15.not = icmp eq i32 %10, 33
  br i1 %cmp15.not, label %if.end18, label %err_put_prog

if.end18:                                         ; preds = %if.end14
  %idx19 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %idx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %idx, ptr %idx19, align 4
  %dtab20 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dtab20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dtab, ptr %dtab20, align 4
  %tobool21.not = icmp eq ptr %call11, null
  br i1 %tobool21.not, label %if.end18.if.else_crit_edge, label %if.then22

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %xdp_prog, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %call11, i32 0, i32 10
  %14 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aux, align 4
  %id = getelementptr inbounds %struct.bpf_prog_aux, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end18.if.else_crit_edge, %if.end18.thread
  %xdp_prog25 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %xdp_prog25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %xdp_prog25, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %.sink = phi i32 [ 0, %if.else ], [ %17, %if.then22 ]
  %bpf_prog27 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %bpf_prog27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %bpf_prog27, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %val30 = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %val30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val30, align 4
  br label %cleanup

err_put_prog:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef %call11) #13
  br label %err_put_dev

err_put_dev:                                      ; preds = %err_put_prog, %if.then9.err_put_dev_crit_edge
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %err_put_dev.err_out_crit_edge, label %do.body1.i

err_put_dev.err_out_crit_edge:                    ; preds = %err_put_dev
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

do.body1.i:                                       ; preds = %err_put_dev
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !83
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %26 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcpu_refcnt.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %34, %28
  %35 = inttoptr i32 %add.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add13.i = add i32 %37, -1
  store i32 %add13.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !84
  %and.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !77

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #13, !srcloc !85
  br label %err_out

err_out:                                          ; preds = %do.end30.i, %err_put_dev.err_out_crit_edge, %if.end.err_out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %err_out ], [ %call, %if.end28 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__dev_map_entry_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %xdp_prog = getelementptr i8, ptr %rcu, i32 -4
  %0 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp_prog, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -20
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.dev_put.exit_crit_edge, label %do.body1.i

if.end.dev_put.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !83
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !84
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !77

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #13, !srcloc !85
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dev_map_hash_lookup_elem(ptr noundef %map, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_index_head.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %dev_index_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_index_head.i, align 4
  %n_buckets.i = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_buckets.i, align 64
  %sub.i = add i32 %3, -1
  %and.i = and i32 %sub.i, %key
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %1, i32 %and.i
  %dep_map = getelementptr inbounds %struct.bpf_dtab, ptr %map, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b47 = load i1, ptr @__dev_map_hash_lookup_elem.__warned, align 1
  br i1 %.b47, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__dev_map_hash_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool15.not = icmp eq ptr %5, null
  %add.ptr18 = getelementptr i8, ptr %5, i32 -4
  %tobool19.not5154 = icmp eq ptr %add.ptr18, null
  %tobool19.not51 = or i1 %tobool15.not, %tobool19.not5154
  br i1 %tobool19.not51, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %dev.052 = phi ptr [ %add.ptr33, %for.inc.for.body_crit_edge ], [ %add.ptr18, %do.end.for.body_crit_edge ]
  %idx = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.052, i32 0, i32 5
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %key)
  %cmp = icmp eq i32 %7, %key
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %index_hlist = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.052, i32 0, i32 1
  %8 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %index_hlist, align 4
  %tobool29.not = icmp eq ptr %9, null
  %add.ptr33 = getelementptr i8, ptr %9, i32 -4
  %tobool19.not55 = icmp eq ptr %add.ptr33, null
  %tobool19.not = or i1 %tobool29.not, %tobool19.not55
  br i1 %tobool19.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %dev.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %dev.052, %for.body.cleanup_crit_edge ]
  ret ptr %dev.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_map_notification(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %event, label %entry.cleanup100_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb11
  ]

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

sw.bb:                                            ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev_ops, align 8
  %ndo_xdp_xmit = getelementptr inbounds %struct.net_device_ops, ptr %4, i32 0, i32 77
  %5 = ptrtoint ptr %ndo_xdp_xmit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndo_xdp_xmit, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %sw.bb.cleanup100_crit_edge, label %lor.lhs.false

sw.bb.cleanup100_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

lor.lhs.false:                                    ; preds = %sw.bb
  %xdp_bulkq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 109
  %7 = ptrtoint ptr %xdp_bulkq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xdp_bulkq, align 64
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup100_crit_edge

lor.lhs.false.cleanup100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call noalias ptr @__alloc_percpu(i32 noundef 88, i32 noundef 4) #18
  %9 = ptrtoint ptr %xdp_bulkq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %xdp_bulkq, align 64
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup100_crit_edge, label %for.cond.preheader

if.end.cleanup100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

for.cond.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call8148 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call8148, i32 %10)
  %cmp149 = icmp ult i32 %call8148, %10
  br i1 %cmp149, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup100_crit_edge

for.cond.preheader.cleanup100_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call8150 = phi i32 [ %call8, %for.body.for.body_crit_edge ], [ %call8148, %for.cond.preheader.for.body_crit_edge ]
  %11 = ptrtoint ptr %xdp_bulkq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdp_bulkq, align 64
  %13 = ptrtoint ptr %12 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8150
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %13
  %16 = inttoptr i32 %add to ptr
  %dev = getelementptr inbounds %struct.xdp_dev_bulk_queue, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %dev, align 4
  %call8 = tail call i32 @cpumask_next(i32 noundef %call8150, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp = icmp ult i32 %call8, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup100_crit_edge

for.body.cleanup100_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb11:                                          ; preds = %entry
  %18 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !106
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %sw.bb11.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb11.rcu_read_lock.exit_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb11
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb11.rcu_read_lock.exit_crit_edge
  %call13 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end22_crit_edge

rcu_read_lock.exit.do.end22_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b129 = load i1, ptr @dev_map_notification.__warned, align 1
  br i1 %.b129, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dev_map_notification.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1090, ptr noundef nonnull @.str.3) #13
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %rcu_read_lock.exit.do.end22_crit_edge
  %.pn145 = load volatile ptr, ptr @dev_map_list, align 4
  %cmp29.not146 = icmp eq ptr %.pn145, @dev_map_list
  br i1 %cmp29.not146, label %do.end22.for.end99_crit_edge, label %do.end22.for.body30_crit_edge

do.end22.for.body30_crit_edge:                    ; preds = %do.end22
  br label %for.body30

do.end22.for.end99_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99

for.body30:                                       ; preds = %for.inc90.for.body30_crit_edge, %do.end22.for.body30_crit_edge
  %.pn147 = phi ptr [ %.pn, %for.inc90.for.body30_crit_edge ], [ %.pn145, %do.end22.for.body30_crit_edge ]
  %map_type = getelementptr i8, ptr %.pn147, i32 -376
  %22 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %23)
  %cmp31 = icmp eq i32 %23, 25
  br i1 %cmp31, label %if.then32, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.body30
  %max_entries = getelementptr i8, ptr %.pn147, i32 -364
  %24 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp36142.not = icmp eq i32 %25, 0
  br i1 %cmp36142.not, label %for.cond34.preheader.for.inc90_crit_edge, label %for.body37.lr.ph

for.cond34.preheader.for.inc90_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc90

for.body37.lr.ph:                                 ; preds = %for.cond34.preheader
  %netdev_map = getelementptr i8, ptr %.pn147, i32 -4
  br label %for.body37

if.then32:                                        ; preds = %for.body30
  %index_lock.i = getelementptr i8, ptr %.pn147, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %index_lock.i) #13
  %n_buckets.i = getelementptr i8, ptr %.pn147, i32 60
  %26 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_buckets.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp551.not.i = icmp eq i32 %27, 0
  br i1 %cmp551.not.i, label %if.then32.dev_map_hash_remove_netdev.exit_crit_edge, label %for.body.lr.ph.i

if.then32.dev_map_hash_remove_netdev.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_map_hash_remove_netdev.exit

for.body.lr.ph.i:                                 ; preds = %if.then32
  %dev_index_head.i.i = getelementptr i8, ptr %.pn147, i32 8
  %items.i = getelementptr i8, ptr %.pn147, i32 56
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %28 = phi i32 [ %27, %for.body.lr.ph.i ], [ %47, %for.end.i.for.body.i_crit_edge ]
  %i.052.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %dev_index_head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_index_head.i.i, align 4
  %sub.i.i = add i32 %28, -1
  %and.i.i = and i32 %sub.i.i, %i.052.i
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %30, i32 %and.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i131 = icmp eq ptr %32, null
  %add.ptr.i = getelementptr i8, ptr %32, i32 -4
  %tobool11.not4953.i = icmp eq ptr %add.ptr.i, null
  %tobool11.not49.i = or i1 %tobool.not.i131, %tobool11.not4953.i
  br i1 %tobool11.not49.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %dev.050.i = phi ptr [ %add.ptr26.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %for.body.i.land.rhs.i_crit_edge ]
  %index_hlist.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.050.i, i32 0, i32 1
  %33 = ptrtoint ptr %index_hlist.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %index_hlist.i, align 4
  %35 = ptrtoint ptr %dev.050.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.050.i, align 4
  %cmp17.not.i = icmp eq ptr %36, %1
  br i1 %cmp17.not.i, label %if.end.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %land.rhs.i
  %37 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %items.i, align 4
  %dec.i = add i32 %38, -1
  store i32 %dec.i, ptr %items.i, align 4
  %39 = ptrtoint ptr %index_hlist.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %index_hlist.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.050.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev2.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %42, align 4
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %if.end.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.end.i.hlist_del_rcu.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.end.i.hlist_del_rcu.exit.i_crit_edge
  %45 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %dev.050.i, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %hlist_del_rcu.exit.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool22.not.i = icmp eq ptr %34, null
  %add.ptr26.i = getelementptr i8, ptr %34, i32 -4
  %tobool11.not54.i = icmp eq ptr %add.ptr26.i, null
  %tobool11.not.i = or i1 %tobool22.not.i, %tobool11.not54.i
  br i1 %tobool11.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %inc.i = add nuw i32 %i.052.i, 1
  %46 = ptrtoint ptr %n_buckets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_buckets.i, align 64
  %cmp5.i = icmp ult i32 %inc.i, %47
  br i1 %cmp5.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.dev_map_hash_remove_netdev.exit_crit_edge

for.end.i.dev_map_hash_remove_netdev.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_map_hash_remove_netdev.exit

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

dev_map_hash_remove_netdev.exit:                  ; preds = %for.end.i.dev_map_hash_remove_netdev.exit_crit_edge, %if.then32.dev_map_hash_remove_netdev.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %index_lock.i, i32 noundef %call2.i) #13
  br label %for.inc90

for.body37:                                       ; preds = %cleanup.for.body37_crit_edge, %for.body37.lr.ph
  %i.0143 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc, %cleanup.for.body37_crit_edge ]
  %48 = ptrtoint ptr %netdev_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev_map, align 128
  %arrayidx43 = getelementptr ptr, ptr %49, i32 %i.0143
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %arrayidx43, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %for.body37.do.end55_crit_edge

for.body37.do.end55_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

land.lhs.true47:                                  ; preds = %for.body37
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b127128 = load i1, ptr @dev_map_notification.__warned.12, align 1
  br i1 %.b127128, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @dev_map_notification.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1099, ptr noundef nonnull @.str.1) #13
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %for.body37.do.end55_crit_edge
  %tobool57.not = icmp eq ptr %51, null
  br i1 %tobool57.not, label %do.end55.cleanup_crit_edge, label %lor.lhs.false58

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false58:                                  ; preds = %do.end55
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %cmp60.not = icmp eq ptr %1, %53
  br i1 %cmp60.not, label %if.end62, label %lor.lhs.false58.cleanup_crit_edge

lor.lhs.false58.cleanup_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false58
  %54 = ptrtoint ptr %netdev_map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev_map, align 128
  %arrayidx64 = getelementptr ptr, ptr %55, i32 %i.0143
  %call.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx64, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !107
  %56 = ptrtoint ptr %51 to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx64, i32 1, i32 3, i32 1) #13
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end62
  %57 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx64, i32 %56, i32 0) #13, !srcloc !108
  %asmresult.i = extractvalue { i32, i32 } %57, 0
  %tobool.not.i132 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i132, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %57, 1
  %58 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  %cmp85 = icmp eq ptr %51, %58
  br i1 %cmp85, label %if.then86, label %__cmpxchg.exit.cleanup_crit_edge

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then86:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.bpf_dtab_netdev, ptr %51, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__dev_map_entry_free) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %__cmpxchg.exit.cleanup_crit_edge, %lor.lhs.false58.cleanup_crit_edge, %do.end55.cleanup_crit_edge
  %inc = add nuw i32 %i.0143, 1
  %59 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_entries, align 8
  %cmp36 = icmp ult i32 %inc, %60
  br i1 %cmp36, label %cleanup.for.body37_crit_edge, label %cleanup.for.inc90_crit_edge

cleanup.for.inc90_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc90

cleanup.for.body37_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body37

for.inc90:                                        ; preds = %cleanup.for.inc90_crit_edge, %dev_map_hash_remove_netdev.exit, %for.cond34.preheader.for.inc90_crit_edge
  %61 = ptrtoint ptr %.pn147 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load volatile ptr, ptr %.pn147, align 4
  %cmp29.not = icmp eq ptr %.pn, @dev_map_list
  br i1 %cmp29.not, label %for.inc90.for.end99_crit_edge, label %for.inc90.for.body30_crit_edge

for.inc90.for.body30_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30

for.inc90.for.end99_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end99

for.end99:                                        ; preds = %for.inc90.for.end99_crit_edge, %do.end22.for.end99_crit_edge
  %call.i133 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i133, label %for.end99.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i136

for.end99.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i136:                               ; preds = %for.end99
  %call1.i134 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i138

land.lhs.true.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i138:                              ; preds = %land.lhs.true.i136
  %.b4.i137 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i137, label %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, label %if.then.i139

land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i139:                                     ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i139, %land.lhs.true2.i138.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i136.rcu_read_unlock.exit_crit_edge, %for.end99.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !110
  %62 = tail call i32 @llvm.read_register.i32(metadata !67) #13
  %and.i.i.i.i.i140 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i140 to ptr
  %preempt_count.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i141, align 4
  %sub.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i141, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup100

cleanup100:                                       ; preds = %rcu_read_unlock.exit, %for.body.cleanup100_crit_edge, %for.cond.preheader.cleanup100_crit_edge, %if.end.cleanup100_crit_edge, %lor.lhs.false.cleanup100_crit_edge, %sw.bb.cleanup100_crit_edge, %entry.cleanup100_crit_edge
  %retval.0 = phi i32 [ 32770, %if.end.cleanup100_crit_edge ], [ 1, %entry.cleanup100_crit_edge ], [ 1, %sw.bb.cleanup100_crit_edge ], [ 1, %lor.lhs.false.cleanup100_crit_edge ], [ 1, %rcu_read_unlock.exit ], [ 1, %for.cond.preheader.cleanup100_crit_edge ], [ 1, %for.body.cleanup100_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/bpf/devmap.c", i32 602, i32 10}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../kernel/bpf/devmap.c", i32 625, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../kernel/bpf/devmap.c", i32 720, i32 10}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/bpf/devmap.c", i32 1017, i32 18}
!11 = !{ptr @dev_map_ops, !12, !"dev_map_ops", i1 false, i1 false}
!12 = !{!"../kernel/bpf/devmap.c", i32 1008, i32 26}
!13 = !{ptr @dev_map_hash_ops, !14, !"dev_map_hash_ops", i1 false, i1 false}
!14 = !{!"../kernel/bpf/devmap.c", i32 1023, i32 26}
!15 = !{ptr @__initcall__kmod_devmap__488_1134_dev_map_init4, !16, !"__initcall__kmod_devmap__488_1134_dev_map_init4", i1 false, i1 false}
!16 = !{!"../kernel/bpf/devmap.c", i32 1134, i32 1}
!17 = !{ptr @__pcpu_unique_dev_flush_list, !18, !"__pcpu_unique_dev_flush_list", i1 false, i1 false}
!18 = !{!"../kernel/bpf/devmap.c", i32 86, i32 8}
!19 = !{ptr @dev_flush_list, !18, !"dev_flush_list", i1 false, i1 false}
!20 = !{ptr @dev_map_btf_id, !21, !"dev_map_btf_id", i1 false, i1 false}
!21 = !{!"../kernel/bpf/devmap.c", i32 1007, i32 12}
!22 = !{ptr @dev_map_hash_map_btf_id, !23, !"dev_map_hash_map_btf_id", i1 false, i1 false}
!23 = !{!"../kernel/bpf/devmap.c", i32 1022, i32 12}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/filter.h", i32 613, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/net/xdp.h", i32 200, i32 3}
!31 = !{ptr @__func__.xdp_update_frame_from_buff, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/trace/events/xdp.h", i32 267, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{ptr @dev_map_init_map.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../kernel/bpf/devmap.c", i32 145, i32 3}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/bpf/devmap.c", i32 87, i32 8}
!47 = !{ptr @dev_map_lock, !46, !"dev_map_lock", i1 false, i1 false}
!48 = !{ptr @dev_map_list, !49, !"dev_map_list", i1 false, i1 false}
!49 = !{!"../kernel/bpf/devmap.c", i32 88, i32 8}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../kernel/bpf/devmap.c", i32 436, i32 8}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../kernel/bpf/devmap.c", i32 272, i32 2}
!54 = !{ptr @dev_map_notifier, !55, !"dev_map_notifier", i1 false, i1 false}
!55 = !{!"../kernel/bpf/devmap.c", i32 1116, i32 30}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../kernel/bpf/devmap.c", i32 1090, i32 3}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../kernel/bpf/devmap.c", i32 1099, i32 11}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!62 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 1210177}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2155156007, i64 2155156495, i64 2155156044, i64 2155156100, i64 2155156134, i64 2155156158, i64 2155156199, i64 2155156220, i64 2155156248, i64 2155156282}
!81 = !{i32 0, i32 33}
!82 = !{i64 2152268907}
!83 = !{i64 1115589, i64 1115650}
!84 = !{i64 1118321}
!85 = !{i64 1118606}
!86 = !{i64 2157637749}
!87 = !{i64 1218657, i64 1218674, i64 1218698, i64 1218724, i64 1218742}
!88 = !{i64 2157638052}
!89 = !{i64 2157628142}
!90 = !{i64 2157628415}
!91 = !{i64 2152345282}
!92 = distinct !{ptr @__dev_map_hash_lookup_elem, null}
!93 = !{i64 2149273215, i64 2149273220, i64 2149273233, i64 2149273277, i64 2149273311, i64 2149273332}
!94 = !{i64 2150071387}
!95 = !{i64 2150076319}
!96 = !{i64 2150098031}
!97 = !{i64 2150102923}
!98 = !{i64 2150183441}
!99 = !{i64 2150183766}
!100 = !{i64 2157267697}
!101 = !{i64 2157267958}
!102 = !{i64 2149711769}
!103 = !{i64 2149712805}
!104 = !{i64 2157114559}
!105 = !{i64 2157114774}
!106 = !{i64 2149703210}
!107 = !{i64 2157691827}
!108 = !{i64 1221381, i64 1221402, i64 1221425, i64 1221444, i64 1221463}
!109 = !{i64 2157692195}
!110 = !{i64 2149703476}
