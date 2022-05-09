; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/dev.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_adev_device = type { ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.mlx5_adev = type { %struct.auxiliary_device, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%union.devlink_param_value = type { i32, [28 x i8] }

@mlx5_eth_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Missing eth_net_offloads capability\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_eth_supported\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/dev.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr = internal global ptr @mlx5_eth_supported._entry, section ".printk_index", align 4
@mlx5_eth_supported._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Missing nic_flow_table capability\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.7 = internal global ptr @mlx5_eth_supported._entry.5, section ".printk_index", align 4
@mlx5_eth_supported._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Missing csum_cap capability\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.10 = internal global ptr @mlx5_eth_supported._entry.8, section ".printk_index", align 4
@mlx5_eth_supported._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Missing max_lso_cap capability\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.13 = internal global ptr @mlx5_eth_supported._entry.11, section ".printk_index", align 4
@mlx5_eth_supported._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Missing vlan_cap capability\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.16 = internal global ptr @mlx5_eth_supported._entry.14, section ".printk_index", align 4
@mlx5_eth_supported._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Missing rss_ind_tbl_cap capability\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.19 = internal global ptr @mlx5_eth_supported._entry.17, section ".printk_index", align 4
@mlx5_eth_supported._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:(pid %d): max_ft_level < 3\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.22 = internal global ptr @mlx5_eth_supported._entry.20, section ".printk_index", align 4
@mlx5_eth_supported._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Self loop back prevention is not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.25 = internal global ptr @mlx5_eth_supported._entry.23, section ".printk_index", align 4
@mlx5_eth_supported._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): CQ moderation is not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_eth_supported._entry_ptr.28 = internal global ptr @mlx5_eth_supported._entry.26, section ".printk_index", align 4
@mlx5_adev_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mlx5_intf_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mlx5_intf_mutex, i64 52), ptr getelementptr (i8, ptr @mlx5_intf_mutex, i64 52) }, ptr @mlx5_intf_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mlx5_adev_devices = internal constant { [6 x %struct.mlx5_adev_device], [56 x i8] } { [6 x %struct.mlx5_adev_device] [%struct.mlx5_adev_device { ptr @.str.34, ptr @mlx5_eth_supported, ptr @is_eth_enabled }, %struct.mlx5_adev_device { ptr @.str.35, ptr @is_eth_rep_supported, ptr null }, %struct.mlx5_adev_device { ptr @.str.36, ptr @mlx5_rdma_supported, ptr @is_ib_enabled }, %struct.mlx5_adev_device { ptr @.str.37, ptr @is_ib_rep_supported, ptr null }, %struct.mlx5_adev_device { ptr @.str.38, ptr @is_mp_supported, ptr null }, %struct.mlx5_adev_device { ptr @.str.39, ptr @mlx5_vnet_supported, ptr @is_vnet_enabled }], [56 x i8] zeroinitializer }, align 32
@mlx5_attach_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Device[%d] (%s) failed to load\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_attach_device\00", [45 x i8] zeroinitializer }, align 32
@mlx5_attach_device._entry_ptr = internal global ptr @mlx5_attach_device._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_adev_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_intf_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_intf_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth-rep\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdma-rep\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"multiport\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vnet\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@add_drivers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.41, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_drivers\00", [20 x i8] zeroinitializer }, align 32
@add_drivers._entry_ptr = internal global ptr @add_drivers._entry, section ".printk_index", align 4
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 66, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 71, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 76, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 81, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 86, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 91, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 97, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 102, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 104, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"mlx5_adev_ida\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"mlx5_intf_mutex\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"mlx5_adev_devices\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 239, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 386, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 41, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 40, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 246, i32 46 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 249, i32 50 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 243, i32 45 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 251, i32 49 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 253, i32 47 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 240, i32 47 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 322, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [49 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/dev.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 478, i32 4 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @add_drivers._entry, ptr @add_drivers._entry_ptr, ptr @mlx5_attach_device._entry, ptr @mlx5_attach_device._entry_ptr, ptr @mlx5_eth_supported._entry, ptr @mlx5_eth_supported._entry.11, ptr @mlx5_eth_supported._entry.14, ptr @mlx5_eth_supported._entry.17, ptr @mlx5_eth_supported._entry.20, ptr @mlx5_eth_supported._entry.23, ptr @mlx5_eth_supported._entry.26, ptr @mlx5_eth_supported._entry.5, ptr @mlx5_eth_supported._entry.8, ptr @mlx5_eth_supported._entry_ptr, ptr @mlx5_eth_supported._entry_ptr.10, ptr @mlx5_eth_supported._entry_ptr.13, ptr @mlx5_eth_supported._entry_ptr.16, ptr @mlx5_eth_supported._entry_ptr.19, ptr @mlx5_eth_supported._entry_ptr.22, ptr @mlx5_eth_supported._entry_ptr.25, ptr @mlx5_eth_supported._entry_ptr.28, ptr @mlx5_eth_supported._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @mlx5_adev_ida, ptr @mlx5_intf_mutex, ptr @mlx5_adev_devices, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eth_supported._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_adev_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_intf_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_adev_devices to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_attach_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_drivers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_eth_supported(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp.not = icmp eq i32 %4, 256
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr6 = getelementptr i32, ptr %1, i32 16
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr6, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef %15) #10
  br label %return

