; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/health.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/health.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.devlink_health_reporter_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.mlx5_fw_reporter_ctx = type { i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }

@mlx5_error_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:%d:(pid %d): start\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_error_sw_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/health.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_error_sw_reset._entry_ptr = internal global ptr @mlx5_error_sw_reset._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5_error_sw_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NIC IFC still %d after %lums.\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_error_sw_reset._entry_ptr.7 = internal global ptr @mlx5_error_sw_reset._entry.5, section ".printk_index", align 4
@mlx5_error_sw_reset._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 277, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%d:(pid %d): end\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5_error_sw_reset._entry_ptr.10 = internal global ptr @mlx5_error_sw_reset._entry.8, section ".printk_index", align 4
@mlx5_trigger_health_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 756, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): new health works are not permitted at this stage\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_trigger_health_work\00", [39 x i8] zeroinitializer }, align 32
@mlx5_trigger_health_work._entry_ptr = internal global ptr @mlx5_trigger_health_work._entry, section ".printk_index", align 4
@mlx5_start_health_poll.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&health->timer)\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx5_health\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mlx5_health_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&health->wq_lock\00", [47 x i8] zeroinitializer }, align 32
@mlx5_health_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&health->fatal_report_work)\00", [50 x i8] zeroinitializer }, align 32
@mlx5_health_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&health->report_work)\00", [56 x i8] zeroinitializer }, align 32
@mlx5_health_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"(work_completion)(&(&health->update_fw_log_ts_work)->work)\00", [37 x i8] zeroinitializer }, align 32
@mlx5_health_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"&(&health->update_fw_log_ts_work)->timer\00", [55 x i8] zeroinitializer }, align 32
@sensor_fw_synd_rfr.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sensor_fw_synd_rfr\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): FW requests reset, synd: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@lock_sem_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 167, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed to lock SW reset semaphore\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lock_sem_sw_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lock_sem_sw_reset._entry_ptr = internal global ptr @lock_sem_sw_reset._entry, section ".printk_index", align 4
@reset_fw_if_needed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 193, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Not issuing FW reset. Either it's already done or won't help.\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset_fw_if_needed\00", [45 x i8] zeroinitializer }, align 32
@reset_fw_if_needed._entry_ptr = internal global ptr @reset_fw_if_needed._entry, section ".printk_index", align 4
@reset_fw_if_needed._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 197, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:(pid %d): Issuing FW Reset\0A\00", [62 x i8] zeroinitializer }, align 32
@reset_fw_if_needed._entry_ptr.35 = internal global ptr @reset_fw_if_needed._entry.33, section ".printk_index", align 4
@poll_health._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Fatal error %u detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"poll_health\00", [20 x i8] zeroinitializer }, align 32
@poll_health._entry_ptr = internal global ptr @poll_health._entry, section ".printk_index", align 4
@poll_health._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): device's health compromised - reached miss count\0A\00", [62 x i8] zeroinitializer }, align 32
@poll_health._entry_ptr.40 = internal global ptr @poll_health._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): PCI slot is unavailable\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.print_health_info = private unnamed_addr constant [18 x i8] c"print_health_info\00", align 1
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Health issue observed, %s, severity(%d) %s:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): assert_var[%d] 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d): assert_exit_ptr 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): assert_callra 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:(pid %d): fw_ver %d.%d.%d\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d:(pid %d): time %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d:(pid %d): hw_id 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%d:(pid %d): rfr %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:(pid %d): severity %d (%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:(pid %d): irisc_index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d:(pid %d): synd 0x%x: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d:(pid %d): ext_synd 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): raw fw_ver 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_printk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Level %d is out of range, set to default level\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s: %pV\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware internal error\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irisc not responding\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unrecoverable hardware error\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware CRC error\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ICM fetch PCI error\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HW fatal error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"async EQ buffer overrun\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EQ error\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid EQ referenced\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FFSER error\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"High temperature\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unrecognized error\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EMERGENCY\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALERT\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CRITICAL\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WARNING\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOTICE\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INFO\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@mlx5_fw_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.84, ptr null, ptr @mlx5_fw_reporter_dump, ptr @mlx5_fw_reporter_diagnose, ptr null }, [44 x i8] zeroinitializer }, align 32
@mlx5_fw_reporters_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 713, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): Failed to create fw reporter, err = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fw_reporters_create\00", [39 x i8] zeroinitializer }, align 32
@mlx5_fw_reporters_create._entry_ptr = internal global ptr @mlx5_fw_reporters_create._entry, section ".printk_index", align 4
@mlx5_fw_fatal_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.101, ptr @mlx5_fw_fatal_reporter_recover, ptr @mlx5_fw_fatal_reporter_dump, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mlx5_fw_reporters_create._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 722, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Failed to create fw fatal reporter, err = %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fw_reporters_create._entry_ptr.83 = internal global ptr @mlx5_fw_reporters_create._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fw\00", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"syndrome\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_miss_counter\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"health buffer\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assert_var\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assert_exit_ptr\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"assert_callra\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"time\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hw_id\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rfr\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"severity\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irisc_index\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"synd\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_synd\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raw_fw_ver\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Syndrome\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Description\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_fatal\00", [23 x i8] zeroinitializer }, align 32
@mlx5_health_try_recover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 336, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): handling bad device here\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_health_try_recover\00", [40 x i8] zeroinitializer }, align 32
@mlx5_health_try_recover._entry_ptr = internal global ptr @mlx5_health_try_recover._entry, section ".printk_index", align 4
@mlx5_health_try_recover._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): health recovery flow aborted, PCI reads still not working\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_health_try_recover._entry_ptr.106 = internal global ptr @mlx5_health_try_recover._entry.104, section ".printk_index", align 4
@mlx5_health_try_recover._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): starting health recovery flow\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_health_try_recover._entry_ptr.109 = internal global ptr @mlx5_health_try_recover._entry.107, section ".printk_index", align 4
@mlx5_health_try_recover._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.2, i32 344, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d): health recovery failed\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx5_health_try_recover._entry_ptr.112 = internal global ptr @mlx5_health_try_recover._entry.110, section ".printk_index", align 4
@mlx5_health_try_recover._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.103, ptr @.str.2, i32 348, ptr @.str.115, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"health recovery succeeded\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_health_try_recover._entry_ptr.116 = internal global ptr @mlx5_health_try_recover._entry.113, section ".printk_index", align 4
@mlx5_handle_bad_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 289, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Expected to see disabled NIC but it is full driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_handle_bad_state\00", [42 x i8] zeroinitializer }, align 32
@mlx5_handle_bad_state._entry_ptr = internal global ptr @mlx5_handle_bad_state._entry, section ".printk_index", align 4
@mlx5_handle_bad_state._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 293, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): starting teardown\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_handle_bad_state._entry_ptr.121 = internal global ptr @mlx5_handle_bad_state._entry.119, section ".printk_index", align 4
@mlx5_handle_bad_state._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 297, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Expected to see disabled NIC but it is no dram nic\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_handle_bad_state._entry_ptr.124 = internal global ptr @mlx5_handle_bad_state._entry.122, section ".printk_index", align 4
@mlx5_handle_bad_state._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 310, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): NIC SW reset in progress\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5_handle_bad_state._entry_ptr.127 = internal global ptr @mlx5_handle_bad_state._entry.125, section ".printk_index", align 4
@mlx5_handle_bad_state._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.118, ptr @.str.2, i32 315, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): Expected to see disabled NIC but it is has invalid value %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_handle_bad_state._entry_ptr.130 = internal global ptr @mlx5_handle_bad_state._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crdump_data\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_fw_fatal_reporter_err_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.132, ptr @.str.2, i32 679, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_fw_fatal_reporter_err_work\00", [32 x i8] zeroinitializer }, align 32
@mlx5_fw_fatal_reporter_err_work._entry_ptr = internal global ptr @mlx5_fw_fatal_reporter_err_work._entry, section ".printk_index", align 4
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FW fatal error reported\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fw_fatal_reporter_err_work._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.132, ptr @.str.2, i32 691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Driver is in error state. Unloading\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fw_fatal_reporter_err_work._entry_ptr.136 = internal global ptr @mlx5_fw_fatal_reporter_err_work._entry.134, section ".printk_index", align 4
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FW syndrom reported\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW miss counter reported\00", [39 x i8] zeroinitializer }, align 32
@switch.table.print_health_info = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.58, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [32 x i8] zeroinitializer }, align 32
@switch.table.print_health_info.139 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [32 x i8] zeroinitializer }, align 32
@switch.table.print_health_info.140 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.58, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [32 x i8] zeroinitializer }, align 32
@switch.table.print_health_info.141 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [32 x i8] zeroinitializer }, align 32
@switch.table.mlx5_fw_reporter_diagnose = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.58, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 3, i64 0, i64 1, i64 2, i64 7]
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 244, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 269, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 277, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 756, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 835, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 903, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 905, i32 15 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 909, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 910, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 911, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 912, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 122, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 167, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 193, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 197, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 800, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 816, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 424, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 430, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 434, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 437, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 438, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 439, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 441, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 442, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 443, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 444, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 445, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 446, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 448, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 449, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 106, i32 6 }
@___asan_gen_.325 = private unnamed_addr constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 114, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 356, i32 10 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 358, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 360, i32 10 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 362, i32 10 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 364, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 366, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 368, i32 10 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 370, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 372, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 374, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 376, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 378, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 386, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 388, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 390, i32 10 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 392, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 394, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 396, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 398, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 400, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant [21 x i8] c"mlx5_fw_reporter_ops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 614, i32 49 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 712, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"mlx5_fw_fatal_reporter_ops\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 696, i32 49 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 721, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 615, i32 11 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 481, i32 39 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 485, i32 40 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 505, i32 43 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 511, i32 47 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 523, i32 40 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 527, i32 40 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 531, i32 40 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 534, i32 40 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 538, i32 39 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 541, i32 39 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 544, i32 39 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 548, i32 39 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 551, i32 40 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 555, i32 40 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 464, i32 39 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 467, i32 44 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 697, i32 11 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 336, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 339, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 342, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 344, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 348, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 289, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 293, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 297, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 310, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 314, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 658, i32 43 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 679, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 685, i32 7 }
@___asan_gen_.543 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 691, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 605, i32 11 }
@___asan_gen_.552 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.553 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/health.c\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 610, i32 11 }
@___asan_gen_.555 = private unnamed_addr constant [31 x i8] c"switch.table.print_health_info\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [35 x i8] c"switch.table.print_health_info.139\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [35 x i8] c"switch.table.print_health_info.140\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [35 x i8] c"switch.table.print_health_info.141\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [39 x i8] c"switch.table.mlx5_fw_reporter_diagnose\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @lock_sem_sw_reset._entry, ptr @lock_sem_sw_reset._entry_ptr, ptr @mlx5_error_sw_reset._entry, ptr @mlx5_error_sw_reset._entry.5, ptr @mlx5_error_sw_reset._entry.8, ptr @mlx5_error_sw_reset._entry_ptr, ptr @mlx5_error_sw_reset._entry_ptr.10, ptr @mlx5_error_sw_reset._entry_ptr.7, ptr @mlx5_fw_fatal_reporter_err_work._entry, ptr @mlx5_fw_fatal_reporter_err_work._entry.134, ptr @mlx5_fw_fatal_reporter_err_work._entry_ptr, ptr @mlx5_fw_fatal_reporter_err_work._entry_ptr.136, ptr @mlx5_fw_reporters_create._entry, ptr @mlx5_fw_reporters_create._entry.81, ptr @mlx5_fw_reporters_create._entry_ptr, ptr @mlx5_fw_reporters_create._entry_ptr.83, ptr @mlx5_handle_bad_state._entry, ptr @mlx5_handle_bad_state._entry.119, ptr @mlx5_handle_bad_state._entry.122, ptr @mlx5_handle_bad_state._entry.125, ptr @mlx5_handle_bad_state._entry.128, ptr @mlx5_handle_bad_state._entry_ptr, ptr @mlx5_handle_bad_state._entry_ptr.121, ptr @mlx5_handle_bad_state._entry_ptr.124, ptr @mlx5_handle_bad_state._entry_ptr.127, ptr @mlx5_handle_bad_state._entry_ptr.130, ptr @mlx5_health_try_recover._entry, ptr @mlx5_health_try_recover._entry.104, ptr @mlx5_health_try_recover._entry.107, ptr @mlx5_health_try_recover._entry.110, ptr @mlx5_health_try_recover._entry.113, ptr @mlx5_health_try_recover._entry_ptr, ptr @mlx5_health_try_recover._entry_ptr.106, ptr @mlx5_health_try_recover._entry_ptr.109, ptr @mlx5_health_try_recover._entry_ptr.112, ptr @mlx5_health_try_recover._entry_ptr.116, ptr @mlx5_trigger_health_work._entry, ptr @mlx5_trigger_health_work._entry_ptr, ptr @poll_health._entry, ptr @poll_health._entry.38, ptr @poll_health._entry_ptr, ptr @poll_health._entry_ptr.40, ptr @reset_fw_if_needed._entry, ptr @reset_fw_if_needed._entry.33, ptr @reset_fw_if_needed._entry_ptr, ptr @reset_fw_if_needed._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @mlx5_start_health_poll.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mlx5_health_init.__key, ptr @.str.16, ptr @mlx5_health_init.__key.17, ptr @.str.18, ptr @mlx5_health_init.__key.19, ptr @.str.20, ptr @mlx5_health_init.__key.21, ptr @.str.22, ptr @mlx5_health_init.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @mlx5_fw_reporter_ops, ptr @.str.79, ptr @.str.80, ptr @mlx5_fw_fatal_reporter_ops, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @switch.table.print_health_info, ptr @switch.table.print_health_info.139, ptr @switch.table.print_health_info.140, ptr @switch.table.print_health_info.141, ptr @switch.table.mlx5_fw_reporter_diagnose], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_error_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_error_sw_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_error_sw_reset._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_trigger_health_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_start_health_poll.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_sem_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_fw_if_needed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_fw_if_needed._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_health._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_health._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reporters_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_fatal_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reporters_create._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_try_recover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_try_recover._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_try_recover._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_try_recover._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_health_try_recover._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_handle_bad_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_handle_bad_state._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_handle_bad_state._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_handle_bad_state._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_handle_bad_state._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_fatal_reporter_err_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_fatal_reporter_err_work._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_health_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_health_info.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_health_info.140 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_health_info.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_fw_reporter_diagnose to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mlx5_get_nic_state(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg, align 4
  %cmdq_addr_l_sz = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %shr = lshr i32 %2, 8
  %3 = trunc i32 %shr to i8
  %conv = and i8 %3, 7
  ret i8 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_set_nic_state(ptr nocapture noundef readonly %dev, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg, align 4
  %cmdq_addr_l_sz = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %and = and i32 %2, -4096
  %conv = zext i8 %state to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %and, %shl
  %3 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iseg, align 4
  %cmdq_addr_l_sz2 = getelementptr inbounds %struct.mlx5_init_seg, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmdq_addr_l_sz2, i32 %or) #11, !srcloc !270
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_health_check_fatal_sensors(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %health1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10
  %0 = ptrtoint ptr %health1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %health1.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 43
  %5 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i21.not = icmp eq i32 %6, 1
  br i1 %cmp.i21.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %7 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %10 = and i32 %9, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp = icmp eq i32 %10, 256
  br i1 %cmp, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end7:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz.i24 = getelementptr inbounds %struct.mlx5_init_seg, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz.i24) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %14 = and i32 %13, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %14)
  %cmp10 = icmp eq i32 %14, 1792
  br i1 %cmp10, label %if.end7.return_crit_edge, label %if.end13

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %health1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %health1.i, align 4
  %synd3.i = getelementptr inbounds %struct.health_buffer, ptr %16, i32 0, i32 11
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd3.i) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %rfr_severity.i = getelementptr inbounds %struct.health_buffer, ptr %16, i32 0, i32 8
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rfr_severity.i) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i = icmp sgt i8 %18, -1
  br i1 %tobool.not.i, label %if.end13.sensor_fw_synd_rfr.exit_crit_edge, label %land.lhs.true.i

