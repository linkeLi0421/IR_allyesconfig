; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.152, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
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
%struct.anon.152 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.mlx5_irq = type { %struct.atomic_notifier_head, ptr, [32 x i8], ptr, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.mlx5_irq_pool = type { [28 x i8], %struct.xa_limit, %struct.mutex, %struct.xarray, i32, i32, ptr, ptr }
%struct.xa_limit = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_irq_table = type { ptr, ptr, ptr }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c\00", [46 x i8] zeroinitializer }, align 32
@mlx5_irq_get_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_irq_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&(&irq->nh)->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s@pci:%s\00", [22 x i8] zeroinitializer }, align 32
@mlx5_irq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Failed to request irq. err = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_irq_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_irq_alloc._entry_ptr = internal global ptr @mlx5_irq_alloc._entry, section ".printk_index", align 4
@mlx5_irq_alloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str, i32 235, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): zalloc_cpumask_var failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_irq_alloc._entry_ptr.10 = internal global ptr @mlx5_irq_alloc._entry.7, section ".printk_index", align 4
@mlx5_irq_alloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Failed to alloc xa entry for irq(%u). err = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_irq_alloc._entry_ptr.13 = internal global ptr @mlx5_irq_alloc._entry.11, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@mlx5_irq_request.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_irq_request\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): irq %u mapped to cpu %*pbl, %u EQs on this irq\0A\00", [32 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_sf\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_combined%d\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlx5_async%d\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx5_comp%d\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@irq_pools_init.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_pools_init\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): Not enught IRQs for SFs. SF may run at lower performance\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlx5_sf_ctrl\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlx5_sf_comp\00", [19 x i8] zeroinitializer }, align 32
@irq_pool_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@irq_pool_alloc.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.29, ptr @.str, ptr @.str.30, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_pool_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): pool->name = %s, pool->size = %d, pool->start = %d\00", [61 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 159, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 225, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 227, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 231, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 235, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 248, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 433, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 30, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 197, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 202, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 206, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 190, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 108, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 541, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 552, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 561, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 493, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 499, i32 5 }
@___asan_gen_.126 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 502, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 378, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @mlx5_irq_alloc._entry, ptr @mlx5_irq_alloc._entry.11, ptr @mlx5_irq_alloc._entry.7, ptr @mlx5_irq_alloc._entry_ptr, ptr @mlx5_irq_alloc._entry_ptr.10, ptr @mlx5_irq_alloc._entry_ptr.13, ptr @.str, ptr @mlx5_irq_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @irq_pool_alloc.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @xa_init_flags.__key, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_irq_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_irq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_irq_alloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_irq_alloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_pool_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_get_default_msix_vec_count(ptr nocapture noundef readonly %dev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr5 = getelementptr i32, ptr %1, i32 58
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr5, align 4
  %shr6 = lshr i32 %5, 16
  %and7 = and i32 %shr6, 15
  %div = sdiv i32 %and, %num_vfs
  %and15 = lshr i32 %5, 1
  %div1632 = and i32 %and15, 2047
  %6 = tail call i32 @llvm.smin.i32(i32 %div, i32 %div1632)
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 %and7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_set_msix_vec_count(ptr noundef %dev, i32 noundef %function_id, i32 noundef %msix_vec_count) local_unnamed_addr #2 align 64 {
entry:
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr %struct.mlx5_hca_cap, ptr %1, i32 0, i32 1, i32 56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr5 = getelementptr i32, ptr %1, i32 13
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool8.not = icmp sgt i32 %5, -1
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr16 = getelementptr i32, ptr %1, i32 58
  %8 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr16, align 4
  %shr17 = lshr i32 %9, 16
  %and18 = and i32 %shr17, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %msix_vec_count)
  %cmp = icmp sgt i32 %and18, %msix_vec_count
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end28

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end10
  %and26 = and i32 %9, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %msix_vec_count)
  %cmp29 = icmp slt i32 %and26, %msix_vec_count
  br i1 %cmp29, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4112) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i141 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4112) #15
  %tobool34.not = icmp eq ptr %call7.i.i141, null
  %tobool36.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool34.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.end31.out_crit_edge, label %if.end38

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end38:                                         ; preds = %if.end31
  %conv = trunc i32 %function_id to i16
  %call39 = tail call i32 @mlx5_vport_get_other_func_cap(ptr noundef %dev, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr43 = getelementptr i8, ptr %call7.i.i141, i32 16
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 16
  %12 = call ptr @memcpy(ptr %add.ptr43, ptr %add.ptr44, i32 4096)
  %add.ptr46 = getelementptr i8, ptr %call7.i.i141, i32 244
  %13 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr46, align 4
  %and47 = and i32 %14, -4096
  %and48 = and i32 %msix_vec_count, 4095
  %or = or i32 %and47, %and48
  store i32 %or, ptr %add.ptr46, align 4
  %15 = ptrtoint ptr %call7.i.i141 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i141, align 8
  %and58 = and i32 %16, 65535
  %or61 = or i32 %and58, 17367040
  store i32 %or61, ptr %call7.i.i141, align 8
  %add.ptr70 = getelementptr i32, ptr %call7.i.i141, i32 2
  %17 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr70, align 8
  %or74 = and i32 %18, 2147418112
  %and85 = and i32 %function_id, 65535
  %and84 = or i32 %and85, %or74
  %or87 = or i32 %and84, -2147483648
  store i32 %or87, ptr %add.ptr70, align 8
  %add.ptr96 = getelementptr i32, ptr %call7.i.i141, i32 1
  %19 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr96, align 4
  %and97 = and i32 %20, -65536
  store i32 %and97, ptr %add.ptr96, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #12
  %21 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call106 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call7.i.i141, i32 noundef 4112, ptr noundef nonnull %_out, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #12
  br label %out

out:                                              ; preds = %if.end42, %if.end38.out_crit_edge, %if.end31.out_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end38.out_crit_edge ], [ %call106, %if.end42 ], [ -12, %if.end31.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i141) #12
  call void @kfree(ptr noundef %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end28.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -75, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vport_get_other_func_cap(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_put(ptr noundef %irq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 3
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 4
  %lock = getelementptr inbounds %struct.mlx5_irq_pool, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcount = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 4
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool1, align 4
  %irqs.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %5, i32 0, i32 3
  %index.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 5
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %call.i = tail call ptr @xa_erase(ptr noundef %irqs.i, i32 noundef %7) #12
  %irqn.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 6
  %8 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqn.i, align 4
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %9, ptr noundef null, i1 noundef zeroext false) #12
  %mask.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mask.i, align 4
  tail call void @free_cpumask_var(ptr noundef %11) #12
  %12 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irqn.i, align 4
  %call4.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef %irq) #12
  tail call void @kfree(ptr noundef %irq) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_read_locked(ptr nocapture noundef readonly %irq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %pool = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 3
  %1 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pool, align 4
  %dep_map = getelementptr inbounds %struct.mlx5_irq_pool, ptr %2, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !73

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %refcount = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 4
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcount, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_get_locked(ptr nocapture noundef %irq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %pool = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 3
  %1 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pool, align 4
  %dep_map = getelementptr inbounds %struct.mlx5_irq_pool, ptr %2, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !73

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %refcount = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 4
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool24.not = icmp eq i32 %4, 0
  br i1 %tobool24.not, label %land.rhs32, label %if.end80

land.rhs32:                                       ; preds = %if.end
  %.b87 = load i1, ptr @mlx5_irq_get_locked.__already_done, align 1
  br i1 %.b87, label %land.rhs32.return_crit_edge, label %if.then43, !prof !74

land.rhs32.return_crit_edge:                      ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then43:                                        ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_irq_get_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #12
  br label %return

if.end80:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %4, 1
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %refcount, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then43, %land.rhs32.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end80 ], [ 0, %if.then43 ], [ 0, %land.rhs32.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_irq_alloc(ptr noundef %pool, i32 noundef %i, ptr noundef readonly %affinity) local_unnamed_addr #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 7
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %2 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 100) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call3 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef %i) #12
  %irqn = getelementptr inbounds %struct.mlx5_irq, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %irqn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %irqn, align 8
  %call.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.17, ptr noundef %pool, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %xa_num_irqs.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 1
  %7 = ptrtoint ptr %xa_num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i113 = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %i)
  %cmp.i = icmp eq i32 %8, %i
  %.str.19..str.20.i = select i1 %cmp.i, ptr @.str.19, ptr @.str.20
  %.str.20.sink.i = select i1 %tobool.not.i113, ptr @.str.18, ptr %.str.19..str.20.i
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull %.str.20.sink.i, i32 noundef %i) #12
  br label %do.body8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i114 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %pool, i32 noundef %i) #12
  br label %do.body8

