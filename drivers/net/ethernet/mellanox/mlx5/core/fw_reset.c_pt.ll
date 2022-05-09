; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.mlx5_fw_reset = type { ptr, %struct.mlx5_nb, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, %struct.timer_list, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_eqe_sync_fw_update = type { [3 x i8], i8 }
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@mlx5_fw_reset_wait_reset_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FW sync reset timeout after %lu seconds\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_fw_reset_wait_reset_done\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fw_reset_wait_reset_done._entry_ptr = internal global ptr @mlx5_fw_reset_wait_reset_done._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_fw_reset_events\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fw_reset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&fw_reset->fw_live_patch_work)\00", [47 x i8] zeroinitializer }, align 32
@mlx5_fw_reset_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&fw_reset->reset_request_work)\00", [47 x i8] zeroinitializer }, align 32
@mlx5_fw_reset_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&fw_reset->reset_reload_work)\00", [48 x i8] zeroinitializer }, align 32
@mlx5_fw_reset_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&fw_reset->reset_now_work)\00", [51 x i8] zeroinitializer }, align 32
@mlx5_fw_reset_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&fw_reset->reset_abort_work)\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_fw_live_patch_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 205, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Live patch updated firmware version: %d.%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fw_live_patch_event\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fw_live_patch_event._entry_ptr = internal global ptr @mlx5_fw_live_patch_event._entry, section ".printk_index", align 4
@mlx5_fw_live_patch_event._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 208, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Failed to reload FW tracer\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fw_live_patch_event._entry_ptr.22 = internal global ptr @mlx5_fw_live_patch_event._entry.19, section ".printk_index", align 4
@mlx5_sync_reset_request_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): PCI Sync FW Update Reset Nack %s\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_sync_reset_request_event\00", [34 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_request_event._entry_ptr = internal global ptr @mlx5_sync_reset_request_event._entry, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sent\00", [27 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_request_event._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): PCI Sync FW Update Reset Ack Failed. Error code: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_request_event._entry_ptr.29 = internal global ptr @mlx5_sync_reset_request_event._entry.27, section ".printk_index", align 4
@mlx5_sync_reset_request_event._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s:%d:(pid %d): PCI Sync FW Update Reset Ack. Device reset is expected.\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_request_event._entry_ptr.32 = internal global ptr @mlx5_sync_reset_request_event._entry.30, section ".printk_index", align 4
@mlx5_start_sync_reset_poll.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&fw_reset->timer)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@poll_sync_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:(pid %d): Got Device Reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"poll_sync_reset\00", [16 x i8] zeroinitializer }, align 32
@poll_sync_reset._entry_ptr = internal global ptr @poll_sync_reset._entry, section ".printk_index", align 4
@mlx5_sync_reset_reload_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 126, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): reset reload flow aborted, PCI reads still not working\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_sync_reset_reload_work\00", [36 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_reload_work._entry_ptr = internal global ptr @mlx5_sync_reset_reload_work._entry, section ".printk_index", align 4
@mlx5_sync_reset_now_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Sync Reset now. Device is going to reset.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_sync_reset_now_event\00", [38 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_now_event._entry_ptr = internal global ptr @mlx5_sync_reset_now_event._entry, section ".printk_index", align 4
@mlx5_sync_reset_now_event._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Fast teardown failed, no reset done, err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_now_event._entry_ptr.42 = internal global ptr @mlx5_sync_reset_now_event._entry.40, section ".printk_index", align 4
@mlx5_sync_reset_now_event._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 334, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): mlx5_pci_link_toggle failed, no reset done, err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_now_event._entry_ptr.45 = internal global ptr @mlx5_sync_reset_now_event._entry.43, section ".printk_index", align 4
@mlx5_pci_link_toggle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): No PCI link reporting capability (0x%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_pci_link_toggle\00", [43 x i8] zeroinitializer }, align 32
@mlx5_pci_link_toggle._entry_ptr = internal global ptr @mlx5_pci_link_toggle._entry, section ".printk_index", align 4
@mlx5_pci_link_toggle._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 299, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCI Link up\0A\00", [19 x i8] zeroinitializer }, align 32
@mlx5_pci_link_toggle._entry_ptr.50 = internal global ptr @mlx5_pci_link_toggle._entry.48, section ".printk_index", align 4
@mlx5_pci_link_toggle._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 302, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): PCI link not ready (0x%04x) after %llu ms\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_pci_link_toggle._entry_ptr.53 = internal global ptr @mlx5_pci_link_toggle._entry.51, section ".printk_index", align 4
@mlx5_sync_reset_abort_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 355, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): PCI Sync FW Update Reset Aborted.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_sync_reset_abort_event\00", [36 x i8] zeroinitializer }, align 32
@mlx5_sync_reset_abort_event._entry_ptr = internal global ptr @mlx5_sync_reset_abort_event._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.fw_reset_event_notifier = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 152, i32 196], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 8]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 405, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 435, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 444, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 445, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 446, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 447, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 448, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 204, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 208, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 220, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 227, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 229, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 174, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 161, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 126, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 324, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 328, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 334, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 283, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 299, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 301, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 355, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 87, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [37 x i8] c"switch.table.fw_reset_event_notifier\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @mlx5_fw_live_patch_event._entry, ptr @mlx5_fw_live_patch_event._entry.19, ptr @mlx5_fw_live_patch_event._entry_ptr, ptr @mlx5_fw_live_patch_event._entry_ptr.22, ptr @mlx5_fw_reset_wait_reset_done._entry, ptr @mlx5_fw_reset_wait_reset_done._entry_ptr, ptr @mlx5_pci_link_toggle._entry, ptr @mlx5_pci_link_toggle._entry.48, ptr @mlx5_pci_link_toggle._entry.51, ptr @mlx5_pci_link_toggle._entry_ptr, ptr @mlx5_pci_link_toggle._entry_ptr.50, ptr @mlx5_pci_link_toggle._entry_ptr.53, ptr @mlx5_sync_reset_abort_event._entry, ptr @mlx5_sync_reset_abort_event._entry_ptr, ptr @mlx5_sync_reset_now_event._entry, ptr @mlx5_sync_reset_now_event._entry.40, ptr @mlx5_sync_reset_now_event._entry.43, ptr @mlx5_sync_reset_now_event._entry_ptr, ptr @mlx5_sync_reset_now_event._entry_ptr.42, ptr @mlx5_sync_reset_now_event._entry_ptr.45, ptr @mlx5_sync_reset_reload_work._entry, ptr @mlx5_sync_reset_reload_work._entry_ptr, ptr @mlx5_sync_reset_request_event._entry, ptr @mlx5_sync_reset_request_event._entry.27, ptr @mlx5_sync_reset_request_event._entry.30, ptr @mlx5_sync_reset_request_event._entry_ptr, ptr @mlx5_sync_reset_request_event._entry_ptr.29, ptr @mlx5_sync_reset_request_event._entry_ptr.32, ptr @poll_sync_reset._entry, ptr @poll_sync_reset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlx5_fw_reset_init.__key, ptr @.str.7, ptr @mlx5_fw_reset_init.__key.8, ptr @.str.9, ptr @mlx5_fw_reset_init.__key.10, ptr @.str.11, ptr @mlx5_fw_reset_init.__key.12, ptr @.str.13, ptr @mlx5_fw_reset_init.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @mlx5_start_sync_reset_poll.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @init_completion.__key, ptr @.str.56, ptr @switch.table.fw_reset_event_notifier], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reset_wait_reset_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reset_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reset_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reset_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_reset_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_live_patch_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_live_patch_event._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_request_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_request_event._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_request_event._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_start_sync_reset_poll.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_sync_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_reload_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_now_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_now_event._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_now_event._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_link_toggle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_link_toggle._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_link_toggle._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sync_reset_abort_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fw_reset_event_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fw_reset_enable_remote_dev_reset_set(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reset1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset1, align 8
  %reset_flags = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %reset_flags) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reset_flags) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_fw_reset_enable_remote_dev_reset_get(ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reset1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset1, align 8
  %reset_flags = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_reset_query(ptr noundef %dev, ptr noundef writeonly %reset_level, ptr noundef writeonly %reset_type) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [2 x i32], align 8
  %in.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i) #7
  %0 = ptrtoint ptr %out.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i) #7
  %1 = ptrtoint ptr %in.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %in.i, align 8
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 8, ptr noundef nonnull %out.i, i32 noundef 8, i16 noundef zeroext -28632, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlx5_reg_mfrl_query.exit_crit_edge