if.end13.sensor_fw_synd_rfr.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sensor_fw_synd_rfr.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %conv7.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.sensor_fw_synd_rfr.exit_crit_edge, label %do.body.i

land.lhs.true.i.sensor_fw_synd_rfr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sensor_fw_synd_rfr.exit

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sensor_fw_synd_rfr.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_health_check_fatal_sensors, %if.then13.i)) #11
          to label %sensor_fw_synd_rfr.exit [label %if.then13.i], !srcloc !274

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sensor_fw_synd_rfr.__UNIQUE_ID_ddebug500, ptr noundef %20, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef 122, i32 noundef %26, i32 noundef %conv7.i) #11
  br label %sensor_fw_synd_rfr.exit

sensor_fw_synd_rfr.exit:                          ; preds = %if.then13.i, %do.body.i, %land.lhs.true.i.sensor_fw_synd_rfr.exit_crit_edge, %if.end13.sensor_fw_synd_rfr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.i = icmp ne i8 %17, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select.i = select i1 %not.tobool.not.i, i1 %tobool20.i, i1 false
  %. = select i1 %spec.select.i, i32 5, i32 0
  br label %return

return:                                           ; preds = %sensor_fw_synd_rfr.exit, %if.end7.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 3, %if.end3.return_crit_edge ], [ 4, %if.end7.return_crit_edge ], [ %., %sensor_fw_synd_rfr.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_enter_error_state(ptr noundef %dev, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool.not, %force
  br i1 %brmerge, label %land.lhs.true, label %entry.land.lhs.true4_crit_edge

entry.land.lhs.true4_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true4

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.end, label %land.lhs.true.land.lhs.true4_crit_edge

land.lhs.true.land.lhs.true4_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true4

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex, i32 noundef 0) #11
  br label %if.end8

land.lhs.true4:                                   ; preds = %land.lhs.true.land.lhs.true4_crit_edge, %entry.land.lhs.true4_crit_edge
  %intf_state_mutex19 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex19, i32 noundef 0) #11
  %state5 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp6 = icmp eq i32 %4, 2
  br i1 %cmp6, label %land.lhs.true4.unlock_crit_edge, label %land.lhs.true4.if.end8_crit_edge

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true4.unlock_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end8:                                          ; preds = %land.lhs.true4.if.end8_crit_edge, %if.end
  %intf_state_mutex22 = phi ptr [ %intf_state_mutex19, %land.lhs.true4.if.end8_crit_edge ], [ %intf_state_mutex, %if.end ]
  %call.i = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %brmerge.i = or i1 %tobool.not.i, %force
  br i1 %brmerge.i, label %if.then.i, label %if.end8.enter_error_state.exit_crit_edge

if.end8.enter_error_state.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_error_state.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %state.i, align 4
  tail call void @mlx5_cmd_flush(ptr noundef %dev) #11
  br label %enter_error_state.exit

enter_error_state.exit:                           ; preds = %if.then.i, %if.end8.enter_error_state.exit_crit_edge
  %events.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 25
  %6 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %events.i, align 8
  %call2.i = tail call i32 @mlx5_notifier_call_chain(ptr noundef %7, i32 noundef 128, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %unlock

unlock:                                           ; preds = %enter_error_state.exit, %land.lhs.true4.unlock_crit_edge
  %intf_state_mutex20 = phi ptr [ %intf_state_mutex19, %land.lhs.true4.unlock_crit_edge ], [ %intf_state_mutex22, %enter_error_state.exit ]
  tail call void @mutex_unlock(ptr noundef %intf_state_mutex20) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_error_sw_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 5) #11
  %conv = trunc i64 %call to i32
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %do.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 244, i32 noundef %9) #14
  %call3 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 5
  br i1 %cmp4, label %if.then6, label %do.end.recover_from_sw_reset_crit_edge