if.end10:                                         ; preds = %if.end
  %16 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i165 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i165 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task25, align 8
  %pid26 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid26, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 71, i32 noundef %24) #10
  br label %return

if.end27:                                         ; preds = %if.end10
  %arrayidx30 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx30, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool36.not = icmp sgt i32 %28, -1
  br i1 %tobool36.not, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i166 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i166 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid43, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef %36) #10
  br label %return

if.end44:                                         ; preds = %if.end27
  %37 = and i32 %28, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool53.not = icmp eq i32 %37, 0
  br i1 %tobool53.not, label %do.end56, label %if.end61

do.end56:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %40 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i167 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i167 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task59, align 8
  %pid60 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid60, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef %45) #10
  br label %return

if.end61:                                         ; preds = %if.end44
  %46 = and i32 %28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool70.not = icmp eq i32 %46, 0
  br i1 %tobool70.not, label %do.end73, label %if.end78

do.end73:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %49 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i168 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i168 to ptr
  %task76 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task76 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task76, align 8
  %pid77 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid77, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef %54) #10
  br label %return

if.end78:                                         ; preds = %if.end61
  %55 = and i32 %28, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool87.not = icmp eq i32 %55, 0
  br i1 %tobool87.not, label %do.end90, label %if.end95

do.end90:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %58 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i169 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i169 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task93, align 8
  %pid94 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 68
  %62 = ptrtoint ptr %pid94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pid94, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 91, i32 noundef %63) #10
  br label %return

if.end95:                                         ; preds = %if.end78
  %arrayidx98 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %64 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx98, align 4
  %add.ptr101 = getelementptr i32, ptr %65, i32 17
  %66 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr101, align 4
  %and103 = and i32 %67, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and103)
  %cmp104 = icmp ult i32 %and103, 3
  br i1 %cmp104, label %do.end107, label %if.end112

do.end107:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %70 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i170 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i170 to ptr
  %task110 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task110 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task110, align 8
  %pid111 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %pid111 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid111, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef %75) #10
  br label %return

if.end112:                                        ; preds = %if.end95
  %76 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool121.not = icmp eq i32 %76, 0
  br i1 %tobool121.not, label %do.end124, label %if.end112.if.end129_crit_edge

if.end112.if.end129_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

do.end124:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 8
  %79 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i171 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i171 to ptr
  %task127 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task127 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task127, align 8
  %pid128 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid128 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid128, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 102, i32 noundef %84) #10
  br label %if.end129

if.end129:                                        ; preds = %do.end124, %if.end112.if.end129_crit_edge
  %85 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %caps, align 8
  %add.ptr135 = getelementptr i32, ptr %86, i32 17
  %87 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr135, align 4
  %89 = and i32 %88, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool138.not = icmp eq i32 %89, 0
  br i1 %tobool138.not, label %do.end141, label %if.end129.return_crit_edge

if.end129.return_crit_edge:                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end141:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  %92 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i172 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i172 to ptr
  %task144 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task144 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task144, align 8
  %pid145 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68
  %96 = ptrtoint ptr %pid145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pid145, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 104, i32 noundef %97) #10
  br label %return

