; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mlx5_irq_pool = type { [28 x i8], %struct.xa_limit, %struct.mutex, %struct.xarray, i32, i32, ptr, ptr }
%struct.xa_limit = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@mlx5_irq_affinity_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Didn't find a matching IRQ. err = %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_irq_affinity_request\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_irq_affinity_request._entry_ptr = internal global ptr @mlx5_irq_affinity_request._entry, section ".printk_index", align 4
@mlx5_irq_affinity_request.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): IRQ %u overloaded, pool_name: %s, %u EQs on this irq\0A\00", [58 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@mlx5_irq_affinity_irqs_request_auto.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlx5_irq_affinity_irqs_request_auto\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): IRQ %u mapped to cpu %*pbl, %u EQs on this irq\0A\00", [32 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cpu_get_least_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): NO online CPUs in req_mask (%*pbl)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpu_get_least_loaded\00", [43 x i8] zeroinitializer }, align 32
@cpu_get_least_loaded._entry_ptr = internal global ptr @cpu_get_least_loaded._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_sf\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 137, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 152, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 217, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 108, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 38, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 30, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @cpu_get_least_loaded._entry, ptr @cpu_get_least_loaded._entry_ptr, ptr @mlx5_irq_affinity_request._entry, ptr @mlx5_irq_affinity_request._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_irq_affinity_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_get_least_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_irq_affinity_request(ptr noundef %pool, ptr noundef %req_mask) local_unnamed_addr #0 align 64 {
entry:
  %auto_mask.i = alloca ptr, align 4
  %irq_index.i = alloca i32, align 4
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %xa_num_irqs.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 1
  %min.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min.i, align 4
  %2 = ptrtoint ptr %xa_num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xa_num_irqs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 2, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !36

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %index.i, align 4
  %irqs.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 3
  %call25.i = call ptr @xa_find(ptr noundef %irqs.i, ptr noundef nonnull %index.i, i32 noundef %3, i32 noundef 8) #7
  %min_threshold.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 5
  %tobool26.not70.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not70.i, label %irq_pool_find_least_loaded.exit.thread, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

