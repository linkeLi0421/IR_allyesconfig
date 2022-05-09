; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.mlx5dr_table = type { ptr, %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx, i32, i32, i32, i32, %struct.list_head, ptr, %struct.refcount_struct, %struct.list_head }
%struct.mlx5dr_table_rx_tx = type { ptr, ptr, i64, %struct.list_head }
%struct.mlx5dr_rule = type { ptr, %struct.mlx5dr_rule_rx_tx, %struct.mlx5dr_rule_rx_tx, %struct.list_head, %struct.list_head, i32 }
%struct.mlx5dr_rule_rx_tx = type { ptr, ptr }
%struct.mlx5dr_matcher = type <{ ptr, [4 x i8], %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx, %struct.list_head, i32, %struct.mlx5dr_match_param, i8, [3 x i8], %struct.refcount_struct, %struct.list_head, [4 x i8] }>
%struct.mlx5dr_matcher_rx_tx = type { ptr, ptr, ptr, [2 x [2 x [18 x %struct.mlx5dr_ste_build]]], i8, [2 x [2 x i8]], i64, ptr, i32, %struct.list_head, i32 }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc2, %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc4, %struct.mlx5dr_match_misc5 }
%struct.mlx5dr_match_misc = type { [44 x i8], i32, i32, [3 x i32] }
%struct.mlx5dr_match_spec = type { i32, i32, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc2 = type { i128, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc4 = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5dr_match_misc5 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.158, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.136] }
%struct.anon.136 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.137 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.137 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.158 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.172, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.173, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.174, ptr, %struct.address_space, %struct.list_head, %union.anon.175, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.172 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.173 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.174 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.175 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.mlx5dr_cq = type { ptr, %struct.mlx5_cqwq, %struct.mlx5_wq_ctrl, %struct.mlx5_core_cq, ptr }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.162, i32, i32 }
%union.anon.162 = type { ptr }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.169, i32, %struct.list_head, ptr, i16 }
%struct.anon.169 = type { %struct.list_head, ptr, ptr }
%struct.mlx5dr_send_ring = type { ptr, ptr, ptr, i32, i16, i32, i32, ptr, i32, [64 x i8], ptr, %struct.spinlock, i8 }
%struct.mlx5dr_qp = type { ptr, %struct.mlx5_wq_qp, ptr, %struct.mlx5_wq_ctrl, i32, %struct.anon.170, %struct.anon.171, i32 }
%struct.mlx5_wq_qp = type { %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.170 = type { i32, i32, i32, ptr, i32 }
%struct.anon.171 = type { i32, i32, i32, i32 }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
%struct.mlx5dr_action = type { i32, %struct.refcount_struct, %union.anon.129 }
%union.anon.129 = type { ptr }
%struct.mlx5dr_action_dest_tbl = type { i8, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { ptr, i32, i32, i32, i64, i64, ptr, i32 }
%struct.mlx5dr_action_ctr = type { i32, i32 }
%struct.mlx5dr_action_rewrite = type { ptr, ptr, ptr, i16, i32, i8 }
%struct.mlx5dr_action_vport = type { ptr, ptr }
%struct.mlx5dr_action_reformat = type { ptr, i32, i32, i8, i8 }
%struct.mlx5dr_action_sampler = type { ptr, i64, i64, i32 }

@mlx5dr_dbg_init_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): Steering dump is not supported for NIC RX/TX domains\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5dr_dbg_init_dump\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_dbg_init_dump._entry_ptr = internal global ptr @mlx5dr_dbg_init_dump._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"steering\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fdb\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dmn_%p\00", [25 x i8] zeroinitializer }, align 32
@dr_dump_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dr_dump_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mlx5dr_dbg_init_dump.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&dmn->dump_info.dbg_mutex\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d,0x%llx,%d,0%x,%d,%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icmp_dw0\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icmp_dw1\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"icmpv6_dw0\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"icmpv6_dw1\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d,0x%llx,0x%x,0x%llx,0x%llx,0x%x,%lu,%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d,0x%llx,%lu,0x%x,0x%llx,0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d,0x%llx,%s,0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d,0x%llx,0x%llx,0x%x,0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d,0x%llx,0x%llx,%d,%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d,0x%llx,0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d,0x%llx,0x%llx,%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%d,0x%llx,\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s,\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d,0x%llx,0x%llx,%d,0x%llx,0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d,0x%llx,%d,%d,0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d,0x%llx,0x%llx,%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d,0x%llx,0x%llx,0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d,0x%llx,0x%llx,0x%x,0x%x,0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d,0x%llx,0x%llx,0x%x,0x%x,0x%x,0x%llx,0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 627, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 633, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 635, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 637, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"dr_dump_fops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 619, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 642, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 574, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 541, i32 46 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 547, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 553, i32 46 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 559, i32 46 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 515, i32 19 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 523, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 499, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 487, i32 19 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 446, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 434, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 382, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 292, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 297, i32 20 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 299, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 325, i32 20 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 327, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 355, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 337, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 223, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 118, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 178, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 193, i32 7 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @mlx5dr_dbg_init_dump._entry, ptr @mlx5dr_dbg_init_dump._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dr_dump_fops, ptr @mlx5dr_dbg_init_dump.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_dbg_init_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_dump_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_dbg_init_dump.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_dbg_tbl_add(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 8
  %dump_info = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info, i32 noundef 0) #6
  %dbg_node = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 10
  %2 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbl, align 8
  %dbg_tbl_list = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dbg_node, ptr noundef %5, ptr noundef %dbg_tbl_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dbg_node, ptr %prev.i, align 4
  %7 = ptrtoint ptr %dbg_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dbg_tbl_list, ptr %dbg_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %dbg_node, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %10 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tbl, align 8
  %dump_info3 = getelementptr inbounds %struct.mlx5dr_domain, ptr %11, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %dump_info3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_dbg_tbl_del(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 8
  %dump_info = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info, i32 noundef 0) #6
  %dbg_node = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dbg_node) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %dbg_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %dbg_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %dbg_node, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tbl, align 8
  %dump_info2 = getelementptr inbounds %struct.mlx5dr_domain, ptr %11, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %dump_info2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_dbg_rule_add(ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dump_info = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info, i32 noundef 0) #6
  %dbg_node = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 4
  %6 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rule, align 4
  %dbg_rule_list = getelementptr inbounds %struct.mlx5dr_matcher, ptr %7, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.mlx5dr_matcher, ptr %7, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dbg_node, ptr noundef %9, ptr noundef %dbg_rule_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dbg_node, ptr %prev.i, align 4
  %11 = ptrtoint ptr %dbg_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dbg_rule_list, ptr %dbg_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %dbg_node, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dump_info) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_dbg_rule_del(ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dump_info = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info, i32 noundef 0) #6
  %dbg_node = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dbg_node) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %dbg_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbg_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %dbg_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %dbg_node, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_rule, ptr %rule, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %dump_info) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_dbg_init_dump(ptr noundef %dmn) local_unnamed_addr #0 align 64 {
