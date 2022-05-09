; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.137, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.137 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.167, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.173, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.167 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.172] }
%struct.anon.172 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.173 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.mlx5_vf_context = type { i32, i64, i64, i8, i32 }
%struct.mlx5_hca_vport_context = type { i32, i8, i8, i8, i32, i32, i32, i8, i64, i64, i64, i32, i32, i16, i16, i16, i8, i8, i8, i16, i8, i16, i16, i8 }

@mlx5_core_sriov_configure.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_core_sriov_configure\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sriov.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): requested num_vfs %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_sriov_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 152, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): mlx5_device_enable_sriov failed : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_sriov_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_sriov_enable._entry_ptr = internal global ptr @mlx5_sriov_enable._entry, section ".printk_index", align 4
@mlx5_sriov_enable._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 158, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): pci_enable_sriov failed : %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_sriov_enable._entry_ptr.10 = internal global ptr @mlx5_sriov_enable._entry.8, section ".printk_index", align 4
@mlx5_device_enable_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 83, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): failed to enable eswitch SRIOV (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_device_enable_sriov\00", [39 x i8] zeroinitializer }, align 32
@mlx5_device_enable_sriov._entry_ptr = internal global ptr @mlx5_device_enable_sriov._entry, section ".printk_index", align 4
@mlx5_device_enable_sriov._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): failed to enable VF %d (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_device_enable_sriov._entry_ptr.15 = internal global ptr @mlx5_device_enable_sriov._entry.13, section ".printk_index", align 4
@mlx5_device_enable_sriov._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 100, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): failed to set MSI-X vector counts VF %d, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_device_enable_sriov._entry_ptr.18 = internal global ptr @mlx5_device_enable_sriov._entry.16, section ".printk_index", align 4
@mlx5_device_enable_sriov._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 110, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): failed to restore VF %d settings, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_device_enable_sriov._entry_ptr.21 = internal global ptr @mlx5_device_enable_sriov._entry.19, section ".printk_index", align 4
@mlx5_device_enable_sriov.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.22, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): successfully enabled VF* %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sriov_restore_guids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 64, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s:%d:(pid %d): modify vport context failed, unable to restore VF %d settings\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sriov_restore_guids\00", [44 x i8] zeroinitializer }, align 32
@sriov_restore_guids._entry_ptr = internal global ptr @sriov_restore_guids._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_device_disable_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): failed to disable VF %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_device_disable_sriov\00", [38 x i8] zeroinitializer }, align 32
@mlx5_device_disable_sriov._entry_ptr = internal global ptr @mlx5_device_disable_sriov._entry, section ".printk_index", align 4
@mlx5_device_disable_sriov._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 142, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): timeout reclaiming VFs pages\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_device_disable_sriov._entry_ptr.29 = internal global ptr @mlx5_device_disable_sriov._entry.27, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 179, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 152, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 158, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 82, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 92, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 98, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 108, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 114, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 64, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 132, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 142, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @mlx5_device_disable_sriov._entry, ptr @mlx5_device_disable_sriov._entry.27, ptr @mlx5_device_disable_sriov._entry_ptr, ptr @mlx5_device_disable_sriov._entry_ptr.29, ptr @mlx5_device_enable_sriov._entry, ptr @mlx5_device_enable_sriov._entry.13, ptr @mlx5_device_enable_sriov._entry.16, ptr @mlx5_device_enable_sriov._entry.19, ptr @mlx5_device_enable_sriov._entry_ptr, ptr @mlx5_device_enable_sriov._entry_ptr.15, ptr @mlx5_device_enable_sriov._entry_ptr.18, ptr @mlx5_device_enable_sriov._entry_ptr.21, ptr @mlx5_sriov_enable._entry, ptr @mlx5_sriov_enable._entry.8, ptr @mlx5_sriov_enable._entry_ptr, ptr @mlx5_sriov_enable._entry_ptr.10, ptr @sriov_restore_guids._entry, ptr @sriov_restore_guids._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sriov_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sriov_enable._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_device_enable_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_device_enable_sriov._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_device_enable_sriov._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_device_enable_sriov._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sriov_restore_guids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_device_disable_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_device_disable_sriov._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_sriov_configure(ptr noundef %pdev, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_core_sriov_configure.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_core_sriov_configure, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !51) #7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_core_sriov_configure.__UNIQUE_ID_ddebug678, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef %9, i32 noundef %num_vfs) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %tobool6.not = icmp eq i32 %num_vfs, 0
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  %call1.i = tail call fastcc i32 @mlx5_device_enable_sriov(ptr noundef %11, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !51) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 152, i32 noundef %19, i32 noundef %call1.i) #10
  br label %if.end13.thread

