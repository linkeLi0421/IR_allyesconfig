; ModuleID = '/llk/IR_all_yes/kernel/bpf/cpumap.c_pt.bc'
source_filename = "../kernel/bpf/cpumap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_redirect_info = type { i32, i32, ptr, ptr, i32, i32, i32, %struct.bpf_nh_params }
%struct.bpf_nh_params = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.65 }
%union.anon.65 = type { [4 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%struct.atomic_t = type { i32 }
%union.anon.128 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bpf_cpu_map = type { %struct.bpf_map, ptr, [124 x i8] }
%struct.bpf_cpu_map_entry = type { i32, i32, ptr, ptr, ptr, ptr, %struct.bpf_cpumap_val, ptr, %struct.atomic_t, %struct.callback_head, %struct.work_struct }
%struct.bpf_cpumap_val = type { i32, %union.anon.161 }
%union.anon.161 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.xdp_bulk_queue = type { [8 x ptr], %struct.list_head, ptr, i32 }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.anon.96, [0 x %struct.sock_filter] }
%struct.anon.96 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.93 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.93 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.xdp_mem_info = type { i32, i32 }
%struct.sk_buff = type { %union.anon.66, %union.anon.69, %union.anon.70, [48 x i8], %union.anon.71, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.73, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr, %union.anon.68 }
%union.anon.68 = type { ptr }
%union.anon.69 = type { ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.75, i32, i32, i32, i16, i16, %union.anon.77, i32, %union.anon.78, %union.anon.79, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.75 = type { i32 }
%union.anon.77 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xdp_cpumap_stats = type { i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.117, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.56 }
%struct.llist_node = type { ptr }
%union.anon.56 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.117 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.43, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.140, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.140 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bpf_cpu_map\00", [20 x i8] zeroinitializer }, align 32
@cpu_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpu_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @cpu_map_alloc, ptr null, ptr @cpu_map_free, ptr @cpu_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpu_map_lookup_elem, ptr @cpu_map_update_elem, ptr @cpu_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpu_map_redirect, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @cpu_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@cpu_map_flush_list = weak dso_local global %struct.list_head zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__initcall__kmod_cpumap__469_800_cpu_map_init4 = internal global ptr @cpu_map_init, section ".initcall4.init", align 4
@__pcpu_unique_cpu_map_flush_list = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_map_entry_replace.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&old_rcpu->kthread_stop_wq)\00", [50 x i8] zeroinitializer }, align 32
@__cpu_map_ring_cleanup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/bpf/cpumap.c\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_map_lookup_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpumap/%d/map:%d\00", [47 x i8] zeroinitializer }, align 32
@ptr_ring_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&r->producer_lock\00", [46 x i8] zeroinitializer }, align 32
@ptr_ring_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&r->consumer_lock\00", [46 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@skbuff_head_cache = external dso_local local_unnamed_addr global ptr, align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@bpf_redirect_info = external dso_local global %struct.bpf_redirect_info, section ".data..percpu", align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_cpumap_kthread = external dso_local global %struct.tracepoint, align 4
@trace_xdp_cpumap_kthread.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_cpumap_enqueue = external dso_local global %struct.tracepoint, align 4
@trace_xdp_cpumap_enqueue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 684, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"cpu_map_btf_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 674, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"cpu_map_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 675, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 536, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 155, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 638, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 108, i32 2 }
@___asan_gen_.45 = private constant [23 x i8] c"../kernel/bpf/cpumap.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 465, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 495, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/ptr_ring.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 496, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 749, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 613, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 271, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 200, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 28, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 760, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 695, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 723, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_cpumap__469_800_cpu_map_init4, ptr @.str, ptr @cpu_map_btf_id, ptr @cpu_map_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ptr_ring_init.__key, ptr @.str.6, ptr @ptr_ring_init.__key.7, ptr @.str.8, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptr_ring_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptr_ring_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cpu_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size1 = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %value_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size1, align 8
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #13
  br i1 %call.i, label %entry.if.end_crit_edge, label %bpf_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

bpf_capable.exit:                                 ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp3.not = icmp eq i32 %5, 4
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %lor.lhs.false4.cleanup_crit_edge [
    i32 4, label %lor.lhs.false4.lor.lhs.false7_crit_edge
    i32 8, label %lor.lhs.false4.lor.lhs.false7_crit_edge47
  ]

lor.lhs.false4.lor.lhs.false7_crit_edge47:        ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false7

lor.lhs.false4.lor.lhs.false7_crit_edge:          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4.lor.lhs.false7_crit_edge, %lor.lhs.false4.lor.lhs.false7_crit_edge47
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %7 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_flags, align 8
  %and = and i32 %8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 5246400, i32 noundef 512) #16
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #13
  %max_entries17 = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %max_entries17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp18 = icmp ugt i32 %11, 4
  br i1 %cmp18, label %if.end15.free_cmap_crit_edge, label %if.end20

if.end15.free_cmap_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cmap

if.end20:                                         ; preds = %if.end15
  %mul = shl nuw nsw i32 %11, 2
  %conv = zext i32 %mul to i64
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numa_node, align 8
  %call24 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv, i32 noundef %13) #13
  %cpu_map = getelementptr inbounds %struct.bpf_cpu_map, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %cpu_map to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %cpu_map, align 128
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end20.free_cmap_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20.free_cmap_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cmap

free_cmap:                                        ; preds = %if.end20.free_cmap_crit_edge, %if.end15.free_cmap_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end20.free_cmap_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.end15.free_cmap_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %free_cmap, %if.end20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %free_cmap ], [ %call7.i.i, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false4.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpu_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synchronize_rcu() #13
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cpu_map = getelementptr inbounds %struct.bpf_cpu_map, ptr %map, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_map, align 128
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__cpu_map_entry_replace(ptr noundef %map, i32 noundef %i.013, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.013, 1
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %cpu_map4 = getelementptr inbounds %struct.bpf_cpu_map, ptr %map, i32 0, i32 1
  %8 = ptrtoint ptr %cpu_map4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_map4, align 128
  tail call void @bpf_map_area_free(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %map) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpu_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #1 align 64 {
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
define internal ptr @cpu_map_lookup_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.__cpu_map_lookup_elem.exit_crit_edge

entry.__cpu_map_lookup_elem.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit

if.end.i:                                         ; preds = %entry
  %cpu_map.i = getelementptr inbounds %struct.bpf_cpu_map, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %cpu_map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_map.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.__cpu_map_lookup_elem.exit_crit_edge

if.end.i.__cpu_map_lookup_elem.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__cpu_map_lookup_elem.exit_crit_edge

lor.lhs.false.i.__cpu_map_lookup_elem.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.__cpu_map_lookup_elem.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.__cpu_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @__cpu_map_lookup_elem.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true7.i.__cpu_map_lookup_elem.exit_crit_edge, label %if.then9.i

land.lhs.true7.i.__cpu_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__cpu_map_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 639, ptr noundef nonnull @.str.3) #13
  br label %__cpu_map_lookup_elem.exit

__cpu_map_lookup_elem.exit:                       ; preds = %if.then9.i, %land.lhs.true7.i.__cpu_map_lookup_elem.exit_crit_edge, %land.lhs.true.i.__cpu_map_lookup_elem.exit_crit_edge, %lor.lhs.false.i.__cpu_map_lookup_elem.exit_crit_edge, %if.end.i.__cpu_map_lookup_elem.exit_crit_edge, %entry.__cpu_map_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__cpu_map_lookup_elem.exit_crit_edge ], [ %7, %if.then9.i ], [ %7, %land.lhs.true7.i.__cpu_map_lookup_elem.exit_crit_edge ], [ %7, %land.lhs.true.i.__cpu_map_lookup_elem.exit_crit_edge ], [ %7, %lor.lhs.false.i.__cpu_map_lookup_elem.exit_crit_edge ], [ %7, %if.end.i.__cpu_map_lookup_elem.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %value = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %retval.0.i, i32 0, i32 6
  %spec.select = select i1 %tobool.not, ptr null, ptr %value
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  %cpumap_value.sroa.0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpumap_value.sroa.0)
  %0 = ptrtoint ptr %cpumap_value.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cpumap_value.sroa.0, align 8
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %3 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value_size, align 4
  %5 = call ptr @memcpy(ptr %cpumap_value.sroa.0, ptr %value, i32 %4)
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !80

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %6 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %7)
  %cmp3.not = icmp ult i32 %2, %7
  br i1 %cmp3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !81

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %map_flags)
  %cmp12 = icmp eq i64 %map_flags, 1
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end20, !prof !80

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %cpumap_value.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0. = load i32, ptr %cpumap_value.sroa.0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.)
  %cmp21 = icmp ugt i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., 16384
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end29, !prof !80

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %9)
  %cmp30.not = icmp ult i32 %2, %9
  br i1 %cmp30.not, label %cpu_possible.exit, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cpu_possible.exit:                                ; preds = %if.end29
  %div3.i.i.i = lshr i32 %2, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %2, 31
  %12 = shl nuw i32 1, %and.i.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %cpu_possible.exit.cleanup_crit_edge, label %if.end32

cpu_possible.exit.cleanup_crit_edge:              ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.)
  %cmp34 = icmp eq i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., 0
  br i1 %cmp34, label %if.end32.if.end41_crit_edge, label %if.else

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.else:                                          ; preds = %if.end32
  %cpumap_value.sroa.0.4.bpf_prog.i.sroa_idx = getelementptr inbounds i8, ptr %cpumap_value.sroa.0, i32 4
  %14 = ptrtoint ptr %cpumap_value.sroa.0.4.bpf_prog.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %cpumap_value.sroa.0.4.cpumap_value.sroa.0.4.cpumap_value.sroa.0.4. = load i32, ptr %cpumap_value.sroa.0.4.bpf_prog.i.sroa_idx, align 4
  %call.i56 = tail call ptr @bpf_map_kmalloc_node(ptr noundef %map, i32 noundef 92, i32 noundef 11712, i32 noundef 0) #13
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i58 = tail call ptr @bpf_map_alloc_percpu(ptr noundef %map, i32 noundef 48, i32 noundef 4, i32 noundef 11456) #13
  %bulkq.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 2
  %15 = ptrtoint ptr %bulkq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i58, ptr %bulkq.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i58, null
  br i1 %tobool3.not.i, label %if.end.i.free_rcu.i_crit_edge, label %for.cond.preheader.i