entry:
  %file_name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %file_name) #6
  %2 = call ptr @memset(ptr %file_name, i32 255, i32 128)
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !67) #6
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 628, i32 noundef %12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 20
  %13 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dbg_root, align 8
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.5, ptr noundef %14) #6
  %dump_info = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 13
  %steering_debugfs = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %steering_debugfs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %steering_debugfs, align 4
  %call4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef %call1) #6
  %fdb_debugfs = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %fdb_debugfs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call4, ptr %fdb_debugfs, align 8
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %file_name, ptr noundef nonnull @.str.7, ptr noundef %dmn)
  %17 = ptrtoint ptr %fdb_debugfs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fdb_debugfs, align 8
  %call10 = call ptr @debugfs_create_file(ptr noundef nonnull %file_name, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %dmn, ptr noundef nonnull @dr_dump_fops) #6
  %dbg_tbl_list = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 12
  %19 = ptrtoint ptr %dbg_tbl_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %dbg_tbl_list, ptr %dbg_tbl_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dbg_tbl_list, ptr %prev.i, align 4
  call void @__mutex_init(ptr noundef %dump_info, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx5dr_dbg_init_dump.__key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %file_name) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_dbg_uninit_dump(ptr noundef %dmn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_info = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 13
  %steering_debugfs = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %steering_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %steering_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  tail call void @mutex_destroy(ptr noundef %dump_info) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_dump_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dr_dump_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_dump_show(ptr noundef %file, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  %dump.i.i.i.i.i = alloca [256 x i8], align 1
  %i.i.i.i.i = alloca i32, align 4
  %vports_num.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dump_info.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dump_info.i, i32 noundef 0) #6
  %mutex.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #6
  %mutex.i3.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i.i, i32 noundef 0) #6
  %2 = ptrtoint ptr %1 to i32
  %conv.i.i = zext i32 %2 to i64
  %type.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i.i, align 8
  %info.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9
  %caps.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7
  %5 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %caps.i.i, align 8
  %conv1.i.i = zext i16 %6 to i32
  %7 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %info.i.i, align 8, !range !77
  %9 = zext i8 %8 to i32
  %mdev.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i.i, align 8
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %entry.pci_name.exit.i.i_crit_edge

entry.pci_name.exit.i.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %entry.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %17, %if.end.i.i.i.i ], [ %15, %entry.pci_name.exit.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.9, i32 noundef 3000, i64 noundef %conv.i.i, i32 noundef %4, i32 noundef %conv1.i.i, i32 noundef %9, ptr noundef %retval.0.i.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vports_num.i.i.i.i) #6
  %18 = ptrtoint ptr %vports_num.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %vports_num.i.i.i.i, align 4
  %vports_caps_xa.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 30, i32 2
  %call.i.i.i.i = call ptr @xa_find(ptr noundef %vports_caps_xa.i.i.i.i, ptr noundef nonnull %vports_num.i.i.i.i, i32 noundef -1, i32 noundef 8) #6
  %tobool.not1.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not1.i.i.i.i, label %pci_name.exit.i.i.for.end.i.i.i.i_crit_edge, label %pci_name.exit.i.i.for.inc.i.i.i.i_crit_edge

pci_name.exit.i.i.for.inc.i.i.i.i_crit_edge:      ; preds = %pci_name.exit.i.i
  br label %for.inc.i.i.i.i

pci_name.exit.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %pci_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.inc.i.i.i.i_crit_edge, %pci_name.exit.i.i.for.inc.i.i.i.i_crit_edge
  %call3.i.i.i.i = call ptr @xa_find_after(ptr noundef %vports_caps_xa.i.i.i.i, ptr noundef nonnull %vports_num.i.i.i.i, i32 noundef -1, i32 noundef 8) #6
  %tobool.not.i.i1.i.i = icmp eq ptr %call3.i.i.i.i, null
  br i1 %tobool.not.i.i1.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.inc.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %pci_name.exit.i.i.for.end.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %caps.i.i, align 8
  %conv.i.i.i.i = zext i16 %20 to i32
  %nic_rx_drop_address.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 1
  %21 = ptrtoint ptr %nic_rx_drop_address.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %nic_rx_drop_address.i.i.i.i, align 8
  %nic_tx_drop_address.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 2
  %23 = ptrtoint ptr %nic_tx_drop_address.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %nic_tx_drop_address.i.i.i.i, align 8
  %flex_protocols.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 8
  %25 = ptrtoint ptr %flex_protocols.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flex_protocols.i.i.i.i, align 8
  %27 = ptrtoint ptr %vports_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vports_num.i.i.i.i, align 4
  %eswitch_manager.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 24
  %29 = ptrtoint ptr %eswitch_manager.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eswitch_manager.i.i.i.i, align 1, !range !77
  %31 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.14, i32 noundef 3004, i64 noundef %conv.i.i, i32 noundef %conv.i.i.i.i, i64 noundef %22, i64 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %31) #6
  %32 = ptrtoint ptr %i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %i.i.i.i.i, align 4
  %call8.i.i.i.i = call ptr @xa_find(ptr noundef %vports_caps_xa.i.i.i.i, ptr noundef nonnull %i.i.i.i.i, i32 noundef -1, i32 noundef 8) #6
  %tobool10.not2.i.i.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool10.not2.i.i.i.i, label %for.end.i.i.i.i.dr_dump_domain_info.exit.i.i_crit_edge, label %for.end.i.i.i.i.for.body11.i.i.i.i_crit_edge

for.end.i.i.i.i.for.body11.i.i.i.i_crit_edge:     ; preds = %for.end.i.i.i.i
  br label %for.body11.i.i.i.i

for.end.i.i.i.i.dr_dump_domain_info.exit.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_domain_info.exit.i.i

for.body11.i.i.i.i:                               ; preds = %for.body11.i.i.i.i.for.body11.i.i.i.i_crit_edge, %for.end.i.i.i.i.for.body11.i.i.i.i_crit_edge
  %33 = ptrtoint ptr %i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i.i.i.i.i, align 4
  %call14.i.i.i.i = call ptr @xa_load(ptr noundef %vports_caps_xa.i.i.i.i, i32 noundef %34) #6
  %35 = ptrtoint ptr %i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i.i.i.i.i, align 4
  %37 = ptrtoint ptr %call14.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %call14.i.i.i.i, align 8
  %conv15.i.i.i.i = zext i16 %38 to i32
  %icm_address_rx.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %call14.i.i.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %icm_address_rx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %icm_address_rx.i.i.i.i, align 8
  %icm_address_tx.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %call14.i.i.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %icm_address_tx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %icm_address_tx.i.i.i.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.15, i32 noundef 3003, i64 noundef %conv.i.i, i32 noundef %36, i32 noundef %conv15.i.i.i.i, i64 noundef %40, i64 noundef %42) #6
  %call19.i.i.i.i = call ptr @xa_find_after(ptr noundef %vports_caps_xa.i.i.i.i, ptr noundef nonnull %i.i.i.i.i, i32 noundef -1, i32 noundef 8) #6
  %tobool10.not.i.i.i.i = icmp eq ptr %call19.i.i.i.i, null
  br i1 %tobool10.not.i.i.i.i, label %for.body11.i.i.i.i.dr_dump_domain_info.exit.i.i_crit_edge, label %for.body11.i.i.i.i.for.body11.i.i.i.i_crit_edge