do.body8:                                         ; preds = %if.else, %if.then5
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx5_irq_alloc.__key, i16 noundef signext 3) #12
  %head = getelementptr inbounds %struct.atomic_notifier_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %head, align 4
  %name13 = getelementptr inbounds %struct.mlx5_irq, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body8.pci_name.exit_crit_edge

do.body8.pci_name.exit_crit_edge:                 ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.body8.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.body8.pci_name.exit_crit_edge ]
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name13, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %name, ptr noundef %retval.0.i.i)
  %16 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqn, align 8
  %call.i115 = call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @irq_int_handler, ptr noundef null, i32 noundef 0, ptr noundef %name13, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool24.not = icmp eq i32 %call.i115, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 231, i32 noundef %25, i32 noundef %call.i115) #16
  br label %err_req_irq

if.end30:                                         ; preds = %pci_name.exit
  %mask = getelementptr inbounds %struct.mlx5_irq, ptr %call7.i.i, i32 0, i32 1
  %call31 = call zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef 3264) #12
  br i1 %call31, label %if.end40, label %do.end35

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i116 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i116 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid39, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef 235, i32 noundef %33) #16
  br label %err_cpumask

if.end40:                                         ; preds = %if.end30
  %tobool41.not = icmp eq ptr %affinity, null
  br i1 %tobool41.not, label %if.end40.if.end47_crit_edge, label %if.then42

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %36, 31
  %37 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %37, 536870908
  %38 = call ptr @memcpy(ptr %35, ptr %affinity, i32 %mul.i.i)
  %39 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irqn, align 8
  %41 = load ptr, ptr %mask, align 8
  %call.i117 = call i32 @__irq_apply_affinity_hint(i32 noundef %40, ptr noundef %41, i1 noundef zeroext true) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end40.if.end47_crit_edge
  %pool48 = getelementptr inbounds %struct.mlx5_irq, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %pool48 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pool, ptr %pool48, align 4
  %refcount = getelementptr inbounds %struct.mlx5_irq, ptr %call7.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %refcount, align 8
  %index = getelementptr inbounds %struct.mlx5_irq, ptr %call7.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i, ptr %index, align 4
  %irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 3
  %call50 = call ptr @xa_store(ptr noundef %irqs, i32 noundef %i, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #12
  %45 = ptrtoint ptr %call50 to i32
  %and.i.i.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call50, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %45, 2
  %retval.0.i = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool52.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool52.not, label %if.end47.cleanup_crit_edge, label %do.end56

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %48 = call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i118 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i118 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task59, align 8
  %pid60 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid60, align 8
  %54 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef %53, i32 noundef %55, i32 noundef %retval.0.i) #16
  %56 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irqn, align 8
  %call.i119 = call i32 @__irq_apply_affinity_hint(i32 noundef %57, ptr noundef null, i1 noundef zeroext false) #12
  %58 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mask, align 8
  call void @free_cpumask_var(ptr noundef %59) #12
  br label %err_cpumask