return:                                           ; preds = %do.end141, %if.end129.return_crit_edge, %do.end107, %do.end90, %do.end73, %do.end56, %do.end39, %do.end22, %do.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %do.end107 ], [ false, %do.end90 ], [ false, %do.end73 ], [ false, %do.end56 ], [ false, %do.end39 ], [ false, %do.end22 ], [ false, %do.end ], [ false, %entry.return_crit_edge ], [ true, %do.end141 ], [ true, %if.end129.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_vnet_supported(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i64, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  %and = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 19
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  br i1 %tobool11.not, label %if.end2.return_crit_edge, label %if.end13

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end13:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %11 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp ne i32 %11, 0
  br label %return

return:                                           ; preds = %if.end13, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end2.return_crit_edge ], [ %tobool22.not, %if.end13 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_rdma_supported(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end2_crit_edge, label %is_eth_rep_supported.exit.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

is_eth_rep_supported.exit.i:                      ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i)
  %cmp.i.i.i = icmp eq i8 %call.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.end2.i, label %is_eth_rep_supported.exit.i.if.end2_crit_edge

is_eth_rep_supported.exit.i.if.end2_crit_edge:    ; preds = %is_eth_rep_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end2.i:                                        ; preds = %is_eth_rep_supported.exit.i
  %7 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end2.i.if.end2_crit_edge, label %if.end6.i

if.end2.i.if.end2_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end6.i:                                        ; preds = %if.end2.i
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  br i1 %cmp.i.i, label %is_ib_rep_supported.exit, label %if.end6.i.if.end2_crit_edge

if.end6.i.if.end2_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

is_ib_rep_supported.exit:                         ; preds = %if.end6.i
  %12 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %13, i32 48
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 4
  %16 = and i32 %15, -16712192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %.not.i = icmp eq i32 %16, 0
  br i1 %.not.i, label %is_ib_rep_supported.exit.return_crit_edge, label %is_ib_rep_supported.exit.if.end2_crit_edge

is_ib_rep_supported.exit.if.end2_crit_edge:       ; preds = %is_ib_rep_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

is_ib_rep_supported.exit.return_crit_edge:        ; preds = %is_ib_rep_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %is_ib_rep_supported.exit.if.end2_crit_edge, %if.end6.i.if.end2_crit_edge, %if.end2.i.if.end2_crit_edge, %is_eth_rep_supported.exit.i.if.end2_crit_edge, %if.end.i.if.end2_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and.i9 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %if.end.i.i, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i:                                       ; preds = %if.end2
  %19 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i.i11 = getelementptr i32, ptr %20, i32 13
  %21 = ptrtoint ptr %add.ptr.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i.i11, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end2.i16_crit_edge, label %is_eth_rep_supported.exit.i.i

if.end.i.i.if.end2.i16_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i16

is_eth_rep_supported.exit.i.i:                    ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i8 %call.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.end2.i.i, label %is_eth_rep_supported.exit.i.i.if.end2.i16_crit_edge

is_eth_rep_supported.exit.i.i.if.end2.i16_crit_edge: ; preds = %is_eth_rep_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i16

if.end2.i.i:                                      ; preds = %is_eth_rep_supported.exit.i.i
  %24 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i12 = getelementptr i32, ptr %25, i32 13
  %26 = ptrtoint ptr %add.ptr.i.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i12, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool4.not.i.i, label %if.end2.i.i.if.end2.i16_crit_edge, label %if.end6.i.i

if.end2.i.i.if.end2.i16_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i16

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %call.i.i.i13 = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i13)
  %cmp.i.i.i14 = icmp eq i8 %call.i.i.i13, 2
  br i1 %cmp.i.i.i14, label %is_ib_rep_supported.exit.i, label %if.end6.i.i.if.end2.i16_crit_edge

if.end6.i.i.if.end2.i16_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i16

is_ib_rep_supported.exit.i:                       ; preds = %if.end6.i.i
  %29 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %30, i32 48
  %31 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %33 = and i32 %32, -16712192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %.not.i.i = icmp eq i32 %33, 0
  br i1 %.not.i.i, label %is_ib_rep_supported.exit.i.return_crit_edge, label %is_ib_rep_supported.exit.i.if.end2.i16_crit_edge

is_ib_rep_supported.exit.i.if.end2.i16_crit_edge: ; preds = %is_ib_rep_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i16

is_ib_rep_supported.exit.i.return_crit_edge:      ; preds = %is_ib_rep_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2.i16:                                      ; preds = %is_ib_rep_supported.exit.i.if.end2.i16_crit_edge, %if.end6.i.i.if.end2.i16_crit_edge, %if.end2.i.i.if.end2.i16_crit_edge, %is_eth_rep_supported.exit.i.i.if.end2.i16_crit_edge, %if.end.i.i.if.end2.i16_crit_edge
  %34 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i15 = getelementptr i32, ptr %35, i32 13
  %36 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i15, align 4
  %38 = and i32 %37, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 256
  br i1 %cmp.not.i, label %is_mp_supported.exit, label %if.end2.i16.return_crit_edge

if.end2.i16.return_crit_edge:                     ; preds = %if.end2.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_mp_supported.exit:                             ; preds = %if.end2.i16
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i13.i = getelementptr i32, ptr %35, i32 48
  %39 = ptrtoint ptr %add.ptr.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %40)
  %tobool.not.i14.i = icmp ult i32 %40, 16777216
  %41 = and i32 %40, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i17 = icmp ne i32 %41, 0
  %not.not.tobool7.not.i = or i1 %tobool.not.i14.i, %cmp.i.i17
  br label %return