for.body11.i.i.i.i.for.body11.i.i.i.i_crit_edge:  ; preds = %for.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i.i.i.i

for.body11.i.i.i.i.dr_dump_domain_info.exit.i.i_crit_edge: ; preds = %for.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_domain_info.exit.i.i

dr_dump_domain_info.exit.i.i:                     ; preds = %for.body11.i.i.i.i.dr_dump_domain_info.exit.i.i_crit_edge, %for.end.i.i.i.i.dr_dump_domain_info.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vports_num.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i.i.i) #6
  %flex_parser_id_icmp_dw0.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 9
  %43 = ptrtoint ptr %flex_parser_id_icmp_dw0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flex_parser_id_icmp_dw0.i.i.i, align 4
  %conv.i1.i.i.i = zext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.16, i32 noundef 3001, i64 noundef %conv.i.i, ptr noundef nonnull @.str.10, i32 noundef %conv.i1.i.i.i) #6
  %flex_parser_id_icmp_dw1.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 10
  %45 = ptrtoint ptr %flex_parser_id_icmp_dw1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flex_parser_id_icmp_dw1.i.i.i, align 1
  %conv.i2.i.i.i = zext i8 %46 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.16, i32 noundef 3001, i64 noundef %conv.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i2.i.i.i) #6
  %flex_parser_id_icmpv6_dw0.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 11
  %47 = ptrtoint ptr %flex_parser_id_icmpv6_dw0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flex_parser_id_icmpv6_dw0.i.i.i, align 2
  %conv.i3.i.i.i = zext i8 %48 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.16, i32 noundef 3001, i64 noundef %conv.i.i, ptr noundef nonnull @.str.12, i32 noundef %conv.i3.i.i.i) #6
  %flex_parser_id_icmpv6_dw1.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7, i32 12
  %49 = ptrtoint ptr %flex_parser_id_icmpv6_dw1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flex_parser_id_icmpv6_dw1.i.i.i, align 1
  %conv.i4.i.i.i = zext i8 %50 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.16, i32 noundef 3001, i64 noundef %conv.i.i, ptr noundef nonnull @.str.13, i32 noundef %conv.i4.i.i.i) #6
  %51 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %info.i.i, align 8, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool9.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool9.not.i.i, label %dr_dump_domain_info.exit.i.i.dr_dump_domain.exit.i_crit_edge, label %if.then10.i.i

dr_dump_domain_info.exit.i.i.dr_dump_domain.exit.i_crit_edge: ; preds = %dr_dump_domain_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_domain.exit.i

if.then10.i.i:                                    ; preds = %dr_dump_domain_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %send_ring.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %send_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %send_ring.i.i, align 8
  %55 = ptrtoint ptr %54 to i32
  %conv.i.i.i = zext i32 %55 to i64
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %54, align 4
  %mcq.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %mcq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mcq.i.i.i, align 4
  %qp.i.i.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %54, i32 0, i32 1
  %60 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %qp.i.i.i, align 4
  %qpn.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %qpn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qpn.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.17, i32 noundef 3005, i64 noundef %conv.i.i.i, i64 noundef %conv.i.i, i32 noundef %59, i32 noundef %63) #6
  br label %dr_dump_domain.exit.i

dr_dump_domain.exit.i:                            ; preds = %if.then10.i.i, %dr_dump_domain_info.exit.i.i.dr_dump_domain.exit.i_crit_edge
  %dbg_tbl_list.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 12
  %64 = ptrtoint ptr %dbg_tbl_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn32.i = load ptr, ptr %dbg_tbl_list.i, align 8
  %cmp2.not33.i = icmp eq ptr %.pn32.i, %dbg_tbl_list.i
  br i1 %cmp2.not33.i, label %dr_dump_domain.exit.i.dr_dump_domain_all.exit_crit_edge, label %for.body.lr.ph.i

dr_dump_domain.exit.i.dr_dump_domain_all.exit_crit_edge: ; preds = %dr_dump_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_domain_all.exit

for.body.lr.ph.i:                                 ; preds = %dr_dump_domain.exit.i
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %dump.i.i.i.i.i, i32 128
  br label %for.body.i

for.body.i:                                       ; preds = %dr_dump_table_all.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn32.i, %for.body.lr.ph.i ], [ %.pn.i, %dr_dump_table_all.exit.i.for.body.i_crit_edge ]
  %tbl.0.i = getelementptr i8, ptr %.pn34.i, i32 -88
  %tx2.i.i.i = getelementptr i8, ptr %.pn34.i, i32 -56
  %65 = ptrtoint ptr %tbl.0.i to i32
  %conv.i.i25.i = zext i32 %65 to i64
  %66 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tbl.0.i, align 8
  %68 = ptrtoint ptr %67 to i32
  %conv3.i.i.i = zext i32 %68 to i64
  %table_type.i.i.i = getelementptr i8, ptr %.pn34.i, i32 -28
  %69 = ptrtoint ptr %table_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %table_type.i.i.i, align 4
  %level.i.i.i = getelementptr i8, ptr %.pn34.i, i32 -32
  %71 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %level.i.i.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.18, i32 noundef 3100, i64 noundef %conv.i.i25.i, i64 noundef %conv3.i.i.i, i32 noundef %70, i32 noundef %72) #6
  %nic_dmn.i.i.i = getelementptr i8, ptr %.pn34.i, i32 -76
  %73 = ptrtoint ptr %nic_dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nic_dmn.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i, label %for.body.i.if.end9.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.if.end9.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rx1.i.i.i = getelementptr i8, ptr %.pn34.i, i32 -80
  %75 = ptrtoint ptr %rx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx1.i.i.i, align 8
  %chunk.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %chunk.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %chunk.i.i.i.i, align 4
  %icm_addr.i.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %icm_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %icm_addr.i.i.i.i, align 8
  %shr.i.i.i.i.i = lshr i64 %80, 6
  %and.i.i.i.i.i = and i64 %shr.i.i.i.i.i, 4294967295
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef 3101, i64 noundef %conv.i.i25.i, i64 noundef %and.i.i.i.i.i) #6
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.if.end9.i.i.i_crit_edge
  %nic_dmn10.i.i.i = getelementptr i8, ptr %.pn34.i, i32 -52
  %81 = ptrtoint ptr %nic_dmn10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %nic_dmn10.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %82, null
  br i1 %tobool11.not.i.i.i, label %if.end9.i.i.i.dr_dump_table.exit.i.i_crit_edge, label %if.then12.i.i.i