if.end.i.free_rcu.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_rcu.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call6106.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call6106.i, i32 %16)
  %cmp107.i = icmp ult i32 %call6106.i, %16
  br i1 %cmp107.i, label %for.cond.preheader.i.do.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  %call6108.i = phi i32 [ %call6.i, %do.body.i.do.body.i_crit_edge ], [ %call6106.i, %for.cond.preheader.i.do.body.i_crit_edge ]
  %17 = ptrtoint ptr %bulkq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bulkq.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6108.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, %19
  %22 = inttoptr i32 %add.i to ptr
  %obj.i = getelementptr inbounds %struct.xdp_bulk_queue, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %obj.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i56, ptr %obj.i, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef %call6108.i, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp.i = icmp ult i32 %call6.i, %16
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call9.i = tail call ptr @bpf_map_kmalloc_node(ptr noundef %map, i32 noundef 384, i32 noundef 11456, i32 noundef 0) #13
  %queue.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 4
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %queue.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %for.end.i.free_bulkq.i_crit_edge, label %if.end13.i

for.end.i.free_bulkq.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bulkq.i

if.end13.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.)
  %cmp.i.i.i = icmp ugt i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., 2097152
  br i1 %cmp.i.i.i, label %__ptr_ring_init_queue_alloc.exit.thread.i.i, label %__ptr_ring_init_queue_alloc.exit.i.i

__ptr_ring_init_queue_alloc.exit.thread.i.i:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %queue3.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 9
  %25 = ptrtoint ptr %queue3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %queue3.i.i, align 8
  br label %free_queue.i

__ptr_ring_init_queue_alloc.exit.i.i:             ; preds = %if.end13.i
  %26 = shl nuw nsw i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., 2
  %call.i.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %26, i32 noundef 11712, i32 noundef -1) #18
  %queue.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 9
  %27 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i.i.i, ptr %queue.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %__ptr_ring_init_queue_alloc.exit.i.i.free_queue.i_crit_edge, label %if.end18.i

__ptr_ring_init_queue_alloc.exit.i.i.free_queue.i_crit_edge: ; preds = %__ptr_ring_init_queue_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_queue.i

if.end18.i:                                       ; preds = %__ptr_ring_init_queue_alloc.exit.i.i
  %size1.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 7
  %28 = ptrtoint ptr %size1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., ptr %size1.i.i.i, align 128
  %batch.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.)
  %cmp.i1.i.i = icmp ult i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., 128
  %spec.store.select.i.i.i = select i1 %cmp.i1.i.i, i32 1, i32 64
  %29 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select.i.i.i, ptr %batch.i.i.i, align 4
  %consumer_tail.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 4
  %30 = ptrtoint ptr %consumer_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %consumer_tail.i.i, align 4
  %consumer_head.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 3
  %31 = ptrtoint ptr %consumer_head.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %consumer_head.i.i, align 128
  %32 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %call9.i, align 128
  %producer_lock.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %producer_lock.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @ptr_ring_init.__key, i16 noundef signext 3) #13
  %consumer_lock.i.i = getelementptr inbounds %struct.ptr_ring, ptr %call9.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %consumer_lock.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @ptr_ring_init.__key.7, i16 noundef signext 3) #13
  %33 = ptrtoint ptr %call.i56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %2, ptr %call.i56, align 4
  %id.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 4
  %map_id.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 1
  %36 = ptrtoint ptr %map_id.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %map_id.i, align 4
  %value21.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 6
  %37 = ptrtoint ptr %value21.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cpumap_value.sroa.0.0.cpumap_value.sroa.0.0.cpumap_value.sroa.0.0., ptr %value21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpumap_value.sroa.0.4.cpumap_value.sroa.0.4.cpumap_value.sroa.0.4.)
  %cmp23.i = icmp sgt i32 %cpumap_value.sroa.0.4.cpumap_value.sroa.0.4.cpumap_value.sroa.0.4., 0
  br i1 %cmp23.i, label %land.lhs.true.i59, label %if.end18.i.if.end27.i_crit_edge

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

land.lhs.true.i59:                                ; preds = %if.end18.i
  %call.i.i.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %cpumap_value.sroa.0.4.cpumap_value.sroa.0.4.cpumap_value.sroa.0.4., i32 noundef 6, i1 noundef zeroext false) #13
  %cmp.i.i93.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i93.i, label %land.lhs.true.i59.free_ptr_ring.i_crit_edge, label %if.end.i94.i

land.lhs.true.i59.free_ptr_ring.i_crit_edge:      ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ptr_ring.i

if.end.i94.i:                                     ; preds = %land.lhs.true.i59
  %expected_attach_type.i.i = getelementptr inbounds %struct.bpf_prog, ptr %call.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %expected_attach_type.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %expected_attach_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %39)
  %cmp.not.i.i = icmp eq i32 %39, 35
  br i1 %cmp.not.i.i, label %__cpu_map_load_bpf_program.exit.thread.i, label %__cpu_map_load_bpf_program.exit.thread103.i

__cpu_map_load_bpf_program.exit.thread103.i:      ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef %call.i.i.i) #13
  br label %free_ptr_ring.i

__cpu_map_load_bpf_program.exit.thread.i:         ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  %aux.i.i = getelementptr inbounds %struct.bpf_prog, ptr %call.i.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aux.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i.i, align 8
  %bpf_prog.i.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %bpf_prog.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bpf_prog.i.i, align 4
  %prog5.i.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 7
  %45 = ptrtoint ptr %prog5.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i.i, ptr %prog5.i.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %__cpu_map_load_bpf_program.exit.thread.i, %if.end18.i.if.end27.i_crit_edge
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i, align 4
  %call29.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cpu_map_kthread_run, ptr noundef nonnull %call.i56, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef %47) #13
  %kthread.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 5
  %48 = ptrtoint ptr %kthread.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call29.i, ptr %kthread.i, align 4
  %cmp.i.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %free_prog.i, label %__cpu_map_entry_alloc.exit

free_prog.i:                                      ; preds = %if.end27.i
  %prog.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 7
  %49 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prog.i, align 4
  %tobool37.not.i = icmp eq ptr %50, null
  br i1 %tobool37.not.i, label %free_prog.i.free_ptr_ring.i_crit_edge, label %if.then38.i

free_prog.i.free_ptr_ring.i_crit_edge:            ; preds = %free_prog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ptr_ring.i

if.then38.i:                                      ; preds = %free_prog.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %50) #13
  br label %free_ptr_ring.i

free_ptr_ring.i:                                  ; preds = %if.then38.i, %free_prog.i.free_ptr_ring.i_crit_edge, %__cpu_map_load_bpf_program.exit.thread103.i, %land.lhs.true.i59.free_ptr_ring.i_crit_edge
  %51 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %queue.i, align 4
  %queue.i98.i = getelementptr inbounds %struct.ptr_ring, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %queue.i98.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue.i98.i, align 8
  tail call void @kvfree(ptr noundef %54) #13
  br label %free_queue.i

free_queue.i:                                     ; preds = %free_ptr_ring.i, %__ptr_ring_init_queue_alloc.exit.i.i.free_queue.i_crit_edge, %__ptr_ring_init_queue_alloc.exit.thread.i.i
  %55 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %queue.i, align 4
  tail call void @kfree(ptr noundef %56) #13
  br label %free_bulkq.i

free_bulkq.i:                                     ; preds = %free_queue.i, %for.end.i.free_bulkq.i_crit_edge
  %57 = ptrtoint ptr %bulkq.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bulkq.i, align 4
  tail call void @free_percpu(ptr noundef %58) #13
  br label %free_rcu.i

free_rcu.i:                                       ; preds = %free_bulkq.i, %if.end.i.free_rcu.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i56) #13
  br label %cleanup

__cpu_map_entry_alloc.exit:                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt.i.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !82
  %call.i.i.i97.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !82
  %61 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %kthread.i, align 4
  tail call void @kthread_bind(ptr noundef %62, i32 noundef %2) #13
  %63 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %kthread.i, align 4
  %call36.i = tail call i32 @wake_up_process(ptr noundef %64) #13
  %cmap40 = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %call.i56, i32 0, i32 3
  %65 = ptrtoint ptr %cmap40 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %map, ptr %cmap40, align 4
  br label %if.end41

if.end41:                                         ; preds = %__cpu_map_entry_alloc.exit, %if.end32.if.end41_crit_edge
  %rcpu.0 = phi ptr [ %call.i56, %__cpu_map_entry_alloc.exit ], [ null, %if.end32.if.end41_crit_edge ]
  %66 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !83
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end41.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end41.rcu_read_lock.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end41
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.19) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end41.rcu_read_lock.exit_crit_edge
  tail call fastcc void @__cpu_map_entry_replace(ptr noundef %map, i32 noundef %2, ptr noundef %rcpu.0)
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i60, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %rcu_read_lock.exit
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.20) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  %70 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i.i67 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %free_rcu.i, %if.else.cleanup_crit_edge, %cpu_possible.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -17, %if.end11.cleanup_crit_edge ], [ -75, %if.end20.cleanup_crit_edge ], [ -19, %cpu_possible.exit.cleanup_crit_edge ], [ -19, %if.end29.cleanup_crit_edge ], [ -12, %free_rcu.i ], [ -12, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpumap_value.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_map_delete_elem(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %key) #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__cpu_map_entry_replace(ptr noundef %map, i32 noundef %1, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_map_redirect(ptr noundef %map, i32 noundef %ifindex, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 4
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bpf_xdp_redirect_map.exit_crit_edge, !prof !81

entry.__bpf_xdp_redirect_map.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__bpf_xdp_redirect_map.exit

if.end.i:                                         ; preds = %entry
  %max_entries.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %7 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entries.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ifindex)
  %cmp.not.i.i = icmp ugt i32 %8, %ifindex
  br i1 %cmp.not.i.i, label %if.end.i.i, label %__cpu_map_lookup_elem.exit.thread.i