err_cpumask:                                      ; preds = %do.end56, %do.end35
  %err.0 = phi i32 [ %retval.0.i, %do.end56 ], [ -12, %do.end35 ]
  %60 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irqn, align 8
  %call68 = call ptr @free_irq(i32 noundef %61, ptr noundef nonnull %call7.i.i) #12
  br label %err_req_irq

err_req_irq:                                      ; preds = %err_cpumask, %do.end28
  %err.1 = phi i32 [ %call.i115, %do.end28 ], [ %err.0, %err_cpumask ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %62 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_req_irq, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %62, %err_req_irq ], [ %call7.i.i, %if.end47.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_int_handler(i32 noundef %irq, ptr noundef %nh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_call_chain(ptr noundef %nh, i32 noundef 0, ptr noundef null) #12
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_attach_nb(ptr noundef %irq, ptr noundef %nb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 3
  %0 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool.i, align 4
  %lock.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.rhs.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %entry
  %3 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pool.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %4, i32 0, i32 2, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !73

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 4
  %5 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool24.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool24.not.i.i, label %land.rhs32.i.i, label %if.end80.i.i

land.rhs32.i.i:                                   ; preds = %if.end.i.i
  %.b87.i.i = load i1, ptr @mlx5_irq_get_locked.__already_done, align 1
  br i1 %.b87.i.i, label %cleanup.critedge, label %if.then43.i.i, !prof !74

if.then43.i.i:                                    ; preds = %land.rhs32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_irq_get_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #12
  %7 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool.i, align 4
  %lock2.i.c11 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %8, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock2.i.c11) #12
  br label %cleanup

if.end80.i.i:                                     ; preds = %if.end.i.i
  %inc.i.i = add i32 %6, 1
  %9 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  %10 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool.i, align 4
  %lock2.i.c12 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %11, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock2.i.c12) #12
  %call1 = tail call i32 @atomic_notifier_chain_register(ptr noundef %irq, ptr noundef %nb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end80.i.i.cleanup_crit_edge, label %if.then3

if.end80.i.i.cleanup_crit_edge:                   ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @mlx5_irq_put(ptr noundef %irq)
  br label %cleanup

cleanup.critedge:                                 ; preds = %land.rhs32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool.i, align 4
  %lock2.i.c = getelementptr inbounds %struct.mlx5_irq_pool, ptr %13, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock2.i.c) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then3, %if.end80.i.i.cleanup_crit_edge, %if.then43.i.i
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end80.i.i.cleanup_crit_edge ], [ -2, %cleanup.critedge ], [ -2, %if.then43.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_detach_nb(ptr noundef %irq, ptr noundef %nb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %irq, ptr noundef %nb) #12
  %call1 = tail call i32 @mlx5_irq_put(ptr noundef %irq)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_irq_get_affinity_mask(ptr nocapture noundef readonly %irq) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 1
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mask, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_irq_get_index(ptr nocapture noundef readonly %irq) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.mlx5_irq, ptr %irq, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_irq_pool_get(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 2
  br i1 %cmp.i.i, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %retval.0.in.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 8
  br label %cond.false

if.end:                                           ; preds = %entry
  %parent_mdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 42
  %3 = ptrtoint ptr %parent_mdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_mdev.i, align 8
  %retval.0.in.i7 = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %retval.0.in.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.i8 = load ptr, ptr %retval.0.in.i7, align 8
  %sf_comp_pool.i = getelementptr inbounds %struct.mlx5_irq_table, ptr %retval.0.i8, i32 0, i32 2
  %6 = ptrtoint ptr %sf_comp_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sf_comp_pool.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cond.false_crit_edge, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %if.end.cond.false_crit_edge, %if.end.thread
  %retval.0.i914 = phi ptr [ %retval.0.i, %if.end.thread ], [ %retval.0.i8, %if.end.cond.false_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i914 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i914, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.false ], [ %7, %if.end.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_irq_table_get(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parent_mdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 42
  %2 = ptrtoint ptr %parent_mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_mdev, align 8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %.pn = phi ptr [ %3, %if.then ], [ %dev, %entry.return_crit_edge ]
  %retval.0.in = getelementptr inbounds %struct.mlx5_core_dev, ptr %.pn, i32 0, i32 17
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load ptr, ptr %retval.0.in, align 8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ctrl_irq_release(ptr noundef %ctrl_irq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irqn.i = getelementptr inbounds %struct.mlx5_irq, ptr %ctrl_irq, i32 0, i32 6
  %0 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqn.i, align 4
  tail call void @synchronize_irq(i32 noundef %1) #12
  %call.i = tail call i32 @mlx5_irq_put(ptr noundef %ctrl_irq) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ctrl_irq_request(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  %req_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i.i = icmp eq i32 %1, 2
  br i1 %cmp.i.i.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %retval.0.in.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 8
  br label %cond.false.i

if.end.i:                                         ; preds = %entry
  %parent_mdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 42
  %3 = ptrtoint ptr %parent_mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_mdev.i.i, align 8
  %retval.0.in.i7.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %retval.0.in.i7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.i8.i = load ptr, ptr %retval.0.in.i7.i, align 8
  %sf_ctrl_pool.i.i = getelementptr inbounds %struct.mlx5_irq_table, ptr %retval.0.i8.i, i32 0, i32 1
  %6 = ptrtoint ptr %sf_ctrl_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sf_ctrl_pool.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.cond.false.i_crit_edge, label %if.end.i.ctrl_irq_pool_get.exit_crit_edge

if.end.i.ctrl_irq_pool_get.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ctrl_irq_pool_get.exit

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

cond.false.i:                                     ; preds = %if.end.i.cond.false.i_crit_edge, %if.end.thread.i
  %retval.0.i914.i = phi ptr [ %retval.0.i.i, %if.end.thread.i ], [ %retval.0.i8.i, %if.end.i.cond.false.i_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i914.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i914.i, align 4
  br label %ctrl_irq_pool_get.exit

ctrl_irq_pool_get.exit:                           ; preds = %cond.false.i, %if.end.i.ctrl_irq_pool_get.exit_crit_edge
  %cond.i = phi ptr [ %9, %cond.false.i ], [ %7, %if.end.i.ctrl_irq_pool_get.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_mask) #12
  %10 = ptrtoint ptr %req_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %req_mask, align 4, !annotation !75
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %req_mask, i32 noundef 3264) #12
  br i1 %call1, label %if.end, label %ctrl_irq_pool_get.exit.cleanup_crit_edge

ctrl_irq_pool_get.exit.cleanup_crit_edge:         ; preds = %ctrl_irq_pool_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %ctrl_irq_pool_get.exit
  %11 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %13, 31
  %14 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %14, 536870908
  %15 = call ptr @memcpy(ptr %12, ptr @__cpu_online_mask, i32 %mul.i.i)
  %call.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.17, ptr noundef %cond.i, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i19 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i19, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %xa_num_irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %cond.i, i32 0, i32 1
  %16 = ptrtoint ptr %xa_num_irqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xa_num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then5, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.then4
  %18 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i20 = add i32 %20, 31
  %21 = lshr i32 %sub.i.i20, 3
  %mul.i.i21 = and i32 %21, 536870908
  %22 = call ptr @memset(ptr %19, i32 0, i32 %mul.i.i21)
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %call.i22 = call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %23) #12
  %24 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call.i22)
  %cmp.not.i.i.i = icmp ugt i32 %26, %call.i22
  br i1 %cmp.not.i.i.i, label %if.then5.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then5.cpumask_set_cpu.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then5
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !74

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then5.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %call.i22, ptr noundef %25) #12
  br label %if.end7

if.end7:                                          ; preds = %cpumask_set_cpu.exit, %if.then4.if.end7_crit_edge
  %27 = ptrtoint ptr %xa_num_irqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xa_num_irqs, align 4
  %29 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req_mask, align 4
  %call10 = call fastcc ptr @irq_pool_request_vector(ptr noundef %cond.i, i32 noundef %28, ptr noundef %30)
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req_mask, align 4
  %call11 = call ptr @mlx5_irq_affinity_request(ptr noundef %cond.i, ptr noundef %32) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end7
  %irq.0 = phi ptr [ %call11, %if.else ], [ %call10, %if.end7 ]
  %33 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req_mask, align 4
  call void @free_cpumask_var(ptr noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %ctrl_irq_pool_get.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %irq.0, %if.end12 ], [ inttoptr (i32 -12 to ptr), %ctrl_irq_pool_get.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_mask) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @irq_pool_request_vector(ptr noundef %pool, i32 noundef %vecidx, ptr noundef %affinity) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 3
  %call = tail call ptr @xa_load(ptr noundef %irqs, i32 noundef %vecidx) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %pool.i = getelementptr inbounds %struct.mlx5_irq, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pool.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %2, i32 0, i32 2, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !73

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.mlx5_irq, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool24.not.i = icmp eq i32 %4, 0
  br i1 %tobool24.not.i, label %land.rhs32.i, label %if.end80.i

land.rhs32.i:                                     ; preds = %if.end.i
  %.b87.i = load i1, ptr @mlx5_irq_get_locked.__already_done, align 1
  br i1 %.b87.i, label %land.rhs32.i.unlock_crit_edge, label %if.then43.i, !prof !74

land.rhs32.i.unlock_crit_edge:                    ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then43.i:                                      ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_irq_get_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #12
  br label %unlock

if.end80.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %4, 1
  %5 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %refcount.i, align 4
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call ptr @mlx5_irq_alloc(ptr noundef %pool, i32 noundef %vecidx, ptr noundef %affinity)
  br label %unlock

unlock:                                           ; preds = %if.end, %if.end80.i, %if.then43.i, %land.rhs32.i.unlock_crit_edge
  %irq.0 = phi ptr [ %call2, %if.end ], [ %call, %land.rhs32.i.unlock_crit_edge ], [ %call, %if.then43.i ], [ %call, %if.end80.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret ptr %irq.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_irq_affinity_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_irq_request(ptr nocapture noundef readonly %dev, i16 noundef zeroext %vecidx, ptr noundef %affinity) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 2
  br i1 %cmp.i.i, label %if.then.i, label %entry.mlx5_irq_table_get.exit_crit_edge

entry.mlx5_irq_table_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_irq_table_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parent_mdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 42
  %2 = ptrtoint ptr %parent_mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_mdev.i, align 8
  br label %mlx5_irq_table_get.exit

mlx5_irq_table_get.exit:                          ; preds = %if.then.i, %entry.mlx5_irq_table_get.exit_crit_edge
  %.pn.i = phi ptr [ %3, %if.then.i ], [ %dev, %entry.mlx5_irq_table_get.exit_crit_edge ]
  %retval.0.in.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %.pn.i, i32 0, i32 17
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i17 = load ptr, ptr %retval.0.in.i, align 8
  %5 = ptrtoint ptr %retval.0.i17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %retval.0.i17, align 4
  %conv = zext i16 %vecidx to i32
  %call1 = tail call fastcc ptr @irq_pool_request_vector(ptr noundef %6, i32 noundef %conv, ptr noundef %affinity)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_irq_table_get.exit.cleanup_crit_edge, label %do.body

mlx5_irq_table_get.exit.cleanup_crit_edge:        ; preds = %mlx5_irq_table_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %mlx5_irq_table_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_irq_request.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_irq_request, %if.then6)) #12
          to label %cleanup [label %if.then6], !srcloc !76

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %irqn = getelementptr inbounds %struct.mlx5_irq, ptr %call1, i32 0, i32 6
  %15 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irqn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %refcount = getelementptr inbounds %struct.mlx5_irq, ptr %call1, i32 0, i32 4
  %18 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount, align 4
  %div = sdiv i32 %19, 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_irq_request.__UNIQUE_ID_ddebug509, ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 435, i32 noundef %14, i32 noundef %16, i32 noundef %17, ptr noundef %affinity, i32 noundef %div) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body, %mlx5_irq_table_get.exit.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_irqs_release_vectors(ptr nocapture noundef readonly %irqs, i32 noundef %nirqs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nirqs)
  %cmp6.i = icmp sgt i32 %nirqs, 0
  br i1 %cmp6.i, label %entry.for.body.i_crit_edge, label %entry.mlx5_irqs_release.exit_crit_edge

entry.mlx5_irqs_release.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_irqs_release.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %irqs, i32 %i.07.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %irqn.i = getelementptr inbounds %struct.mlx5_irq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqn.i, align 4
  tail call void @synchronize_irq(i32 noundef %3) #12
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @mlx5_irq_put(ptr noundef %5) #12
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nirqs
  br i1 %exitcond.not.i, label %for.body.i.mlx5_irqs_release.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.mlx5_irqs_release.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_irqs_release.exit

mlx5_irqs_release.exit:                           ; preds = %for.body.i.mlx5_irqs_release.exit_crit_edge, %entry.mlx5_irqs_release.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irqs_request_vectors(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cpus, i32 noundef %nirqs, ptr nocapture noundef writeonly %irqs) local_unnamed_addr #2 align 64 {
entry:
  %req_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_mask) #12
  %0 = ptrtoint ptr %req_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req_mask, align 4, !annotation !75
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %req_mask, i32 noundef 3264) #12
  br i1 %call, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nirqs)
  %cmp19 = icmp sgt i32 %nirqs, 0
  br i1 %cmp19, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req_mask, align 4
  call void @free_cpumask_var(ptr noundef %2) #12
  br label %cond.false

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %coredev_type.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %parent_mdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 42
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %cpus, i32 %i.020
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not.i.i.i = icmp ugt i32 %7, %conv
  br i1 %cmp.not.i.i.i, label %for.body.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