if.end9.i.i.i.dr_dump_table.exit.i.i_crit_edge:   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_table.exit.i.i

if.then12.i.i.i:                                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %tx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx2.i.i.i, align 8
  %chunk.i1.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %chunk.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chunk.i1.i.i.i, align 4
  %icm_addr.i2.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %icm_addr.i2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %icm_addr.i2.i.i.i, align 8
  %shr.i.i3.i.i.i = lshr i64 %88, 6
  %and.i.i4.i.i.i = and i64 %shr.i.i3.i.i.i, 4294967295
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef 3102, i64 noundef %conv.i.i25.i, i64 noundef %and.i.i4.i.i.i) #6
  br label %dr_dump_table.exit.i.i

dr_dump_table.exit.i.i:                           ; preds = %if.then12.i.i.i, %if.end9.i.i.i.dr_dump_table.exit.i.i_crit_edge
  %matcher_list.i.i = getelementptr i8, ptr %.pn34.i, i32 -16
  %89 = ptrtoint ptr %matcher_list.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn2.i.i = load ptr, ptr %matcher_list.i.i, align 8
  %cmp2.not3.i.i = icmp eq ptr %.pn2.i.i, %matcher_list.i.i
  br i1 %cmp2.not3.i.i, label %dr_dump_table.exit.i.i.dr_dump_table_all.exit.i_crit_edge, label %dr_dump_table.exit.i.i.for.body.i.i_crit_edge

dr_dump_table.exit.i.i.for.body.i.i_crit_edge:    ; preds = %dr_dump_table.exit.i.i
  br label %for.body.i.i

dr_dump_table.exit.i.i.dr_dump_table_all.exit.i_crit_edge: ; preds = %dr_dump_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_table_all.exit.i

for.body.i.i:                                     ; preds = %dr_dump_matcher_all.exit.i.i.for.body.i.i_crit_edge, %dr_dump_table.exit.i.i.for.body.i.i_crit_edge
  %.pn4.i.i = phi ptr [ %.pn.i.i, %dr_dump_matcher_all.exit.i.i.for.body.i.i_crit_edge ], [ %.pn2.i.i, %dr_dump_table.exit.i.i.for.body.i.i_crit_edge ]
  %matcher.0.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -5304
  %rx1.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -5296
  %tx2.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -2648
  %90 = ptrtoint ptr %matcher.0.i.i to i32
  %conv.i.i.i26.i = zext i32 %90 to i64
  %91 = ptrtoint ptr %matcher.0.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %matcher.0.i.i, align 8
  %93 = ptrtoint ptr %92 to i32
  %conv3.i.i.i.i = zext i32 %93 to i64
  %prio.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 8
  %94 = ptrtoint ptr %prio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %prio.i.i.i.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.20, i32 noundef 3200, i64 noundef %conv.i.i.i26.i, i64 noundef %conv3.i.i.i.i, i32 noundef %95) #6
  %match_criteria.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 428
  %96 = ptrtoint ptr %match_criteria.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %match_criteria.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %dump.i.i.i.i.i) #6
  %98 = call ptr @memset(ptr %dump.i.i.i.i.i, i32 255, i32 256)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.21, i32 noundef 3201, i64 noundef %conv.i.i.i26.i) #6
  %conv.i.i.i.i.i = zext i8 %97 to i32
  %and.i.i.i1.i.i = and i32 %conv.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i1.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mask.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 12
  %call.i.i.i.i.i.i = call ptr @bin2hex(ptr noundef nonnull %dump.i.i.i.i.i, ptr noundef %mask.i.i.i.i, i32 noundef 64) #6
  %99 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.22, ptr noundef nonnull %dump.i.i.i.i.i) #6
  br label %if.end.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.23) #6
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %and3.i.i.i.i.i = and i32 %conv.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %and3.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.else8.i.i.i.i.i, label %if.then5.i.i.i.i.i

if.then5.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inner.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 140
  %call.i1.i.i.i.i.i = call ptr @bin2hex(ptr noundef nonnull %dump.i.i.i.i.i, ptr noundef %inner.i.i.i.i.i, i32 noundef 64) #6
  %100 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.22, ptr noundef nonnull %dump.i.i.i.i.i) #6
  br label %if.end9.i.i.i.i.i

if.else8.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.23) #6
  br label %if.end9.i.i.i.i.i

if.end9.i.i.i.i.i:                                ; preds = %if.else8.i.i.i.i.i, %if.then5.i.i.i.i.i
  %and11.i.i.i.i.i = and i32 %conv.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i)
  %tobool12.not.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i.i, label %if.else16.i.i.i.i.i, label %if.then13.i.i.i.i.i

if.then13.i.i.i.i.i:                              ; preds = %if.end9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %misc.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 76
  %call.i3.i.i.i.i.i = call ptr @bin2hex(ptr noundef nonnull %dump.i.i.i.i.i, ptr noundef %misc.i.i.i.i.i, i32 noundef 64) #6
  %101 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.22, ptr noundef nonnull %dump.i.i.i.i.i) #6
  br label %if.end17.i.i.i.i.i

if.else16.i.i.i.i.i:                              ; preds = %if.end9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.23) #6
  br label %if.end17.i.i.i.i.i

if.end17.i.i.i.i.i:                               ; preds = %if.else16.i.i.i.i.i, %if.then13.i.i.i.i.i
  %and19.i.i.i.i.i = and i32 %conv.i.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i.i.i.i)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %and19.i.i.i.i.i, 0
  br i1 %tobool20.not.i.i.i.i.i, label %if.else24.i.i.i.i.i, label %if.then21.i.i.i.i.i

if.then21.i.i.i.i.i:                              ; preds = %if.end17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %misc2.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 204
  %call.i5.i.i.i.i.i = call ptr @bin2hex(ptr noundef nonnull %dump.i.i.i.i.i, ptr noundef %misc2.i.i.i.i.i, i32 noundef 64) #6
  %102 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.22, ptr noundef nonnull %dump.i.i.i.i.i) #6
  br label %if.end25.i.i.i.i.i

if.else24.i.i.i.i.i:                              ; preds = %if.end17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.23) #6
  br label %if.end25.i.i.i.i.i

if.end25.i.i.i.i.i:                               ; preds = %if.else24.i.i.i.i.i, %if.then21.i.i.i.i.i
  %and27.i.i.i.i.i = and i32 %conv.i.i.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i.i.i)
  %tobool28.not.i.i.i.i.i = icmp eq i32 %and27.i.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i.i, label %if.else32.i.i.i.i.i, label %if.then29.i.i.i.i.i

if.then29.i.i.i.i.i:                              ; preds = %if.end25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %misc3.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 268
  %call.i7.i.i.i.i.i = call ptr @bin2hex(ptr noundef nonnull %dump.i.i.i.i.i, ptr noundef %misc3.i.i.i.i.i, i32 noundef 64) #6
  %103 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %arrayidx.i.i.i.i.i.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.24, ptr noundef nonnull %dump.i.i.i.i.i) #6
  br label %dr_dump_matcher_mask.exit.i.i.i.i