entry.mlx5_reg_mfrl_query.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_reg_mfrl_query.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %reset_level, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr inbounds i32, ptr %out.i, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %conv.i = trunc i32 %3 to i8
  %4 = ptrtoint ptr %reset_level to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %reset_level, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %tobool6.not.i = icmp eq ptr %reset_type, null
  br i1 %tobool6.not.i, label %if.end5.i.mlx5_reg_mfrl_query.exit_crit_edge, label %if.then7.i

if.end5.i.mlx5_reg_mfrl_query.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_reg_mfrl_query.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i = getelementptr inbounds i32, ptr %out.i, i32 1
  %5 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr9.i, align 4
  %shr10.i = lshr i32 %6, 8
  %conv12.i = trunc i32 %shr10.i to i8
  %7 = ptrtoint ptr %reset_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12.i, ptr %reset_type, align 1
  br label %mlx5_reg_mfrl_query.exit

mlx5_reg_mfrl_query.exit:                         ; preds = %if.then7.i, %if.end5.i.mlx5_reg_mfrl_query.exit_crit_edge, %entry.mlx5_reg_mfrl_query.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_reset_set_reset_sync(ptr noundef %dev, i8 noundef zeroext %reset_type_sel) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [2 x i32], align 8
  %in.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reset1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset1, align 8
  %reset_flags = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %reset_flags) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i) #7
  %2 = ptrtoint ptr %out.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i) #7
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %in.i, align 8
  %add.ptr.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %4 = and i8 %reset_type_sel, 7
  %and16.i = zext i8 %4 to i32
  %shl17.i = shl nuw nsw i32 %and16.i, 24
  %or50.i = or i32 %shl17.i, 536870920
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or50.i, ptr %add.ptr.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 8, ptr noundef nonnull %out.i, i32 noundef 8, i16 noundef zeroext -28632, i32 noundef 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 2, ptr noundef %reset_flags) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_reset_set_live_patch(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [2 x i32], align 8
  %in.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i) #7
  %0 = ptrtoint ptr %out.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i) #7
  %1 = ptrtoint ptr %in.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1, ptr %in.i, align 8
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 8, ptr noundef nonnull %out.i, i32 noundef 8, i16 noundef zeroext -28632, i32 noundef 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_reset_wait_reset_done(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 10) #7
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #7
  %fw_reset2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset2, align 8
  %done = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !99) #7
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
  %div = udiv i32 %conv, 1000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 406, i32 noundef %9, i32 noundef %div) #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ret = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  br label %out