__cpu_map_lookup_elem.exit.thread.i:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %tgt_value2.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %tgt_value2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tgt_value2.i, align 4
  br label %land.lhs.true.i

if.end.i.i:                                       ; preds = %if.end.i
  %cpu_map.i.i = getelementptr inbounds %struct.bpf_cpu_map, ptr %map, i32 0, i32 1
  %10 = ptrtoint ptr %cpu_map.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpu_map.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %11, i32 %ifindex
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.__cpu_map_lookup_elem.exit.i_crit_edge

if.end.i.i.__cpu_map_lookup_elem.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__cpu_map_lookup_elem.exit.i_crit_edge

lor.lhs.false.i.i.__cpu_map_lookup_elem.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.__cpu_map_lookup_elem.exit.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.__cpu_map_lookup_elem.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b17.i.i = load i1, ptr @__cpu_map_lookup_elem.__warned, align 1
  br i1 %.b17.i.i, label %land.lhs.true7.i.i.__cpu_map_lookup_elem.exit.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.__cpu_map_lookup_elem.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_lookup_elem.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__cpu_map_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 639, ptr noundef nonnull @.str.3) #13
  br label %__cpu_map_lookup_elem.exit.i

__cpu_map_lookup_elem.exit.i:                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.__cpu_map_lookup_elem.exit.i_crit_edge, %land.lhs.true.i.i.__cpu_map_lookup_elem.exit.i_crit_edge, %lor.lhs.false.i.i.__cpu_map_lookup_elem.exit.i_crit_edge, %if.end.i.i.__cpu_map_lookup_elem.exit.i_crit_edge
  %tgt_value.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %tgt_value.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %tgt_value.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %__cpu_map_lookup_elem.exit.i.land.lhs.true.i_crit_edge, label %if.end19.i, !prof !80

__cpu_map_lookup_elem.exit.i.land.lhs.true.i_crit_edge: ; preds = %__cpu_map_lookup_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %__cpu_map_lookup_elem.exit.i.land.lhs.true.i_crit_edge, %__cpu_map_lookup_elem.exit.thread.i
  %and15.i = and i64 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end19.thread.i

if.end19.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %tgt_index5.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %tgt_index5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ifindex, ptr %tgt_index5.i, align 4
  %id6.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %16 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id6.i, align 4
  %map_id207.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %map_id207.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %map_id207.i, align 4
  %map_type218.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %19 = ptrtoint ptr %map_type218.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map_type218.i, align 4
  %map_type229.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %21 = ptrtoint ptr %map_type229.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %map_type229.i, align 4
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
  br label %__bpf_xdp_redirect_map.exit

if.end19.i:                                       ; preds = %__cpu_map_lookup_elem.exit.i
  %.pre.i = and i64 %flags, 8
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
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pre.i)
  %tobool24.not.i = icmp eq i64 %.pre.i, 0
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
  %retval.0.i = phi i32 [ 4, %if.end49.i ], [ %24, %if.then17.i ], [ 0, %entry.__bpf_xdp_redirect_map.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_map_enqueue(ptr nocapture noundef readonly %rcpu, ptr noundef %xdpf, ptr noundef %dev_rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_rx1 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 5
  %0 = ptrtoint ptr %dev_rx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev_rx, ptr %dev_rx1, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @cpu_map_flush_list to i32)
  %7 = inttoptr i32 %add.i to ptr
  %bulkq.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 2
  %8 = ptrtoint ptr %bulkq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bulkq.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %add12.i = add i32 %6, %10
  %11 = inttoptr i32 %add12.i to ptr
  %count.i = getelementptr inbounds %struct.xdp_bulk_queue, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i = icmp eq i32 %13, 8
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge, !prof !80

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bq_flush_to_queue(ptr noundef %11) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %count.i, align 4
  %arrayidx15.i = getelementptr [8 x ptr], ptr %11, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %xdpf, ptr %arrayidx15.i, align 4
  %prev.i = getelementptr inbounds %struct.xdp_bulk_queue, ptr %11, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %tobool16.not.i = icmp eq ptr %18, null
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end.i.bq_enqueue.exit_crit_edge

if.end.i.bq_enqueue.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit

if.then17.i:                                      ; preds = %if.end.i
  %flush_node.i = getelementptr inbounds %struct.xdp_bulk_queue, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %flush_node.i, ptr noundef %7, ptr noundef %20) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then17.i.bq_enqueue.exit_crit_edge

if.then17.i.bq_enqueue.exit_crit_edge:            ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bq_enqueue.exit

if.end.i.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %flush_node.i, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %flush_node.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %flush_node.i, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %7, ptr %prev.i, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %flush_node.i, ptr %7, align 4
  br label %bq_enqueue.exit

bq_enqueue.exit:                                  ; preds = %if.end.i.i.i, %if.then17.i.bq_enqueue.exit_crit_edge, %if.end.i.bq_enqueue.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_map_generic_redirect(ptr nocapture noundef readonly %rcpu, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %0 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %1 to i32
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %3, %conv
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !80

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !85
  unreachable

__skb_pull.exit:                                  ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  store ptr %add.ptr.i, ptr %data.i, align 4
  %redirected.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %8 = ptrtoint ptr %redirected.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load.i = load i32, ptr %redirected.i, align 2
  %bf.set.i = and i32 %bf.load.i, -98305
  %bf.clear3.i = or i32 %bf.set.i, 65536
  store i32 %bf.clear3.i, ptr %redirected.i, align 2
  %9 = ptrtoint ptr %skb to i32
  %or.i = or i32 %9, 1
  %10 = inttoptr i32 %or.i to ptr
  %queue = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 4
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %producer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %producer_lock.i) #13
  %size.i.i = getelementptr inbounds %struct.ptr_ring, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %__skb_pull.exit.ptr_ring_produce.exit.thread_crit_edge, label %lor.lhs.false.i.i, !prof !80

__skb_pull.exit.ptr_ring_produce.exit.thread_crit_edge: ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ptr_ring_produce.exit.thread

lor.lhs.false.i.i:                                ; preds = %__skb_pull.exit
  %queue.i.i = getelementptr inbounds %struct.ptr_ring, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i.i, align 8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %lor.lhs.false.i.i.ptr_ring_produce.exit.thread_crit_edge

lor.lhs.false.i.i.ptr_ring_produce.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ptr_ring_produce.exit.thread

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !86
  %21 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue.i.i, align 8
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 128
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %12, align 128
  %arrayidx13.i.i = getelementptr ptr, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %10, ptr %arrayidx13.i.i, align 4
  %26 = load i32, ptr %12, align 128
  %27 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i.i = icmp slt i32 %26, %28
  br i1 %cmp.not.i.i, label %do.end.i.i.if.end_crit_edge, label %if.then24.i.i, !prof !81

do.end.i.i.if.end_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then24.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %12, align 128
  br label %if.end

ptr_ring_produce.exit.thread:                     ; preds = %lor.lhs.false.i.i.ptr_ring_produce.exit.thread_crit_edge, %__skb_pull.exit.ptr_ring_produce.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock.i) #13
  br label %trace

if.end:                                           ; preds = %if.then24.i.i, %do.end.i.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock.i) #13
  %kthread = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 5
  %30 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kthread, align 4
  %call3 = tail call i32 @wake_up_process(ptr noundef %31) #13
  br label %trace