if.else32.i.i.i.i.i:                              ; preds = %if.end25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.25) #6
  br label %dr_dump_matcher_mask.exit.i.i.i.i

dr_dump_matcher_mask.exit.i.i.i.i:                ; preds = %if.else32.i.i.i.i.i, %if.then29.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %dump.i.i.i.i.i) #6
  %nic_tbl.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -2672
  %104 = ptrtoint ptr %nic_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %nic_tbl.i.i.i.i, align 8
  %tobool.not.i.i.i27.i = icmp eq ptr %105, null
  br i1 %tobool.not.i.i.i27.i, label %dr_dump_matcher_mask.exit.i.i.i.i.if.end12.i.i.i.i_crit_edge, label %if.then6.i.i.i.i

dr_dump_matcher_mask.exit.i.i.i.i.if.end12.i.i.i.i_crit_edge: ; preds = %dr_dump_matcher_mask.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %dr_dump_matcher_mask.exit.i.i.i.i
  %106 = ptrtoint ptr %rx1.i.i.i.i to i32
  %conv.i1.i.i.i.i = zext i32 %106 to i64
  %num_of_builders.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -2692
  %107 = ptrtoint ptr %num_of_builders.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num_of_builders.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %rx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx1.i.i.i.i, align 8
  %chunk.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %chunk.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chunk.i.i.i.i.i, align 4
  %icm_addr.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %icm_addr.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %icm_addr.i.i.i.i.i, align 8
  %shr.i.i.i.i.i.i = lshr i64 %114, 6
  %and.i.i.i.i.i.i = and i64 %shr.i.i.i.i.i.i, 4294967295
  %e_anchor.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -5292
  %115 = ptrtoint ptr %e_anchor.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %e_anchor.i.i.i.i.i, align 4
  %chunk2.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %chunk2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %chunk2.i.i.i.i.i, align 4
  %icm_addr3.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %icm_addr3.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %icm_addr3.i.i.i.i.i, align 8
  %shr.i1.i.i.i.i.i = lshr i64 %120, 6
  %and.i2.i.i.i.i.i = and i64 %shr.i1.i.i.i.i.i, 4294967295
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.26, i32 noundef 3202, i64 noundef %conv.i1.i.i.i.i, i64 noundef %conv.i.i.i26.i, i32 noundef %conv1.i.i.i.i.i, i64 noundef %and.i.i.i.i.i.i, i64 noundef %and.i2.i.i.i.i.i) #6
  %121 = ptrtoint ptr %num_of_builders.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %num_of_builders.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp4.not.i.i.i.i.i = icmp eq i8 %122, 0
  br i1 %cmp4.not.i.i.i.i.i, label %if.then6.i.i.i.i.if.end12.i.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i.i

if.then6.i.i.i.i.if.end12.i.i.i.i_crit_edge:      ; preds = %if.then6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %if.then6.i.i.i.i
  %ste_builder.i.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -5288
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.05.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %inc.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %123 = ptrtoint ptr %ste_builder.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ste_builder.i.i.i.i.i, align 8
  %lu_type.i.i.i.i.i.i = getelementptr %struct.mlx5dr_ste_build, ptr %124, i32 %i.05.i.i.i.i.i, i32 3
  %125 = ptrtoint ptr %lu_type.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %lu_type.i.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i16 %126 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.27, i32 noundef 3204, i64 noundef %conv.i.i.i26.i, i32 noundef %i.05.i.i.i.i.i, i32 noundef 1, i32 noundef %conv1.i.i.i.i.i.i) #6
  %inc.i.i.i.i.i = add nuw nsw i32 %i.05.i.i.i.i.i, 1
  %127 = ptrtoint ptr %num_of_builders.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %num_of_builders.i.i.i.i.i, align 4
  %conv6.i.i.i.i.i = zext i8 %128 to i32
  %cmp.i.i.i.i.i = icmp ult i32 %inc.i.i.i.i.i, %conv6.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.if.end12.i.i.i.i_crit_edge

for.body.i.i.i.i.i.if.end12.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i.i.i

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.i.if.end12.i.i.i.i_crit_edge, %if.then6.i.i.i.i.if.end12.i.i.i.i_crit_edge, %dr_dump_matcher_mask.exit.i.i.i.i.if.end12.i.i.i.i_crit_edge
  %nic_tbl13.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -24
  %129 = ptrtoint ptr %nic_tbl13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nic_tbl13.i.i.i.i, align 8
  %tobool14.not.i.i.i.i = icmp eq ptr %130, null
  br i1 %tobool14.not.i.i.i.i, label %if.end12.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge, label %if.then15.i.i.i.i

if.end12.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge: ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_matcher.exit.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.end12.i.i.i.i
  %131 = ptrtoint ptr %tx2.i.i.i.i to i32
  %conv.i2.i.i.i.i = zext i32 %131 to i64
  %num_of_builders.i3.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -44
  %132 = ptrtoint ptr %num_of_builders.i3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_of_builders.i3.i.i.i.i, align 4
  %conv1.i4.i.i.i.i = zext i8 %133 to i32
  %134 = ptrtoint ptr %tx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tx2.i.i.i.i, align 8
  %chunk.i5.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %chunk.i5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %chunk.i5.i.i.i.i, align 4
  %icm_addr.i6.i.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %icm_addr.i6.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %icm_addr.i6.i.i.i.i, align 8
  %shr.i.i7.i.i.i.i = lshr i64 %139, 6
  %and.i.i8.i.i.i.i = and i64 %shr.i.i7.i.i.i.i, 4294967295
  %e_anchor.i9.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -2644
  %140 = ptrtoint ptr %e_anchor.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %e_anchor.i9.i.i.i.i, align 4
  %chunk2.i10.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %chunk2.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chunk2.i10.i.i.i.i, align 4
  %icm_addr3.i11.i.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %icm_addr3.i11.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %icm_addr3.i11.i.i.i.i, align 8
  %shr.i1.i12.i.i.i.i = lshr i64 %145, 6
  %and.i2.i13.i.i.i.i = and i64 %shr.i1.i12.i.i.i.i, 4294967295
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.26, i32 noundef 3203, i64 noundef %conv.i2.i.i.i.i, i64 noundef %conv.i.i.i26.i, i32 noundef %conv1.i4.i.i.i.i, i64 noundef %and.i.i8.i.i.i.i, i64 noundef %and.i2.i13.i.i.i.i) #6
  %146 = ptrtoint ptr %num_of_builders.i3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %num_of_builders.i3.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp4.not.i14.i.i.i.i = icmp eq i8 %147, 0
  br i1 %cmp4.not.i14.i.i.i.i, label %if.then15.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge, label %for.body.lr.ph.i16.i.i.i.i

if.then15.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge: ; preds = %if.then15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_matcher.exit.i.i.i