out:                                              ; preds = %if.end, %do.end
  %err.0 = phi i32 [ %11, %if.end ], [ -110, %do.end ]
  %reset_flags = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %reset_flags) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fw_reset_events_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reset1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset1, align 8
  %nb = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fw_reset_event_notifier, ptr %nb, align 4
  %event_type = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 34, ptr %event_type, align 4
  %call = tail call i32 @mlx5_eq_notifier_register(ptr noundef %dev, ptr noundef %nb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_reset_event_notifier(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub_type = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sub_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 7, label %entry.cleanup.sink.split_crit_edge
    i8 8, label %sw.bb4
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %sync_rst_state.i = getelementptr inbounds %struct.mlx5_eqe_sync_fw_update, ptr %data.i, i32 0, i32 1
  %3 = ptrtoint ptr %sync_rst_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sync_rst_state.i, align 1
  %5 = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %6 = icmp ult i8 %5, 3
  br i1 %6, label %switch.lookup, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i = zext i8 %5 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fw_reset_event_notifier, i32 0, i32 %conv2.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 20, %entry.cleanup.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %wq7.i = getelementptr i8, ptr %nb, i32 16
  %8 = ptrtoint ptr %wq7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq7.i, align 4
  %reset_abort_work.i = getelementptr i8, ptr %nb, i32 %.sink9
  %call.i15.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %reset_abort_work.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.bb4.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fw_reset_events_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reset = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset, align 8
  %nb = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 1
  %call = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %dev, ptr noundef %nb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_reset_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 356) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.6) #7
  %wq = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %wq, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call7.i.i, align 8
  %fw_reset7 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %3 = ptrtoint ptr %fw_reset7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %fw_reset7, align 8
  %fw_live_patch_work = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %fw_live_patch_work, i32 noundef 0) #7
  %4 = ptrtoint ptr %fw_live_patch_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %fw_live_patch_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @mlx5_fw_reset_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry11 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5_fw_live_patch_event, ptr %func, align 4
  %reset_request_work = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %reset_request_work, i32 noundef 0) #7
  %8 = ptrtoint ptr %reset_request_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %reset_request_work, align 4
  %lockdep_map19 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map19, ptr noundef nonnull @.str.9, ptr noundef nonnull @mlx5_fw_reset_init.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry21 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry21, ptr %entry21, align 8
  %prev.i97 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry21, ptr %prev.i97, align 4
  %func23 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %func23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlx5_sync_reset_request_event, ptr %func23, align 8
  %reset_reload_work = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %reset_reload_work, i32 noundef 0) #7
  %12 = ptrtoint ptr %reset_reload_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %reset_reload_work, align 8
  %lockdep_map32 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32, ptr noundef nonnull @.str.11, ptr noundef nonnull @mlx5_fw_reset_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry34 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i98 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry34, ptr %prev.i98, align 8
  %func36 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlx5_sync_reset_reload_work, ptr %func36, align 4
  %reset_now_work = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %reset_now_work, i32 noundef 0) #7
  %16 = ptrtoint ptr %reset_now_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %reset_now_work, align 4
  %lockdep_map45 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map45, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx5_fw_reset_init.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry47 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry47, ptr %entry47, align 8
  %prev.i99 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry47, ptr %prev.i99, align 4
  %func49 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %func49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlx5_sync_reset_now_event, ptr %func49, align 8
  %reset_abort_work = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %reset_abort_work, i32 noundef 0) #7
  %20 = ptrtoint ptr %reset_abort_work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %reset_abort_work, align 8
  %lockdep_map58 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map58, ptr noundef nonnull @.str.15, ptr noundef nonnull @mlx5_fw_reset_init.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry60 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i100 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry60, ptr %prev.i100, align 8
  %func62 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %func62 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mlx5_sync_reset_abort_event, ptr %func62, align 4
  %done = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %done, align 8
  %wait.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %call7.i.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @init_completion.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fw_live_patch_event(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iseg.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  %conv = and i32 %6, 65535
  %7 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iseg.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %shr.i = lshr i32 %9, 16
  %10 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub.i) #7, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %conv5 = and i32 %12, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %conv5) #10
  %tracer = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 29
  %13 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tracer, align 4
  %call6 = tail call i32 @mlx5_fw_tracer_reload(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #7
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef 208, i32 noundef %22) #10
  br label %if.end