irq_pool_find_least_loaded.exit.thread:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #7
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %irq_refcount.073.i = phi i32 [ %irq_refcount.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %iter.072.i = phi ptr [ %call42.i, %for.inc.i.for.body.i_crit_edge ], [ %call25.i, %if.end.i.for.body.i_crit_edge ]
  %irq.071.i = phi ptr [ %irq.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %call27.i = call ptr @mlx5_irq_get_affinity_mask(ptr noundef nonnull %iter.072.i) #7
  %call28.i = call i32 @mlx5_irq_read_locked(ptr noundef nonnull %iter.072.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = call i32 @__bitmap_subset(ptr noundef %call27.i, ptr noundef %req_mask, i32 noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool30.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool30.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end32.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end32.i:                                       ; preds = %for.body.i
  %7 = ptrtoint ptr %min_threshold.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.i, i32 %8)
  %cmp33.i = icmp ult i32 %call28.i, %8
  br i1 %cmp33.i, label %irq_pool_find_least_loaded.exit.thread79, label %if.end35.i

irq_pool_find_least_loaded.exit.thread79:         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #7
  br label %land.lhs.true

if.end35.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %tobool36.not.i = icmp eq ptr %irq.071.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %call28.i, i32 %irq_refcount.073.i)
  %cmp37.i = icmp slt i32 %call28.i, %irq_refcount.073.i
  %or.cond.i = select i1 %tobool36.not.i, i1 true, i1 %cmp37.i
  %irq.1.i = select i1 %or.cond.i, ptr %iter.072.i, ptr %irq.071.i
  %irq_refcount.1.i = select i1 %or.cond.i, i32 %call28.i, i32 %irq_refcount.073.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end35.i, %for.body.i.for.inc.i_crit_edge
  %irq.2.ph.i = phi ptr [ %irq.071.i, %for.body.i.for.inc.i_crit_edge ], [ %irq.1.i, %if.end35.i ]
  %irq_refcount.2.ph.i = phi i32 [ %irq_refcount.073.i, %for.body.i.for.inc.i_crit_edge ], [ %irq_refcount.1.i, %if.end35.i ]
  %call42.i = call ptr @xa_find_after(ptr noundef %irqs.i, ptr noundef nonnull %index.i, i32 noundef %3, i32 noundef 8) #7
  %tobool26.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool26.not.i, label %irq_pool_find_least_loaded.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

irq_pool_find_least_loaded.exit:                  ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #7
  %tobool.not = icmp eq ptr %irq.2.ph.i, null
  br i1 %tobool.not, label %irq_pool_find_least_loaded.exit.if.end_crit_edge, label %irq_pool_find_least_loaded.exit.land.lhs.true_crit_edge

irq_pool_find_least_loaded.exit.land.lhs.true_crit_edge: ; preds = %irq_pool_find_least_loaded.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

irq_pool_find_least_loaded.exit.if.end_crit_edge: ; preds = %irq_pool_find_least_loaded.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %irq_pool_find_least_loaded.exit.land.lhs.true_crit_edge, %irq_pool_find_least_loaded.exit.thread79
  %retval.2.i82 = phi ptr [ %iter.072.i, %irq_pool_find_least_loaded.exit.thread79 ], [ %irq.2.ph.i, %irq_pool_find_least_loaded.exit.land.lhs.true_crit_edge ]
  %call1 = call i32 @mlx5_irq_read_locked(ptr noundef nonnull %retval.2.i82) #7
  %9 = ptrtoint ptr %min_threshold.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %10)
  %cmp = icmp ult i32 %call1, %10
  br i1 %cmp, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %irq_pool_find_least_loaded.exit.if.end_crit_edge, %irq_pool_find_least_loaded.exit.thread
  %tobool.not78 = phi i1 [ true, %irq_pool_find_least_loaded.exit.thread ], [ false, %land.lhs.true.if.end_crit_edge ], [ true, %irq_pool_find_least_loaded.exit.if.end_crit_edge ]
  %retval.2.i76 = phi ptr [ null, %irq_pool_find_least_loaded.exit.thread ], [ %retval.2.i82, %land.lhs.true.if.end_crit_edge ], [ null, %irq_pool_find_least_loaded.exit.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auto_mask.i) #7
  %11 = ptrtoint ptr %auto_mask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %auto_mask.i, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_index.i) #7
  %12 = ptrtoint ptr %irq_index.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq_index.i, align 4, !annotation !37
  %call.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %auto_mask.i, i32 noundef 3264) #7
  br i1 %call.i, label %if.end.i62, label %irq_pool_request_irq.exit.thread

irq_pool_request_irq.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_index.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auto_mask.i) #7
  br label %if.then4

if.end.i62:                                       ; preds = %if.end
  %13 = ptrtoint ptr %xa_num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i = load i32, ptr %xa_num_irqs.i, align 4
  %14 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %15 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack29.i = load i32, ptr %min.i, align 4
  %16 = insertvalue [2 x i32] %14, i32 %.unpack29.i, 1
  call void @_raw_spin_lock(ptr noundef %irqs.i) #7
  %call.i.i60 = call i32 @__xa_alloc(ptr noundef %irqs.i, ptr noundef nonnull %irq_index.i, ptr noundef null, [2 x i32] %16, i32 noundef 3264) #7
  call void @_raw_spin_unlock(ptr noundef %irqs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %tobool.not.i61 = icmp eq i32 %call.i.i60, 0
  br i1 %tobool.not.i61, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  %17 = inttoptr i32 %call.i.i60 to ptr
  br label %irq_pool_request_irq.exit

if.end5.i:                                        ; preds = %if.end.i62
  %irqs_per_cpu.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 6
  %18 = ptrtoint ptr %irqs_per_cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irqs_per_cpu.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.end.i.i.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef %req_mask, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i.i)
  %cmp.i = icmp ugt i32 %call4.i.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %cmp.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end.i.i.i
  %call41.i.i = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %req_mask, ptr noundef nonnull @__cpu_online_mask) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i.i, i32 %21)
  %cmp42.i.i = icmp ult i32 %call41.i.i, %21
  br i1 %cmp42.i.i, label %for.body.lr.ph.i.i, label %do.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then9.i
  %22 = ptrtoint ptr %irqs_per_cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irqs_per_cpu.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call44.i.i = phi i32 [ %call41.i.i, %for.body.lr.ph.i.i ], [ %call.i30.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %best_cpu.043.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %best_cpu.2.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %23, i32 %call44.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.cpu_get_least_loaded.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.cpu_get_least_loaded.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_get_least_loaded.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_cpu.043.i.i)
  %cmp1.i.i = icmp slt i32 %best_cpu.043.i.i, 0
  %spec.select.i.i = select i1 %cmp1.i.i, i32 %call44.i.i, i32 %best_cpu.043.i.i
  %arrayidx7.i.i = getelementptr i16, ptr %23, i32 %spec.select.i.i
  %26 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx7.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp9.i.i = icmp ult i16 %25, %27
  %best_cpu.2.i.i = select i1 %cmp9.i.i, i32 %call44.i.i, i32 %spec.select.i.i
  %call.i30.i = call i32 @cpumask_next_and(i32 noundef %call44.i.i, ptr noundef %req_mask, ptr noundef nonnull @__cpu_online_mask) #10
  %cmp.i.i = icmp ult i32 %call.i30.i, %21
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.cpu_get_least_loaded.exit.i_crit_edge