for.body.lr.ph.i16.i.i.i.i:                       ; preds = %if.then15.i.i.i.i
  %ste_builder.i15.i.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -2640
  br label %for.body.i23.i.i.i.i

for.body.i23.i.i.i.i:                             ; preds = %for.body.i23.i.i.i.i.for.body.i23.i.i.i.i_crit_edge, %for.body.lr.ph.i16.i.i.i.i
  %i.05.i17.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i16.i.i.i.i ], [ %inc.i20.i.i.i.i, %for.body.i23.i.i.i.i.for.body.i23.i.i.i.i_crit_edge ]
  %148 = ptrtoint ptr %ste_builder.i15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ste_builder.i15.i.i.i.i, align 8
  %lu_type.i.i18.i.i.i.i = getelementptr %struct.mlx5dr_ste_build, ptr %149, i32 %i.05.i17.i.i.i.i, i32 3
  %150 = ptrtoint ptr %lu_type.i.i18.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %lu_type.i.i18.i.i.i.i, align 4
  %conv1.i.i19.i.i.i.i = zext i16 %151 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.27, i32 noundef 3204, i64 noundef %conv.i.i.i26.i, i32 noundef %i.05.i17.i.i.i.i, i32 noundef 0, i32 noundef %conv1.i.i19.i.i.i.i) #6
  %inc.i20.i.i.i.i = add nuw nsw i32 %i.05.i17.i.i.i.i, 1
  %152 = ptrtoint ptr %num_of_builders.i3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %num_of_builders.i3.i.i.i.i, align 4
  %conv6.i21.i.i.i.i = zext i8 %153 to i32
  %cmp.i22.i.i.i.i = icmp ult i32 %inc.i20.i.i.i.i, %conv6.i21.i.i.i.i
  br i1 %cmp.i22.i.i.i.i, label %for.body.i23.i.i.i.i.for.body.i23.i.i.i.i_crit_edge, label %for.body.i23.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge

for.body.i23.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge: ; preds = %for.body.i23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_matcher.exit.i.i.i

for.body.i23.i.i.i.i.for.body.i23.i.i.i.i_crit_edge: ; preds = %for.body.i23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i23.i.i.i.i

dr_dump_matcher.exit.i.i.i:                       ; preds = %for.body.i23.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge, %if.then15.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge, %if.end12.i.i.i.i.dr_dump_matcher.exit.i.i.i_crit_edge
  %dbg_rule_list.i.i.i = getelementptr i8, ptr %.pn4.i.i, i32 436
  %154 = ptrtoint ptr %dbg_rule_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pn9.i.i.i = load ptr, ptr %dbg_rule_list.i.i.i, align 4
  %cmp2.not10.i.i.i = icmp eq ptr %.pn9.i.i.i, %dbg_rule_list.i.i.i
  br i1 %cmp2.not10.i.i.i, label %dr_dump_matcher.exit.i.i.i.dr_dump_matcher_all.exit.i.i_crit_edge, label %dr_dump_matcher.exit.i.i.i.for.body.i.i.i_crit_edge

dr_dump_matcher.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %dr_dump_matcher.exit.i.i.i
  br label %for.body.i.i.i

dr_dump_matcher.exit.i.i.i.dr_dump_matcher_all.exit.i.i_crit_edge: ; preds = %dr_dump_matcher.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_matcher_all.exit.i.i

for.body.i.i.i:                                   ; preds = %dr_dump_rule.exit.i.i.i.for.body.i.i.i_crit_edge, %dr_dump_matcher.exit.i.i.i.for.body.i.i.i_crit_edge
  %.pn11.i.i.i = phi ptr [ %.pn.i.i.i, %dr_dump_rule.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn9.i.i.i, %dr_dump_matcher.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %rule.0.i.i.i = getelementptr i8, ptr %.pn11.i.i.i, i32 -28
  %155 = ptrtoint ptr %rule.0.i.i.i to i32
  %conv.i1.i.i28.i = zext i32 %155 to i64
  %rx1.i2.i.i.i = getelementptr i8, ptr %.pn11.i.i.i, i32 -24
  %tx2.i3.i.i.i = getelementptr i8, ptr %.pn11.i.i.i, i32 -16
  %156 = ptrtoint ptr %rule.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rule.0.i.i.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 8
  %sw_format_ver.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %161, i32 0, i32 9, i32 7, i32 23
  %162 = ptrtoint ptr %sw_format_ver.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %sw_format_ver.i.i.i.i, align 4
  %164 = ptrtoint ptr %157 to i32
  %conv4.i.i.i.i = zext i32 %164 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef 3300, i64 noundef %conv.i1.i.i28.i, i64 noundef %conv4.i.i.i.i) #6
  %165 = ptrtoint ptr %rx1.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rx1.i2.i.i.i, align 4
  %tobool.not.i4.i.i.i = icmp eq ptr %166, null
  br i1 %tobool.not.i4.i.i.i, label %for.body.i.i.i.if.end8.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @dr_dump_rule_rx_tx(ptr noundef %file, ptr noundef %rx1.i2.i.i.i, i1 noundef zeroext true, i64 noundef %conv.i1.i.i28.i, i8 noundef zeroext %163) #6
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %for.body.i.i.i.if.end8.i.i.i.i_crit_edge
  %167 = ptrtoint ptr %tx2.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx2.i3.i.i.i, align 4
  %tobool10.not.i.i.i29.i = icmp eq ptr %168, null
  br i1 %tobool10.not.i.i.i29.i, label %if.end8.i.i.i.i.if.end17.i.i.i.i_crit_edge, label %if.then11.i.i.i.i

if.end8.i.i.i.i.if.end17.i.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @dr_dump_rule_rx_tx(ptr noundef %file, ptr noundef %tx2.i3.i.i.i, i1 noundef zeroext false, i64 noundef %conv.i1.i.i28.i, i8 noundef zeroext %163) #6
  br label %if.end17.i.i.i.i

if.end17.i.i.i.i:                                 ; preds = %if.then11.i.i.i.i, %if.end8.i.i.i.i.if.end17.i.i.i.i_crit_edge
  %rule_actions_list.i.i.i.i = getelementptr i8, ptr %.pn11.i.i.i, i32 -8
  %169 = ptrtoint ptr %rule_actions_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %.pn1.i.i.i.i = load ptr, ptr %rule_actions_list.i.i.i.i, align 4
  %cmp19.not2.i.i.i.i = icmp eq ptr %.pn1.i.i.i.i, %rule_actions_list.i.i.i.i
  br i1 %cmp19.not2.i.i.i.i, label %if.end17.i.i.i.i.dr_dump_rule.exit.i.i.i_crit_edge, label %if.end17.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end17.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.end17.i.i.i.i
  br label %for.body.i.i.i.i