if.end:                                           ; preds = %do.end9, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_sync_reset_request_event(ptr noundef %work) #0 align 64 {
entry:
  %out.i.i34 = alloca [2 x i32], align 8
  %in.i.i35 = alloca [2 x i32], align 8
  %out.i.i = alloca [2 x i32], align 8
  %in.i.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %reset_flags = getelementptr i8, ptr %work, i32 176
  %2 = ptrtoint ptr %reset_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i.i) #7
  %5 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %out.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i.i) #7
  %6 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 268435464, ptr %in.i.i, align 8
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i.i, i32 noundef 8, ptr noundef nonnull %out.i.i, i32 noundef 8, i16 noundef zeroext -28632, i32 noundef 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i.i) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = call i32 @llvm.read_register.i32(metadata !99) #7
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  %cond = select i1 %tobool4.not, ptr @.str.26, ptr @.str.25
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 221, i32 noundef %14, ptr noundef nonnull %cond) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_reset1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 33
  %15 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw_reset1.i, align 8
  tail call void @mlx5_stop_health_poll(ptr noundef %1, i1 noundef zeroext true) #7
  %reset_flags.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %16, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %reset_flags.i) #7
  %17 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_reset1.i, align 8
  %timer.i.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %18, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @poll_sync_reset, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @mlx5_start_sync_reset_poll.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %19, 10
  %call.i.i33 = tail call i32 @round_jiffies(i32 noundef %add.i.i) #7
  %expires.i.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %18, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i.i33, ptr %expires.i.i, align 4
  tail call void @add_timer(ptr noundef %timer.i.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i.i34) #7
  %21 = ptrtoint ptr %out.i.i34 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %out.i.i34, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i.i35) #7
  %22 = ptrtoint ptr %in.i.i35 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 134217736, ptr %in.i.i35, align 8
  %call.i.i36 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i.i35, i32 noundef 8, ptr noundef nonnull %out.i.i34, i32 noundef 8, i16 noundef zeroext -28632, i32 noundef 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i.i35) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i.i34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool6.not = icmp eq i32 %call.i.i36, 0
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %25 = call i32 @llvm.read_register.i32(metadata !99) #7
  %and.i38 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i38 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid21, align 8
  br i1 %tobool6.not, label %do.end17, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef 227, i32 noundef %30, i32 noundef %call.i.i36) #10
  br label %cleanup

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, i32 noundef 229, i32 noundef %30) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end10, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_sync_reset_reload_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @mlx5_enter_error_state(ptr noundef %1, i1 noundef zeroext true) #7
  tail call void @mlx5_unload_one(ptr noundef %1) #7
  %call = tail call i32 @mlx5_health_wait_pci_up(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !99) #7
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 126, i32 noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ret = getelementptr i8, ptr %work, i32 240
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %ret, align 4
  %fw_reset1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 33
  %11 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_reset1.i, align 8
  %reset_flags.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %reset_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %reset_flags.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %done.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %12, i32 0, i32 10
  tail call void @complete(ptr noundef %done.i) #7
  br label %mlx5_fw_reset_complete_reload.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @mlx5_load_one(ptr noundef %1) #7
  %call3.i = tail call ptr @priv_to_devlink(ptr noundef %1) #7
  tail call void @devlink_remote_reload_actions_performed(ptr noundef %call3.i, i32 noundef 0, i32 noundef 6) #7
  br label %mlx5_fw_reset_complete_reload.exit