do.end.recover_from_sw_reset_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %recover_from_sw_reset

if.then6:                                         ; preds = %do.end
  %coredev_type.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %coredev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coredev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.end.i67, label %if.then6.if.then10_crit_edge

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end.i67:                                       ; preds = %if.then6
  %call1.i = tail call i32 @mlx5_vsc_gw_lock(ptr noundef %dev) #11
  %12 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.end.i67.lock_sem_sw_reset.exit_crit_edge [
    i32 -16, label %if.end.i67.if.end13_crit_edge
    i32 0, label %if.end5.i
  ]

if.end.i67.if.end13_crit_edge:                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.i67.lock_sem_sw_reset.exit_crit_edge:      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_sem_sw_reset.exit

if.end5.i:                                        ; preds = %if.end.i67
  %call7.i = tail call i32 @mlx5_vsc_sem_set_space(ptr noundef %dev, i16 noundef zeroext 32, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end11.i_crit_edge, label %do.end.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 167, i32 noundef %20) #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %if.end5.i.if.end11.i_crit_edge
  %call12.i = tail call i32 @mlx5_vsc_gw_unlock(ptr noundef %dev) #11
  br label %lock_sem_sw_reset.exit

lock_sem_sw_reset.exit:                           ; preds = %if.end11.i, %if.end.i67.lock_sem_sw_reset.exit_crit_edge
  %retval.0.i68 = phi i32 [ %call7.i, %if.end11.i ], [ %call1.i, %if.end.i67.lock_sem_sw_reset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %retval.0.i68)
  %cmp8 = icmp eq i32 %retval.0.i68, -16
  br i1 %cmp8, label %lock_sem_sw_reset.exit.if.then10_crit_edge, label %lock_sem_sw_reset.exit.if.end13_crit_edge

lock_sem_sw_reset.exit.if.end13_crit_edge:        ; preds = %lock_sem_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

lock_sem_sw_reset.exit.if.then10_crit_edge:       ; preds = %lock_sem_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %lock_sem_sw_reset.exit.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %call11 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 7) #11
  %conv12 = trunc i64 %call11 to i32
  br label %recover_from_sw_reset

if.end13:                                         ; preds = %lock_sem_sw_reset.exit.if.end13_crit_edge, %if.end.i67.if.end13_crit_edge
  %retval.0.i6898 = phi i32 [ %retval.0.i68, %lock_sem_sw_reset.exit.if.end13_crit_edge ], [ -22, %if.end.i67.if.end13_crit_edge ]
  tail call fastcc void @reset_fw_if_needed(ptr noundef %dev)
  br label %recover_from_sw_reset

recover_from_sw_reset:                            ; preds = %if.end13, %if.then10, %do.end.recover_from_sw_reset_crit_edge
  %delay_ms.0 = phi i32 [ %conv12, %if.then10 ], [ %conv, %if.end13 ], [ %conv, %do.end.recover_from_sw_reset_crit_edge ]
  %lock.0 = phi i32 [ -16, %if.then10 ], [ %retval.0.i6898, %if.end13 ], [ -16, %do.end.recover_from_sw_reset_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %delay_ms.0) #11
  %add = add i32 %call2.i, %21
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  br label %do.body17

do.body17:                                        ; preds = %if.end23.do.body17_crit_edge, %recover_from_sw_reset
  %22 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %25 = and i32 %24, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %25)
  %cmp20 = icmp eq i32 %25, 256
  br i1 %cmp20, label %do.body17.do.end27_crit_edge, label %if.end23

do.body17.do.end27_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

if.end23:                                         ; preds = %do.body17
  tail call void @msleep(i32 noundef 20) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %26
  %cmp25 = icmp sgt i32 %sub, -1
  br i1 %cmp25, label %if.end23.do.body17_crit_edge, label %if.end23.do.end27_crit_edge

if.end23.do.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

if.end23.do.body17_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

do.end27:                                         ; preds = %if.end23.do.end27_crit_edge, %do.body17.do.end27_crit_edge
  %27 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz.i70 = getelementptr inbounds %struct.mlx5_init_seg, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz.i70) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %30 = and i32 %29, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %30)
  %cmp30.not = icmp eq i32 %30, 256
  br i1 %cmp30.not, label %do.end27.if.end39_crit_edge, label %do.end35

do.end27.if.end39_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end35:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz.i74 = getelementptr inbounds %struct.mlx5_init_seg, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz.i74) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %shr.i75 = lshr i32 %35, 8
  %conv.i76 = and i32 %shr.i75, 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.6, i32 noundef %conv.i76, i32 noundef %delay_ms.0) #14
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %do.end27.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock.0)
  %tobool.not = icmp eq i32 %lock.0, 0
  br i1 %tobool.not, label %if.then40, label %if.end39.do.end45_crit_edge

if.end39.do.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

if.then40:                                        ; preds = %if.end39
  %coredev_type.i.i77 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %coredev_type.i.i77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %coredev_type.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i78 = icmp eq i32 %37, 0
  br i1 %cmp.i.i78, label %if.end.i80, label %if.then40.do.end45_crit_edge

if.then40.do.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

if.end.i80:                                       ; preds = %if.then40
  %call1.i79 = tail call i32 @mlx5_vsc_gw_lock(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %cond = icmp eq i32 %call1.i79, 0
  br i1 %cond, label %if.end5.i84, label %if.end.i80.do.end45_crit_edge

if.end.i80.do.end45_crit_edge:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

if.end5.i84:                                      ; preds = %if.end.i80
  %call7.i82 = tail call i32 @mlx5_vsc_sem_set_space(ptr noundef %dev, i16 noundef zeroext 32, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i82)
  %tobool8.not.i83 = icmp eq i32 %call7.i82, 0
  br i1 %tobool8.not.i83, label %if.end5.i84.if.end11.i90_crit_edge, label %do.end.i88

if.end5.i84.if.end11.i90_crit_edge:               ; preds = %if.end5.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i90

do.end.i88:                                       ; preds = %if.end5.i84
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %40 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i.i85 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i85 to ptr
  %task.i86 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i86, align 8
  %pid.i87 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid.i87, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 167, i32 noundef %45) #14
  br label %if.end11.i90

if.end11.i90:                                     ; preds = %do.end.i88, %if.end5.i84.if.end11.i90_crit_edge
  %call12.i89 = tail call i32 @mlx5_vsc_gw_unlock(ptr noundef %dev) #11
  br label %do.end45

do.end45:                                         ; preds = %if.end11.i90, %if.end.i80.do.end45_crit_edge, %if.then40.do.end45_crit_edge, %if.end39.do.end45_crit_edge
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef %51) #14
  br label %unlock

unlock:                                           ; preds = %do.end45, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %intf_state_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_fw_if_needed(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg, align 4
  %initializing = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initializing) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %dev)
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call2, label %do.end11 [
    i32 1, label %if.end.do.end_crit_edge
    i32 3, label %if.end.do.end_crit_edge2
    i32 4, label %if.end.do.end_crit_edge3
  ]

if.end.do.end_crit_edge3:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.do.end_crit_edge2:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge2, %if.end.do.end_crit_edge3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 193, i32 noundef %12) #14
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i1 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i1 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 197, i32 noundef %20) #14
  tail call void @mlx5_set_nic_state(ptr noundef %dev, i8 noundef zeroext 7)
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_health_wait_pci_up(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 8) #11
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #11
  %add = add i32 %call2.i, %0
  %health1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10
  %1 = ptrtoint ptr %health1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %health1.i, align 4
  %fw_ver.i6 = getelementptr inbounds %struct.health_buffer, ptr %2, i32 0, i32 6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver.i6) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i57 = icmp eq i32 %3, -1
  br i1 %cmp.i57, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 100) #11
  %5 = ptrtoint ptr %health1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %health1.i, align 4
  %fw_ver.i = getelementptr inbounds %struct.health_buffer, ptr %6, i32 0, i32 6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %cmp.i5 = icmp eq i32 %7, -1
  br i1 %cmp.i5, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -110, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_trigger_health_work(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock) #11
  %flags6 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 10
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags6, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 9
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  %fatal_report_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %fatal_report_work) #11
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 756, i32 noundef %11) #14
  br label %if.end

if.end:                                           ; preds = %do.end11, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_start_health_poll(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 6) #11
  %health1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10
  %timer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @poll_health, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx5_start_health_poll.__key) #11
  %fatal_error = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 6
  %0 = ptrtoint ptr %fatal_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fatal_error, align 4
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %1 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iseg, align 4
  %health2 = getelementptr inbounds %struct.mlx5_init_seg, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %health1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %health2, ptr %health1, align 4
  %health_counter = getelementptr inbounds %struct.mlx5_init_seg, ptr %2, i32 0, i32 15
  %health_counter5 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 1
  %4 = ptrtoint ptr %health_counter5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %health_counter, ptr %health_counter5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #11
  %add = add i32 %call2.i, %5
  %expires = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 2, i32 1
  %6 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #11
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i25 = icmp eq i32 %8, 0
  br i1 %cmp.i25, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 9
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 4
  %update_fw_log_ts_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %update_fw_log_ts_work, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_health(ptr noundef %t) #0 align 64 {
entry:
  %next.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1960
  %health1 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %health1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %health1, align 4
  %state = getelementptr i8, ptr %t, i32 -212
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %fatal_error3 = getelementptr i8, ptr %t, i32 60
  %4 = ptrtoint ptr %fatal_error3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fatal_error3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %land.lhs.true
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 800, i32 noundef %13, i32 noundef %call) #14
  %14 = ptrtoint ptr %fatal_error3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call, ptr %fatal_error3, align 4
  tail call fastcc void @print_health_info(ptr noundef %add.ptr)
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state, align 4
  %wq_lock.i = getelementptr i8, ptr %t, i32 68
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock.i) #11
  %flags6.i = getelementptr i8, ptr %t, i32 116
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags6.i, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end11.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %wq.i = getelementptr i8, ptr %t, i32 112
  %18 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i, align 4
  %fatal_report_work.i = getelementptr i8, ptr %t, i32 120
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %fatal_report_work.i) #11
  br label %mlx5_trigger_health_work.exit