if.end17.i.i.i.i.dr_dump_rule.exit.i.i.i_crit_edge: ; preds = %if.end17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_rule.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %dr_dump_rule_action_mem.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end17.i.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn3.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %dr_dump_rule_action_mem.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn1.i.i.i.i, %if.end17.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %action_mem.0.i.i.i.i = getelementptr i8, ptr %.pn3.i.i.i.i, i32 -4
  %170 = ptrtoint ptr %action_mem.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %action_mem.0.i.i.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  %conv.i.i5.i.i.i = zext i32 %172 to i64
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %171, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values)
  switch i32 %174, label %for.body.i.i.i.i.dr_dump_rule_action_mem.exit.i.i.i.i_crit_edge [
    i32 4, label %sw.bb.i.i.i.i.i
    i32 6, label %sw.bb2.i.i.i.i.i
    i32 7, label %sw.bb3.i.i.i.i.i
    i32 8, label %sw.bb4.i.i.i.i.i
    i32 9, label %sw.bb5.i.i.i.i.i
    i32 10, label %sw.bb6.i.i.i.i.i
    i32 0, label %sw.bb8.i.i.i.i.i
    i32 2, label %sw.bb9.i.i.i.i.i
    i32 1, label %sw.bb11.i.i.i.i.i
    i32 3, label %sw.bb13.i.i.i.i.i
    i32 11, label %sw.bb15.i.i.i.i.i
    i32 12, label %sw.bb16.i.i.i.i.i
    i32 13, label %sw.bb17.i.i.i.i.i
    i32 14, label %sw.bb21.i.i.i.i.i
    i32 15, label %sw.bb27.i.i.i.i.i
  ]

for.body.i.i.i.i.dr_dump_rule_action_mem.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb.i.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef 3403, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb2.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %176 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load.i.i.i.i.i = load i8, ptr %178, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i)
  %tobool.not.i.i6.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i, -1
  br i1 %tobool.not.i.i6.i.i.i, label %if.else.i.i8.i.i.i, label %if.then.i.i7.i.i.i

if.then.i.i7.i.i.i:                               ; preds = %sw.bb2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %id.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %178, i32 0, i32 1, i32 0, i32 1
  %180 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %id.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3405, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %181) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

if.else.i.i8.i.i.i:                               ; preds = %sw.bb2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %182 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %178, i32 0, i32 1
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 8
  %table_id.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_table, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %table_id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %table_id.i.i.i.i.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3405, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %186) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb3.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_ctr, ptr %189, i32 0, i32 1
  %192 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %offset.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %193, %191
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3406, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %add.i.i.i.i.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb4.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %194 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3407, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %198) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb5.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %199 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %index.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %201, i32 0, i32 4
  %202 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %index.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3402, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %203) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb6.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %204 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %caps.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_vport, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %caps.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %caps.i.i.i.i.i, align 4
  %num.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %num.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %num.i.i.i.i.i, align 4
  %conv7.i.i.i.i.i = zext i16 %210 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3408, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %conv7.i.i.i.i.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb8.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef 3409, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb9.i.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %211 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %index10.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %index10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %index10.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3410, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %215) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb11.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %216 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %id12.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %id12.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %id12.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3400, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %220) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb13.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %221 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %id14.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %id14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %id14.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3401, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %225) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb15.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i32 noundef 3413, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb16.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %226 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef 3412, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %230) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb17.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %231 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %id18.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %id18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %id18.i.i.i.i.i, align 4
  %param_0.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %233, i32 0, i32 3
  %236 = ptrtoint ptr %param_0.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %param_0.i.i.i.i.i, align 4
  %conv19.i.i.i.i.i = zext i8 %237 to i32
  %param_1.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %233, i32 0, i32 4
  %238 = ptrtoint ptr %param_1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %param_1.i.i.i.i.i, align 1
  %conv20.i.i.i.i.i = zext i8 %239 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.30, i32 noundef 3420, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %235, i32 noundef %conv19.i.i.i.i.i, i32 noundef %conv20.i.i.i.i.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb21.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %240 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %id22.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %id22.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %id22.i.i.i.i.i, align 4
  %param_023.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %242, i32 0, i32 3
  %245 = ptrtoint ptr %param_023.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %param_023.i.i.i.i.i, align 4
  %conv24.i.i.i.i.i = zext i8 %246 to i32
  %param_125.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %242, i32 0, i32 4
  %247 = ptrtoint ptr %param_125.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %param_125.i.i.i.i.i, align 1
  %conv26.i.i.i.i.i = zext i8 %248 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.30, i32 noundef 3421, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef %244, i32 noundef %conv24.i.i.i.i.i, i32 noundef %conv26.i.i.i.i.i) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

sw.bb27.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %249 = getelementptr inbounds %struct.mlx5dr_action, ptr %171, i32 0, i32 2
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %sampler_id.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_sampler, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %sampler_id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %sampler_id.i.i.i.i.i, align 8
  %rx_icm_addr.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_sampler, ptr %251, i32 0, i32 1
  %254 = ptrtoint ptr %rx_icm_addr.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %rx_icm_addr.i.i.i.i.i, align 8
  %tx_icm_addr.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_action_sampler, ptr %251, i32 0, i32 2
  %256 = ptrtoint ptr %tx_icm_addr.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %tx_icm_addr.i.i.i.i.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef 3415, i64 noundef %conv.i.i5.i.i.i, i64 noundef %conv.i1.i.i28.i, i32 noundef 0, i32 noundef 0, i32 noundef %253, i64 noundef %255, i64 noundef %257) #6
  br label %dr_dump_rule_action_mem.exit.i.i.i.i

dr_dump_rule_action_mem.exit.i.i.i.i:             ; preds = %sw.bb27.i.i.i.i.i, %sw.bb21.i.i.i.i.i, %sw.bb17.i.i.i.i.i, %sw.bb16.i.i.i.i.i, %sw.bb15.i.i.i.i.i, %sw.bb13.i.i.i.i.i, %sw.bb11.i.i.i.i.i, %sw.bb9.i.i.i.i.i, %sw.bb8.i.i.i.i.i, %sw.bb6.i.i.i.i.i, %sw.bb5.i.i.i.i.i, %sw.bb4.i.i.i.i.i, %sw.bb3.i.i.i.i.i, %if.else.i.i8.i.i.i, %if.then.i.i7.i.i.i, %sw.bb.i.i.i.i.i, %for.body.i.i.i.i.dr_dump_rule_action_mem.exit.i.i.i.i_crit_edge
  %258 = ptrtoint ptr %.pn3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %.pn.i.i.i.i = load ptr, ptr %.pn3.i.i.i.i, align 4
  %cmp19.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %rule_actions_list.i.i.i.i
  br i1 %cmp19.not.i.i.i.i, label %dr_dump_rule_action_mem.exit.i.i.i.i.dr_dump_rule.exit.i.i.i_crit_edge, label %dr_dump_rule_action_mem.exit.i.i.i.i.for.body.i.i.i.i_crit_edge

dr_dump_rule_action_mem.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %dr_dump_rule_action_mem.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