for.body.cpumask_set_cpu.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %for.body
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !74

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %for.body.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %conv, ptr noundef %6) #12
  %8 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_mask, align 4
  %10 = ptrtoint ptr %coredev_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coredev_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i.i, label %if.then.i.i, label %cpumask_set_cpu.exit.mlx5_irq_table_get.exit.i_crit_edge

cpumask_set_cpu.exit.mlx5_irq_table_get.exit.i_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_irq_table_get.exit.i

if.then.i.i:                                      ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %parent_mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_mdev.i.i, align 8
  br label %mlx5_irq_table_get.exit.i

mlx5_irq_table_get.exit.i:                        ; preds = %if.then.i.i, %cpumask_set_cpu.exit.mlx5_irq_table_get.exit.i_crit_edge
  %.pn.i.i = phi ptr [ %13, %if.then.i.i ], [ %dev, %cpumask_set_cpu.exit.mlx5_irq_table_get.exit.i_crit_edge ]
  %retval.0.in.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %.pn.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i17.i = load ptr, ptr %retval.0.in.i.i, align 8
  %15 = ptrtoint ptr %retval.0.i17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i17.i, align 4
  %conv.i = and i32 %i.020, 65535
  %call1.i = call fastcc ptr @irq_pool_request_vector(ptr noundef %16, i32 noundef %conv.i, ptr noundef %9) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_irq_table_get.exit.i.for.end_crit_edge, label %do.body.i