do.end11.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 756, i32 noundef %27) #14
  br label %mlx5_trigger_health_work.exit

mlx5_trigger_health_work.exit:                    ; preds = %do.end11.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock.i, i32 noundef %call3.i) #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %health_counter = getelementptr i8, ptr %t, i32 -4
  %28 = ptrtoint ptr %health_counter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %health_counter, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  %prev = getelementptr i8, ptr %t, i32 48
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp14 = icmp eq i32 %30, %32
  %miss_counter = getelementptr i8, ptr %t, i32 52
  br i1 %cmp14, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %miss_counter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %miss_counter, align 4
  %inc = add i32 %34, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  %.sink = phi i32 [ %inc, %if.then15 ], [ 0, %if.end11.if.end17_crit_edge ]
  %35 = ptrtoint ptr %miss_counter to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %miss_counter, align 4
  %36 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %30, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.sink)
  %cmp20 = icmp eq i32 %.sink, 3
  br i1 %cmp20, label %do.end24, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i83 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i83 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task27, align 8
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 816, i32 noundef %44) #14
  tail call fastcc void @print_health_info(ptr noundef %add.ptr)
  %wq = getelementptr i8, ptr %t, i32 112
  %45 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wq, align 4
  %report_work = getelementptr i8, ptr %t, i32 164
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %report_work) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.end17.if.end30_crit_edge
  %synd = getelementptr i8, ptr %t, i32 56
  %47 = ptrtoint ptr %synd to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %synd, align 4
  %synd31 = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 11
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd31) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %50 = ptrtoint ptr %synd to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %synd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool35.not = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %48)
  %cmp40.not = icmp eq i8 %49, %48
  %or.cond = select i1 %tobool35.not, i1 true, i1 %cmp40.not
  br i1 %or.cond, label %if.end30.out_crit_edge, label %if.then42

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then42:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %wq43 = getelementptr i8, ptr %t, i32 112
  %51 = ptrtoint ptr %wq43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wq43, align 4
  %report_work44 = getelementptr i8, ptr %t, i32 164
  %call.i84 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %report_work44) #11
  br label %out

out:                                              ; preds = %if.then42, %if.end30.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next.i) #11
  %53 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %next.i, align 4, !annotation !277
  call void @get_random_bytes(ptr noundef nonnull %next.i, i32 noundef 4) #11
  %54 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %next.i, align 4
  %rem.i = urem i32 %55, 100
  store i32 %rem.i, ptr %next.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %call.i85 = call i64 @_mlx5_tout_ms(ptr noundef %add.ptr, i32 noundef 6) #11
  %conv.i = trunc i64 %call.i85 to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #11
  %add.i = add i32 %call2.i.i, %56
  %57 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %next.i, align 4
  %add2.i = add i32 %add.i, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next.i) #11
  %call48 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add2.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %mlx5_trigger_health_work.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_stop_health_poll(ptr noundef %dev, i1 noundef zeroext %disable_health) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %disable_health, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wq_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock) #11
  %flags6 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags6) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock, i32 noundef %call3) #11
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %timer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 2
  %call8 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_drain_health_wq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock) #11
  %flags6 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags6) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock, i32 noundef %call3) #11
  %update_fw_log_ts_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %update_fw_log_ts_work) #11
  %report_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 12
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %report_work) #11
  %fatal_report_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %fatal_report_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_health_flush(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 9
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_health_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %update_fw_log_ts_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %update_fw_log_ts_work) #11
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 9
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #11
  %fw_reporter.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 13
  %2 = ptrtoint ptr %fw_reporter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_reporter.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devlink_health_reporter_destroy(ptr noundef nonnull %3) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %fw_fatal_reporter.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 14
  %4 = ptrtoint ptr %fw_fatal_reporter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_fatal_reporter.i, align 4
  %tobool.not.i10.i = icmp eq ptr %5, null
  %cmp.i11.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i12.i = or i1 %tobool.not.i10.i, %cmp.i11.i
  br i1 %spec.select.i12.i, label %if.end.i.mlx5_fw_reporters_destroy.exit_crit_edge, label %if.then4.i

if.end.i.mlx5_fw_reporters_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_fw_reporters_destroy.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devlink_health_reporter_destroy(ptr noundef nonnull %5) #11
  br label %mlx5_fw_reporters_destroy.exit

mlx5_fw_reporters_destroy.exit:                   ; preds = %if.then4.i, %if.end.i.mlx5_fw_reporters_destroy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_health_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %dev) #11
  %call2.i = tail call ptr @devlink_health_reporter_create(ptr noundef %call.i, ptr noundef nonnull @mlx5_fw_reporter_ops, i64 noundef 0, ptr noundef %dev) #11
  %fw_reporter.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 13
  %0 = ptrtoint ptr %fw_reporter.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2.i, ptr %fw_reporter.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid.i, align 8
  %9 = ptrtoint ptr %call2.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 713, i32 noundef %8, i32 noundef %9) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %call8.i = tail call ptr @devlink_health_reporter_create(ptr noundef %call.i, ptr noundef nonnull @mlx5_fw_fatal_reporter_ops, i64 noundef 1200000, ptr noundef %dev) #11
  %fw_fatal_reporter.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 14
  %10 = ptrtoint ptr %fw_fatal_reporter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i, ptr %fw_fatal_reporter.i, align 4
  %cmp.i33.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33.i, label %do.end14.i, label %if.end.i.mlx5_fw_reporters_create.exit_crit_edge

if.end.i.mlx5_fw_reporters_create.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_fw_reporters_create.exit

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i34.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i34.i to ptr
  %task17.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task17.i, align 8
  %pid18.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid18.i, align 8
  %19 = ptrtoint ptr %call8.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef 722, i32 noundef %18, i32 noundef %19) #14
  br label %mlx5_fw_reporters_create.exit

mlx5_fw_reporters_create.exit:                    ; preds = %do.end14.i, %if.end.i.mlx5_fw_reporters_create.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 64) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %mlx5_fw_reporters_create.exit.out_err_crit_edge, label %if.end

mlx5_fw_reporters_create.exit.out_err_crit_edge:  ; preds = %mlx5_fw_reporters_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

if.end:                                           ; preds = %mlx5_fw_reporters_create.exit
  %21 = call ptr @memcpy(ptr %call7.i, ptr @.str.14, i32 12)
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i82, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i82:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i82, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.end.i82 ], [ %25, %if.end.dev_name.exit_crit_edge ]
  %call4 = tail call ptr @strcat(ptr noundef nonnull %call7.i, ptr noundef %retval.0.i)
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %call7.i) #11
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 9
  %28 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5, ptr %wq, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %29 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wq, align 4
  %tobool7.not = icmp eq ptr %30, null
  br i1 %tobool7.not, label %dev_name.exit.out_err_crit_edge, label %do.body

dev_name.exit.out_err_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

do.body:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %wq_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %wq_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mlx5_health_init.__key, i16 noundef signext 3) #11
  %fatal_report_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11
  tail call void @__init_work(ptr noundef %fatal_report_work, i32 noundef 0) #11
  %31 = ptrtoint ptr %fatal_report_work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %fatal_report_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @mlx5_health_init.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry15 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11, i32 1
  %32 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 11, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mlx5_fw_fatal_reporter_err_work, ptr %func, align 4
  %report_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 12
  tail call void @__init_work(ptr noundef %report_work, i32 noundef 0) #11
  %35 = ptrtoint ptr %report_work to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -64, ptr %report_work, align 4
  %lockdep_map25 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map25, ptr noundef nonnull @.str.20, ptr noundef nonnull @mlx5_health_init.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry27 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 12, i32 1
  %36 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i83 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 12, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %entry27, ptr %prev.i83, align 4
  %func29 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 12, i32 2
  %38 = ptrtoint ptr %func29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @mlx5_fw_reporter_err_work, ptr %func29, align 4
  %update_fw_log_ts_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15
  tail call void @__init_work(ptr noundef %update_fw_log_ts_work, i32 noundef 0) #11
  %39 = ptrtoint ptr %update_fw_log_ts_work to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %update_fw_log_ts_work, align 4
  %lockdep_map41 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map41, ptr noundef nonnull @.str.22, ptr noundef nonnull @mlx5_health_init.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry44 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15, i32 0, i32 1
  %40 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i84 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry44, ptr %prev.i84, align 4
  %func47 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15, i32 0, i32 2
  %42 = ptrtoint ptr %func47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mlx5_health_log_ts_update, ptr %func47, align 4
  %timer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @mlx5_health_init.__key.23) #11
  br label %cleanup

out_err:                                          ; preds = %dev_name.exit.out_err_crit_edge, %mlx5_fw_reporters_create.exit.out_err_crit_edge
  %43 = ptrtoint ptr %fw_reporter.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_reporter.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  %cmp.i.i86 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i86
  br i1 %spec.select.i.i, label %out_err.if.end.i88_crit_edge, label %if.then.i

out_err.if.end.i88_crit_edge:                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i88

if.then.i:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devlink_health_reporter_destroy(ptr noundef nonnull %44) #11
  br label %if.end.i88

if.end.i88:                                       ; preds = %if.then.i, %out_err.if.end.i88_crit_edge
  %45 = ptrtoint ptr %fw_fatal_reporter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw_fatal_reporter.i, align 4
  %tobool.not.i10.i = icmp eq ptr %46, null
  %cmp.i11.i = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %spec.select.i12.i = or i1 %tobool.not.i10.i, %cmp.i11.i
  br i1 %spec.select.i12.i, label %if.end.i88.cleanup_crit_edge, label %if.then4.i