if.end.i.i.cpu_get_least_loaded.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_get_least_loaded.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 7
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %32 = call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i31.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i31.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 39, i32 noundef %37, i32 noundef %21, ptr noundef %req_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i69 = call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %38) #7
  br label %cpu_get_least_loaded.exit.i

cpu_get_least_loaded.exit.i:                      ; preds = %do.end.i.i, %if.end.i.i.cpu_get_least_loaded.exit.i_crit_edge, %for.body.i.i.cpu_get_least_loaded.exit.i_crit_edge
  %best_cpu.4.i.i = phi i32 [ %call.i.i.i69, %do.end.i.i ], [ %call44.i.i, %for.body.i.i.cpu_get_least_loaded.exit.i_crit_edge ], [ %best_cpu.2.i.i, %if.end.i.i.cpu_get_least_loaded.exit.i_crit_edge ]
  %39 = ptrtoint ptr %irqs_per_cpu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irqs_per_cpu.i, align 4
  %arrayidx20.i.i = getelementptr i16, ptr %40, i32 %best_cpu.4.i.i
  %41 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx20.i.i, align 2
  %inc.i.i = add i16 %42, 1
  store i16 %inc.i.i, ptr %arrayidx20.i.i, align 2
  %43 = ptrtoint ptr %auto_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %auto_mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %best_cpu.4.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %45, %best_cpu.4.i.i
  br i1 %cmp.not.i.i.i.i, label %cpu_get_least_loaded.exit.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

cpu_get_least_loaded.exit.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %cpu_get_least_loaded.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %cpu_get_least_loaded.exit.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %cpu_get_least_loaded.exit.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %best_cpu.4.i.i, ptr noundef %44) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i32.i = call i32 @_find_first_bit_be(ptr noundef %req_mask, i32 noundef %21) #7
  %46 = ptrtoint ptr %irqs_per_cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irqs_per_cpu.i, align 4
  %arrayidx.i34.i = getelementptr i16, ptr %47, i32 %call.i32.i
  %48 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i34.i, align 2
  %inc.i35.i = add i16 %49, 1
  store i16 %inc.i35.i, ptr %arrayidx.i34.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %cpumask_set_cpu.exit.i, %if.end5.i.if.end13.i_crit_edge
  %50 = ptrtoint ptr %irq_index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_index.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %53 = ptrtoint ptr %auto_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %auto_mask.i, align 4
  %call.i.i41.i = call i32 @_find_first_bit_be(ptr noundef %54, i32 noundef %52) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i41.i, i32 %52)
  %cmp4.i.i.i = icmp eq i32 %call.i.i41.i, %52
  br i1 %cmp4.i.i.i, label %if.end13.i.cond.end.i_crit_edge, label %cond.false.i

if.end13.i.cond.end.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %auto_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %auto_mask.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end13.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %56, %cond.false.i ], [ %req_mask, %if.end13.i.cond.end.i_crit_edge ]
  %call15.i = call ptr @mlx5_irq_alloc(ptr noundef %pool, i32 noundef %51, ptr noundef %cond.i) #7
  %57 = ptrtoint ptr %auto_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %auto_mask.i, align 4
  call void @free_cpumask_var(ptr noundef %58) #7
  br label %irq_pool_request_irq.exit