trace:                                            ; preds = %if.end, %ptr_ring_produce.exit.thread
  %tobool = phi i1 [ true, %ptr_ring_produce.exit.thread ], [ false, %if.end ]
  %retval.0.i.i18 = phi i32 [ -28, %ptr_ring_produce.exit.thread ], [ 0, %if.end ]
  %map_id = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 1
  %32 = ptrtoint ptr %map_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %map_id, align 4
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %lnot.ext8 = zext i1 %tobool to i32
  %34 = ptrtoint ptr %rcpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rcpu, align 4
  tail call fastcc void @trace_xdp_cpumap_enqueue(i32 noundef %33, i32 noundef %lnot.ext, i32 noundef %lnot.ext8, i32 noundef %35)
  ret i32 %retval.0.i.i18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_cpumap_enqueue(i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_enqueue, i32 0, i32 1), ptr blockaddress(@trace_xdp_cpumap_enqueue, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !88
  %call42 = tail call i32 @__traceiter_xdp_cpumap_enqueue(ptr noundef null, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %to_cpu) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_enqueue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_enqueue, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xdp_cpumap_enqueue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xdp_cpumap_enqueue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 265, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cpu_map_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  %add = add i32 %5, ptrtoint (ptr @cpu_map_flush_list to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.not21 = icmp eq ptr %8, %6
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in22 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %bq.0 = getelementptr i8, ptr %.pn.in22, i32 -32
  %9 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in22, align 4
  tail call fastcc void @bq_flush_to_queue(ptr noundef %bq.0)
  %obj = getelementptr i8, ptr %.pn.in22, i32 8
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj, align 4
  %kthread = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kthread, align 4
  %call9 = tail call i32 @wake_up_process(ptr noundef %13) #13
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq_flush_to_queue(ptr nocapture noundef %bq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %obj = getelementptr inbounds %struct.xdp_bulk_queue, ptr %bq, i32 0, i32 2
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %count = getelementptr inbounds %struct.xdp_bulk_queue, ptr %bq, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !80

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %producer_lock = getelementptr inbounds %struct.ptr_ring, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %producer_lock) #13
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34.not = icmp eq i32 %9, 0
  br i1 %cmp34.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %size.i = getelementptr inbounds %struct.ptr_ring, ptr %7, i32 0, i32 7
  %queue.i = getelementptr inbounds %struct.ptr_ring, ptr %7, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %if.end8.for.body_crit_edge ]
  %drops.036 = phi i32 [ 0, %for.body.lr.ph ], [ %drops.1, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %bq, i32 0, i32 %i.038
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.body.if.then7_crit_edge, label %lor.lhs.false.i, !prof !80

for.body.if.then7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false.i:                                  ; preds = %for.body
  %14 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue.i, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %do.end.i, label %lor.lhs.false.i.if.then7_crit_edge

lor.lhs.false.i.if.then7_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

do.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !86
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue.i, align 8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 128
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %7, align 128
  %arrayidx13.i = getelementptr ptr, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %11, ptr %arrayidx13.i, align 4
  %25 = load i32, ptr %7, align 128
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i = icmp slt i32 %25, %27
  br i1 %cmp.not.i, label %do.end.i.if.end8_crit_edge, label %if.then24.i, !prof !81

do.end.i.if.end8_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then24.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %7, align 128
  br label %if.end8

if.then7:                                         ; preds = %lor.lhs.false.i.if.then7_crit_edge, %for.body.if.then7_crit_edge
  %inc = add i32 %drops.036, 1
  tail call void @xdp_return_frame_rx_napi(ptr noundef %11) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then24.i, %do.end.i.if.end8_crit_edge
  %drops.1 = phi i32 [ %inc, %if.then7 ], [ %drops.036, %if.then24.i ], [ %drops.036, %do.end.i.if.end8_crit_edge ]
  %inc10 = add nuw i32 %i.038, 1
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc10, %30
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge
  %processed.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc10, %if.end8.for.end_crit_edge ]
  %drops.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %drops.1, %if.end8.for.end_crit_edge ]
  %31 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %producer_lock) #13
  %flush_node = getelementptr inbounds %struct.xdp_bulk_queue, ptr %bq, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.xdp_bulk_queue, ptr %bq, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %34 = ptrtoint ptr %flush_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %flush_node, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  store ptr null, ptr %prev.i, align 4
  %map_id = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %map_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %map_id, align 4
  tail call fastcc void @trace_xdp_cpumap_enqueue(i32 noundef %39, i32 noundef %processed.0.lcssa, i32 noundef %drops.0.lcssa, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_map_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %0)
  %cmp5 = icmp ult i32 %call4, %0
  br i1 %cmp5, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call6 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call4, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cpu_map_flush_list to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call6, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cpu_map_entry_replace(ptr nocapture noundef readonly %cmap, i32 noundef %key_cpu, ptr noundef %rcpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_map = getelementptr inbounds %struct.bpf_cpu_map, ptr %cmap, i32 0, i32 1
  %0 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_map, align 128
  %arrayidx = getelementptr ptr, ptr %1, i32 %key_cpu
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !92
  %2 = ptrtoint ptr %rcpu to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %2, ptr %arrayidx) #13, !srcloc !93
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = inttoptr i32 %asmresult.i to ptr
  %rcu = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %4, i32 0, i32 9
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__cpu_map_entry_free) #13
  %kthread_stop_wq = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %4, i32 0, i32 10
  tail call void @__init_work(ptr noundef %kthread_stop_wq, i32 noundef 0) #13
  %5 = ptrtoint ptr %kthread_stop_wq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %kthread_stop_wq, align 4
  %lockdep_map = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %4, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @__cpu_map_entry_replace.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry20 = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %4, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %4, i32 0, i32 10, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %4, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cpu_map_kthread_stop, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %kthread_stop_wq) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__cpu_map_entry_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -40
  %bulkq = getelementptr i8, ptr %rcu, i32 -32
  %0 = ptrtoint ptr %bulkq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bulkq, align 4
  tail call void @free_percpu(ptr noundef %1) #13
  tail call fastcc void @put_cpu_map_entry(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpu_map_kthread_stop(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #13
  %kthread = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kthread, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_cpu_map_entry(ptr noundef %rcpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %prog = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 7
  %1 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prog, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bpf_prog_put(ptr noundef nonnull %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %queue = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 4
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %queue.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %4, i32 0, i32 9
  %consumer_lock.i.i = getelementptr inbounds %struct.ptr_ring, ptr %4, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i.i) #13
  %size.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i46.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i46.i, label %if.end.__cpu_map_ring_cleanup.exit_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph.i, !prof !80

if.end.__cpu_map_ring_cleanup.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_ring_cleanup.exit

__ptr_ring_peek.exit.i.i.lr.ph.i:                 ; preds = %if.end
  %consumer_head.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %4, i32 0, i32 3
  %consumer_tail.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %4, i32 0, i32 4
  %batch.i.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %4, i32 0, i32 8
  br label %__ptr_ring_peek.exit.i.i.i

__ptr_ring_peek.exit.i.i.i:                       ; preds = %if.then38.i.__ptr_ring_peek.exit.i.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph.i
  %7 = phi i32 [ %6, %__ptr_ring_peek.exit.i.i.lr.ph.i ], [ %29, %if.then38.i.__ptr_ring_peek.exit.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue.i.i.i.i, align 8
  %10 = ptrtoint ptr %consumer_head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %consumer_head.i.i.i.i, align 128
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %__ptr_ring_peek.exit.i.i.i.__cpu_map_ring_cleanup.exit_crit_edge, label %if.then.i.i.i

__ptr_ring_peek.exit.i.i.i.__cpu_map_ring_cleanup.exit_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_ring_cleanup.exit

if.then.i.i.i:                                    ; preds = %__ptr_ring_peek.exit.i.i.i
  %inc.i.i.i.i = add i32 %11, 1
  %14 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %consumer_tail.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %inc.i.i.i.i, %15
  %16 = ptrtoint ptr %batch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %batch.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %17)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i.i.i.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %7)
  %cmp2.not.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %7
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i.i, i1 %cmp2.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i, !prof !98

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp5.not46.i.i.i.i = icmp slt i32 %11, %15
  br i1 %cmp5.not46.i.i.i.i, label %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge, !prof !80

while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %while.body.i.i.i.i

while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge
  %head.047.i.i.i.i = phi i32 [ %dec.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %11, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %head.047.i.i.i.i, -1
  %arrayidx.i5.i.i.i = getelementptr ptr, ptr %19, i32 %head.047.i.i.i.i
  %20 = ptrtoint ptr %arrayidx.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i5.i.i.i, align 4
  %21 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumer_tail.i.i.i.i, align 4
  %cmp5.not.i.i.i.i = icmp slt i32 %dec.i.i.i.i, %22
  br i1 %cmp5.not.i.i.i.i, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, !prof !80

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i.i

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc.i.i.i.i, ptr %consumer_tail.i.i.i.i, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.end.i.i.i.i, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %24 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i.i, i32 %25)
  %cmp14.not.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %25
  br i1 %cmp14.not.i.i.i.i, label %if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge, label %if.then21.i.i.i.i, !prof !81

if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ptr_ring_consume.exit.i

if.then21.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %consumer_tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %consumer_tail.i.i.i.i, align 4
  br label %ptr_ring_consume.exit.i

ptr_ring_consume.exit.i:                          ; preds = %if.then21.i.i.i.i, %if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge
  %consumer_head.0.i.i.i.i = phi i32 [ 0, %if.then21.i.i.i.i ], [ %inc.i.i.i.i, %if.end.i.i.i.i.ptr_ring_consume.exit.i_crit_edge ]
  %27 = ptrtoint ptr %consumer_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %consumer_head.0.i.i.i.i, ptr %consumer_head.i.i.i.i, align 128
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i.i) #13
  %.b43.i = load i1, ptr @__cpu_map_ring_cleanup.__already_done, align 1
  br i1 %.b43.i, label %ptr_ring_consume.exit.i.if.then38.i_crit_edge, label %if.then.i, !prof !81

ptr_ring_consume.exit.i.if.then38.i_crit_edge:    ; preds = %ptr_ring_consume.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38.i

if.then.i:                                        ; preds = %ptr_ring_consume.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__cpu_map_ring_cleanup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #13
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then.i, %ptr_ring_consume.exit.i.if.then38.i_crit_edge
  tail call void @xdp_return_frame(ptr noundef nonnull %13) #13
  tail call void @_raw_spin_lock(ptr noundef %consumer_lock.i.i) #13
  %28 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i, label %if.then38.i.__cpu_map_ring_cleanup.exit_crit_edge, label %if.then38.i.__ptr_ring_peek.exit.i.i.i_crit_edge, !prof !80

if.then38.i.__ptr_ring_peek.exit.i.i.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ptr_ring_peek.exit.i.i.i

if.then38.i.__cpu_map_ring_cleanup.exit_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cpu_map_ring_cleanup.exit

__cpu_map_ring_cleanup.exit:                      ; preds = %if.then38.i.__cpu_map_ring_cleanup.exit_crit_edge, %__ptr_ring_peek.exit.i.i.i.__cpu_map_ring_cleanup.exit_crit_edge, %if.end.__cpu_map_ring_cleanup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %consumer_lock.i.i) #13
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue, align 4
  %queue.i = getelementptr inbounds %struct.ptr_ring, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue.i, align 8
  tail call void @kvfree(ptr noundef %33) #13
  %34 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue, align 4
  tail call void @kfree(ptr noundef %35) #13
  tail call void @kfree(ptr noundef %rcpu) #13
  br label %if.end5