if.end.i88.cleanup_crit_edge:                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devlink_health_reporter_destroy(ptr noundef nonnull %46) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i88.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %if.end.i88.cleanup_crit_edge ], [ -12, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fw_fatal_reporter_err_work(ptr noundef %work) #0 align 64 {
entry:
  %fw_reporter_ctx = alloca %struct.mlx5_fw_reporter_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_reporter_ctx) #11
  %0 = ptrtoint ptr %fw_reporter_ctx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %fw_reporter_ctx, align 8, !annotation !277
  %add.ptr6 = getelementptr i8, ptr %work, i32 -2080
  %call.i = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %add.ptr6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %entry.enter_error_state.exit_crit_edge, label %if.then.i

entry.enter_error_state.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %enter_error_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr i8, ptr %work, i32 -332
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %state.i, align 4
  tail call void @mlx5_cmd_flush(ptr noundef %add.ptr6) #11
  br label %enter_error_state.exit

enter_error_state.exit:                           ; preds = %if.then.i, %entry.enter_error_state.exit_crit_edge
  %events.i = getelementptr i8, ptr %work, i32 480
  %2 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %events.i, align 8
  %call2.i = tail call i32 @mlx5_notifier_call_chain(ptr noundef %3, i32 noundef 128, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  %fw_fatal_reporter = getelementptr i8, ptr %work, i32 92
  %4 = ptrtoint ptr %fw_fatal_reporter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_fatal_reporter, align 4
  %tobool.not.i34 = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i34, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end10

if.then:                                          ; preds = %enter_error_state.exit
  %call7 = tail call fastcc i32 @mlx5_health_try_recover(ptr noundef %add.ptr6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr6, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.132, i32 noundef 679, i32 noundef %13) #14
  br label %cleanup

if.end10:                                         ; preds = %enter_error_state.exit
  %synd = getelementptr i8, ptr %work, i32 -64
  %14 = ptrtoint ptr %synd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %synd, align 4
  %16 = ptrtoint ptr %fw_reporter_ctx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %fw_reporter_ctx, align 8
  %miss_counter = getelementptr i8, ptr %work, i32 -68
  %17 = ptrtoint ptr %miss_counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %miss_counter, align 4
  %miss_counter11 = getelementptr inbounds %struct.mlx5_fw_reporter_ctx, ptr %fw_reporter_ctx, i32 0, i32 1
  %19 = ptrtoint ptr %miss_counter11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %miss_counter11, align 4
  %call13 = call i32 @devlink_health_report(ptr noundef nonnull %5, ptr noundef nonnull @.str.133, ptr noundef nonnull %fw_reporter_ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call13)
  %cmp = icmp eq i32 %call13, -125
  br i1 %cmp, label %do.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr6, align 8
  %22 = call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i35 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i35 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid21, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.132, i32 noundef 691, i32 noundef %27) #14
  call void @mlx5_unload_one(ptr noundef %add.ptr6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end10.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_reporter_ctx) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fw_reporter_err_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %fw_reporter_ctx = alloca %struct.mlx5_fw_reporter_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_reporter_ctx) #11
  %0 = ptrtoint ptr %fw_reporter_ctx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %fw_reporter_ctx, align 8, !annotation !277
  %fw_reporter = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_reporter, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %synd = getelementptr i8, ptr %work, i32 -108
  %3 = ptrtoint ptr %synd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %synd, align 4
  %5 = ptrtoint ptr %fw_reporter_ctx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %fw_reporter_ctx, align 8
  %miss_counter = getelementptr i8, ptr %work, i32 -112
  %6 = ptrtoint ptr %miss_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %miss_counter, align 4
  %miss_counter1 = getelementptr inbounds %struct.mlx5_fw_reporter_ctx, ptr %fw_reporter_ctx, i32 0, i32 1
  %8 = ptrtoint ptr %miss_counter1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %miss_counter1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.138.sink = phi ptr [ @.str.137, %if.end.cleanup.sink.split_crit_edge ], [ @.str.138, %if.end6.cleanup.sink.split_crit_edge ]
  %call11 = call i32 @devlink_health_report(ptr noundef nonnull %2, ptr noundef nonnull %.str.138.sink, ptr noundef nonnull %fw_reporter_ctx) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_reporter_ctx) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_health_log_ts_update(ptr noundef %work) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #11
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %in, align 8
  %add.ptr6 = getelementptr i8, ptr %work, i32 -2176
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp8.i.i = icmp slt i64 %call.i, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %call.i, i1 false) #11
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #16, !srcloc !278
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #16, !srcloc !279
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %shr = lshr i64 %cond213.i.i, 32
  %conv = trunc i64 %shr to i32
  %add.ptr10 = getelementptr inbounds i32, ptr %in, i32 2
  %5 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %add.ptr10, align 8
  %conv19 = trunc i64 %cond213.i.i to i32
  %add.ptr24 = getelementptr inbounds i32, ptr %in, i32 3
  %6 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv19, ptr %add.ptr24, align 4
  %call35 = call i32 @mlx5_core_access_reg(ptr noundef %add.ptr6, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16, i16 noundef zeroext -28627, i32 noundef 0, i32 noundef 1) #11
  %wq = getelementptr i8, ptr %work, i32 -104
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq, align 4
  %call.i41 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 360000) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vsc_gw_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vsc_sem_set_space(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vsc_gw_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_health_info(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %health1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10
  %0 = ptrtoint ptr %health1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %health1, align 4
  %synd = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 11
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_ver = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef 3, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.print_health_info, i32 noundef 424, i32 noundef %9)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rfr_severity7 = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rfr_severity7) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %conv.i = zext i8 %10 to i32
  %and.i146 = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i = icmp eq i32 %and.i146, 0
  %and2.i = and i32 %conv.i, 7
  %spec.select.i = select i1 %tobool.not.i, i32 3, i32 %and2.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i147 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i147 to ptr
  %task11 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task11, align 8
  %pid12 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid12, align 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %switch.tableidx = add i8 %17, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx)
  %18 = icmp ult i8 %switch.tableidx, 16
  br i1 %18, label %switch.lookup, label %if.end6.switch.lookup185_crit_edge

if.end6.switch.lookup185_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %switch.lookup185

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %19 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.print_health_info, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %switch.lookup185

switch.lookup185:                                 ; preds = %switch.lookup, %if.end6.switch.lookup185_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %if.end6.switch.lookup185_crit_edge ]
  %switch.gep186 = getelementptr inbounds [8 x ptr], ptr @switch.table.print_health_info.139, i32 0, i32 %spec.select.i
  %21 = ptrtoint ptr %switch.gep186 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load187 = load ptr, ptr %switch.gep186, align 4
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.print_health_info, i32 noundef 431, i32 noundef %16, ptr noundef nonnull %retval.0.i, i32 noundef %spec.select.i, ptr noundef nonnull %switch.load187)
  %22 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task11, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid20, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.print_health_info, i32 noundef 435, i32 noundef %25, i32 noundef 0, i32 noundef %26)
  %27 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task11, align 8
  %pid20.1 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid20.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid20.1, align 8
  %add.ptr.1 = getelementptr i32, ptr %1, i32 1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.print_health_info, i32 noundef 435, i32 noundef %30, i32 noundef 1, i32 noundef %31)
  %32 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task11, align 8
  %pid20.2 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid20.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid20.2, align 8
  %add.ptr.2 = getelementptr i32, ptr %1, i32 2
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.print_health_info, i32 noundef 435, i32 noundef %35, i32 noundef 2, i32 noundef %36)
  %37 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task11, align 8
  %pid20.3 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid20.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid20.3, align 8
  %add.ptr.3 = getelementptr i32, ptr %1, i32 3
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.print_health_info, i32 noundef 435, i32 noundef %40, i32 noundef 3, i32 noundef %41)
  %42 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task11, align 8
  %pid20.4 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid20.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid20.4, align 8
  %add.ptr.4 = getelementptr i32, ptr %1, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.print_health_info, i32 noundef 435, i32 noundef %45, i32 noundef 4, i32 noundef %46)
  %47 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task11, align 8
  %pid20.5 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid20.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid20.5, align 8
  %add.ptr.5 = getelementptr i32, ptr %1, i32 5
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.print_health_info, i32 noundef 435, i32 noundef %50, i32 noundef 5, i32 noundef %51)
  %52 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task11, align 8
  %pid26 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid26, align 8
  %assert_exit_ptr = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 2
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %assert_exit_ptr) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.print_health_info, i32 noundef 437, i32 noundef %55, i32 noundef %56)
  %57 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task11, align 8
  %pid32 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid32, align 8
  %assert_callra = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 3
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %assert_callra) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.print_health_info, i32 noundef 438, i32 noundef %60, i32 noundef %61)
  %62 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task11, align 8
  %pid38 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid38, align 8
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %66 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iseg.i, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  %conv = and i32 %68, 65535
  %69 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iseg.i, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  %shr.i = lshr i32 %71, 16
  %72 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %73, i32 0, i32 1
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  %conv43 = and i32 %74, 65535
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.print_health_info, i32 noundef 440, i32 noundef %65, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %conv43)
  %75 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task11, align 8
  %pid46 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid46, align 8
  %time = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 5
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.print_health_info, i32 noundef 441, i32 noundef %78, i32 noundef %79)
  %80 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task11, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid52, align 8
  %hw_id = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 7
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hw_id) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.print_health_info, i32 noundef 442, i32 noundef %83, i32 noundef %84)
  %85 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task11, align 8
  %pid58 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid58, align 8
  %89 = lshr i8 %10, 7
  %90 = zext i8 %89 to i32
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.print_health_info, i32 noundef 443, i32 noundef %88, i32 noundef %90)
  %91 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task11, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 68
  %93 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pid62, align 8
  %switch.gep193 = getelementptr inbounds [8 x ptr], ptr @switch.table.print_health_info.141, i32 0, i32 %spec.select.i
  %95 = ptrtoint ptr %switch.gep193 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load194 = load ptr, ptr %switch.gep193, align 4
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.print_health_info, i32 noundef 444, i32 noundef %94, i32 noundef %spec.select.i, ptr noundef nonnull %switch.load194)
  %96 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task11, align 8
  %pid66 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid66, align 8
  %irisc_index = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 10
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %irisc_index) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %conv68 = zext i8 %100 to i32
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.print_health_info, i32 noundef 445, i32 noundef %99, i32 noundef %conv68)
  %101 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task11, align 8
  %pid71 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 68
  %103 = ptrtoint ptr %pid71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pid71, align 8
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %conv74 = zext i8 %105 to i32
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %switch.tableidx189 = add i8 %106, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx189)
  %107 = icmp ult i8 %switch.tableidx189, 16
  br i1 %107, label %switch.lookup188, label %switch.lookup185.hsynd_str.exit183_crit_edge