irq_pool_request_irq.exit:                        ; preds = %cond.end.i, %if.then3.i
  %retval.0.i71 = phi ptr [ %17, %if.then3.i ], [ %call15.i, %cond.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_index.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auto_mask.i) #7
  %cmp.i72 = icmp ugt ptr %retval.0.i71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %irq_pool_request_irq.exit.if.then4_crit_edge, label %irq_pool_request_irq.exit.cleanup_crit_edge

irq_pool_request_irq.exit.cleanup_crit_edge:      ; preds = %irq_pool_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

irq_pool_request_irq.exit.if.then4_crit_edge:     ; preds = %irq_pool_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %irq_pool_request_irq.exit.if.then4_crit_edge, %irq_pool_request_irq.exit.thread
  %retval.0.i7186 = phi ptr [ inttoptr (i32 -12 to ptr), %irq_pool_request_irq.exit.thread ], [ %retval.0.i71, %irq_pool_request_irq.exit.if.then4_crit_edge ]
  br i1 %tobool.not78, label %do.end, label %if.then4.out_crit_edge

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 7
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %63 = call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid, align 8
  %69 = ptrtoint ptr %retval.0.i7186 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef %68, i32 noundef %69) #11
  br label %cleanup

out:                                              ; preds = %if.then4.out_crit_edge, %land.lhs.true.out_crit_edge
  %retval.2.i77 = phi ptr [ %retval.2.i76, %if.then4.out_crit_edge ], [ %retval.2.i82, %land.lhs.true.out_crit_edge ]
  %call12 = call i32 @mlx5_irq_get_locked(ptr noundef %retval.2.i77) #7
  %call13 = call i32 @mlx5_irq_read_locked(ptr noundef %retval.2.i77) #7
  %max_threshold = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 4
  %70 = ptrtoint ptr %max_threshold to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %71)
  %cmp14 = icmp ugt i32 %call13, %71
  br i1 %cmp14, label %do.body16, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_irq_affinity_request.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_irq_affinity_request, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !39

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 7
  %72 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev22, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %76 = call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i73 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task25, align 8
  %pid26 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 68
  %80 = ptrtoint ptr %pid26 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pid26, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %73, i32 0, i32 2
  %82 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev, align 8
  %call28 = call i32 @mlx5_irq_get_index(ptr noundef %retval.2.i77) #7
  %call29 = call i32 @pci_irq_vector(ptr noundef %83, i32 noundef %call28) #7
  %call30 = call i32 @mlx5_irq_read_locked(ptr noundef %retval.2.i77) #7
  %div = sdiv i32 %call30, 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_irq_affinity_request.__UNIQUE_ID_ddebug500, ptr noundef %75, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef %81, i32 noundef %call29, ptr noundef %pool, i32 noundef %div) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body16, %out.cleanup_crit_edge, %do.end, %irq_pool_request_irq.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i7186, %do.end ], [ %retval.2.i77, %if.then21 ], [ %retval.2.i77, %out.cleanup_crit_edge ], [ %retval.0.i71, %irq_pool_request_irq.exit.cleanup_crit_edge ], [ %retval.2.i77, %do.body16 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_irq_read_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_irq_get_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_irq_get_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_irq_affinity_irqs_release(ptr noundef %dev, ptr nocapture noundef readonly %irqs, i32 noundef %num_irqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_irq_pool_get(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_irqs)
  %cmp20 = icmp sgt i32 %num_irqs, 0
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call, i32 0, i32 7
  %irqs_per_cpu = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %irqs, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call ptr @mlx5_irq_get_affinity_mask(ptr noundef %1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %call1, i32 noundef %2) #7
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @mlx5_irq_get_index(ptr noundef %8) #7
  %call6 = tail call i32 @pci_irq_vector(ptr noundef %6, i32 noundef %call5) #7
  tail call void @synchronize_irq(i32 noundef %call6) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @mlx5_irq_put(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.body.if.end11_crit_edge, label %if.then

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %for.body
  %11 = ptrtoint ptr %irqs_per_cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irqs_per_cpu, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %if.then10

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i16, ptr %12, i32 %call.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %dec.i = add i16 %14, -1
  store i16 %dec.i, ptr %arrayidx.i, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %num_irqs
  br i1 %exitcond.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_irq_pool_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_irq_get_affinity_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_irq_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_affinity_irqs_request_auto(ptr noundef %dev, i32 noundef %nirqs, ptr nocapture noundef writeonly %irqs) local_unnamed_addr #0 align 64 {
entry:
  %req_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_irq_pool_get(ptr noundef %dev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_mask) #7
  %0 = ptrtoint ptr %req_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req_mask, align 4, !annotation !37
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %req_mask, i32 noundef 3264) #7
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %3, 31
  %4 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %4, 536870908
  %5 = call ptr @memcpy(ptr %2, ptr @__cpu_online_mask, i32 %mul.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nirqs)
  %cmp47 = icmp sgt i32 %nirqs, 0
  br i1 %cmp47, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_mask, align 4
  call void @free_cpumask_var(ptr noundef %7) #7
  br label %if.then24

for.body.lr.ph:                                   ; preds = %if.end
  %dev16 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call, i32 0, i32 7
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.12, ptr noundef %call, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_mask, align 4
  %call4 = call ptr @mlx5_irq_affinity_request(ptr noundef %call, ptr noundef %9)
  br label %if.end6

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %i.048 to i16
  %call5 = call ptr @mlx5_irq_request(ptr noundef %dev, i16 noundef zeroext %conv, ptr noundef null) #7
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %irq.1 = phi ptr [ %call4, %if.then3 ], [ %call5, %if.else ]
  %cmp.i = icmp ugt ptr %irq.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.for.end_crit_edge, label %if.end9

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9:                                          ; preds = %if.end6
  %arrayidx = getelementptr ptr, ptr %irqs, i32 %i.048
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %irq.1, ptr %arrayidx, align 4
  %call10 = call ptr @mlx5_irq_get_affinity_mask(ptr noundef %irq.1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call.i45 = call i32 @_find_first_bit_be(ptr noundef %call10, i32 noundef %11) #7
  %12 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call.i45)
  %cmp.not.i.i.i = icmp ugt i32 %14, %call.i45
  br i1 %cmp.not.i.i.i, label %if.end9.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end9.cpumask_clear_cpu.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end9
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !38

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.end9.cpumask_clear_cpu.exit_crit_edge
  call void @_clear_bit(i32 noundef %call.i45, ptr noundef %13) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_irq_affinity_irqs_request_auto.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_irq_affinity_irqs_request_auto, %if.then15)) #7
          to label %for.inc [label %if.then15], !srcloc !39