if.end5:                                          ; preds = %__cpu_map_ring_cleanup.exit, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_alloc_percpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_map_kthread_run(ptr noundef %data) #0 align 64 {
entry:
  %xdp.i = alloca %struct.xdp_buff, align 4
  %stats = alloca %struct.xdp_cpumap_stats, align 4
  %frames = alloca [8 x ptr], align 4
  %skbs = alloca [8 x ptr], align 4
  %list = alloca %struct.list_head, align 4
  %f = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i393 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i393 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@cpu_map_kthread_run, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  %queue = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %data, i32 0, i32 4
  %7 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %prog.i = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %data, i32 0, i32 7
  %drop16.i = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %stats, i32 0, i32 2
  %map_id = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %data, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %for.end286, %__here
  %call60 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call60, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  %size.i = getelementptr inbounds %struct.ptr_ring, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %lor.rhs.__here337_crit_edge, label %__ptr_ring_empty.exit, !prof !80

lor.rhs.__here337_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here337

__ptr_ring_empty.exit:                            ; preds = %lor.rhs
  %queue.i = getelementptr inbounds %struct.ptr_ring, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue.i, align 8
  %consumer_head.i = getelementptr inbounds %struct.ptr_ring, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %consumer_head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %consumer_head.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %__ptr_ring_empty.exit.__here337_crit_edge, label %__ptr_ring_empty.exit.while.body_crit_edge

__ptr_ring_empty.exit.while.body_crit_edge:       ; preds = %__ptr_ring_empty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

__ptr_ring_empty.exit.__here337_crit_edge:        ; preds = %__ptr_ring_empty.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here337

while.body:                                       ; preds = %__ptr_ring_empty.exit.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stats) #13
  %18 = call ptr @memset(ptr %stats, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %frames) #13
  %19 = call ptr @memset(ptr %frames, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %skbs) #13
  %20 = call ptr @memset(ptr %skbs, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #13
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %list, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %7, align 4
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  %size.i394 = getelementptr inbounds %struct.ptr_ring, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %size.i394 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i394, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i395 = icmp eq i32 %26, 0
  br i1 %tobool.not.i395, label %while.body.__here117_crit_edge, label %__ptr_ring_empty.exit402, !prof !80

while.body.__here117_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here117

__ptr_ring_empty.exit402:                         ; preds = %while.body
  %queue.i396 = getelementptr inbounds %struct.ptr_ring, ptr %24, i32 0, i32 9
  %27 = ptrtoint ptr %queue.i396 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue.i396, align 8
  %consumer_head.i397 = getelementptr inbounds %struct.ptr_ring, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %consumer_head.i397 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %consumer_head.i397, align 128
  %arrayidx.i398 = getelementptr ptr, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i398 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i398, align 4
  %tobool3.not.i399 = icmp eq ptr %32, null
  br i1 %tobool3.not.i399, label %__ptr_ring_empty.exit402.__here117_crit_edge, label %if.else222

__ptr_ring_empty.exit402.__here117_crit_edge:     ; preds = %__ptr_ring_empty.exit402
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here117

__here117:                                        ; preds = %__ptr_ring_empty.exit402.__here117_crit_edge, %while.body.__here117_crit_edge
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change121 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change121 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@cpu_map_kthread_run, %__here117) to i32), ptr %task_state_change121, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %36, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 4
  %size.i403 = getelementptr inbounds %struct.ptr_ring, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %size.i403 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i403, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i404 = icmp eq i32 %41, 0
  br i1 %tobool.not.i404, label %__here117.if.then149_crit_edge, label %__ptr_ring_empty.exit411, !prof !80

__here117.if.then149_crit_edge:                   ; preds = %__here117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then149

__ptr_ring_empty.exit411:                         ; preds = %__here117
  %queue.i405 = getelementptr inbounds %struct.ptr_ring, ptr %39, i32 0, i32 9
  %42 = ptrtoint ptr %queue.i405 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue.i405, align 8
  %consumer_head.i406 = getelementptr inbounds %struct.ptr_ring, ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %consumer_head.i406 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %consumer_head.i406, align 128
  %arrayidx.i407 = getelementptr ptr, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i407 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i407, align 4
  %tobool3.not.i408 = icmp eq ptr %47, null
  br i1 %tobool3.not.i408, label %__ptr_ring_empty.exit411.if.then149_crit_edge, label %__here200

__ptr_ring_empty.exit411.if.then149_crit_edge:    ; preds = %__ptr_ring_empty.exit411
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then149

if.then149:                                       ; preds = %__ptr_ring_empty.exit411.if.then149_crit_edge, %__here117.if.then149_crit_edge
  call void @schedule() #13
  br label %if.end225

__here200:                                        ; preds = %__ptr_ring_empty.exit411
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %task_state_change204 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 212
  %50 = ptrtoint ptr %task_state_change204 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 ptrtoint (ptr blockaddress(@cpu_map_kthread_run, %__here200) to i32), ptr %task_state_change204, align 4
  %51 = load ptr, ptr %task, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %51, align 128
  br label %if.end225

if.else222:                                       ; preds = %__ptr_ring_empty.exit402
  call void @__sanitizer_cov_trace_pc() #15
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 329, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  br label %if.end225

if.end225:                                        ; preds = %if.else222, %__here200, %if.then149
  %sched.0 = phi i32 [ 1, %if.then149 ], [ 0, %__here200 ], [ %call.i, %if.else222 ]
  %53 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue, align 4
  %size.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %54, i32 0, i32 7
  %queue.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %54, i32 0, i32 9
  %consumer_head.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %54, i32 0, i32 3
  %consumer_tail.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %54, i32 0, i32 4
  %batch.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %54, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %__ptr_ring_consume.exit.i.for.body.i_crit_edge, %if.end225
  %i.03.i = phi i32 [ 0, %if.end225 ], [ %inc.i, %__ptr_ring_consume.exit.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.__ptr_ring_consume_batched.exit_crit_edge, label %__ptr_ring_peek.exit.i.i, !prof !80

for.body.i.__ptr_ring_consume_batched.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ptr_ring_consume_batched.exit

__ptr_ring_peek.exit.i.i:                         ; preds = %for.body.i
  %57 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %queue.i.i.i, align 8
  %59 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %consumer_head.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr ptr, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %__ptr_ring_peek.exit.i.i.__ptr_ring_consume_batched.exit_crit_edge, label %if.then.i.i

__ptr_ring_peek.exit.i.i.__ptr_ring_consume_batched.exit_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ptr_ring_consume_batched.exit

if.then.i.i:                                      ; preds = %__ptr_ring_peek.exit.i.i
  %inc.i.i.i = add i32 %60, 1
  %63 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %consumer_tail.i.i.i, align 4
  %sub.i.i.i = sub i32 %inc.i.i.i, %64
  %65 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %batch.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %66)
  %cmp.not.i.i.i = icmp slt i32 %sub.i.i.i, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %56)
  %cmp2.not.i.i.i = icmp slt i32 %inc.i.i.i, %56
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp2.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !98

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %64)
  %cmp5.not46.i.i.i = icmp slt i32 %60, %64
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !80

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %head.047.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %60, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %67 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %queue.i.i.i, align 8
  %dec.i.i.i = add i32 %head.047.i.i.i, -1
  %arrayidx.i5.i.i = getelementptr ptr, ptr %68, i32 %head.047.i.i.i
  %69 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx.i5.i.i, align 4
  %70 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %consumer_tail.i.i.i, align 4
  %cmp5.not.i.i.i = icmp slt i32 %dec.i.i.i, %71
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !80

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %72 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc.i.i.i, ptr %consumer_tail.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %73 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %74)
  %cmp14.not.i.i.i = icmp slt i32 %inc.i.i.i, %74
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge, label %if.then21.i.i.i, !prof !81

if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ptr_ring_consume.exit.i

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %__ptr_ring_consume.exit.i

__ptr_ring_consume.exit.i:                        ; preds = %if.then21.i.i.i, %if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.__ptr_ring_consume.exit.i_crit_edge ]
  %76 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  %arrayidx.i412 = getelementptr ptr, ptr %frames, i32 %i.03.i
  %77 = ptrtoint ptr %arrayidx.i412 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %62, ptr %arrayidx.i412, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %__ptr_ring_consume.exit.i.for.body.preheader_crit_edge, label %__ptr_ring_consume.exit.i.for.body.i_crit_edge

__ptr_ring_consume.exit.i.for.body.i_crit_edge:   ; preds = %__ptr_ring_consume.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

__ptr_ring_consume.exit.i.for.body.preheader_crit_edge: ; preds = %__ptr_ring_consume.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

__ptr_ring_consume_batched.exit:                  ; preds = %__ptr_ring_peek.exit.i.i.__ptr_ring_consume_batched.exit_crit_edge, %for.body.i.__ptr_ring_consume_batched.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i)
  %cmp448.not = icmp eq i32 %i.03.i, 0
  br i1 %cmp448.not, label %__ptr_ring_consume_batched.exit.for.end_crit_edge, label %__ptr_ring_consume_batched.exit.for.body.preheader_crit_edge

__ptr_ring_consume_batched.exit.for.body.preheader_crit_edge: ; preds = %__ptr_ring_consume_batched.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