switch.lookup185.hsynd_str.exit183_crit_edge:     ; preds = %switch.lookup185
  call void @__sanitizer_cov_trace_pc() #13
  br label %hsynd_str.exit183

switch.lookup188:                                 ; preds = %switch.lookup185
  call void @__sanitizer_cov_trace_pc() #13
  %108 = sext i8 %switch.tableidx189 to i32
  %switch.gep190 = getelementptr inbounds [16 x ptr], ptr @switch.table.print_health_info.140, i32 0, i32 %108
  %109 = ptrtoint ptr %switch.gep190 to i32
  call void @__asan_load4_noabort(i32 %109)
  %switch.load191 = load ptr, ptr %switch.gep190, align 4
  br label %hsynd_str.exit183

hsynd_str.exit183:                                ; preds = %switch.lookup188, %switch.lookup185.hsynd_str.exit183_crit_edge
  %retval.0.i182 = phi ptr [ %switch.load191, %switch.lookup188 ], [ @.str.69, %switch.lookup185.hsynd_str.exit183_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.print_health_info, i32 noundef 447, i32 noundef %104, i32 noundef %conv74, ptr noundef nonnull %retval.0.i182)
  %110 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task11, align 8
  %pid80 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 68
  %112 = ptrtoint ptr %pid80 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pid80, align 8
  %ext_synd = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 12
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ext_synd) #11, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  %conv84 = zext i16 %114 to i32
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.print_health_info, i32 noundef 448, i32 noundef %113, i32 noundef %conv84)
  %115 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task11, align 8
  %pid87 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 68
  %117 = ptrtoint ptr %pid87 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pid87, align 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  tail call void (ptr, i32, ptr, ...) @mlx5_printk(ptr noundef %dev, i32 noundef %spec.select.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.print_health_info, i32 noundef 449, i32 noundef %118, i32 noundef %119)
  br label %cleanup

cleanup:                                          ; preds = %hsynd_str.exit183, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_printk(ptr nocapture noundef readonly %dev, i32 noundef %level, ptr noundef %format, ...) unnamed_addr #6 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !277
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %level)
  %cmp2 = icmp sgt i32 %level, 7
  br i1 %cmp2, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @mlx5_printk.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !292

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5_printk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.56, i32 noundef %level) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %format, ptr %vaf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %args, ptr %2, align 4
  %call = call ptr @dev_driver_string(ptr noundef %1) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end29.dev_name.exit_crit_edge ]
  %spec.select = select i1 %cmp2, i32 -1, i32 %level
  %call41 = call i32 (i32, ptr, ptr, ...) @dev_printk_emit(i32 noundef %spec.select, ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef %call, ptr noundef %retval.0.i, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @dev_printk_emit(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_health_reporter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fw_reporter_dump(ptr noundef %reporter, ptr noundef %fmsg, ptr noundef readonly %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #11
  %call1 = tail call i32 @mlx5_fw_tracer_trigger_core_dump_general(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %priv_ctx, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %0 = ptrtoint ptr %priv_ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv_ctx, align 4
  %call.i = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.85, i8 noundef zeroext %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlx5_fw_reporter_ctx_pairs_put.exit, label %if.then3.cleanup14_crit_edge

if.then3.cleanup14_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

mlx5_fw_reporter_ctx_pairs_put.exit:              ; preds = %if.then3
  %miss_counter.i = getelementptr inbounds %struct.mlx5_fw_reporter_ctx, ptr %priv_ctx, i32 0, i32 1
  %2 = ptrtoint ptr %miss_counter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %miss_counter.i, align 4
  %call1.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.86, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %mlx5_fw_reporter_ctx_pairs_put.exit.if.end8_crit_edge, label %mlx5_fw_reporter_ctx_pairs_put.exit.cleanup14_crit_edge

mlx5_fw_reporter_ctx_pairs_put.exit.cleanup14_crit_edge: ; preds = %mlx5_fw_reporter_ctx_pairs_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

mlx5_fw_reporter_ctx_pairs_put.exit.if.end8_crit_edge: ; preds = %mlx5_fw_reporter_ctx_pairs_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %mlx5_fw_reporter_ctx_pairs_put.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %health1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 10
  %4 = ptrtoint ptr %health1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %health1.i, align 4
  %synd.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 11
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd.i) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i26 = icmp eq i8 %6, 0
  br i1 %tobool.not.i26, label %if.end8.if.end12_crit_edge, label %if.end.i27

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end.i27:                                       ; preds = %if.end8
  %call3.i = tail call i32 @devlink_fmsg_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.87) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i27.cleanup14_crit_edge

if.end.i27.cleanup14_crit_edge:                   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end6.i:                                        ; preds = %if.end.i27
  %call7.i = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.cleanup14_crit_edge

if.end6.i.cleanup14_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.body.preheader.i, label %if.end10.i.cleanup14_crit_edge

if.end10.i.cleanup14_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.body.preheader.i:                             ; preds = %if.end10.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %call16.i = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond.i, label %for.body.preheader.i.cleanup14_crit_edge

for.body.preheader.i.cleanup14_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.cond.i:                                       ; preds = %for.body.preheader.i
  %add.ptr.1.i = getelementptr i32, ptr %5, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %call16.1.i = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i)
  %tobool17.not.1.i = icmp eq i32 %call16.1.i, 0
  br i1 %tobool17.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup14_crit_edge

for.cond.i.cleanup14_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.cond.1.i:                                     ; preds = %for.cond.i
  %add.ptr.2.i = getelementptr i32, ptr %5, i32 2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %call16.2.i = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2.i)
  %tobool17.not.2.i = icmp eq i32 %call16.2.i, 0
  br i1 %tobool17.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup14_crit_edge

for.cond.1.i.cleanup14_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %add.ptr.3.i = getelementptr i32, ptr %5, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %call16.3.i = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.3.i)
  %tobool17.not.3.i = icmp eq i32 %call16.3.i, 0
  br i1 %tobool17.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup14_crit_edge

for.cond.2.i.cleanup14_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %add.ptr.4.i = getelementptr i32, ptr %5, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %call16.4.i = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.4.i)
  %tobool17.not.4.i = icmp eq i32 %call16.4.i, 0
  br i1 %tobool17.not.4.i, label %for.cond.4.i, label %for.cond.3.i.cleanup14_crit_edge

for.cond.3.i.cleanup14_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %add.ptr.5.i = getelementptr i32, ptr %5, i32 5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  %call16.5.i = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.5.i)
  %tobool17.not.5.i = icmp eq i32 %call16.5.i, 0
  br i1 %tobool17.not.5.i, label %for.cond.5.i, label %for.cond.4.i.cleanup14_crit_edge

for.cond.4.i.cleanup14_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call20.i = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %for.cond.5.i.cleanup14_crit_edge

for.cond.5.i.cleanup14_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end23.i:                                       ; preds = %for.cond.5.i
  %assert_exit_ptr.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 2
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %assert_exit_ptr.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  %call27.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.89, i32 noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end23.i.cleanup14_crit_edge

if.end23.i.cleanup14_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end30.i:                                       ; preds = %if.end23.i
  %assert_callra.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %assert_callra.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  %call34.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.90, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end30.i.cleanup14_crit_edge

if.end30.i.cleanup14_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end37.i:                                       ; preds = %if.end30.i
  %time.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 5
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %time.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  %call41.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.91, i32 noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end37.i.cleanup14_crit_edge

if.end37.i.cleanup14_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end44.i:                                       ; preds = %if.end37.i
  %hw_id.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hw_id.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  %call48.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.92, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end44.i.cleanup14_crit_edge

if.end44.i.cleanup14_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end51.i:                                       ; preds = %if.end44.i
  %rfr_severity52.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rfr_severity52.i) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %18 = lshr i8 %17, 7
  %call55.i = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.93, i8 noundef zeroext %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end51.i.cleanup14_crit_edge

if.end51.i.cleanup14_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end58.i:                                       ; preds = %if.end51.i
  %19 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %and2.i.i = and i8 %17, 7
  %conv60.i = select i1 %tobool.not.i.i, i8 3, i8 %and2.i.i
  %call61.i = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.94, i8 noundef zeroext %conv60.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end58.i.cleanup14_crit_edge

if.end58.i.cleanup14_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end64.i:                                       ; preds = %if.end58.i
  %irisc_index.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 10
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %irisc_index.i) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %call66.i = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.95, i8 noundef zeroext %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end64.i.cleanup14_crit_edge

if.end64.i.cleanup14_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end69.i:                                       ; preds = %if.end64.i
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd.i) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %call72.i = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.96, i8 noundef zeroext %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %if.end69.i.cleanup14_crit_edge

if.end69.i.cleanup14_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end75.i:                                       ; preds = %if.end69.i
  %ext_synd.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 12
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ext_synd.i) #11, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  %conv79.i = zext i16 %22 to i32
  %call80.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.97, i32 noundef %conv79.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %if.end75.i.cleanup14_crit_edge

if.end75.i.cleanup14_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end83.i:                                       ; preds = %if.end75.i
  %fw_ver.i = getelementptr inbounds %struct.health_buffer, ptr %5, i32 0, i32 6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !299
  %call87.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.98, i32 noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end83.i.cleanup14_crit_edge