mlx5_irq_table_get.exit.i.for.end_crit_edge:      ; preds = %mlx5_irq_table_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.i:                                        ; preds = %mlx5_irq_table_get.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_irq_request.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_irqs_request_vectors, %mlx5_irq_request.exit.thread18)) #12
          to label %if.end5 [label %mlx5_irq_request.exit.thread18], !srcloc !76

mlx5_irq_request.exit.thread18:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  %irqn.i = getelementptr inbounds %struct.mlx5_irq, ptr %call1.i, i32 0, i32 6
  %25 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irqn.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %refcount.i = getelementptr inbounds %struct.mlx5_irq, ptr %call1.i, i32 0, i32 4
  %28 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refcount.i, align 4
  %div.i = sdiv i32 %29, 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_irq_request.__UNIQUE_ID_ddebug509, ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 435, i32 noundef %24, i32 noundef %26, i32 noundef %27, ptr noundef %9, i32 noundef %div.i) #12
  br label %if.end5

if.end5:                                          ; preds = %mlx5_irq_request.exit.thread18, %do.body.i
  %30 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %32, 31
  %33 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %33, 536870908
  %34 = call ptr @memset(ptr %31, i32 0, i32 %mul.i.i)
  %arrayidx6 = getelementptr ptr, ptr %irqs, i32 %i.020
  %35 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call1.i, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %nirqs
  br i1 %exitcond.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %mlx5_irq_table_get.exit.i.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %nirqs, %if.end5.for.end_crit_edge ], [ %i.020, %mlx5_irq_table_get.exit.i.for.end_crit_edge ]
  %36 = ptrtoint ptr %req_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %req_mask, align 4
  call void @free_cpumask_var(ptr noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool.not, label %for.end.cond.false_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.cond.false_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %for.end.cond.false_crit_edge, %for.end.thread
  %irq.127 = phi ptr [ inttoptr (i32 -1 to ptr), %for.end.thread ], [ %call1.i, %for.end.cond.false_crit_edge ]
  %38 = ptrtoint ptr %irq.127 to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %38, %cond.false ], [ %i.0.lcssa, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_mask) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_table_init(ptr nocapture noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 12, i32 noundef 3520, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %priv = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_irq_table_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @kvfree(ptr noundef %3) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_irq_table_get_num_comp(ptr nocapture noundef readonly %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %xa_num_irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xa_num_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xa_num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %min = getelementptr inbounds %struct.mlx5_irq_pool, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min, align 4
  %sub = sub i32 %3, %5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_table_create(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 35
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr14 = getelementptr i32, ptr %1, i32 7
  %4 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr14, align 4
  %and16 = and i32 %5, 15
  %shl = shl nuw nsw i32 1, %and16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %shl, %cond.false ], [ %and, %entry.cond.end_crit_edge ]
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %add.ptr22 = getelementptr i32, ptr %1, i32 13
  %8 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr22, align 4
  %and24 = and i32 %9, 255
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = mul i32 %10, %and24
  %add = add i32 %mul, 1
  %11 = tail call i32 @llvm.smin.i32(i32 %add, i32 %cond)
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps, align 8
  %add.ptr.i.i = getelementptr i32, ptr %13, i32 52
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i = icmp slt i32 %15, 0
  br i1 %tobool.i.i, label %if.end.i, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i32, ptr %13, i32 50
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %tobool.not.i = icmp ult i32 %17, 65536
  %shr16.i = lshr i32 %15, 24
  %and17.i = and i32 %shr16.i, 31
  %shl.i = shl nuw i32 1, %and17.i
  %conv18.i = trunc i32 %shl.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18.i)
  %tobool31.not = icmp eq i16 %conv18.i, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool31.not, i1 false
  br i1 %or.cond, label %if.end.i.if.end37_crit_edge, label %if.end.i86

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end.i86:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %19)
  %tobool.not.i85 = icmp ult i32 %19, 65536
  %shr.i87 = lshr i32 %19, 16
  %retval.0.i95.v = select i1 %tobool.not.i85, i32 %shl.i, i32 %shr.i87
  %conv = shl i32 %retval.0.i95.v, 3
  %mul34 = and i32 %conv, 524280
  %add35 = add nsw i32 %11, 8
  %add36 = add nsw i32 %add35, %mul34
  br label %if.end37