if.end.i:                                         ; preds = %if.then7
  %call3.i = tail call i32 @pci_enable_sriov(ptr noundef %pdev, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i._crit_edge, label %do.end8.i

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %30

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i26.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i26.i to ptr
  %task11.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task11.i, align 8
  %pid12.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid12.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 158, i32 noundef %27, i32 noundef %call3.i) #10
  tail call fastcc void @mlx5_device_disable_sriov(ptr noundef %11, i32 noundef %num_vfs, i1 noundef zeroext true) #7
  br label %if.end13.thread

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %11, i32 0, i32 2
  %28 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev1.i, align 8
  %call2.i = tail call i32 @pci_num_vf(ptr noundef %29) #7
  tail call void @pci_disable_sriov(ptr noundef %pdev) #7
  tail call fastcc void @mlx5_device_disable_sriov(ptr noundef %11, i32 noundef %call2.i, i1 noundef zeroext true) #7
  br label %30

30:                                               ; preds = %if.else, %if.end.i._crit_edge
  %num_vfs12 = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 29, i32 1
  %31 = ptrtoint ptr %num_vfs12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %num_vfs, ptr %num_vfs12, align 4
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %30, %do.end8.i, %do.end.i
  %32 = phi i32 [ %num_vfs, %30 ], [ %call3.i, %do.end8.i ], [ %call1.i, %do.end.i ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_sriov_set_msix_vec_count(ptr noundef %vf, i32 noundef %msix_vec_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_virtfn.i = getelementptr inbounds %struct.pci_dev, ptr %vf, i32 0, i32 49
  %0 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %1 = and i40 %bf.load.i, 65536
  %tobool.not.i = icmp eq i40 %1, 0
  br i1 %tobool.not.i, label %entry.pci_physfn.exit_crit_edge, label %if.then.i

entry.pci_physfn.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_physfn.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = getelementptr inbounds %struct.pci_dev, ptr %vf, i32 0, i32 66
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br label %pci_physfn.exit

pci_physfn.exit:                                  ; preds = %if.then.i, %entry.pci_physfn.exit_crit_edge
  %dev.addr.0.i = phi ptr [ %4, %if.then.i ], [ %vf, %entry.pci_physfn.exit_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr %struct.mlx5_hca_cap, ptr %8, i32 0, i32 1, i32 56
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %and = and i32 %10, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %pci_physfn.exit.cleanup_crit_edge, label %if.end

pci_physfn.exit.cleanup_crit_edge:                ; preds = %pci_physfn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pci_physfn.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msix_vec_count)
  %tobool2.not = icmp eq i32 %msix_vec_count, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @pci_num_vf(ptr noundef %dev.addr.0.i) #7
  %call5 = tail call i32 @mlx5_get_default_msix_vec_count(ptr noundef %6, i32 noundef %call4) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %msix_vec_count.addr.0 = phi i32 [ %msix_vec_count, %if.end.if.end6_crit_edge ], [ %call5, %if.then3 ]
  %sriov7 = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 17, i32 29
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %vf, i32 0, i32 6
  %call846 = tail call i32 @pci_num_vf(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call846)
  %cmp47 = icmp sgt i32 %call846, 0
  br i1 %cmp47, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %id.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %11 = ptrtoint ptr %sriov7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov7, align 4
  %arrayidx9 = getelementptr %struct.mlx5_vf_context, ptr %12, i32 %id.048
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %15 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn, align 4
  %call13 = tail call i32 @pci_iov_virtfn_devfn(ptr noundef %dev.addr.0.i, i32 noundef %id.048) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call13)
  %cmp14 = icmp eq i32 %16, %call13
  br i1 %cmp14, label %if.end12.for.end_crit_edge, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.048, 1
  %call8 = tail call i32 @pci_num_vf(ptr noundef %dev.addr.0.i) #7
  %cmp = icmp slt i32 %inc, %call8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge, %if.end6.for.end_crit_edge
  %id.0.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %id.048, %if.end12.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call17 = tail call i32 @pci_num_vf(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.lcssa, i32 %call17)
  %cmp18 = icmp eq i32 %id.0.lcssa, %call17
  br i1 %cmp18, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %17 = ptrtoint ptr %sriov7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sriov7, align 4
  %arrayidx20 = getelementptr %struct.mlx5_vf_context, ptr %18, i32 %id.0.lcssa
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw i32 %id.0.lcssa, 1
  %call25 = tail call i32 @mlx5_set_msix_vec_count(ptr noundef %6, i32 noundef %add, i32 noundef %msix_vec_count.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %pci_physfn.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ -95, %pci_physfn.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_get_default_msix_vec_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_iov_virtfn_devfn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_msix_vec_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_sriov_attach(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call1 = tail call i32 @pci_num_vf(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call3 = tail call i32 @pci_num_vf(ptr noundef %5) #7
  %call4 = tail call fastcc i32 @mlx5_device_enable_sriov(ptr noundef %dev, i32 noundef %call3)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_device_enable_sriov(ptr noundef %dev, i32 noundef %num_vfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sriov1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 29
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.enable_vfs_hca_crit_edge, label %if.end

entry.enable_vfs_hca_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_vfs_hca

if.end:                                           ; preds = %entry
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %5 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eswitch, align 4
  %call = tail call i32 @mlx5_eswitch_enable(ptr noundef %6, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.enable_vfs_hca_crit_edge, label %do.end

if.end.enable_vfs_hca_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_vfs_hca

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 83, i32 noundef %14, i32 noundef %call) #10
  br label %cleanup

enable_vfs_hca:                                   ; preds = %if.end.enable_vfs_hca_crit_edge, %entry.enable_vfs_hca_crit_edge
  %call7 = tail call i32 @mlx5_get_default_msix_vec_count(ptr noundef %dev, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp116 = icmp sgt i32 %num_vfs, 0
  br i1 %cmp116, label %enable_vfs_hca.for.body_crit_edge, label %enable_vfs_hca.cleanup_crit_edge

enable_vfs_hca.cleanup_crit_edge:                 ; preds = %enable_vfs_hca
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

enable_vfs_hca.for.body_crit_edge:                ; preds = %enable_vfs_hca
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %enable_vfs_hca.for.body_crit_edge
  %vf.0117 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %enable_vfs_hca.for.body_crit_edge ]
  %add = add nuw nsw i32 %vf.0117, 1
  %conv = trunc i32 %add to i16
  %call8 = tail call i32 @mlx5_core_enable_hca(ptr noundef %dev, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i102 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i102 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task16, align 8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid17, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 92, i32 noundef %22, i32 noundef %vf.0117, i32 noundef %call8) #10
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %call20 = tail call i32 @mlx5_set_msix_vec_count(ptr noundef %dev, i32 noundef %add, i32 noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end30, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i103 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i103 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task28, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid29, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef 100, i32 noundef %30, i32 noundef %vf.0117, i32 noundef %call20) #10
  br label %for.inc

if.end30:                                         ; preds = %if.end18
  %31 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sriov1, align 4
  %arrayidx31 = getelementptr %struct.mlx5_vf_context, ptr %32, i32 %vf.0117
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx31, align 8
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps, align 8
  %add.ptr37 = getelementptr i32, ptr %35, i32 13
  %36 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr37, align 4
  %38 = and i32 %37, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %if.then42, label %if.end30.do.body55_crit_edge

if.end30.do.body55_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.then42:                                        ; preds = %if.end30
  %39 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sriov1, align 4
  %node_guid.i = getelementptr %struct.mlx5_vf_context, ptr %40, i32 %vf.0117, i32 2
  %41 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %node_guid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool.not.i = icmp eq i64 %42, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then42.if.then.i_crit_edge

if.then42.if.then.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then42
  %port_guid.i = getelementptr %struct.mlx5_vf_context, ptr %40, i32 %vf.0117, i32 1
  %43 = ptrtoint ptr %port_guid.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %port_guid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool4.not.i = icmp eq i64 %44, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %policy.i = getelementptr %struct.mlx5_vf_context, ptr %40, i32 %vf.0117, i32 4
  %45 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %policy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.not.i = icmp eq i32 %46, -1
  br i1 %cmp.not.i, label %lor.lhs.false5.i.do.body55_crit_edge, label %lor.lhs.false5.i.if.then.i_crit_edge

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false5.i.do.body55_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.then42.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 80) #11
  %tobool8.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i, label %if.then.i.do.end48_crit_edge, label %if.end.i

if.then.i.do.end48_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end.i:                                         ; preds = %if.then.i
  %48 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sriov1, align 4
  %node_guid12.i = getelementptr %struct.mlx5_vf_context, ptr %49, i32 %vf.0117, i32 2
  %50 = ptrtoint ptr %node_guid12.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %node_guid12.i, align 8
  %node_guid13.i = getelementptr inbounds %struct.mlx5_hca_vport_context, ptr %call7.i.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %node_guid13.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %node_guid13.i, align 8
  %port_guid16.i = getelementptr %struct.mlx5_vf_context, ptr %49, i32 %vf.0117, i32 1
  %53 = ptrtoint ptr %port_guid16.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %port_guid16.i, align 8
  %port_guid17.i = getelementptr inbounds %struct.mlx5_hca_vport_context, ptr %call7.i.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %port_guid17.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %port_guid17.i, align 8
  %policy20.i = getelementptr %struct.mlx5_vf_context, ptr %49, i32 %vf.0117, i32 4
  %56 = ptrtoint ptr %policy20.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %policy20.i, align 4
  %policy21.i = getelementptr inbounds %struct.mlx5_hca_vport_context, ptr %call7.i.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %policy21.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %policy21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool23.i = icmp ne i64 %54, 0
  %lnot.ext.i = zext i1 %tobool23.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool26.not.i = icmp eq i64 %51, 0
  %mul31.i = select i1 %tobool26.not.i, i32 0, i32 2
  %or.i = or i32 %mul31.i, %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool33.not.i = icmp eq i32 %57, 0
  %mul38.i = select i1 %tobool33.not.i, i32 0, i32 4
  %or39.i = or i32 %or.i, %mul38.i
  %59 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or39.i, ptr %call7.i.i.i, align 8
  %call40.i = tail call i32 @mlx5_core_modify_hca_vport_context(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %add, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %sriov_restore_guids.exit.thread113, label %sriov_restore_guids.exit

sriov_restore_guids.exit.thread113:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.body55

sriov_restore_guids.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %62 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 64, i32 noundef %67, i32 noundef %vf.0117) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end48

do.end48:                                         ; preds = %sriov_restore_guids.exit, %if.then.i.do.end48_crit_edge
  %retval.0.i104112 = phi i32 [ %call40.i, %sriov_restore_guids.exit ], [ -12, %if.then.i.do.end48_crit_edge ]
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %70 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i105 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i105 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task51, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid52, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, i32 noundef 110, i32 noundef %75, i32 noundef %vf.0117, i32 noundef %retval.0.i104112) #10
  br label %for.inc

do.body55:                                        ; preds = %sriov_restore_guids.exit.thread113, %lor.lhs.false5.i.do.body55_crit_edge, %if.end30.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_device_enable_sriov.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_device_enable_sriov, %if.then60)) #7
          to label %for.inc [label %if.then60], !srcloc !61

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 8
  %78 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i106 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i106 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task63, align 8
  %pid64 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid64, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_device_enable_sriov.__UNIQUE_ID_ddebug677, ptr noundef %77, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.12, i32 noundef 114, i32 noundef %83, i32 noundef %vf.0117) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %do.body55, %do.end48, %do.end25, %do.end13
  %exitcond.not = icmp eq i32 %add, %num_vfs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %enable_vfs_hca.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %enable_vfs_hca.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sriov_detach(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call1 = tail call i32 @pci_num_vf(ptr noundef %3) #7
  tail call fastcc void @mlx5_device_disable_sriov(ptr noundef %dev, i32 noundef %call1, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_device_disable_sriov(ptr noundef %dev, i32 noundef %num_vfs, i1 noundef zeroext %clear_vf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sriov1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 29
  %vf.041 = add i32 %num_vfs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf.041)
  %cmp42 = icmp sgt i32 %vf.041, -1
  br i1 %cmp42, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vf.044 = phi i32 [ %vf.0, %for.inc.for.body_crit_edge ], [ %vf.041, %entry.for.body_crit_edge ]
  %vf.0.in43 = phi i32 [ %vf.044, %for.inc.for.body_crit_edge ], [ %num_vfs, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sriov1, align 4
  %arrayidx = getelementptr %struct.mlx5_vf_context, ptr %1, i32 %vf.044
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = trunc i32 %vf.0.in43 to i16
  %call = tail call i32 @mlx5_core_disable_hca(ptr noundef %dev, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !51) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 132, i32 noundef %11, i32 noundef %vf.044) #10
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov1, align 4
  %arrayidx7 = getelementptr %struct.mlx5_vf_context, ptr %13, i32 %vf.044
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %do.end, %for.body.for.inc_crit_edge
  %vf.0 = add i32 %vf.044, -1
  %cmp = icmp sgt i32 %vf.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %16, i32 13
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %for.end.if.end14_crit_edge, label %if.then11

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %20 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_disable(ptr noundef %21, i1 noundef zeroext %clear_vf) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.end.if.end14_crit_edge
  %vfs_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 8
  %call16 = tail call i32 @mlx5_wait_for_pages(ptr noundef %dev, ptr noundef %vfs_pages) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end26_crit_edge, label %do.end21

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i40 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i40 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task24, align 8
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid25, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 142, i32 noundef %29) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %if.end14.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_sriov_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 8
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sriov1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 29
  %call3 = tail call i32 @pci_sriov_get_totalvfs(ptr noundef %1) #7
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %4 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.end.done.i_crit_edge, label %mlx5_core_is_ecpf_esw_manager.exit.i

if.end.done.i_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

mlx5_core_is_ecpf_esw_manager.exit.i:             ; preds = %if.end
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %7, i32 13
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.i.not.i, label %mlx5_core_is_ecpf_esw_manager.exit.i.done.i_crit_edge, label %if.then.i

mlx5_core_is_ecpf_esw_manager.exit.i.done.i_crit_edge: ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.then.i:                                        ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  %call1.i = tail call ptr @mlx5_esw_query_functions(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.done.i_crit_edge, label %if.end.i

if.then.i.done.i_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end.i:                                         ; preds = %if.then.i
  %add.ptr.i = getelementptr i32, ptr %call1.i, i32 5
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %12, 16
  %conv.i = trunc i32 %shr.i to i16
  tail call void @kvfree(ptr noundef %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool.not.i = icmp eq i16 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i.done.i_crit_edge, label %if.end.i.mlx5_get_max_vfs.exit_crit_edge

if.end.i.mlx5_get_max_vfs.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_get_max_vfs.exit

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

done.i:                                           ; preds = %if.end.i.done.i_crit_edge, %if.then.i.done.i_crit_edge, %mlx5_core_is_ecpf_esw_manager.exit.i.done.i_crit_edge, %if.end.done.i_crit_edge
  %13 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev2, align 8
  %call7.i = tail call i32 @pci_sriov_get_totalvfs(ptr noundef %14) #7
  %conv8.i = trunc i32 %call7.i to i16
  br label %mlx5_get_max_vfs.exit

mlx5_get_max_vfs.exit:                            ; preds = %done.i, %if.end.i.mlx5_get_max_vfs.exit_crit_edge
  %retval.0.i = phi i16 [ %conv8.i, %done.i ], [ %conv.i, %if.end.i.mlx5_get_max_vfs.exit_crit_edge ]
  %max_vfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 29, i32 2
  %15 = ptrtoint ptr %max_vfs to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %retval.0.i, ptr %max_vfs, align 4
  %call5 = tail call i32 @pci_num_vf(ptr noundef %1) #7
  %num_vfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 29, i32 1
  %16 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call5, ptr %num_vfs, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call3, i32 32) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %mlx5_get_max_vfs.exit.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !62

mlx5_get_max_vfs.exit.kcalloc.exit_crit_edge:     ; preds = %mlx5_get_max_vfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %mlx5_get_max_vfs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #12
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %mlx5_get_max_vfs.exit.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %mlx5_get_max_vfs.exit.kcalloc.exit_crit_edge ]
  %20 = ptrtoint ptr %sriov1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i.i, ptr %sriov1, align 4
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %kcalloc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %kcalloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_get_totalvfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sriov_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sriov1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 29
  %2 = ptrtoint ptr %sriov1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov1, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_enable_hca(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_hca_vport_context(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_disable_hca(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_wait_for_pages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_esw_query_functions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 179, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_core_sriov_configure.__UNIQUE_ID_ddebug678, !1, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 152, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_sriov_enable._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @mlx5_sriov_enable._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 158, i32 3}
!15 = !{ptr @mlx5_sriov_enable._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_sriov_enable._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 82, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx5_device_enable_sriov._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx5_device_enable_sriov._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 92, i32 4}
!24 = !{ptr @mlx5_device_enable_sriov._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mlx5_device_enable_sriov._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 98, i32 4}
!28 = !{ptr @mlx5_device_enable_sriov._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlx5_device_enable_sriov._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 108, i32 5}
!32 = !{ptr @mlx5_device_enable_sriov._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlx5_device_enable_sriov._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 114, i32 3}
!36 = !{ptr @mlx5_device_enable_sriov.__UNIQUE_ID_ddebug677, !35, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 64, i32 4}
!39 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sriov_restore_guids._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sriov_restore_guids._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 132, i32 4}
!44 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mlx5_device_disable_sriov._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mlx5_device_disable_sriov._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sriov.c", i32 142, i32 3}
!49 = !{ptr @mlx5_device_disable_sriov._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mlx5_device_disable_sriov._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148491195, i64 2148491200, i64 2148491213, i64 2148491257, i64 2148491291, i64 2148491312}
!62 = !{!"branch_weights", i32 1, i32 2000}