return:                                           ; preds = %is_mp_supported.exit, %if.end2.i16.return_crit_edge, %is_ib_rep_supported.exit.i.return_crit_edge, %if.end2.return_crit_edge, %is_ib_rep_supported.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %is_ib_rep_supported.exit.return_crit_edge ], [ true, %if.end2.return_crit_edge ], [ true, %is_ib_rep_supported.exit.i.return_crit_edge ], [ true, %if.end2.i16.return_crit_edge ], [ %not.not.tobool7.not.i, %is_mp_supported.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_ib_rep_supported(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %is_eth_rep_supported.exit

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_eth_rep_supported.exit:                        ; preds = %if.end
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  br i1 %cmp.i.i, label %if.end2, label %is_eth_rep_supported.exit.return_crit_edge

is_eth_rep_supported.exit.return_crit_edge:       ; preds = %is_eth_rep_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %is_eth_rep_supported.exit
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end2.return_crit_edge, label %if.end6

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end6:                                          ; preds = %if.end2
  %call.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 2
  br i1 %cmp.i, label %if.end9, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %13, i32 48
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %16 = and i32 %15, -16712192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %.not = icmp eq i32 %16, 0
  br label %return

return:                                           ; preds = %if.end9, %if.end6.return_crit_edge, %if.end2.return_crit_edge, %is_eth_rep_supported.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %is_eth_rep_supported.exit.return_crit_edge ], [ false, %if.end2.return_crit_edge ], [ false, %if.end6.return_crit_edge ], [ %.not, %if.end9 ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_mp_supported(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end2_crit_edge, label %is_eth_rep_supported.exit.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

is_eth_rep_supported.exit.i:                      ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i)
  %cmp.i.i.i = icmp eq i8 %call.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.end2.i, label %is_eth_rep_supported.exit.i.if.end2_crit_edge

is_eth_rep_supported.exit.i.if.end2_crit_edge:    ; preds = %is_eth_rep_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end2.i:                                        ; preds = %is_eth_rep_supported.exit.i
  %7 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end2.i.if.end2_crit_edge, label %if.end6.i

if.end2.i.if.end2_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end6.i:                                        ; preds = %if.end2.i
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  br i1 %cmp.i.i, label %is_ib_rep_supported.exit, label %if.end6.i.if.end2_crit_edge

if.end6.i.if.end2_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

is_ib_rep_supported.exit:                         ; preds = %if.end6.i
  %12 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %13, i32 48
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 4
  %16 = and i32 %15, -16712192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %.not.i = icmp eq i32 %16, 0
  br i1 %.not.i, label %is_ib_rep_supported.exit.return_crit_edge, label %is_ib_rep_supported.exit.if.end2_crit_edge

is_ib_rep_supported.exit.if.end2_crit_edge:       ; preds = %is_ib_rep_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

is_ib_rep_supported.exit.return_crit_edge:        ; preds = %is_ib_rep_supported.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %is_ib_rep_supported.exit.if.end2_crit_edge, %if.end6.i.if.end2_crit_edge, %if.end2.i.if.end2_crit_edge, %is_eth_rep_supported.exit.i.if.end2_crit_edge, %if.end.i.if.end2_crit_edge
  %17 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i.i, align 8
  %add.ptr = getelementptr i32, ptr %18, i32 13
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %21 = and i32 %20, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %21)
  %cmp.not = icmp eq i32 %21, 256
  br i1 %cmp.not, label %if.end5, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i13 = getelementptr i32, ptr %18, i32 48
  %22 = ptrtoint ptr %add.ptr.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %23)
  %tobool.not.i14 = icmp ugt i32 %23, 16777215
  %24 = and i32 %23, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  %not.tobool7.not = and i1 %tobool.not.i14, %cmp.i
  br label %return