__ptr_ring_consume_batched.exit.for.end_crit_edge: ; preds = %__ptr_ring_consume_batched.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %__ptr_ring_consume_batched.exit.for.body.preheader_crit_edge, %__ptr_ring_consume.exit.i.for.body.preheader_crit_edge
  %i.0.lcssa.i469 = phi i32 [ %i.03.i, %__ptr_ring_consume_batched.exit.for.body.preheader_crit_edge ], [ 8, %__ptr_ring_consume.exit.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.preheader
  %i.0450 = phi i32 [ %inc245, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %xdp_n.0449 = phi i32 [ %xdp_n.1, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f)
  %arrayidx = getelementptr [8 x ptr], ptr %frames, i32 0, i32 %i.0450
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %80 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %f, align 4
  %f.0.f.0.431 = load volatile ptr, ptr %f, align 4
  %81 = ptrtoint ptr %f.0.f.0.431 to i32
  %and1.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool231.not = icmp eq i32 %and1.i, 0
  br i1 %tobool231.not, label %if.end241, label %if.then238, !prof !81

if.then238:                                       ; preds = %for.body
  %and.i = and i32 %81, -2
  %82 = inttoptr i32 %and.i to ptr
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %7, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %82, ptr noundef %84, ptr noundef nonnull %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then238.cleanup_crit_edge

if.then238.cleanup_crit_edge:                     ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %7, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %list, ptr %82, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %82, ptr %84, align 4
  br label %cleanup

if.end241:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %xdp_n.0449, 1
  %arrayidx242 = getelementptr [8 x ptr], ptr %frames, i32 0, i32 %xdp_n.0449
  %89 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %f.0.f.0.431, ptr %arrayidx242, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %90 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %81, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %90, i32 %shr
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %if.end.i.i, %if.then238.cleanup_crit_edge
  %xdp_n.1 = phi i32 [ %inc, %if.end241 ], [ %xdp_n.0449, %if.then238.cleanup_crit_edge ], [ %xdp_n.0449, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f)
  %inc245 = add nuw nsw i32 %i.0450, 1
  %exitcond.not = icmp eq i32 %inc245, %i.0.lcssa.i469
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %__ptr_ring_consume_batched.exit.for.end_crit_edge
  %i.0.lcssa.i470 = phi i32 [ 0, %__ptr_ring_consume_batched.exit.for.end_crit_edge ], [ %i.0.lcssa.i469, %cleanup.for.end_crit_edge ]
  %xdp_n.0.lcssa = phi i32 [ 0, %__ptr_ring_consume_batched.exit.for.end_crit_edge ], [ %xdp_n.1, %cleanup.for.end_crit_edge ]
  %91 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prog.i, align 4
  %tobool.not.i413 = icmp eq ptr %92, null
  br i1 %tobool.not.i413, label %for.end.cpu_map_bpf_prog_run.exit_crit_edge, label %if.end.i

for.end.cpu_map_bpf_prog_run.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_map_bpf_prog_run.exit

if.end.i:                                         ; preds = %for.end
  call fastcc void @local_bh_disable() #13
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i.i414 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i414, label %if.end.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock_bh.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i415 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i415, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i416

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit.i

if.then.i.i416:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 750, ptr noundef nonnull @.str.13) #13
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i416, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %if.end.i.rcu_read_lock_bh.exit.i_crit_edge
  %call.i417 = call fastcc i32 @cpu_map_bpf_prog_run_xdp(ptr noundef %data, ptr noundef nonnull %frames, i32 noundef %xdp_n.0.lcssa, ptr noundef nonnull %stats) #13
  %93 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool1.not.i = icmp eq i32 %94, 0
  br i1 %tobool1.not.i, label %rcu_read_lock_bh.exit.i.if.end3.i_crit_edge, label %if.then2.i

rcu_read_lock_bh.exit.i.if.end3.i_crit_edge:      ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then2.i:                                       ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_do_flush() #13
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %rcu_read_lock_bh.exit.i.if.end3.i_crit_edge
  %95 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %96, %list
  br i1 %cmp.i.not.i, label %if.end3.i.if.end10.i_crit_edge, label %if.then9.i, !prof !81

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp.i) #13
  %97 = call ptr @memset(ptr %xdp.i, i32 255, i32 28)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i426.for.cond.i_crit_edge, %if.then9.i
  %skb.0.i = phi ptr [ %96, %if.then9.i ], [ %tmp.0.i, %for.body.i426.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %skb.0.i, %list
  br i1 %cmp.not.i, label %for.cond.i.cpu_map_bpf_prog_run_skb.exit_crit_edge, label %for.body.i426

for.cond.i.cpu_map_bpf_prog_run_skb.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_map_bpf_prog_run_skb.exit

for.body.i426:                                    ; preds = %for.cond.i
  %98 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %tmp.0.i = load ptr, ptr %skb.0.i, align 8
  %99 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prog.i, align 4
  %call.i425 = call i32 @bpf_prog_run_generic_xdp(ptr noundef %skb.0.i, ptr noundef nonnull %xdp.i, ptr noundef %100) #13
  %101 = zext i32 %call.i425 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call.i425, label %sw.default.i [
    i32 2, label %for.body.i426.for.cond.i_crit_edge
    i32 4, label %sw.bb.i
    i32 0, label %for.body.i426.sw.bb13.i_crit_edge
    i32 1, label %for.body.i426.sw.bb15.i_crit_edge
  ]

for.body.i426.sw.bb15.i_crit_edge:                ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb15.i

for.body.i426.sw.bb13.i_crit_edge:                ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13.i

for.body.i426.for.cond.i_crit_edge:               ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

sw.bb.i:                                          ; preds = %for.body.i426
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.0.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i427, label %sw.bb.i.skb_list_del_init.exit.i_crit_edge

sw.bb.i.skb_list_del_init.exit.i_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_list_del_init.exit.i

if.end.i.i.i427:                                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb.0.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i.i, align 4
  %104 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %skb.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %skb_list_del_init.exit.i

skb_list_del_init.exit.i:                         ; preds = %if.end.i.i.i427, %sw.bb.i.skb_list_del_init.exit.i_crit_edge
  %108 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %skb.0.i, align 8
  %109 = getelementptr inbounds %struct.anon.67, ptr %skb.0.i, i32 0, i32 2
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %112 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prog.i, align 4
  %call7.i = call i32 @xdp_do_generic_redirect(ptr noundef %111, ptr noundef %skb.0.i, ptr noundef nonnull %xdp.i, ptr noundef %113) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i428 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i428, label %skb_list_del_init.exit.i.cleanup.sink.split.i_crit_edge, label %skb_list_del_init.exit.i.cleanup.sink.split.sink.split.i_crit_edge, !prof !81

skb_list_del_init.exit.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split.i

skb_list_del_init.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

sw.default.i:                                     ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prog.i, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef null, ptr noundef %115, i32 noundef %call.i425) #13
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %sw.default.i, %for.body.i426.sw.bb13.i_crit_edge
  %116 = getelementptr inbounds %struct.anon.67, ptr %skb.0.i, i32 0, i32 2
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %119 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prog.i, align 4
  call fastcc void @trace_xdp_exception(ptr noundef %118, ptr noundef %120, i32 noundef %call.i425) #13
  br label %sw.bb15.i

sw.bb15.i:                                        ; preds = %sw.bb13.i, %for.body.i426.sw.bb15.i_crit_edge
  %call.i.i44.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.0.i) #13
  br i1 %call.i.i44.i, label %if.end.i.i47.i, label %sw.bb15.i.skb_list_del_init.exit48.i_crit_edge

sw.bb15.i.skb_list_del_init.exit48.i_crit_edge:   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_list_del_init.exit48.i

if.end.i.i47.i:                                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i45.i = getelementptr inbounds %struct.list_head, ptr %skb.0.i, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i45.i, align 4
  %123 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %skb.0.i, align 4
  %prev1.i.i.i46.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i46.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %skb_list_del_init.exit48.i

skb_list_del_init.exit48.i:                       ; preds = %if.end.i.i47.i, %sw.bb15.i.skb_list_del_init.exit48.i_crit_edge
  %127 = ptrtoint ptr %skb.0.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %skb.0.i, align 8
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %skb_list_del_init.exit48.i, %skb_list_del_init.exit.i.cleanup.sink.split.sink.split.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb.0.i, i32 noundef 0) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %skb_list_del_init.exit.i.cleanup.sink.split.i_crit_edge
  %drop.sink85.i = phi ptr [ %stats, %skb_list_del_init.exit.i.cleanup.sink.split.i_crit_edge ], [ %drop16.i, %cleanup.sink.split.sink.split.i ]
  %128 = ptrtoint ptr %drop.sink85.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %drop.sink85.i, align 4
  %inc.i429 = add i32 %129, 1
  store i32 %inc.i429, ptr %drop.sink85.i, align 4
  br label %cpu_map_bpf_prog_run_skb.exit

cpu_map_bpf_prog_run_skb.exit:                    ; preds = %cleanup.sink.split.i, %for.cond.i.cpu_map_bpf_prog_run_skb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %cpu_map_bpf_prog_run_skb.exit, %if.end3.i.if.end10.i_crit_edge
  %call.i17.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i17.i, label %if.end10.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i20.i

if.end10.i.rcu_read_unlock_bh.exit.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i20.i:                              ; preds = %if.end10.i
  %call1.i18.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit.i

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 761, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i20.i.rcu_read_unlock_bh.exit.i_crit_edge, %if.end10.i.rcu_read_unlock_bh.exit.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  call fastcc void @local_bh_enable() #13
  br label %cpu_map_bpf_prog_run.exit

cpu_map_bpf_prog_run.exit:                        ; preds = %rcu_read_unlock_bh.exit.i, %for.end.cpu_map_bpf_prog_run.exit_crit_edge
  %retval.0.i418 = phi i32 [ %call.i417, %rcu_read_unlock_bh.exit.i ], [ %xdp_n.0.lcssa, %for.end.cpu_map_bpf_prog_run.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i418)
  %tobool248.not = icmp eq i32 %retval.0.i418, 0
  br i1 %tobool248.not, label %cpu_map_bpf_prog_run.exit.if.end269.thread_crit_edge, label %if.then249

cpu_map_bpf_prog_run.exit.if.end269.thread_crit_edge: ; preds = %cpu_map_bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end269.thread

if.then249:                                       ; preds = %cpu_map_bpf_prog_run.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @skbuff_head_cache to i32))
  %130 = load ptr, ptr @skbuff_head_cache, align 4
  %call251 = call i32 @kmem_cache_alloc_bulk(ptr noundef %130, i32 noundef 2848, i32 noundef %retval.0.i418, ptr noundef nonnull %skbs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %cmp252 = icmp eq i32 %call251, 0
  br i1 %cmp252, label %for.cond260.preheader, label %if.end269, !prof !80

for.cond260.preheader:                            ; preds = %if.then249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i418)
  %cmp261451 = icmp sgt i32 %retval.0.i418, 0
  br i1 %cmp261451, label %if.end269.thread474, label %for.cond260.preheader.if.end269.thread_crit_edge