if.end37:                                         ; preds = %if.end.i86, %if.end.i.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %total_vec.0 = phi i32 [ %add36, %if.end.i86 ], [ %11, %if.end.if.end37_crit_edge ], [ %11, %if.end.i.if.end37_crit_edge ]
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %21, i32 noundef 1, i32 noundef %total_vec.0, i32 noundef 4, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp slt i32 %call.i, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %22 = tail call i32 @llvm.smin.i32(i32 %11, i32 %call.i)
  %sub = sub i32 %call.i, %22
  %call50 = tail call fastcc i32 @irq_pools_init(ptr noundef %dev, i32 noundef %sub, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end42.cleanup_crit_edge, label %if.then52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %24) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.cleanup_crit_edge ], [ %call.i, %if.end37.cleanup_crit_edge ], [ %call50, %if.then52 ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irq_pools_init(ptr noundef %dev, i32 noundef %sf_vec, i32 noundef %pf_vec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc ptr @irq_pool_alloc(ptr noundef %dev, i32 noundef 0, i32 noundef %pf_vec, ptr noundef null, i32 noundef 1, i32 noundef 8)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 52
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.i = icmp slt i32 %7, 0
  br i1 %tobool.i.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i32, ptr %5, i32 50
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool.not.i = icmp ult i32 %9, 65536
  br i1 %tobool.not.i, label %mlx5_sf_max_functions.exit, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

mlx5_sf_max_functions.exit:                       ; preds = %if.end.i
  %shr16.i = lshr i32 %7, 24
  %and17.i = and i32 %shr16.i, 31
  %shl.i = shl nuw i32 1, %and17.i
  %conv18.i = trunc i32 %shl.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18.i)
  %tobool.not = icmp eq i16 %conv18.i, 0
  br i1 %tobool.not, label %mlx5_sf_max_functions.exit.cleanup_crit_edge, label %mlx5_sf_max_functions.exit.if.end7_crit_edge

mlx5_sf_max_functions.exit.if.end7_crit_edge:     ; preds = %mlx5_sf_max_functions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

mlx5_sf_max_functions.exit.cleanup_crit_edge:     ; preds = %mlx5_sf_max_functions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %mlx5_sf_max_functions.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sf_vec)
  %cmp = icmp slt i32 %sf_vec, 2
  br i1 %cmp, label %do.body, label %if.end.i98

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq_pools_init.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_pools_init, %if.then13)) #12
          to label %cleanup [label %if.then13], !srcloc !76

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq_pools_init.__UNIQUE_ID_ddebug511, ptr noundef %11, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 541, i32 noundef %17) #12
  br label %cleanup