return:                                           ; preds = %if.end5, %if.end2.return_crit_edge, %is_ib_rep_supported.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %is_ib_rep_supported.exit.return_crit_edge ], [ false, %if.end2.return_crit_edge ], [ %not.tobool7.not, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_adev_idx_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @mlx5_adev_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_adev_idx_free(i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_free(ptr noundef nonnull @mlx5_adev_ida, i32 noundef %idx) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_adev_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #11
  %adev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 23
  %1 = ptrtoint ptr %adev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %adev, align 8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_adev_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 23
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_attach_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mlx5_intf_mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, -5
  store i32 %and, ptr %flags, align 8
  %adev2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0106 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %adev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev2, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.0106
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = lshr i32 26, %i.0106
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.not = icmp eq i32 %7, 0
  br i1 %tobool4.not.not, label %if.then5, label %if.then.if.then14_crit_edge

if.then.if.then14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then5:                                         ; preds = %if.then
  %is_enabled = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.0106, i32 2
  %8 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %is_enabled, align 4
  %call = tail call zeroext i1 %9(ptr noundef %dev) #7
  br i1 %call, label %if.then5.if.then14_crit_edge, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then5.if.then14_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %if.then5.if.then14_crit_edge, %if.then.if.then14_crit_edge
  %is_supported12 = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.0106, i32 1
  %10 = ptrtoint ptr %is_supported12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_supported12, align 4
  %call17 = tail call zeroext i1 %11(ptr noundef %dev) #7
  br i1 %call17, label %if.end22, label %if.then14.for.inc_crit_edge

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end22:                                         ; preds = %if.then14
  %call23 = tail call fastcc ptr @add_adev(ptr noundef %dev, i32 noundef %i.0106)
  %12 = ptrtoint ptr %adev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev2, align 8
  %arrayidx25 = getelementptr ptr, ptr %13, i32 %i.0106
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call23, ptr %arrayidx25, align 4
  %15 = load ptr, ptr %adev2, align 8
  %arrayidx27 = getelementptr ptr, ptr %15, i32 %i.0106
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx27, align 4
  %cmp.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx27, align 4
  br label %if.end54

if.else:                                          ; preds = %for.body
  %driver = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %tobool43.not = icmp eq ptr %21, null
  br i1 %tobool43.not, label %if.else.for.inc_crit_edge, label %if.end45

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end45:                                         ; preds = %if.else
  %resume = getelementptr i8, ptr %21, i32 -8
  %22 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resume, align 4
  %tobool49.not = icmp eq ptr %23, null
  br i1 %tobool49.not, label %if.end45.for.inc_crit_edge, label %if.then50

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 %23(ptr noundef nonnull %5) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then29
  %ret.3 = phi i32 [ %call52, %if.then50 ], [ %18, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool55.not = icmp eq i32 %ret.3, 0
  br i1 %tobool55.not, label %if.end54.for.inc_crit_edge, label %do.end

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  %arrayidx58 = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.0106
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 387, i32 noundef %31, i32 noundef %i.0106, ptr noundef %33) #10
  br label %for.end

for.inc:                                          ; preds = %if.end54.for.inc_crit_edge, %if.end45.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %if.then5.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end
  %ret.5 = phi i32 [ %ret.3, %do.end ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @mlx5_intf_mutex) #7
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_adev(ptr noundef %dev, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 944) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %adev_idx = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 24
  %3 = ptrtoint ptr %adev_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %adev_idx, align 4
  %id = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 4
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %name, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adev_release, ptr %release, align 4
  %mdev = getelementptr inbounds %struct.mlx5_adev, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %mdev, align 8
  %idx6 = getelementptr inbounds %struct.mlx5_adev, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %idx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %idx, ptr %idx6, align 4
  %call7 = tail call i32 @auxiliary_device_init(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %13 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @__auxiliary_device_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #7
  %14 = inttoptr i32 %call12 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %if.then9 ], [ %14, %if.then14 ], [ %call7.i.i, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_detach_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mlx5_intf_mutex, i32 noundef 0) #7
  %adev2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.049 = phi i32 [ 5, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %adev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev2, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.049
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = lshr i32 26, %i.049
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.not = icmp eq i32 %5, 0
  br i1 %tobool4.not.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %is_enabled = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.049, i32 2
  %6 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_enabled, align 4
  %call = tail call zeroext i1 %7(ptr noundef %dev) #7
  br i1 %call, label %if.then5.if.end11_crit_edge, label %if.then5.skip_suspend_crit_edge

if.then5.skip_suspend_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_suspend

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %8 = ptrtoint ptr %adev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev2, align 8
  %arrayidx13 = getelementptr ptr, ptr %9, i32 %i.049
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %driver = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %if.end11.skip_suspend_crit_edge, label %if.end18

if.end11.skip_suspend_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_suspend

if.end18:                                         ; preds = %if.end11
  %suspend = getelementptr i8, ptr %13, i32 -12
  %14 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end18.skip_suspend_crit_edge, label %if.then23

if.end18.skip_suspend_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_suspend

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 %15(ptr noundef %11, [1 x i32] zeroinitializer) #7
  br label %for.inc

skip_suspend:                                     ; preds = %if.end18.skip_suspend_crit_edge, %if.end11.skip_suspend_crit_edge, %if.then5.skip_suspend_crit_edge
  %16 = ptrtoint ptr %adev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev2, align 8
  %arrayidx28 = getelementptr ptr, ptr %17, i32 %i.049
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28, align 4
  tail call void @device_del(ptr noundef %19) #7
  tail call void @put_device(ptr noundef %19) #7
  %20 = ptrtoint ptr %adev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adev2, align 8
  %arrayidx31 = getelementptr ptr, ptr %21, i32 %i.049
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %skip_suspend, %if.then23, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.049, -1
  %cmp.not = icmp eq i32 %i.049, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %or = or i32 %24, 4
  store i32 %or, ptr %flags, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @mlx5_intf_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mlx5_intf_mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, -3
  store i32 %and, ptr %flags, align 8
  %call = tail call i32 @mlx5_rescan_drivers_locked(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef nonnull @mlx5_intf_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @mlx5_intf_mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %flags, align 8
  %call.i = tail call i32 @mlx5_rescan_drivers_locked(ptr noundef %dev) #7
  tail call void @mutex_unlock(ptr noundef nonnull @mlx5_intf_mutex) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_rescan_drivers_locked(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @mlx5_intf_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !82

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 530, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %adev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup31.i.for.body.i_crit_edge, %if.end27
  %i.048.i = phi i32 [ 5, %if.end27 ], [ %dec.i, %cleanup31.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adev.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %i.048.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %for.body.i.cleanup31.i_crit_edge, label %if.end.i

for.body.i.cleanup31.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31.i

if.end.i:                                         ; preds = %for.body.i
  %7 = lshr i32 26, %i.048.i
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.not.i, label %if.then5.i, label %if.end12.i

if.then5.i:                                       ; preds = %if.end.i
  %is_enabled.i = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.048.i, i32 2
  %9 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %is_enabled.i, align 4
  %call.i38 = tail call zeroext i1 %10(ptr noundef %dev) #7
  %11 = select i1 %call.i38, i1 %tobool.not.i, i1 false
  br i1 %11, label %if.then5.i.if.then17.i_crit_edge, label %if.then5.i.del_adev.i_crit_edge

if.then5.i.del_adev.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %del_adev.i

if.then5.i.if.then17.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.end12.i:                                       ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end12.i.if.then17.i_crit_edge, label %if.end12.i.del_adev.i_crit_edge

if.end12.i.del_adev.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %del_adev.i

if.end12.i.if.then17.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end12.i.if.then17.i_crit_edge, %if.then5.i.if.then17.i_crit_edge
  %is_supported14.i = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.048.i, i32 1
  %12 = ptrtoint ptr %is_supported14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %is_supported14.i, align 4
  %call20.i = tail call zeroext i1 %13(ptr noundef %dev) #7
  br i1 %call20.i, label %if.then17.i.cleanup31.i_crit_edge, label %if.then17.i.del_adev.i_crit_edge

if.then17.i.del_adev.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %del_adev.i

if.then17.i.cleanup31.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31.i

del_adev.i:                                       ; preds = %if.then17.i.del_adev.i_crit_edge, %if.end12.i.del_adev.i_crit_edge, %if.then5.i.del_adev.i_crit_edge
  %14 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev.i, align 8
  %arrayidx27.i = getelementptr ptr, ptr %15, i32 %i.048.i
  %16 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @device_del(ptr noundef %17) #7
  tail call void @put_device(ptr noundef %17) #7
  %18 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev.i, align 8
  %arrayidx30.i = getelementptr ptr, ptr %19, i32 %i.048.i
  %20 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx30.i, align 4
  br label %cleanup31.i

cleanup31.i:                                      ; preds = %del_adev.i, %if.then17.i.cleanup31.i_crit_edge, %for.body.i.cleanup31.i_crit_edge
  %dec.i = add nsw i32 %i.048.i, -1
  %cmp.not.i = icmp eq i32 %i.048.i, 0
  br i1 %cmp.not.i, label %delete_drivers.exit, label %cleanup31.i.for.body.i_crit_edge

cleanup31.i.for.body.i_crit_edge:                 ; preds = %cleanup31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

delete_drivers.exit:                              ; preds = %cleanup31.i
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and29 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %delete_drivers.exit.for.body.i43_crit_edge, label %delete_drivers.exit.cleanup_crit_edge

delete_drivers.exit.cleanup_crit_edge:            ; preds = %delete_drivers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

delete_drivers.exit.for.body.i43_crit_edge:       ; preds = %delete_drivers.exit
  br label %for.body.i43

for.body.i43:                                     ; preds = %cleanup.i.for.body.i43_crit_edge, %delete_drivers.exit.for.body.i43_crit_edge
  %ret.050.i = phi i32 [ %ret.2.i, %cleanup.i.for.body.i43_crit_edge ], [ 0, %delete_drivers.exit.for.body.i43_crit_edge ]
  %i.048.i40 = phi i32 [ %inc.i, %cleanup.i.for.body.i43_crit_edge ], [ 0, %delete_drivers.exit.for.body.i43_crit_edge ]
  %23 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adev.i, align 8
  %arrayidx.i41 = getelementptr ptr, ptr %24, i32 %i.048.i40
  %25 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i41, align 4
  %tobool.not.i42 = icmp eq ptr %26, null
  br i1 %tobool.not.i42, label %if.end.i45, label %for.body.i43.cleanup.i_crit_edge

for.body.i43.cleanup.i_crit_edge:                 ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i45:                                       ; preds = %for.body.i43
  %arrayidx2.i = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.048.i40
  %is_supported3.i = getelementptr [6 x %struct.mlx5_adev_device], ptr @mlx5_adev_devices, i32 0, i32 %i.048.i40, i32 1
  %27 = ptrtoint ptr %is_supported3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %is_supported3.i, align 4
  %call.i44 = tail call zeroext i1 %28(ptr noundef %dev) #7
  br i1 %call.i44, label %if.end11.i, label %if.end.i45.cleanup.i_crit_edge

if.end.i45.cleanup.i_crit_edge:                   ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end11.i:                                       ; preds = %if.end.i45
  %call12.i = tail call fastcc ptr @add_adev(ptr noundef %dev, i32 noundef %i.048.i40) #7
  %29 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adev.i, align 8
  %arrayidx14.i = getelementptr ptr, ptr %30, i32 %i.048.i40
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call12.i, ptr %arrayidx14.i, align 4
  %32 = load ptr, ptr %adev.i, align 8
  %arrayidx16.i = getelementptr ptr, ptr %32, i32 %i.048.i40
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx16.i, align 4
  %cmp.i.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end11.i.cleanup.i_crit_edge

if.end11.i.cleanup.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %37 = tail call i32 @llvm.read_register.i32(metadata !72) #7
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid.i, align 8
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.41, i32 noundef 479, i32 noundef %42, i32 noundef %i.048.i40, ptr noundef %44) #10
  %45 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adev.i, align 8
  %arrayidx22.i = getelementptr ptr, ptr %46, i32 %i.048.i40
  %47 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx22.i, align 4
  %49 = ptrtoint ptr %48 to i32
  store ptr null, ptr %arrayidx22.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.end11.i.cleanup.i_crit_edge, %if.end.i45.cleanup.i_crit_edge, %for.body.i43.cleanup.i_crit_edge
  %ret.2.i = phi i32 [ %ret.050.i, %for.body.i43.cleanup.i_crit_edge ], [ %ret.050.i, %if.end.i45.cleanup.i_crit_edge ], [ %49, %do.end.i ], [ %ret.050.i, %if.end11.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.048.i40, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i43_crit_edge

cleanup.i.for.body.i43_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i43

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %delete_drivers.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %delete_drivers.exit.cleanup_crit_edge ], [ %ret.2.i, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mlx5_intf_mutex, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 31
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %flags, align 8
  %call = tail call i32 @mlx5_rescan_drivers_locked(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef nonnull @mlx5_intf_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_same_hw_devs(ptr noundef %dev, ptr noundef %peer_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %dev) #7
  %call1 = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %peer_dev) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %tobool.not = icmp ne i64 %call, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool2.not = icmp ne i64 %call1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %call1)
  %cmp = icmp eq i64 %call, %call1
  %spec.select = select i1 %or.cond, i1 %cmp, i1 false
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_query_nic_system_image_guid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_get_next_phys_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
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
  %call1 = tail call ptr @auxiliary_find_device(ptr noundef null, ptr noundef %dev, ptr noundef nonnull @next_phys_dev) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %call1) #7
  %mdev = getelementptr inbounds %struct.mlx5_adev, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auxiliary_find_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @next_phys_dev(ptr nocapture noundef readonly %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_adev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp ne i32 %3, 0
  %cmp = icmp eq ptr %1, %data
  %or.cond = or i1 %cmp, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call.i = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %1) #7
  %call1.i = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool.not.i = icmp ne i64 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i)
  %tobool2.not.i = icmp ne i64 %call1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool2.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call1.i)
  %cmp.i17 = icmp eq i64 %call.i, %call1.i
  %spec.select.i = select i1 %or.cond.i, i1 %cmp.i17, i1 false
  br i1 %spec.select.i, label %if.end3.if.end9_crit_edge, label %land.lhs.true

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_nr.i.i, align 8
  %shl.i = shl i32 %9, 16
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %11 to i32
  %shl3.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %13, 3
  %and.i = and i32 %shr.i, 31
  %or5.i = or i32 %or.i, %and.i
  %pdev.i18 = getelementptr inbounds %struct.mlx5_core_dev, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %pdev.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i18, align 8
  %bus.i19 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i19, align 8
  %domain_nr.i.i20 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %domain_nr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %domain_nr.i.i20, align 8
  %shl.i21 = shl i32 %19, 16
  %number.i22 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 12
  %20 = ptrtoint ptr %number.i22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %number.i22, align 4
  %conv.i23 = zext i8 %21 to i32
  %shl3.i24 = shl nuw nsw i32 %conv.i23, 8
  %or.i25 = or i32 %shl3.i24, %shl.i21
  %devfn.i26 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %devfn.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devfn.i26, align 4
  %shr.i27 = lshr i32 %23, 3
  %and.i28 = and i32 %shr.i27, 31
  %or5.i29 = or i32 %or.i25, %and.i28
  call void @__sanitizer_cov_trace_cmp4(i32 %or5.i, i32 %or5.i29)
  %cmp7.not = icmp eq i32 %or5.i, %or5.i29
  br i1 %cmp7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_dev_list_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mlx5_intf_mutex, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_dev_list_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @mlx5_intf_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_dev_list_trylock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @mlx5_intf_mutex) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_eth_rep_supported(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp.i, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_eswitch_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_eth_enabled(ptr noundef %dev) #0 align 64 {
entry:
  %val = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val) #7
  %0 = call ptr @memset(ptr %val, i32 255, i32 32)
  %call = tail call ptr @priv_to_devlink(ptr noundef %dev) #7
  %call1 = call i32 @devlink_param_driverinit_value_get(ptr noundef %call, i32 noundef 11, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %phi.cmp = icmp ne i8 %2, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.false ], [ false, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val) #7
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_ib_enabled(ptr noundef %dev) #0 align 64 {
entry:
  %val = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val) #7
  %0 = call ptr @memset(ptr %val, i32 255, i32 32)
  %call = tail call ptr @priv_to_devlink(ptr noundef %dev) #7
  %call1 = call i32 @devlink_param_driverinit_value_get(ptr noundef %call, i32 noundef 12, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %phi.cmp = icmp ne i8 %2, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.false ], [ false, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val) #7
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_vnet_enabled(ptr noundef %dev) #0 align 64 {
entry:
  %val = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val) #7
  %0 = call ptr @memset(ptr %val, i32 255, i32 32)
  %call = tail call ptr @priv_to_devlink(ptr noundef %dev) #7
  %call1 = call i32 @devlink_param_driverinit_value_get(ptr noundef %call, i32 noundef 13, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %phi.cmp = icmp ne i8 %2, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.false ], [ false, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val) #7
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_adev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %idx2 = getelementptr inbounds %struct.mlx5_adev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx2, align 4
  tail call void @kfree(ptr noundef %dev) #7
  %adev = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 23
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @auxiliary_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_device_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 66, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_eth_supported._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_eth_supported._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 71, i32 3}
!10 = !{ptr @mlx5_eth_supported._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_eth_supported._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 76, i32 3}
!14 = !{ptr @mlx5_eth_supported._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5_eth_supported._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 81, i32 3}
!18 = !{ptr @mlx5_eth_supported._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5_eth_supported._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 86, i32 3}
!22 = !{ptr @mlx5_eth_supported._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx5_eth_supported._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 91, i32 3}
!26 = !{ptr @mlx5_eth_supported._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlx5_eth_supported._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 97, i32 3}
!30 = !{ptr @mlx5_eth_supported._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx5_eth_supported._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 102, i32 3}
!34 = !{ptr @mlx5_eth_supported._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mlx5_eth_supported._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 104, i32 3}
!38 = !{ptr @mlx5_eth_supported._entry.26, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx5_eth_supported._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 386, i32 4}
!42 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx5_attach_device._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlx5_attach_device._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 41, i32 8}
!47 = !{ptr @mlx5_adev_ida, !46, !"mlx5_adev_ida", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 40, i32 8}
!50 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mlx5_intf_mutex, !49, !"mlx5_intf_mutex", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 246, i32 46}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 249, i32 50}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 243, i32 45}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 251, i32 49}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 253, i32 47}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 240, i32 47}
!64 = !{ptr @mlx5_adev_devices, !65, !"mlx5_adev_devices", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 239, i32 3}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 322, i32 8}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/dev.c", i32 478, i32 4}
!70 = !{ptr @add_drivers._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @add_drivers._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
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
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i8 0, i8 2}