mlx5_fw_reset_complete_reload.exit:               ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_sync_reset_now_event(ptr nocapture noundef %work) #0 align 64 {
entry:
  %reg16.i = alloca i16, align 2
  %dev_id.i = alloca i16, align 2
  %sdev_id.i = alloca i16, align 2
  %reg32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fw_reset1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 33
  %2 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_reset1.i, align 8
  %timer.i.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %3, i32 0, i32 9
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #7
  %reset_flags.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %3, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %reset_flags.i) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !99) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 324, i32 noundef %11) #10
  %call2 = tail call i32 @mlx5_cmd_fast_teardown_hca(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid9 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 328, i32 noundef %17, i32 noundef %call2) #10
  br label %done

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %self.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16.i) #7
  %24 = ptrtoint ptr %reg16.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %reg16.i, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dev_id.i) #7
  %25 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %dev_id.i, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sdev_id.i) #7
  %26 = ptrtoint ptr %sdev_id.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %sdev_id.i, align 2, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg32.i) #7
  %27 = ptrtoint ptr %reg32.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %reg32.i, align 4, !annotation !113
  %call.i = call i32 @pci_read_config_word(ptr noundef %19, i32 noundef 2, ptr noundef nonnull %dev_id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.mlx5_pci_link_toggle.exit.thread_crit_edge

if.end.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end.i:                                         ; preds = %if.end
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end6.i.for.cond.i_crit_edge, %if.end.i
  %sdev.0.in.i = phi ptr [ %devices.i, %if.end.i ], [ %sdev.0.i, %if.end6.i.for.cond.i_crit_edge ]
  %28 = ptrtoint ptr %sdev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %sdev.0.i = load ptr, ptr %sdev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %sdev.0.i, %devices.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %call3.i = call i32 @pci_read_config_word(ptr noundef %sdev.0.i, i32 noundef 2, ptr noundef nonnull %sdev_id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %for.body.i.mlx5_pci_link_toggle.exit.thread_crit_edge

for.body.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end6.i:                                        ; preds = %for.body.i
  %29 = ptrtoint ptr %sdev_id.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sdev_id.i, align 2
  %31 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dev_id.i, align 2
  %cmp8.not.i = icmp eq i16 %30, %32
  br i1 %cmp8.not.i, label %if.end6.i.for.cond.i_crit_edge, label %if.end6.i.mlx5_pci_link_toggle.exit.thread_crit_edge

if.end6.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end6.i.for.cond.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %call17.i = call zeroext i8 @pci_find_capability(ptr noundef %23, i32 noundef 16) #7
  %conv18.i = zext i8 %call17.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call17.i)
  %tobool19.not.i = icmp eq i8 %call17.i, 0
  br i1 %tobool19.not.i, label %for.end.i.mlx5_pci_link_toggle.exit.thread_crit_edge, label %for.cond27.preheader.i

for.end.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

for.cond27.preheader.i:                           ; preds = %for.end.i
  %33 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %sdev.1186.i = load ptr, ptr %devices.i, align 4
  %cmp30.not187.i = icmp eq ptr %sdev.1186.i, %devices.i
  br i1 %cmp30.not187.i, label %for.cond27.preheader.i.for.end41.i_crit_edge, label %for.cond27.preheader.i.for.body33.i_crit_edge

for.cond27.preheader.i.for.body33.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body33.i

for.cond27.preheader.i.for.end41.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41.i

for.body33.i:                                     ; preds = %for.body33.i.for.body33.i_crit_edge, %for.cond27.preheader.i.for.body33.i_crit_edge
  %sdev.1188.i = phi ptr [ %sdev.1.i, %for.body33.i.for.body33.i_crit_edge ], [ %sdev.1186.i, %for.cond27.preheader.i.for.body33.i_crit_edge ]
  %call34.i = call i32 @pci_save_state(ptr noundef %sdev.1188.i) #7
  call void @pci_cfg_access_lock(ptr noundef %sdev.1188.i) #7
  %34 = ptrtoint ptr %sdev.1188.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %sdev.1.i = load ptr, ptr %sdev.1188.i, align 4
  %cmp30.not.i = icmp eq ptr %sdev.1.i, %devices.i
  br i1 %cmp30.not.i, label %for.body33.i.for.end41.i_crit_edge, label %for.body33.i.for.body33.i_crit_edge

for.body33.i.for.body33.i_crit_edge:              ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.i

for.body33.i.for.end41.i_crit_edge:               ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41.i

for.end41.i:                                      ; preds = %for.body33.i.for.end41.i_crit_edge, %for.cond27.preheader.i.for.end41.i_crit_edge
  %add.i = add nuw nsw i32 %conv18.i, 16
  %call42.i = call i32 @pci_read_config_word(ptr noundef %23, i32 noundef %add.i, ptr noundef nonnull %reg16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %for.end41.i.mlx5_pci_link_toggle.exit.thread_crit_edge

for.end41.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end45.i:                                       ; preds = %for.end41.i
  %35 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reg16.i, align 2
  %37 = or i16 %36, 16
  store i16 %37, ptr %reg16.i, align 2
  %call49.i = call i32 @pci_write_config_word(ptr noundef %23, i32 noundef %add.i, i16 noundef zeroext %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end45.i.mlx5_pci_link_toggle.exit.thread_crit_edge

if.end45.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end52.i:                                       ; preds = %if.end45.i
  call void @msleep(i32 noundef 500) #7
  %38 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %reg16.i, align 2
  %40 = and i16 %39, -17
  store i16 %40, ptr %reg16.i, align 2
  %call56.i = call i32 @pci_write_config_word(ptr noundef %23, i32 noundef %add.i, i16 noundef zeroext %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.end52.i.mlx5_pci_link_toggle.exit.thread_crit_edge

if.end52.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end59.i:                                       ; preds = %if.end52.i
  %add60.i = add nuw nsw i32 %conv18.i, 12
  %call61.i = call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef %add60.i, ptr noundef nonnull %reg32.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end59.i.mlx5_pci_link_toggle.exit.thread_crit_edge

if.end59.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end64.i:                                       ; preds = %if.end59.i
  %41 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg32.i, align 4
  %and65.i = and i32 %42, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %do.end.i, label %if.end69.i

do.end.i:                                         ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %45 = call i32 @llvm.read_register.i32(metadata !99) #7
  %and.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 283, i32 noundef %50, i32 noundef %42) #10
  call void @msleep(i32 noundef 1000) #7
  br label %restore.i

if.end69.i:                                       ; preds = %if.end64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %call70.i = call i64 @_mlx5_tout_ms(ptr noundef %1, i32 noundef 5) #7
  %conv71.i = trunc i64 %call70.i to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv71.i) #7
  %add73.i = add i32 %call2.i.i, %51
  %add75.i = add nuw nsw i32 %conv18.i, 18
  br label %do.body74.i

do.body74.i:                                      ; preds = %if.end84.i.do.body74.i_crit_edge, %if.end69.i
  %call76.i = call i32 @pci_read_config_word(ptr noundef %23, i32 noundef %add75.i, ptr noundef nonnull %reg16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %do.body74.i.mlx5_pci_link_toggle.exit.thread_crit_edge

do.body74.i.mlx5_pci_link_toggle.exit.thread_crit_edge: ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit.thread

if.end79.i:                                       ; preds = %do.body74.i
  %52 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %reg16.i, align 2
  %54 = and i16 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool82.not.i = icmp eq i16 %54, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %if.end79.i.do.end89.i_crit_edge

if.end79.i.do.end89.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89.i

if.end84.i:                                       ; preds = %if.end79.i
  call void @msleep(i32 noundef 20) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add73.i, %55
  %cmp86.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp86.i, label %if.end84.i.do.body74.i_crit_edge, label %if.end84.i.do.end89.i_crit_edge

if.end84.i.do.end89.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89.i

if.end84.i.do.body74.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body74.i

do.end89.i:                                       ; preds = %if.end84.i.do.end89.i_crit_edge, %if.end79.i.do.end89.i_crit_edge
  %56 = ptrtoint ptr %reg16.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %reg16.i, align 2
  %conv90.i = zext i16 %57 to i32
  %and91.i = and i32 %conv90.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  br i1 %tobool92.not.i, label %do.end100.i, label %do.end96.i

do.end96.i:                                       ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.49) #10
  br label %restore.i

do.end100.i:                                      ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = call i32 @llvm.read_register.i32(metadata !99) #7
  %and.i182.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i182.i to ptr
  %task103.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task103.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task103.i, align 8
  %pid104.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid104.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid104.i, align 8
  %call106.i = call i64 @_mlx5_tout_ms(ptr noundef %1, i32 noundef 5) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47, i32 noundef 302, i32 noundef %65, i32 noundef %conv90.i, i64 noundef %call106.i) #10
  br label %restore.i

restore.i:                                        ; preds = %do.end100.i, %do.end96.i, %do.end.i
  %tobool11.not = phi i1 [ false, %do.end100.i ], [ true, %do.end96.i ], [ true, %do.end.i ]
  %err.0.i = phi i32 [ -110, %do.end100.i ], [ 0, %do.end96.i ], [ 0, %do.end.i ]
  %66 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %sdev.2189.i = load ptr, ptr %devices.i, align 4
  %cmp116.not190.i = icmp eq ptr %sdev.2189.i, %devices.i
  br i1 %cmp116.not190.i, label %restore.i.mlx5_pci_link_toggle.exit_crit_edge, label %restore.i.for.body119.i_crit_edge

restore.i.for.body119.i_crit_edge:                ; preds = %restore.i
  br label %for.body119.i

restore.i.mlx5_pci_link_toggle.exit_crit_edge:    ; preds = %restore.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit

for.body119.i:                                    ; preds = %for.body119.i.for.body119.i_crit_edge, %restore.i.for.body119.i_crit_edge
  %sdev.2191.i = phi ptr [ %sdev.2.i, %for.body119.i.for.body119.i_crit_edge ], [ %sdev.2189.i, %restore.i.for.body119.i_crit_edge ]
  call void @pci_cfg_access_unlock(ptr noundef %sdev.2191.i) #7
  call void @pci_restore_state(ptr noundef %sdev.2191.i) #7
  %67 = ptrtoint ptr %sdev.2191.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %sdev.2.i = load ptr, ptr %sdev.2191.i, align 4
  %cmp116.not.i = icmp eq ptr %sdev.2.i, %devices.i
  br i1 %cmp116.not.i, label %for.body119.i.mlx5_pci_link_toggle.exit_crit_edge, label %for.body119.i.for.body119.i_crit_edge

for.body119.i.for.body119.i_crit_edge:            ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body119.i

for.body119.i.mlx5_pci_link_toggle.exit_crit_edge: ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_pci_link_toggle.exit

mlx5_pci_link_toggle.exit.thread:                 ; preds = %do.body74.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %if.end59.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %if.end52.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %if.end45.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %for.end41.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %for.end.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %if.end6.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %for.body.i.mlx5_pci_link_toggle.exit.thread_crit_edge, %if.end.mlx5_pci_link_toggle.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call61.i, %if.end59.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ %call56.i, %if.end52.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ %call49.i, %if.end45.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ %call42.i, %for.end41.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ -95, %for.end.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ %call.i, %if.end.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ %call76.i, %do.body74.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ -1, %if.end6.i.mlx5_pci_link_toggle.exit.thread_crit_edge ], [ %call3.i, %for.body.i.mlx5_pci_link_toggle.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sdev_id.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dev_id.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #7
  br label %do.end15

mlx5_pci_link_toggle.exit:                        ; preds = %for.body119.i.mlx5_pci_link_toggle.exit_crit_edge, %restore.i.mlx5_pci_link_toggle.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg32.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sdev_id.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dev_id.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16.i) #7
  br i1 %tobool11.not, label %if.end20, label %mlx5_pci_link_toggle.exit.do.end15_crit_edge