if.end.i98:                                       ; preds = %if.end7
  %sub = add nuw i32 %sf_vec, 7
  %div = sdiv i32 %sub, 8
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %19)
  %tobool.not.i97 = icmp ult i32 %19, 65536
  %shr.i99 = lshr i32 %19, 16
  %shr16.i102 = lshr i32 %7, 24
  %and17.i103 = and i32 %shr16.i102, 31
  %shl.i104 = shl nuw i32 1, %and17.i103
  %retval.0.i107.v = select i1 %tobool.not.i97, i32 %shl.i104, i32 %shr.i99
  %conv = and i32 %retval.0.i107.v, 65535
  %sub19 = add nuw nsw i32 %conv, 63
  %div2091 = lshr i32 %sub19, 6
  %20 = tail call i32 @llvm.smin.i32(i32 %div, i32 %div2091)
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 8)
  %call31 = tail call fastcc ptr @irq_pool_alloc(ptr noundef %dev, i32 noundef %pf_vec, i32 noundef %21, ptr noundef nonnull @.str.25, i32 noundef 4, i32 noundef -1)
  %sf_ctrl_pool = getelementptr inbounds %struct.mlx5_irq_table, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %sf_ctrl_pool to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %sf_ctrl_pool, align 4
  %cmp.i109 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call31 to i32
  br label %err_pf

if.end37:                                         ; preds = %if.end.i98
  %add38 = add i32 %21, %pf_vec
  %sub39 = sub i32 %sf_vec, %21
  %call40 = tail call fastcc ptr @irq_pool_alloc(ptr noundef %dev, i32 noundef %add38, i32 noundef %sub39, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 8)
  %sf_comp_pool = getelementptr inbounds %struct.mlx5_irq_table, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %sf_comp_pool to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call40, ptr %sf_comp_pool, align 4
  %cmp.i110 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %call40 to i32
  br label %err_sf_ctrl

if.end46:                                         ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 2) #12
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %if.end46.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !73

if.end46.kcalloc.exit_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %29 = extractvalue { i32, i1 } %27, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #17
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.end46.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.end46.kcalloc.exit_crit_edge ]
  %30 = ptrtoint ptr %sf_comp_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sf_comp_pool, align 4
  %irqs_per_cpu = getelementptr inbounds %struct.mlx5_irq_pool, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %irqs_per_cpu to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.i, ptr %irqs_per_cpu, align 4
  %33 = load ptr, ptr %sf_comp_pool, align 4
  %irqs_per_cpu50 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %irqs_per_cpu50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irqs_per_cpu50, align 4
  %tobool51.not = icmp eq ptr %35, null
  br i1 %tobool51.not, label %if.then52, label %kcalloc.exit.cleanup_crit_edge

kcalloc.exit.cleanup_crit_edge:                   ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52:                                        ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @irq_pool_free(ptr noundef %33)
  br label %err_sf_ctrl

err_sf_ctrl:                                      ; preds = %if.then52, %if.then43
  %err.0 = phi i32 [ %25, %if.then43 ], [ -12, %if.then52 ]
  %36 = ptrtoint ptr %sf_ctrl_pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sf_ctrl_pool, align 4
  tail call fastcc void @irq_pool_free(ptr noundef %37)
  br label %err_pf