if.then15:                                        ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev16, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 8
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %call18 = call i32 @mlx5_irq_get_index(ptr noundef %irq.1) #7
  %call19 = call i32 @pci_irq_vector(ptr noundef %26, i32 noundef %call18) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %call20 = call ptr @mlx5_irq_get_affinity_mask(ptr noundef %irq.1) #7
  %call21 = call i32 @mlx5_irq_read_locked(ptr noundef %irq.1) #7
  %div = sdiv i32 %call21, 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_irq_affinity_irqs_request_auto.__UNIQUE_ID_ddebug501, ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 220, i32 noundef %24, i32 noundef %call19, i32 noundef %27, ptr noundef %call20, i32 noundef %div) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %cpumask_clear_cpu.exit
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %nirqs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %nirqs, %for.inc.for.end_crit_edge ], [ %i.048, %if.end6.for.end_crit_edge ]
  %28 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req_mask, align 4
  call void @free_cpumask_var(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool23.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool23.not, label %for.end.if.then24_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %for.end.if.then24_crit_edge, %for.end.thread
  %irq.255 = phi ptr [ inttoptr (i32 -1 to ptr), %for.end.thread ], [ %irq.1, %for.end.if.then24_crit_edge ]
  %30 = ptrtoint ptr %irq.255 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ %i.0.lcssa, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_mask) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_irq_request(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_irq_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c", i32 137, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_irq_affinity_request._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_irq_affinity_request._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c", i32 152, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_irq_affinity_request.__UNIQUE_ID_ddebug500, !9, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c", i32 217, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_irq_affinity_irqs_request_auto.__UNIQUE_ID_ddebug501, !13, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/irq_affinity.c", i32 38, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cpu_get_least_loaded._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cpu_get_least_loaded._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.h", i32 30, i32 18}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148708087, i64 2148708092, i64 2148708105, i64 2148708149, i64 2148708183, i64 2148708204}