mlx5_pci_link_toggle.exit.do.end15_crit_edge:     ; preds = %mlx5_pci_link_toggle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %mlx5_pci_link_toggle.exit.do.end15_crit_edge, %mlx5_pci_link_toggle.exit.thread
  %retval.0.i41 = phi i32 [ %retval.0.i.ph, %mlx5_pci_link_toggle.exit.thread ], [ %err.0.i, %mlx5_pci_link_toggle.exit.do.end15_crit_edge ]
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid19, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.39, i32 noundef 334, i32 noundef %73, i32 noundef %retval.0.i41) #10
  br label %done

if.end20:                                         ; preds = %mlx5_pci_link_toggle.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_enter_error_state(ptr noundef %1, i1 noundef zeroext true) #7
  call void @mlx5_unload_one(ptr noundef %1) #7
  br label %done

done:                                             ; preds = %if.end20, %do.end15, %do.end5
  %err.0 = phi i32 [ %call2, %do.end5 ], [ %retval.0.i41, %do.end15 ], [ 0, %if.end20 ]
  %ret = getelementptr i8, ptr %work, i32 196
  %74 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %err.0, ptr %ret, align 4
  %75 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fw_reset1.i, align 8
  %reset_flags.i35 = getelementptr inbounds %struct.mlx5_fw_reset, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %reset_flags.i35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %reset_flags.i35, align 4
  %79 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i36 = icmp eq i32 %79, 0
  br i1 %tobool.not.i36, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  %done.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %76, i32 0, i32 10
  call void @complete(ptr noundef %done.i) #7
  br label %mlx5_fw_reset_complete_reload.exit