if.end83.i.cleanup14_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end90.i:                                       ; preds = %if.end83.i
  %call91.i = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %mlx5_fw_reporter_heath_buffer_data_put.exit, label %if.end90.i.cleanup14_crit_edge

if.end90.i.cleanup14_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

mlx5_fw_reporter_heath_buffer_data_put.exit:      ; preds = %if.end90.i
  %call95.i = tail call i32 @devlink_fmsg_pair_nest_end(ptr noundef %fmsg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool10.not = icmp eq i32 %call95.i, 0
  br i1 %tobool10.not, label %mlx5_fw_reporter_heath_buffer_data_put.exit.if.end12_crit_edge, label %mlx5_fw_reporter_heath_buffer_data_put.exit.cleanup14_crit_edge

mlx5_fw_reporter_heath_buffer_data_put.exit.cleanup14_crit_edge: ; preds = %mlx5_fw_reporter_heath_buffer_data_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

mlx5_fw_reporter_heath_buffer_data_put.exit.if.end12_crit_edge: ; preds = %mlx5_fw_reporter_heath_buffer_data_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %mlx5_fw_reporter_heath_buffer_data_put.exit.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %tracer = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 29
  %24 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tracer, align 4
  %call13 = tail call i32 @mlx5_fw_tracer_get_saved_traces_objects(ptr noundef %25, ptr noundef %fmsg) #11
  br label %cleanup14

cleanup14:                                        ; preds = %if.end12, %mlx5_fw_reporter_heath_buffer_data_put.exit.cleanup14_crit_edge, %if.end90.i.cleanup14_crit_edge, %if.end83.i.cleanup14_crit_edge, %if.end75.i.cleanup14_crit_edge, %if.end69.i.cleanup14_crit_edge, %if.end64.i.cleanup14_crit_edge, %if.end58.i.cleanup14_crit_edge, %if.end51.i.cleanup14_crit_edge, %if.end44.i.cleanup14_crit_edge, %if.end37.i.cleanup14_crit_edge, %if.end30.i.cleanup14_crit_edge, %if.end23.i.cleanup14_crit_edge, %for.cond.5.i.cleanup14_crit_edge, %for.cond.4.i.cleanup14_crit_edge, %for.cond.3.i.cleanup14_crit_edge, %for.cond.2.i.cleanup14_crit_edge, %for.cond.1.i.cleanup14_crit_edge, %for.cond.i.cleanup14_crit_edge, %for.body.preheader.i.cleanup14_crit_edge, %if.end10.i.cleanup14_crit_edge, %if.end6.i.cleanup14_crit_edge, %if.end.i27.cleanup14_crit_edge, %mlx5_fw_reporter_ctx_pairs_put.exit.cleanup14_crit_edge, %if.then3.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ %call13, %if.end12 ], [ %call1.i, %mlx5_fw_reporter_ctx_pairs_put.exit.cleanup14_crit_edge ], [ %call1, %entry.cleanup14_crit_edge ], [ %call95.i, %mlx5_fw_reporter_heath_buffer_data_put.exit.cleanup14_crit_edge ], [ %call.i, %if.then3.cleanup14_crit_edge ], [ %call16.5.i, %for.cond.4.i.cleanup14_crit_edge ], [ %call16.4.i, %for.cond.3.i.cleanup14_crit_edge ], [ %call16.3.i, %for.cond.2.i.cleanup14_crit_edge ], [ %call16.2.i, %for.cond.1.i.cleanup14_crit_edge ], [ %call16.1.i, %for.cond.i.cleanup14_crit_edge ], [ %call16.i, %for.body.preheader.i.cleanup14_crit_edge ], [ %call91.i, %if.end90.i.cleanup14_crit_edge ], [ %call87.i, %if.end83.i.cleanup14_crit_edge ], [ %call80.i, %if.end75.i.cleanup14_crit_edge ], [ %call72.i, %if.end69.i.cleanup14_crit_edge ], [ %call66.i, %if.end64.i.cleanup14_crit_edge ], [ %call61.i, %if.end58.i.cleanup14_crit_edge ], [ %call55.i, %if.end51.i.cleanup14_crit_edge ], [ %call48.i, %if.end44.i.cleanup14_crit_edge ], [ %call41.i, %if.end37.i.cleanup14_crit_edge ], [ %call34.i, %if.end30.i.cleanup14_crit_edge ], [ %call27.i, %if.end23.i.cleanup14_crit_edge ], [ %call20.i, %for.cond.5.i.cleanup14_crit_edge ], [ %call11.i, %if.end10.i.cleanup14_crit_edge ], [ %call7.i, %if.end6.i.cleanup14_crit_edge ], [ %call3.i, %if.end.i27.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fw_reporter_diagnose(ptr noundef %reporter, ptr noundef %fmsg, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #11
  %health1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 10
  %0 = ptrtoint ptr %health1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %health1, align 4
  %synd3 = getelementptr inbounds %struct.health_buffer, ptr %1, i32 0, i32 11
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %synd3) #11, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  %call5 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.99, i8 noundef zeroext %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp ne i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool6.not = icmp eq i8 %2, 0
  %or.cond = or i1 %tobool6.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx)
  %3 = icmp ult i8 %switch.tableidx, 16
  br i1 %3, label %switch.lookup, label %if.end.hsynd_str.exit_crit_edge

if.end.hsynd_str.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %hsynd_str.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.mlx5_fw_reporter_diagnose, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %hsynd_str.exit

hsynd_str.exit:                                   ; preds = %switch.lookup, %if.end.hsynd_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %if.end.hsynd_str.exit_crit_edge ]
  %call8 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.100, ptr noundef nonnull %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %hsynd_str.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %hsynd_str.exit ], [ %call5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_tracer_trigger_core_dump_general(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_tracer_get_saved_traces_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u8_pair_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_pair_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_string_pair_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fw_fatal_reporter_recover(ptr noundef %reporter, ptr nocapture noundef readnone %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #11
  %call1 = tail call fastcc i32 @mlx5_health_try_recover(ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fw_fatal_reporter_dump(ptr noundef %reporter, ptr noundef %fmsg, ptr noundef readonly %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #11
  %crdump_size1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 10, i32 7
  %0 = ptrtoint ptr %crdump_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crdump_size1, align 8
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %1, i32 noundef 3264, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup18_crit_edge, label %if.end5

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @mlx5_crdump_collect(ptr noundef %call, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.free_data_crit_edge

if.end5.free_data_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_data

if.end9:                                          ; preds = %if.end5
  %tobool10.not = icmp eq ptr %priv_ctx, null
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  %4 = ptrtoint ptr %priv_ctx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %priv_ctx, align 4
  %call.i32 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.85, i8 noundef zeroext %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i, label %mlx5_fw_reporter_ctx_pairs_put.exit, label %if.then11.free_data_crit_edge

if.then11.free_data_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_data

mlx5_fw_reporter_ctx_pairs_put.exit:              ; preds = %if.then11
  %miss_counter.i = getelementptr inbounds %struct.mlx5_fw_reporter_ctx, ptr %priv_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %miss_counter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %miss_counter.i, align 4
  %call1.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.86, i32 noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool13.not = icmp eq i32 %call1.i, 0
  br i1 %tobool13.not, label %mlx5_fw_reporter_ctx_pairs_put.exit.if.end16_crit_edge, label %mlx5_fw_reporter_ctx_pairs_put.exit.free_data_crit_edge

mlx5_fw_reporter_ctx_pairs_put.exit.free_data_crit_edge: ; preds = %mlx5_fw_reporter_ctx_pairs_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_data

mlx5_fw_reporter_ctx_pairs_put.exit.if.end16_crit_edge: ; preds = %mlx5_fw_reporter_ctx_pairs_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %mlx5_fw_reporter_ctx_pairs_put.exit.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %call17 = tail call i32 @devlink_fmsg_binary_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.131, ptr noundef nonnull %call.i, i32 noundef %1) #11
  br label %free_data

free_data:                                        ; preds = %if.end16, %mlx5_fw_reporter_ctx_pairs_put.exit.free_data_crit_edge, %if.then11.free_data_crit_edge, %if.end5.free_data_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.free_data_crit_edge ], [ %call1.i, %mlx5_fw_reporter_ctx_pairs_put.exit.free_data_crit_edge ], [ %call17, %if.end16 ], [ %call.i32, %if.then11.free_data_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup18

cleanup18:                                        ; preds = %free_data, %if.end.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_data ], [ -1, %entry.cleanup18_crit_edge ], [ -12, %if.end.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_health_try_recover(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 336, i32 noundef %7) #14
  %iseg.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %8 = ptrtoint ptr %iseg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iseg.i.i, align 4
  %cmdq_addr_l_sz.i.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz.i.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %shr.i.i = lshr i32 %10, 8
  %trunc.i = trunc i32 %shr.i.i to i3
  %11 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.143)
  switch i3 %trunc.i, label %do.end29.i [
    i3 0, label %do.end.i
    i3 1, label %do.end5.i
    i3 2, label %do.end13.i
    i3 -1, label %sw.bb18.i
  ]

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef 289, i32 noundef %19) #14
  br label %mlx5_handle_bad_state.exit

do.end5.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i43.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i43.i to ptr
  %task8.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task8.i, align 8
  %pid9.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid9.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef 293, i32 noundef %27) #14
  br label %mlx5_handle_bad_state.exit

do.end13.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i44.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i44.i to ptr
  %task16.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task16.i, align 8
  %pid17.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid17.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef 297, i32 noundef %35) #14
  br label %mlx5_handle_bad_state.exit

sw.bb18.i:                                        ; preds = %entry
  %fatal_error.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10, i32 6
  %36 = ptrtoint ptr %fatal_error.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fatal_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 1
  br i1 %cmp.not.i, label %sw.bb18.i.mlx5_handle_bad_state.exit_crit_edge, label %do.end22.i

sw.bb18.i.mlx5_handle_bad_state.exit_crit_edge:   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_handle_bad_state.exit

do.end22.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %40 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i45.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i45.i to ptr
  %task25.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task25.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task25.i, align 8
  %pid26.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid26.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.118, i32 noundef 310, i32 noundef %45) #14
  br label %mlx5_handle_bad_state.exit