dr_dump_rule_action_mem.exit.i.i.i.i.dr_dump_rule.exit.i.i.i_crit_edge: ; preds = %dr_dump_rule_action_mem.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_rule.exit.i.i.i

dr_dump_rule.exit.i.i.i:                          ; preds = %dr_dump_rule_action_mem.exit.i.i.i.i.dr_dump_rule.exit.i.i.i_crit_edge, %if.end17.i.i.i.i.dr_dump_rule.exit.i.i.i_crit_edge
  %259 = ptrtoint ptr %.pn11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pn.i.i.i = load ptr, ptr %.pn11.i.i.i, align 4
  %cmp2.not.i.i.i = icmp eq ptr %.pn.i.i.i, %dbg_rule_list.i.i.i
  br i1 %cmp2.not.i.i.i, label %dr_dump_rule.exit.i.i.i.dr_dump_matcher_all.exit.i.i_crit_edge, label %dr_dump_rule.exit.i.i.i.for.body.i.i.i_crit_edge

dr_dump_rule.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %dr_dump_rule.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

dr_dump_rule.exit.i.i.i.dr_dump_matcher_all.exit.i.i_crit_edge: ; preds = %dr_dump_rule.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_matcher_all.exit.i.i

dr_dump_matcher_all.exit.i.i:                     ; preds = %dr_dump_rule.exit.i.i.i.dr_dump_matcher_all.exit.i.i_crit_edge, %dr_dump_matcher.exit.i.i.i.dr_dump_matcher_all.exit.i.i_crit_edge
  %260 = ptrtoint ptr %.pn4.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %.pn.i.i = load ptr, ptr %.pn4.i.i, align 8
  %cmp2.not.i.i = icmp eq ptr %.pn.i.i, %matcher_list.i.i
  br i1 %cmp2.not.i.i, label %dr_dump_matcher_all.exit.i.i.dr_dump_table_all.exit.i_crit_edge, label %dr_dump_matcher_all.exit.i.i.for.body.i.i_crit_edge

dr_dump_matcher_all.exit.i.i.for.body.i.i_crit_edge: ; preds = %dr_dump_matcher_all.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dr_dump_matcher_all.exit.i.i.dr_dump_table_all.exit.i_crit_edge: ; preds = %dr_dump_matcher_all.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_table_all.exit.i

dr_dump_table_all.exit.i:                         ; preds = %dr_dump_matcher_all.exit.i.i.dr_dump_table_all.exit.i_crit_edge, %dr_dump_table.exit.i.i.dr_dump_table_all.exit.i_crit_edge
  %261 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %.pn.i = load ptr, ptr %.pn34.i, align 8
  %cmp2.not.i = icmp eq ptr %.pn.i, %dbg_tbl_list.i
  br i1 %cmp2.not.i, label %dr_dump_table_all.exit.i.dr_dump_domain_all.exit_crit_edge, label %dr_dump_table_all.exit.i.for.body.i_crit_edge

dr_dump_table_all.exit.i.for.body.i_crit_edge:    ; preds = %dr_dump_table_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dr_dump_table_all.exit.i.dr_dump_domain_all.exit_crit_edge: ; preds = %dr_dump_table_all.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dr_dump_domain_all.exit

dr_dump_domain_all.exit:                          ; preds = %dr_dump_table_all.exit.i.dr_dump_domain_all.exit_crit_edge, %dr_dump_domain.exit.i.dr_dump_domain_all.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i3.i.i) #6
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #6
  call void @mutex_unlock(ptr noundef %dump_info.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_dump_rule_rx_tx(ptr noundef %file, ptr nocapture noundef readonly %rule_rx_tx, i1 noundef zeroext %is_rx, i64 noundef %rule_id, i8 noundef zeroext %format_ver) unnamed_addr #0 align 64 {
entry:
  %hw_ste_dump.i = alloca [256 x i8], align 1
  %ste_arr = alloca [23 x ptr], align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %ste_arr) #6
  %0 = call ptr @memset(ptr %ste_arr, i32 255, i32 92)
  %last_rule_ste = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, ptr %rule_rx_tx, i32 0, i32 1
  %1 = ptrtoint ptr %last_rule_ste to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %last_rule_ste, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #6
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %i, align 4, !annotation !78
  %call = call i32 @mlx5dr_rule_get_reverse_rule_members(ptr noundef nonnull %ste_arr, ptr noundef %2, ptr noundef nonnull %i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i, align 4
  %dec1 = add i32 %5, -1
  store i32 %dec1, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not2 = icmp eq i32 %5, 0
  br i1 %tobool1.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %format_ver)
  %cmp.i = icmp eq i8 %format_ver, 0
  %cond.i = select i1 %is_rx, i32 3301, i32 3302
  %cond5.i = select i1 %is_rx, i32 3303, i32 3304
  %mem_rec_type.0.i = select i1 %cmp.i, i32 %cond.i, i32 %cond5.i
  %arrayidx.i.i = getelementptr inbounds i8, ptr %hw_ste_dump.i, i32 96
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dec3 = phi i32 [ %dec1, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %arrayidx = getelementptr [23 x ptr], ptr %ste_arr, i32 0, i32 %dec3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %hw_ste_dump.i) #6
  %8 = call ptr @memset(ptr %hw_ste_dump.i, i32 255, i32 256)
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %call.i.i = call ptr @bin2hex(ptr noundef nonnull %hw_ste_dump.i, ptr noundef %10, i32 noundef 48) #6
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call.i = call i64 @mlx5dr_ste_get_icm_addr(ptr noundef %7) #6
  %shr.i.i = lshr i64 %call.i, 6
  %and.i.i = and i64 %shr.i.i, 4294967295
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.28, i32 noundef %mem_rec_type.0.i, i64 noundef %and.i.i, i64 noundef %rule_id, ptr noundef nonnull %hw_ste_dump.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %hw_ste_dump.i) #6
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %i, align 4
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #6
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %ste_arr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_rule_get_reverse_rule_members(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5dr_ste_get_icm_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 627, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5dr_dbg_init_dump._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5dr_dbg_init_dump._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 633, i32 22}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 635, i32 22}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 637, i32 21}
!14 = !{ptr @mlx5dr_dbg_init_dump.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 642, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dr_dump_fops, !18, !"dr_dump_fops", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 619, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 574, i32 19}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 541, i32 46}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 547, i32 46}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 553, i32 46}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 559, i32 46}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 515, i32 19}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 523, i32 20}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 499, i32 19}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 487, i32 19}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 446, i32 19}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 434, i32 19}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 382, i32 19}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 292, i32 19}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 297, i32 20}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 299, i32 18}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 325, i32 20}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 327, i32 18}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 97, i32 6}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 355, i32 19}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 337, i32 19}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 223, i32 19}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 118, i32 21}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 178, i32 20}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_dbg.c", i32 193, i32 7}
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
!77 = !{i8 0, i8 2}
!78 = !{!"auto-init"}