for.cond260.preheader.if.end269.thread_crit_edge: ; preds = %for.cond260.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end269.thread

if.end269.thread474:                              ; preds = %for.cond260.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %131 = shl nuw i32 %retval.0.i418, 2
  %132 = call ptr @memset(ptr %skbs, i32 0, i32 %131)
  call fastcc void @local_bh_disable()
  br label %for.body272.preheader

if.end269.thread:                                 ; preds = %for.cond260.preheader.if.end269.thread_crit_edge, %cpu_map_bpf_prog_run.exit.if.end269.thread_crit_edge
  call fastcc void @local_bh_disable()
  br label %for.end286

if.end269:                                        ; preds = %if.then249
  call fastcc void @local_bh_disable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i418)
  %cmp271453 = icmp sgt i32 %retval.0.i418, 0
  br i1 %cmp271453, label %if.end269.for.body272.preheader_crit_edge, label %if.end269.for.end286_crit_edge

if.end269.for.end286_crit_edge:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end286

if.end269.for.body272.preheader_crit_edge:        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body272.preheader

for.body272.preheader:                            ; preds = %if.end269.for.body272.preheader_crit_edge, %if.end269.thread474
  %kmem_alloc_drops.0477 = phi i32 [ %retval.0.i418, %if.end269.thread474 ], [ 0, %if.end269.for.body272.preheader_crit_edge ]
  br label %for.body272

for.body272:                                      ; preds = %cleanup280.for.body272_crit_edge, %for.body272.preheader
  %i.2454 = phi i32 [ %inc285, %cleanup280.for.body272_crit_edge ], [ 0, %for.body272.preheader ]
  %arrayidx273 = getelementptr [8 x ptr], ptr %frames, i32 0, i32 %i.2454
  %133 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx273, align 4
  %arrayidx275 = getelementptr [8 x ptr], ptr %skbs, i32 0, i32 %i.2454
  %135 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx275, align 4
  %dev_rx = getelementptr inbounds %struct.xdp_frame, ptr %134, i32 0, i32 5
  %137 = ptrtoint ptr %dev_rx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev_rx, align 4
  %call276 = call ptr @__xdp_build_skb_from_frame(ptr noundef %134, ptr noundef %136, ptr noundef %138) #13
  %tobool277.not = icmp eq ptr %call276, null
  br i1 %tobool277.not, label %if.then278, label %if.end279

if.then278:                                       ; preds = %for.body272
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_return_frame(ptr noundef %134) #13
  br label %cleanup280

if.end279:                                        ; preds = %for.body272
  %139 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %7, align 4
  %call.i.i420 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call276, ptr noundef %140, ptr noundef nonnull %list) #13
  br i1 %call.i.i420, label %if.end.i.i422, label %if.end279.cleanup280_crit_edge

if.end279.cleanup280_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup280

if.end.i.i422:                                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call276, ptr %7, align 4
  %142 = ptrtoint ptr %call276 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %list, ptr %call276, align 4
  %prev3.i.i421 = getelementptr inbounds %struct.list_head, ptr %call276, i32 0, i32 1
  %143 = ptrtoint ptr %prev3.i.i421 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev3.i.i421, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %call276, ptr %140, align 4
  br label %cleanup280

cleanup280:                                       ; preds = %if.end.i.i422, %if.end279.cleanup280_crit_edge, %if.then278
  %inc285 = add nuw nsw i32 %i.2454, 1
  %exitcond466.not = icmp eq i32 %inc285, %retval.0.i418
  br i1 %exitcond466.not, label %cleanup280.for.end286_crit_edge, label %cleanup280.for.body272_crit_edge

cleanup280.for.body272_crit_edge:                 ; preds = %cleanup280
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body272

cleanup280.for.end286_crit_edge:                  ; preds = %cleanup280
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end286

for.end286:                                       ; preds = %cleanup280.for.end286_crit_edge, %if.end269.for.end286_crit_edge, %if.end269.thread
  %kmem_alloc_drops.0473 = phi i32 [ %retval.0.i418, %if.end269.thread ], [ 0, %if.end269.for.end286_crit_edge ], [ %kmem_alloc_drops.0477, %cleanup280.for.end286_crit_edge ]
  call void @netif_receive_skb_list(ptr noundef nonnull %list) #13
  %145 = ptrtoint ptr %map_id to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %map_id, align 4
  call fastcc void @trace_xdp_cpumap_kthread(i32 noundef %146, i32 noundef %i.0.lcssa.i470, i32 noundef %kmem_alloc_drops.0473, i32 noundef %sched.0, ptr noundef nonnull %stats)
  call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %skbs) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %frames) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stats) #13
  br label %while.cond

__here337:                                        ; preds = %__ptr_ring_empty.exit.__here337_crit_edge, %lor.rhs.__here337_crit_edge
  %147 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %task, align 8
  %task_state_change341 = getelementptr inbounds %struct.task_struct, ptr %148, i32 0, i32 212
  %149 = ptrtoint ptr %task_state_change341 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 ptrtoint (ptr blockaddress(@cpu_map_kthread_run, %__here337) to i32), ptr %task_state_change341, align 4
  %150 = load ptr, ptr %task, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 0, ptr %150, align 128
  call fastcc void @put_cpu_map_entry(ptr noundef %data)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_alloc_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xdp_build_skb_from_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_cpumap_kthread(i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr noundef %xdp_stats) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_kthread, i32 0, i32 1), ptr blockaddress(@trace_xdp_cpumap_kthread, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !101
  %call42 = tail call i32 @__traceiter_xdp_cpumap_kthread(ptr noundef null, i32 noundef %map_id, i32 noundef %processed, i32 noundef %drops, i32 noundef %sched, ptr noundef %xdp_stats) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_kthread, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_kthread, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xdp_cpumap_kthread.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xdp_cpumap_kthread.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 230, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpu_map_bpf_prog_run_xdp(ptr nocapture noundef readonly %rcpu, ptr nocapture noundef %frames, i32 noundef %n, ptr nocapture noundef %stats) unnamed_addr #0 align 64 {
entry:
  %rxq = alloca %struct.xdp_rxq_info, align 128
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %rxq) #13
  %0 = call ptr @memset(ptr %rxq, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #13
  %1 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %6 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  %7 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i45 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i45 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @bpf_redirect_info to i32)
  %13 = inttoptr i32 %add.i to ptr
  %kern_flags.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %kern_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %kern_flags.i, align 4
  %or.i = or i32 %15, 1
  store i32 %or.i, ptr %kern_flags.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rxq, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp63 = icmp sgt i32 %n, 0
  br i1 %cmp63, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mem = getelementptr inbounds %struct.xdp_rxq_info, ptr %rxq, i32 0, i32 3
  %prog = getelementptr inbounds %struct.bpf_cpu_map_entry, ptr %rcpu, i32 0, i32 7
  %drop15 = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %stats, i32 0, i32 2
  %pass = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %stats, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %nframes.065 = phi i32 [ 0, %for.body.lr.ph ], [ %nframes.1, %sw.epilog.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %frames, i32 %i.064
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %dev_rx = getelementptr inbounds %struct.xdp_frame, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_rx, align 4
  %21 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %rxq, align 128
  %mem2 = getelementptr inbounds %struct.xdp_frame, ptr %18, i32 0, i32 4
  %22 = ptrtoint ptr %mem2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %mem2, align 4
  %24 = ptrtoint ptr %mem to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %mem, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 4
  %headroom.i = getelementptr inbounds %struct.xdp_frame, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %headroom.i, align 2
  %conv.i = zext i16 %28 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %26, i32 -24
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr1.i, ptr %3, align 4
  %30 = load ptr, ptr %18, align 4
  %31 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %xdp, align 4
  %32 = load ptr, ptr %18, align 4
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %18, i32 0, i32 1
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len.i, align 4
  %conv5.i = zext i16 %34 to i32
  %add.ptr6.i = getelementptr i8, ptr %32, i32 %conv5.i
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr6.i, ptr %1, align 4
  %36 = load ptr, ptr %18, align 4
  %metasize.i = getelementptr inbounds %struct.xdp_frame, ptr %18, i32 0, i32 3
  %37 = ptrtoint ptr %metasize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i = load i32, ptr %metasize.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 24
  %idx.neg8.i = sub nsw i32 0, %bf.lshr.i
  %add.ptr9.i = getelementptr i8, ptr %36, i32 %idx.neg8.i
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr9.i, ptr %2, align 4
  %bf.load10.i = load i32, ptr %metasize.i, align 4
  %bf.clear.i = and i32 %bf.load10.i, 16777215
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bf.clear.i, ptr %5, align 4
  %40 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prog, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.14, i32 noundef 613) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@cpu_map_bpf_prog_run_xdp, %if.then.i.i)) #13
          to label %if.else.i.i [label %if.then.i.i], !srcloc !87

if.then.i.i:                                      ; preds = %for.body
  %call3.i.i = call i64 @sched_clock() #13
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %41, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi.i.i, ptr noundef %43) #13
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %41, i32 0, i32 7
  %44 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats9.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %52, %46
  %53 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %53, i32 0, i32 3
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !103
  %and.i.i.i.i = and i32 %54, 128
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
  %55 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %56 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %60 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %65, ptrtoint (ptr @lockdep_recursion to i32)
  %66 = inttoptr i32 %add.i.i.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !105
  %69 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i7.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool20.not.i.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %73 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %77 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i9.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !106
  %81 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %84, ptrtoint (ptr @hardirqs_enabled to i32)
  %85 = inttoptr i32 %add47.i.i.i.i to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !107
  %88 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i12.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %91, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool54.not.i.i.i.i = icmp eq i32 %87, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %92 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %93, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !108
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %53, i32 0, i32 3, i32 0, i32 1
  %94 = call ptr @llvm.returnaddress(i32 0) #13
  %95 = ptrtoint ptr %94 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %95) #13
  %96 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %53, align 8
  %inc.i.i.i = add i64 %97, 1
  store i64 %inc.i.i.i, ptr %53, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %53, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #13
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %98 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %99
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %95) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  %100 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %101, 1
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
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !110
  %and.i.i.i3.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !80

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @warn_bogus_irq_restore() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #13, !srcloc !111
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %41, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %41, i32 0, i32 9
  %103 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = call i32 @bpf_dispatcher_xdp_func(ptr noundef nonnull %xdp, ptr noundef %insnsi15.i.i, ptr noundef %104) #13
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@cpu_map_bpf_prog_run_xdp, %l_yes.i.i)) #13
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !87

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
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %4, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %110, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.sw.default_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.sw.default_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 15
  %111 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %112, 4
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
  %113 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %act.0.i, label %bpf_prog_run_xdp.exit.sw.default_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb8
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb21_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb21_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