err_pf:                                           ; preds = %err_sf_ctrl, %if.then34
  %err.1 = phi i32 [ %23, %if.then34 ], [ %err.0, %err_sf_ctrl ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  tail call fastcc void @irq_pool_free(ptr noundef %39)
  br label %cleanup

cleanup:                                          ; preds = %err_pf, %kcalloc.exit.cleanup_crit_edge, %if.then13, %do.body, %mlx5_sf_max_functions.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %err.1, %err_pf ], [ 0, %mlx5_sf_max_functions.exit.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %kcalloc.exit.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_irq_table_destroy(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sf_ctrl_pool.i = getelementptr inbounds %struct.mlx5_irq_table, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sf_ctrl_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sf_ctrl_pool.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.irq_pools_destroy.exit_crit_edge, label %if.then.i

if.end.irq_pools_destroy.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_pools_destroy.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sf_comp_pool.i = getelementptr inbounds %struct.mlx5_irq_table, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sf_comp_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sf_comp_pool.i, align 4
  tail call fastcc void @irq_pool_free(ptr noundef %7) #12
  %8 = ptrtoint ptr %sf_ctrl_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sf_ctrl_pool.i, align 4
  tail call fastcc void @irq_pool_free(ptr noundef %9) #12
  br label %irq_pools_destroy.exit

irq_pools_destroy.exit:                           ; preds = %if.then.i, %if.end.irq_pools_destroy.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call fastcc void @irq_pool_free(ptr noundef %11) #12
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %irq_pools_destroy.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_irq_table_get_sfs_vec(ptr nocapture noundef readonly %table) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_comp_pool = getelementptr inbounds %struct.mlx5_irq_table, ptr %table, i32 0, i32 2
  %0 = ptrtoint ptr %sf_comp_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_comp_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = ptrtoint ptr %sf_comp_pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sf_comp_pool, align 4
  %xa_num_irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %xa_num_irqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xa_num_irqs, align 4
  %min = getelementptr inbounds %struct.mlx5_irq_pool, ptr %4, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min, align 4
  %sub = add i32 %6, 1
  %add = sub i32 %sub, %8
  %9 = tail call i32 @llvm.smin.i32(i32 %2, i32 %add)
  br label %return

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  %xa_num_irqs.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %xa_num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xa_num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.else.return_crit_edge, label %if.end.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %min.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %11, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min.i, align 4
  %sub.i = sub i32 %13, %15
  br label %return

return:                                           ; preds = %if.end.i, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %sub.i, %if.end.i ], [ 1, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @irq_pool_alloc(ptr noundef %dev, i32 noundef %start, i32 noundef %size, ptr noundef %name, i32 noundef %min_threshold, i32 noundef %max_threshold) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 196, i32 noundef 3520, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %lock = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @irq_pool_alloc.__key) #12
  %irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %irqs, ptr noundef nonnull @.str.31, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 67108868, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i, align 4
  %xa_num_irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 1
  %min = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %start, ptr %min, align 4
  %add = add i32 %start, -1
  %sub = add i32 %add, %size
  %4 = ptrtoint ptr %xa_num_irqs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %xa_num_irqs, align 4
  %tobool4.not = icmp eq ptr %name, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i.i, i32 noundef 28, ptr noundef nonnull @.str.28, ptr noundef nonnull %name)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %mul = shl i32 %min_threshold, 1
  %min_threshold9 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %min_threshold9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %min_threshold9, align 4
  %mul10 = shl i32 %max_threshold, 1
  %max_threshold11 = getelementptr inbounds %struct.mlx5_irq_pool, ptr %call.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %max_threshold11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul10, ptr %max_threshold11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq_pool_alloc.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_pool_alloc, %if.then17)) #12
          to label %cleanup [label %if.then17], !srcloc !76

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq_pool_alloc.__UNIQUE_ID_ddebug510, ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 503, i32 noundef %14, ptr noundef %name, i32 noundef %size, i32 noundef %start) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.then17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i.i, %if.end8 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_pool_free(ptr noundef %pool) unnamed_addr #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  %irqs = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 3
  %call = call ptr @xa_find(ptr noundef %irqs, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #12
  %tobool.not10 = icmp eq ptr %call, null
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %irq.011 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %pool1.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq.011, i32 0, i32 3
  %1 = ptrtoint ptr %pool1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pool1.i, align 4
  %irqs.i = getelementptr inbounds %struct.mlx5_irq_pool, ptr %2, i32 0, i32 3
  %index.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq.011, i32 0, i32 5
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i, align 4
  %call.i = call ptr @xa_erase(ptr noundef %irqs.i, i32 noundef %4) #12
  %irqn.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq.011, i32 0, i32 6
  %5 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqn.i, align 4
  %call.i.i = call i32 @__irq_apply_affinity_hint(i32 noundef %6, ptr noundef null, i1 noundef zeroext false) #12
  %mask.i = getelementptr inbounds %struct.mlx5_irq, ptr %irq.011, i32 0, i32 1
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask.i, align 4
  call void @free_cpumask_var(ptr noundef %8) #12
  %9 = ptrtoint ptr %irqn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irqn.i, align 4
  %call4.i = call ptr @free_irq(i32 noundef %10, ptr noundef nonnull %irq.011) #12
  call void @kfree(ptr noundef nonnull %irq.011) #12
  %call2 = call ptr @xa_find_after(ptr noundef %irqs, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @xa_destroy(ptr noundef %irqs) #12
  %lock = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 2
  call void @mutex_destroy(ptr noundef %lock) #12
  %irqs_per_cpu = getelementptr inbounds %struct.mlx5_irq_pool, ptr %pool, i32 0, i32 6
  %11 = ptrtoint ptr %irqs_per_cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irqs_per_cpu, align 4
  call void @kfree(ptr noundef %12) #12
  call void @kvfree(ptr noundef %pool) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !47, !49, !51, !53, !54, !56, !58, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 159, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 166, i32 6}
!4 = !{ptr @mlx5_irq_alloc.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 225, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 227, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 231, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlx5_irq_alloc._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5_irq_alloc._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 235, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlx5_irq_alloc._entry.7, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx5_irq_alloc._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 248, i32 3}
!23 = !{ptr @mlx5_irq_alloc._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_irq_alloc._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 433, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlx5_irq_request.__UNIQUE_ID_ddebug509, !26, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.h", i32 30, i32 18}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 197, i32 37}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 202, i32 37}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 206, i32 36}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 190, i32 36}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 541, i32 3}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @irq_pools_init.__UNIQUE_ID_ddebug511, !44, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 552, i32 11}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 561, i32 33}
!51 = !{ptr @irq_pool_alloc.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 493, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 499, i32 5}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c", i32 502, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @irq_pool_alloc.__UNIQUE_ID_ddebug510, !57, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!60 = !{ptr @xa_init_flags.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"auto-init"}
!76 = !{i64 2148733495, i64 2148733500, i64 2148733513, i64 2148733557, i64 2148733591, i64 2148733612}