do.end29.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = and i32 %shr.i.i, 7
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %48 = tail call i32 @llvm.read_register.i32(metadata !256) #11
  %and.i46.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i46.i to ptr
  %task32.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task32.i, align 8
  %pid33.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid33.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.118, i32 noundef 315, i32 noundef %53, i32 noundef %conv.i.i) #14
  br label %mlx5_handle_bad_state.exit

mlx5_handle_bad_state.exit:                       ; preds = %do.end29.i, %do.end22.i, %sw.bb18.i.mlx5_handle_bad_state.exit_crit_edge, %do.end13.i, %do.end5.i, %do.end.i
  tail call void @mlx5_disable_device(ptr noundef %dev) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 8) #11
  %conv.i = trunc i64 %call.i to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #11
  %add.i = add i32 %call2.i.i, %54
  %health1.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 10
  %55 = ptrtoint ptr %health1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %health1.i.i, align 4
  %fw_ver.i6.i = getelementptr inbounds %struct.health_buffer, ptr %56, i32 0, i32 6
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver.i6.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.i57.i = icmp eq i32 %57, -1
  br i1 %cmp.i57.i, label %mlx5_handle_bad_state.exit.while.body.i_crit_edge, label %mlx5_handle_bad_state.exit.do.end9_crit_edge

mlx5_handle_bad_state.exit.do.end9_crit_edge:     ; preds = %mlx5_handle_bad_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

mlx5_handle_bad_state.exit.while.body.i_crit_edge: ; preds = %mlx5_handle_bad_state.exit
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %mlx5_handle_bad_state.exit.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end3, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 100) #11
  %59 = ptrtoint ptr %health1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %health1.i.i, align 4
  %fw_ver.i.i = getelementptr inbounds %struct.health_buffer, ptr %60, i32 0, i32 6
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fw_ver.i.i) #11, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %cmp.i5.i = icmp eq i32 %61, -1
  br i1 %cmp.i5.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do.end9_crit_edge

if.end.i.do.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end3:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %64 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task, align 8
  %pid7 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, i32 noundef 339, i32 noundef %67) #14
  br label %return

do.end9:                                          ; preds = %if.end.i.do.end9_crit_edge, %mlx5_handle_bad_state.exit.do.end9_crit_edge
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %pid13 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef 342, i32 noundef %73) #14
  %call14 = tail call i32 @mlx5_recover_device(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %do.end9.do.end20_crit_edge

do.end9.do.end20_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

lor.lhs.false:                                    ; preds = %do.end9
  %call16 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end27, label %lor.lhs.false.do.end20_crit_edge

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %do.end9.do.end20_crit_edge
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  %76 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task, align 8
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 68
  %78 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pid24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.103, i32 noundef 344, i32 noundef %79) #14
  br label %return

do.end27:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.114) #14
  br label %return

return:                                           ; preds = %do.end27, %do.end20, %do.end3
  %retval.0 = phi i32 [ -5, %do.end3 ], [ -5, %do.end20 ], [ 0, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_recover_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_crdump_collect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_binary_pair_put(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_health_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_unload_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !244, !245, !246, !248, !250, !251, !252, !254}
!llvm.named.register.sp = !{!256}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 244, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_error_sw_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_error_sw_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 269, i32 3}
!10 = !{ptr @mlx5_error_sw_reset._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_error_sw_reset._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 277, i32 2}
!14 = !{ptr @mlx5_error_sw_reset._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5_error_sw_reset._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 756, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlx5_trigger_health_work._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx5_trigger_health_work._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @mlx5_start_health_poll.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 835, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 903, i32 15}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 905, i32 15}
!28 = !{ptr @mlx5_health_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 909, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mlx5_health_init.__key.17, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 910, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlx5_health_init.__key.19, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 911, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mlx5_health_init.__key.21, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 912, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mlx5_health_init.__key.23, !38, !"__key", i1 false, i1 false}
!41 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 122, i32 3}
!44 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sensor_fw_synd_rfr.__UNIQUE_ID_ddebug500, !43, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 167, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @lock_sem_sw_reset._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @lock_sem_sw_reset._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 193, i32 3}
!55 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @reset_fw_if_needed._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @reset_fw_if_needed._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 197, i32 2}
!60 = !{ptr @reset_fw_if_needed._entry.33, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @reset_fw_if_needed._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 800, i32 3}
!64 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @poll_health._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @poll_health._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 816, i32 3}
!69 = !{ptr @poll_health._entry.38, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @poll_health._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 424, i32 3}
!73 = !{ptr @__func__.print_health_info, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 430, i32 2}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 434, i32 3}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 437, i32 2}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 438, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 439, i32 2}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 441, i32 2}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 442, i32 2}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 443, i32 2}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 444, i32 2}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 445, i32 2}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 446, i32 2}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 448, i32 2}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 449, i32 2}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h", i32 106, i32 6}
!102 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h", i32 114, i32 33}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 356, i32 10}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 358, i32 10}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 360, i32 10}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 362, i32 10}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 364, i32 10}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 366, i32 10}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 368, i32 10}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 370, i32 10}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 372, i32 10}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 374, i32 10}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 376, i32 10}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 378, i32 10}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 386, i32 10}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 388, i32 10}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 390, i32 10}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 392, i32 10}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 394, i32 10}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 396, i32 10}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 398, i32 10}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 400, i32 10}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 402, i32 9}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 712, i32 3}
!150 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mlx5_fw_reporters_create._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @mlx5_fw_reporters_create._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 721, i32 3}
!155 = !{ptr @mlx5_fw_reporters_create._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mlx5_fw_reporters_create._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 615, i32 11}
!159 = !{ptr @mlx5_fw_reporter_ops, !160, !"mlx5_fw_reporter_ops", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 614, i32 49}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 481, i32 39}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 485, i32 40}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 505, i32 43}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 511, i32 47}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 523, i32 40}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 527, i32 40}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 531, i32 40}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 534, i32 40}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 538, i32 39}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 541, i32 39}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 544, i32 39}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 548, i32 39}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 551, i32 40}
!187 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 555, i32 40}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 464, i32 39}
!191 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 467, i32 44}
!193 = !{ptr @.str.101, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 697, i32 11}
!195 = !{ptr @mlx5_fw_fatal_reporter_ops, !196, !"mlx5_fw_fatal_reporter_ops", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 696, i32 49}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 336, i32 2}
!199 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mlx5_health_try_recover._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @mlx5_health_try_recover._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 339, i32 3}
!204 = !{ptr @mlx5_health_try_recover._entry.104, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @mlx5_health_try_recover._entry_ptr.106, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 342, i32 2}
!208 = !{ptr @mlx5_health_try_recover._entry.107, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @mlx5_health_try_recover._entry_ptr.109, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 344, i32 3}
!212 = !{ptr @mlx5_health_try_recover._entry.110, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @mlx5_health_try_recover._entry_ptr.112, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.114, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 348, i32 2}
!216 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @mlx5_health_try_recover._entry.113, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @mlx5_health_try_recover._entry_ptr.116, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 289, i32 3}
!221 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @mlx5_handle_bad_state._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @mlx5_handle_bad_state._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 293, i32 3}
!226 = !{ptr @mlx5_handle_bad_state._entry.119, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @mlx5_handle_bad_state._entry_ptr.121, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 297, i32 3}
!230 = !{ptr @mlx5_handle_bad_state._entry.122, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @mlx5_handle_bad_state._entry_ptr.124, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.126, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 310, i32 4}
!234 = !{ptr @mlx5_handle_bad_state._entry.125, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @mlx5_handle_bad_state._entry_ptr.127, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.129, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 314, i32 3}
!238 = !{ptr @mlx5_handle_bad_state._entry.128, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @mlx5_handle_bad_state._entry_ptr.130, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.131, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 658, i32 43}
!242 = !{ptr @.str.132, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 679, i32 4}
!244 = !{ptr @mlx5_fw_fatal_reporter_err_work._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @mlx5_fw_fatal_reporter_err_work._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.133, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 685, i32 7}
!248 = !{ptr @.str.135, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 691, i32 3}
!250 = !{ptr @mlx5_fw_fatal_reporter_err_work._entry.134, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @mlx5_fw_fatal_reporter_err_work._entry_ptr.136, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.137, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 605, i32 11}
!254 = !{ptr @.str.138, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/health.c", i32 610, i32 11}
!256 = !{!"sp"}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 4673248}
!267 = !{i64 2158671367}
!268 = !{i64 2158671685}
!269 = !{i64 2158672002}
!270 = !{i64 4672830}
!271 = !{i64 2158672415}
!272 = !{i64 4673028}
!273 = !{i64 2152212373}
!274 = !{i64 2148716009, i64 2148716014, i64 2148716027, i64 2148716071, i64 2148716105, i64 2148716126}
!275 = !{i64 2158681862}
!276 = !{i64 2158756557}
!277 = !{!"auto-init"}
!278 = !{i64 1139184, i64 1139211, i64 1139233, i64 1139261}
!279 = !{i64 1139592, i64 1139619, i64 1139652, i64 1139673, i64 1139700, i64 1139726}
!280 = !{i64 2158714793}
!281 = !{i64 2158716246}
!282 = !{i64 2158716789}
!283 = !{i64 2158717324}
!284 = !{i64 2158596799}
!285 = !{i64 2158597270}
!286 = !{i64 2158597761}
!287 = !{i64 2158718070}
!288 = !{i64 2158718573}
!289 = !{i64 4672410}
!290 = !{i64 2158720049}
!291 = !{i64 2158720560}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{i64 2158721271}
!294 = !{i64 2158721575}
!295 = !{i64 2158721875}
!296 = !{i64 2158722157}
!297 = !{i64 2158722441}
!298 = !{i64 2158722755}
!299 = !{i64 2158723041}