bpf_prog_run_xdp.exit.sw.default_crit_edge:       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

sw.bb:                                            ; preds = %bpf_prog_run_xdp.exit
  %114 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xdp, align 4
  %116 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %3, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %115 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %117 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %118 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %2, align 4
  %sub.ptr.rhs.cast3.i = ptrtoint ptr %119 to i32
  %sub.ptr.sub4.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast3.i
  %120 = call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i, i32 0) #13
  %sub.i = sub i32 %sub.ptr.sub.i, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp5.i = icmp ult i32 %sub.i, 24
  br i1 %cmp5.i, label %sw.bb.if.then_crit_edge, label %if.end.i, !prof !80

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %sw.bb
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %123 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %5, align 4
  %add.ptr.i49 = getelementptr i8, ptr %117, i32 -256
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i49, i32 %124
  %cmp9.i = icmp ugt ptr %122, %add.ptr8.i
  br i1 %cmp9.i, label %if.then16.i, label %if.else, !prof !80

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_warn(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #13
  br label %if.then

if.then:                                          ; preds = %if.then16.i, %sw.bb.if.then_crit_edge
  call void @xdp_return_frame(ptr noundef %18) #13
  br label %sw.epilog

if.else:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %115, ptr %18, align 4
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %128 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast23.i = ptrtoint ptr %129 to i32
  %sub.ptr.sub24.i = sub i32 %sub.ptr.lhs.cast22.i, %sub.ptr.rhs.cast23.i
  %conv.i50 = trunc i32 %sub.ptr.sub24.i to i16
  %130 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i50, ptr %len.i, align 4
  %131 = trunc i32 %sub.ptr.sub.i to i16
  %conv26.i = add i16 %131, -24
  %132 = ptrtoint ptr %headroom.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv26.i, ptr %headroom.i, align 2
  %133 = ptrtoint ptr %metasize.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %bf.load.i52 = load i32, ptr %metasize.i, align 4
  %bf.shl.i = shl i32 %120, 24
  %bf.clear.i53 = and i32 %bf.load.i52, 16777215
  %bf.set.i = or i32 %bf.clear.i53, %bf.shl.i
  store i32 %bf.set.i, ptr %metasize.i, align 4
  %134 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %5, align 4
  %bf.value32.i = and i32 %135, 16777215
  %bf.set34.i = or i32 %bf.value32.i, %bf.shl.i
  store i32 %bf.set34.i, ptr %metasize.i, align 4
  %inc5 = add i32 %nframes.065, 1
  %arrayidx6 = getelementptr ptr, ptr %frames, i32 %nframes.065
  %136 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %18, ptr %arrayidx6, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %bpf_prog_run_xdp.exit
  %137 = ptrtoint ptr %dev_rx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev_rx, align 4
  %139 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prog, align 4
  %call11 = call i32 @xdp_do_redirect(ptr noundef %138, ptr noundef nonnull %xdp, ptr noundef %140) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then14, !prof !81

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  call void @xdp_return_frame(ptr noundef %18) #13
  br label %sw.epilog

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit.sw.default_crit_edge, %netif_is_bond_slave.exit.i.sw.default_crit_edge, %land.lhs.true.i.sw.default_crit_edge
  %act.0.i60 = phi i32 [ %act.0.i, %bpf_prog_run_xdp.exit.sw.default_crit_edge ], [ 3, %netif_is_bond_slave.exit.i.sw.default_crit_edge ], [ 3, %land.lhs.true.i.sw.default_crit_edge ]
  %141 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prog, align 4
  call void @bpf_warn_invalid_xdp_action(ptr noundef null, ptr noundef %142, i32 noundef %act.0.i60) #13
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb21_crit_edge
  call void @xdp_return_frame(ptr noundef %18) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %if.then14, %sw.bb8.sw.epilog_crit_edge, %if.else, %if.then
  %drop15.sink69 = phi ptr [ %drop15, %if.then14 ], [ %drop15, %if.then ], [ %pass, %if.else ], [ %drop15, %sw.bb21 ], [ %stats, %sw.bb8.sw.epilog_crit_edge ]
  %nframes.1 = phi i32 [ %nframes.065, %if.then14 ], [ %nframes.065, %if.then ], [ %inc5, %if.else ], [ %nframes.065, %sw.bb21 ], [ %nframes.065, %sw.bb8.sw.epilog_crit_edge ]
  %143 = ptrtoint ptr %drop15.sink69 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %drop15.sink69, align 4
  %inc16 = add i32 %144, 1
  store i32 %inc16, ptr %drop15.sink69, align 4
  %inc24 = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc24, %n
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %nframes.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %nframes.1, %sw.epilog.for.end_crit_edge ]
  %145 = call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i54 = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i54 to ptr
  %cpu.i55 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %cpu.i55 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cpu.i55, align 4
  %arrayidx.i56 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i56, align 4
  %add.i57 = add i32 %150, ptrtoint (ptr @bpf_redirect_info to i32)
  %151 = inttoptr i32 %add.i57 to ptr
  %kern_flags.i58 = getelementptr inbounds %struct.bpf_redirect_info, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %kern_flags.i58 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %kern_flags.i58, align 4
  %and.i = and i32 %153, -2
  store i32 %and.i, ptr %kern_flags.i58, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %rxq) #13
  ret i32 %nframes.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_run_generic_xdp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_generic_redirect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !81

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !81

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 51, ptr noundef nonnull @.str.3) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #13
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_cpumap_kthread(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_cpumap_enqueue(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/bpf/cpumap.c", i32 684, i32 19}
!2 = !{ptr @cpu_map_ops, !3, !"cpu_map_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/cpumap.c", i32 675, i32 26}
!4 = !{ptr @__initcall__kmod_cpumap__469_800_cpu_map_init4, !5, !"__initcall__kmod_cpumap__469_800_cpu_map_init4", i1 false, i1 false}
!5 = !{!"../kernel/bpf/cpumap.c", i32 800, i32 1}
!6 = !{ptr @__pcpu_unique_cpu_map_flush_list, !7, !"__pcpu_unique_cpu_map_flush_list", i1 false, i1 false}
!7 = !{!"../kernel/bpf/cpumap.c", i32 81, i32 8}
!8 = !{ptr @cpu_map_flush_list, !7, !"cpu_map_flush_list", i1 false, i1 false}
!9 = !{ptr @cpu_map_btf_id, !10, !"cpu_map_btf_id", i1 false, i1 false}
!10 = !{!"../kernel/bpf/cpumap.c", i32 674, i32 12}
!11 = !{ptr @__cpu_map_entry_replace.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../kernel/bpf/cpumap.c", i32 536, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/bpf/cpumap.c", i32 155, i32 7}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../kernel/bpf/cpumap.c", i32 638, i32 9}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/bpf/cpumap.c", i32 465, i32 13}
!25 = !{ptr @ptr_ring_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/ptr_ring.h", i32 495, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ptr_ring_init.__key.7, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/ptr_ring.h", i32 496, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../kernel/bpf/cpumap.c", i32 302, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/bpf/cpumap.c", i32 320, i32 4}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../kernel/bpf/cpumap.c", i32 326, i32 5}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/bpf/cpumap.c", i32 394, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/filter.h", i32 613, i32 2}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/xdp.h", i32 200, i32 3}
!50 = !{ptr @__func__.xdp_update_frame_from_buff, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/xdp.h", i32 189, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/xdp.h", i32 232, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148181814, i64 2148181840, i64 2148181869, i64 2148181903, i64 2148181934, i64 2148181957}
!83 = !{i64 2149694775}
!84 = !{i64 2149695041}
!85 = !{i64 2155235556, i64 2155236044, i64 2155235593, i64 2155235649, i64 2155235683, i64 2155235707, i64 2155235748, i64 2155235769, i64 2155235797, i64 2155235831}
!86 = !{i64 2155128480}
!87 = !{i64 2149264780, i64 2149264785, i64 2149264798, i64 2149264842, i64 2149264876, i64 2149264897}
!88 = !{i64 2157241344}
!89 = !{i64 2157241607}
!90 = !{i64 2149703334}
!91 = !{i64 2149704370}
!92 = !{i64 2157542591}
!93 = !{i64 688582, i64 688599, i64 688623, i64 688649, i64 688667}
!94 = !{i64 2157542896}
!95 = !{i64 2148270266}
!96 = !{i64 2148184999, i64 2148185031, i64 2148185060, i64 2148185094, i64 2148185125, i64 2148185148}
!97 = !{i64 2148270495}
!98 = !{!"branch_weights", i32 4000000, i32 4001}
!99 = !{i64 2157520219}
!100 = !{i64 2157525235}
!101 = !{i64 2157219567}
!102 = !{i64 2157219850}
!103 = !{i64 574295, i64 574356}
!104 = !{i64 2150062952}
!105 = !{i64 2150067884}
!106 = !{i64 2150089596}
!107 = !{i64 2150094488}
!108 = !{i64 2150175006}
!109 = !{i64 2150175331}
!110 = !{i64 577027}
!111 = !{i64 577312}
!112 = !{i64 2157106124}
!113 = !{i64 2157106339}