if.else.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 @mlx5_load_one(ptr noundef %1) #7
  %call3.i37 = call ptr @priv_to_devlink(ptr noundef %1) #7
  call void @devlink_remote_reload_actions_performed(ptr noundef %call3.i37, i32 noundef 0, i32 noundef 6) #7
  br label %mlx5_fw_reset_complete_reload.exit

mlx5_fw_reset_complete_reload.exit:               ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_sync_reset_abort_event(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -200
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %reset_flags = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %reset_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_reset1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 33
  %4 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_reset1.i, align 8
  %timer.i.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %5, i32 0, i32 9
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #7
  %reset_flags.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %5, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %reset_flags.i) #7
  tail call void @mlx5_start_health_poll(ptr noundef %1) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !99) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 355, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fw_reset_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reset1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 33
  %0 = ptrtoint ptr %fw_reset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reset1, align 8
  %wq = getelementptr inbounds %struct.mlx5_fw_reset, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #7
  %4 = ptrtoint ptr %fw_reset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_reset1, align 8
  tail call void @kfree(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_tracer_reload(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_stop_health_poll(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_sync_reset(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -248
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %reset_flags = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %reset_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !99) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 161, i32 noundef %11) #10
  %fw_reset1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 33
  %12 = ptrtoint ptr %fw_reset1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_reset1.i, align 8
  %timer.i.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %13, i32 0, i32 9
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #7
  %reset_flags.i = getelementptr inbounds %struct.mlx5_fw_reset, ptr %13, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %reset_flags.i) #7
  %wq = getelementptr i8, ptr %t, i32 -228
  %14 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wq, align 4
  %reset_reload_work = getelementptr i8, ptr %t, i32 -136
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %reset_reload_work) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 10
  %call8 = tail call i32 @round_jiffies(i32 noundef %add) #7
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_health_check_fatal_sensors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_start_health_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_enter_error_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_unload_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_health_wait_pci_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_load_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_remote_reload_actions_performed(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fast_teardown_hca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_cfg_access_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_cfg_access_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 405, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_fw_reset_wait_reset_done._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_fw_reset_wait_reset_done._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 435, i32 17}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_fw_reset_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 444, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlx5_fw_reset_init.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 445, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5_fw_reset_init.__key.10, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 446, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx5_fw_reset_init.__key.12, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 447, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_fw_reset_init.__key.14, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 448, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 204, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlx5_fw_live_patch_event._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx5_fw_live_patch_event._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 208, i32 3}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_fw_live_patch_event._entry.19, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_fw_live_patch_event._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 220, i32 3}
!39 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mlx5_sync_reset_request_event._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mlx5_sync_reset_request_event._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 227, i32 3}
!46 = !{ptr @mlx5_sync_reset_request_event._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mlx5_sync_reset_request_event._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 229, i32 3}
!50 = !{ptr @mlx5_sync_reset_request_event._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx5_sync_reset_request_event._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mlx5_start_sync_reset_poll.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 174, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 161, i32 3}
!57 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @poll_sync_reset._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @poll_sync_reset._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 126, i32 3}
!62 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mlx5_sync_reset_reload_work._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mlx5_sync_reset_reload_work._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 324, i32 2}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mlx5_sync_reset_now_event._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mlx5_sync_reset_now_event._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 328, i32 3}
!72 = !{ptr @mlx5_sync_reset_now_event._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mlx5_sync_reset_now_event._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 334, i32 3}
!76 = !{ptr @mlx5_sync_reset_now_event._entry.43, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mlx5_sync_reset_now_event._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 283, i32 3}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mlx5_pci_link_toggle._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mlx5_pci_link_toggle._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 299, i32 3}
!85 = !{ptr @mlx5_pci_link_toggle._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mlx5_pci_link_toggle._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 301, i32 3}
!89 = !{ptr @mlx5_pci_link_toggle._entry.51, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mlx5_pci_link_toggle._entry_ptr.53, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c", i32 355, i32 2}
!93 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mlx5_sync_reset_abort_event._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mlx5_sync_reset_abort_event._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @init_completion.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../include/linux/completion.h", i32 87, i32 2}
!98 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i64 6088107}
!110 = !{i64 2158597726}
!111 = !{i64 2158598197}
!112 = !{i64 2158598688}
!113 = !{!"auto-init"}
