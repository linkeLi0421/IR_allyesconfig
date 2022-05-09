; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_ste_send_info = type { ptr, %struct.list_head, i16, i16, [64 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.postsend_info = type { %struct.dr_data_seg, %struct.dr_data_seg, i64, i32 }
%struct.dr_data_seg = type { i64, i32, i32, i32 }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.mlx5dr_ste = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
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
%struct.llist_head = type { ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5dr_send_ring = type { ptr, ptr, ptr, i32, i16, i32, i32, ptr, i32, [64 x i8], ptr, %struct.spinlock, i8 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5dr_mr = type { ptr, i32, i32, ptr, i32 }
%struct.mlx5dr_qp = type { ptr, %struct.mlx5_wq_qp, ptr, %struct.mlx5_wq_ctrl, i32, %struct.anon.170, %struct.anon.171, i32 }
%struct.mlx5_wq_qp = type { %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.162, i32, i32 }
%union.anon.162 = type { ptr }
%struct.anon.170 = type { i32, i32, i32, ptr, i32 }
%struct.anon.171 = type { i32, i32, i32, i32 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.177 }
%union.anon.177 = type { i32 }
%struct.mlx5dr_action = type { i32, %struct.refcount_struct, %union.anon.129 }
%union.anon.129 = type { ptr }
%struct.mlx5dr_action_rewrite = type { ptr, ptr, ptr, i16, i32, i8 }
%struct.dr_qp_rtr_attr = type { %struct.mlx5dr_cmd_gid_attr, i32, i32, i16, i8, i8, i16, i8 }
%struct.mlx5dr_cmd_gid_attr = type { [16 x i8], [6 x i8], i32 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5dr_cq = type { ptr, %struct.mlx5_cqwq, %struct.mlx5_wq_ctrl, %struct.mlx5_core_cq, ptr }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.169, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.169 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.178, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.181, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i8, i8, i16, i32 }
%union.anon.181 = type { i32 }
%struct.mlx5_uars_page = type { ptr, i8, i32, %struct.list_head, i32, ptr, ptr, i32, i32, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@mlx5dr_send_ring_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 930, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): Failed creating CQ\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5dr_send_ring_alloc\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_send_ring_alloc._entry_ptr = internal global ptr @mlx5dr_send_ring_alloc._entry, section ".printk_index", align 4
@mlx5dr_send_ring_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dmn->send_ring->lock\00", [42 x i8] zeroinitializer }, align 32
@mlx5dr_send_ring_alloc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 948, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): Failed creating QP\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5dr_send_ring_alloc._entry_ptr.8 = internal global ptr @mlx5dr_send_ring_alloc._entry.6, section ".printk_index", align 4
@dr_postsend_icm_data.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dr_postsend_icm_data.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dr_postsend_icm_data\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): Skipping post send: QP err state: %d, device state: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_cq_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013CQ completion CQ: #%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dr_cq_complete\00", [17 x i8] zeroinitializer }, align 32
@dr_cq_complete._entry_ptr = internal global ptr @dr_cq_complete._entry, section ".printk_index", align 4
@dr_create_rc_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 137, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): Can't create QP WQ\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dr_create_rc_qp\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dr_create_rc_qp._entry_ptr = internal global ptr @dr_create_rc_qp._entry, section ".printk_index", align 4
@dr_create_rc_qp._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 146, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Can't allocate wqe head\0A\00", [55 x i8] zeroinitializer }, align 32
@dr_create_rc_qp._entry_ptr.19 = internal global ptr @dr_create_rc_qp._entry.17, section ".printk_index", align 4
@dr_prepare_qp_to_rts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 704, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Failed modify QP rst2init\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dr_prepare_qp_to_rts\00", [43 x i8] zeroinitializer }, align 32
@dr_prepare_qp_to_rts._entry_ptr = internal global ptr @dr_prepare_qp_to_rts._entry, section ".printk_index", align 4
@dr_prepare_qp_to_rts._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 731, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Failed modify QP init2rtr\0A\00", [53 x i8] zeroinitializer }, align 32
@dr_prepare_qp_to_rts._entry_ptr.24 = internal global ptr @dr_prepare_qp_to_rts._entry.22, section ".printk_index", align 4
@dr_prepare_qp_to_rts._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): Failed modify QP rtr2rts\0A\00", [54 x i8] zeroinitializer }, align 32
@dr_prepare_qp_to_rts._entry_ptr.27 = internal global ptr @dr_prepare_qp_to_rts._entry.25, section ".printk_index", align 4
@dr_reg_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 887, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d:(pid %d): Can't dma buf\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dr_reg_mr\00", [22 x i8] zeroinitializer }, align 32
@dr_reg_mr._entry_ptr = internal global ptr @dr_reg_mr._entry, section ".printk_index", align 4
@dr_reg_mr._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 894, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): Can't create mkey\0A\00", [61 x i8] zeroinitializer }, align 32
@dr_reg_mr._entry_ptr.32 = internal global ptr @dr_reg_mr._entry.30, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dr_handle_pending_wc.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dr_handle_pending_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 330, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): SMFS QPN 0x%x is disabled/limited\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dr_handle_pending_wc\00", [43 x i8] zeroinitializer }, align 32
@dr_handle_pending_wc._entry_ptr = internal global ptr @dr_handle_pending_wc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 13, i64 14]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 930, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 944, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 948, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 370, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 752, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 137, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 146, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 704, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 731, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 742, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 887, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 894, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 326, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 329, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @dr_cq_complete._entry, ptr @dr_cq_complete._entry_ptr, ptr @dr_create_rc_qp._entry, ptr @dr_create_rc_qp._entry.17, ptr @dr_create_rc_qp._entry_ptr, ptr @dr_create_rc_qp._entry_ptr.19, ptr @dr_handle_pending_wc._entry, ptr @dr_handle_pending_wc._entry_ptr, ptr @dr_prepare_qp_to_rts._entry, ptr @dr_prepare_qp_to_rts._entry.22, ptr @dr_prepare_qp_to_rts._entry.25, ptr @dr_prepare_qp_to_rts._entry_ptr, ptr @dr_prepare_qp_to_rts._entry_ptr.24, ptr @dr_prepare_qp_to_rts._entry_ptr.27, ptr @dr_reg_mr._entry, ptr @dr_reg_mr._entry.30, ptr @dr_reg_mr._entry_ptr, ptr @dr_reg_mr._entry_ptr.32, ptr @mlx5dr_send_ring_alloc._entry, ptr @mlx5dr_send_ring_alloc._entry.6, ptr @mlx5dr_send_ring_alloc._entry_ptr, ptr @mlx5dr_send_ring_alloc._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx5dr_send_ring_alloc.__key, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_send_ring_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_send_ring_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_send_ring_alloc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_cq_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_create_rc_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_create_rc_qp._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_prepare_qp_to_rts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_prepare_qp_to_rts._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_prepare_qp_to_rts._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_reg_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_reg_mr._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_handle_pending_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_send_fill_and_append_ste_send_info(ptr noundef %ste, i16 noundef zeroext %size, i16 noundef zeroext %offset, ptr noundef %data, ptr noundef %ste_info, ptr noundef %send_list, i1 noundef zeroext %copy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.mlx5dr_ste_send_info, ptr %ste_info, i32 0, i32 2
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %size, ptr %size1, align 4
  %1 = ptrtoint ptr %ste_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ste, ptr %ste_info, align 4
  %offset3 = getelementptr inbounds %struct.mlx5dr_ste_send_info, ptr %ste_info, i32 0, i32 3
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %offset, ptr %offset3, align 2
  br i1 %copy_data, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data_cont = getelementptr inbounds %struct.mlx5dr_ste_send_info, ptr %ste_info, i32 0, i32 4
  %conv = zext i16 %size to i32
  %3 = call ptr @memcpy(ptr %data_cont, ptr %data, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.sink = phi ptr [ %data_cont, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds %struct.mlx5dr_ste_send_info, ptr %ste_info, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.sink, ptr %4, align 4
  %send_list8 = getelementptr inbounds %struct.mlx5dr_ste_send_info, ptr %ste_info, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %send_list, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %send_list8, ptr noundef %7, ptr noundef %send_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_list8, ptr %prev.i, align 4
  %9 = ptrtoint ptr %send_list8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_list, ptr %send_list8, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5dr_ste_send_info, ptr %ste_info, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %send_list8, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_send_postsend_ste(ptr nocapture noundef readonly %dmn, ptr noundef %ste, ptr noundef %data, i16 noundef zeroext %size, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  %send_info = alloca %struct.postsend_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %send_info) #8
  %0 = getelementptr inbounds i8, ptr %send_info, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %2 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ste_ctx, align 4
  %conv = zext i16 %size to i32
  tail call void @mlx5dr_ste_prepare_for_postsend(ptr noundef %3, ptr noundef %data, i32 noundef %conv) #8
  %4 = ptrtoint ptr %data to i32
  %conv1 = zext i32 %4 to i64
  %5 = ptrtoint ptr %send_info to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv1, ptr %send_info, align 8
  %length = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %length, align 8
  %lkey = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %7 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %lkey, align 4
  %call = tail call i64 @mlx5dr_ste_get_mr_addr(ptr noundef %ste) #8
  %conv5 = zext i16 %offset to i64
  %add = add i64 %call, %conv5
  %remote_addr = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 2
  %8 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %remote_addr, align 8
  %htbl = getelementptr inbounds %struct.mlx5dr_ste, ptr %ste, i32 0, i32 3
  %9 = ptrtoint ptr %htbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htbl, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chunk, align 4
  %rkey = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rkey, align 4
  %rkey6 = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 3
  %15 = ptrtoint ptr %rkey6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rkey6, align 8
  %call7 = call fastcc i32 @dr_postsend_icm_data(ptr noundef %dmn, ptr noundef nonnull %send_info)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %send_info) #8
  ret i32 %call7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_prepare_for_postsend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5dr_ste_get_mr_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_postsend_icm_data(ptr nocapture noundef readonly %dmn, ptr noundef %send_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %send_ring1 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %0 = ptrtoint ptr %send_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_ring1, align 8
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.rhs, !prof !78

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.rhs:                                          ; preds = %entry
  %err_state = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %err_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %err_state, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end24, label %lor.rhs.do.body_crit_edge, !prof !80

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  %.b74 = load i1, ptr @dr_postsend_icm_data.__print_once, align 1
  br i1 %.b74, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dr_postsend_icm_data.__print_once, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_postsend_icm_data.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_postsend_icm_data, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !81

if.then14:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %err_state17 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %err_state17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %err_state17, align 4, !range !79
  %20 = zext i8 %19 to i32
  %state20 = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 14
  %21 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_postsend_icm_data.__UNIQUE_ID_ddebug568, ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 372, i32 noundef %17, i32 noundef %20, i32 noundef %22) #8
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  %lock = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %call25 = tail call fastcc i32 @dr_handle_pending_wc(ptr noundef %dmn, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_unlock_crit_edge

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end28:                                         ; preds = %if.end24
  %length = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 8
  %max_inline_size = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %max_inline_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_inline_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp29 = icmp ugt i32 %24, %26
  br i1 %cmp29, label %if.then31, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %tx_head = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_head, align 4
  %29 = ptrtoint ptr %send_ring1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %send_ring1, align 8
  %signal_th = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %signal_th to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %signal_th, align 4
  %conv33 = zext i16 %32 to i32
  %sub = add nsw i32 %conv33, -1
  %and = and i32 %sub, %28
  %max_post_send_size = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %max_post_send_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_post_send_size, align 4
  %mul = mul i32 %and, %34
  %buf = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %mul
  %37 = ptrtoint ptr %send_info to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %send_info, align 8
  %conv35 = trunc i64 %38 to i32
  %39 = inttoptr i32 %conv35 to ptr
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %39, i32 %24)
  %mr = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mr, align 4
  %dma_addr = getelementptr inbounds %struct.mlx5dr_mr, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr, align 4
  %add = add i32 %44, %mul
  %conv38 = zext i32 %add to i64
  store i64 %conv38, ptr %send_info, align 8
  %45 = load ptr, ptr %mr, align 4
  %mkey = getelementptr inbounds %struct.mlx5dr_mr, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mkey, align 4
  %lkey = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %48 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %lkey, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then31, %if.end28.if.end43_crit_edge
  %tx_head44 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %tx_head44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_head44, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %tx_head44, align 4
  %pending_wqe.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %pending_wqe.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pending_wqe.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %pending_wqe.i, align 4
  %signal_th.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %signal_th.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %signal_th.i, align 4
  %conv.i = zext i16 %54 to i32
  %rem.i = urem i32 %inc.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end43.dr_fill_data_segs.exit_crit_edge

if.end43.dr_fill_data_segs.exit_crit_edge:        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_fill_data_segs.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %send_flags.i = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 3
  %55 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %send_flags.i, align 8
  %or.i = or i32 %56, 2
  store i32 %or.i, ptr %send_flags.i, align 8
  br label %dr_fill_data_segs.exit

dr_fill_data_segs.exit:                           ; preds = %if.then.i, %if.end43.dr_fill_data_segs.exit_crit_edge
  %57 = ptrtoint ptr %pending_wqe.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pending_wqe.i, align 4
  %inc4.i = add i32 %58, 1
  store i32 %inc4.i, ptr %pending_wqe.i, align 4
  %59 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length, align 8
  %read.i = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 1
  %length6.i = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %length6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %length6.i, align 8
  %62 = ptrtoint ptr %send_info to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %send_info, align 8
  %conv9.i = and i64 %63, 4294967295
  %64 = ptrtoint ptr %read.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv9.i, ptr %read.i, align 8
  %mr.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %mr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mr.i, align 4
  %mkey.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mkey.i, align 4
  %lkey.i = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %lkey.i, align 4
  %70 = load i32, ptr %pending_wqe.i, align 4
  %71 = ptrtoint ptr %signal_th.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %signal_th.i, align 4
  %conv15.i = zext i16 %72 to i32
  %rem16.i = urem i32 %70, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem16.i)
  %cmp17.i = icmp eq i32 %rem16.i, 0
  %spec.select.i = select i1 %cmp17.i, i32 2, i32 0
  %73 = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.select.i, ptr %73, align 8
  %qp = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qp, align 4
  %remote_addr.i = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 2
  %77 = ptrtoint ptr %remote_addr.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %remote_addr.i, align 8
  %rkey.i = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 3
  %79 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rkey.i, align 8
  %sq.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 5
  %81 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sq.i.i, align 4
  %wqe_cnt.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 5, i32 4
  %83 = ptrtoint ptr %wqe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wqe_cnt.i.i, align 4
  %sub.i.i = add i32 %84, -1
  %and.i.i = and i32 %sub.i.i, %82
  %sq2.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 1, i32 1
  %conv.i.i.i = and i32 %and.i.i, 65535
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 1, i32 1, i32 0, i32 3
  %85 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %86 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i, %conv.i.i.i.i
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 1, i32 1, i32 0, i32 6
  %87 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %88 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %89 = ptrtoint ptr %sq2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sq2.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %90, i32 %shr.i.i.i.i
  %91 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 1, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %94 to i32
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 1, i32 1, i32 0, i32 5
  %95 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %96 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %92, i32 %shl.i.i.i.i
  %97 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %97, align 4
  %send_flags.i.i = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 3
  %99 = ptrtoint ptr %send_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %send_flags.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i = icmp eq i32 %100, 0
  %conv3.i.i = select i1 %tobool.not.i.i, i8 0, i8 8
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %101 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv3.i.i, ptr %fm_ce_se.i.i, align 1
  %102 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sq.i.i, align 4
  %and6.i.i = shl i32 %103, 8
  %shl.i.i = and i32 %and6.i.i, 16776960
  %or.i.i = or i32 %shl.i.i, 8
  %104 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or.i.i, ptr %add.ptr.i.i.i.i, align 4
  %qpn.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 4
  %105 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qpn.i.i, align 4
  %shl7.i.i = shl i32 %106, 8
  %or8.i.i = or i32 %shl7.i.i, 3
  %qpn_ds.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %qpn_ds.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or8.i.i, ptr %qpn_ds.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 1
  %108 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %78, ptr %add.ptr.i.i, align 8
  %rkey9.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 1, i32 2
  %109 = ptrtoint ptr %rkey9.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %80, ptr %rkey9.i.i, align 8
  %reserved.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 1, i32 5
  %110 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %reserved.i.i, align 4
  %add.ptr10.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 2
  %111 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %length, align 8
  %113 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %add.ptr10.i.i, align 8
  %lkey.i.i = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %114 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lkey.i.i, align 4
  %lkey11.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 2, i32 1
  %116 = ptrtoint ptr %lkey11.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %lkey11.i.i, align 4
  %117 = ptrtoint ptr %send_info to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %send_info, align 8
  %addr12.i.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 2, i32 2
  %119 = ptrtoint ptr %addr12.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %addr12.i.i, align 8
  %120 = load i32, ptr %sq.i.i, align 4
  %inc.i.i = add i32 %120, 1
  store i32 %inc.i.i, ptr %sq.i.i, align 4
  %wqe_head.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 5, i32 3
  %121 = ptrtoint ptr %wqe_head.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wqe_head.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %122, i32 %and.i.i
  %123 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %120, ptr %arrayidx.i.i, align 4
  %124 = ptrtoint ptr %remote_addr.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %remote_addr.i, align 8
  %126 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rkey.i, align 8
  %128 = load i32, ptr %sq.i.i, align 4
  %129 = ptrtoint ptr %wqe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %wqe_cnt.i.i, align 4
  %sub.i11.i = add i32 %130, -1
  %and.i12.i = and i32 %sub.i11.i, %128
  %conv.i.i14.i = and i32 %and.i12.i, 65535
  %131 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i16.i = zext i16 %132 to i32
  %add.i.i.i17.i = add nuw nsw i32 %conv.i.i14.i, %conv.i.i.i16.i
  %133 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i19.i = zext i8 %134 to i32
  %shr.i.i.i20.i = lshr i32 %add.i.i.i17.i, %conv1.i.i.i19.i
  %135 = ptrtoint ptr %sq2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sq2.i.i, align 4
  %arrayidx.i.i.i21.i = getelementptr %struct.mlx5_buf_list, ptr %136, i32 %shr.i.i.i20.i
  %137 = ptrtoint ptr %arrayidx.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.i.i.i21.i, align 4
  %139 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i23.i = zext i16 %140 to i32
  %and.i.i.i24.i = and i32 %add.i.i.i17.i, %conv2.i.i.i23.i
  %141 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i26.i = zext i8 %142 to i32
  %shl.i.i.i27.i = shl i32 %and.i.i.i24.i, %conv3.i.i.i26.i
  %add.ptr.i.i.i28.i = getelementptr i8, ptr %138, i32 %shl.i.i.i27.i
  %143 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 0, i32 5
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %143, align 4
  %145 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i30.i = icmp eq i32 %146, 0
  %conv3.i31.i = select i1 %tobool.not.i30.i, i8 0, i8 8
  %fm_ce_se.i32.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 0, i32 4
  %147 = ptrtoint ptr %fm_ce_se.i32.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv3.i31.i, ptr %fm_ce_se.i32.i, align 1
  %148 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sq.i.i, align 4
  %and6.i33.i = shl i32 %149, 8
  %shl.i34.i = and i32 %and6.i33.i, 16776960
  %or.i35.i = or i32 %shl.i34.i, 16
  %150 = ptrtoint ptr %add.ptr.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.i35.i, ptr %add.ptr.i.i.i28.i, align 4
  %151 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %qpn.i.i, align 4
  %shl7.i37.i = shl i32 %152, 8
  %or8.i38.i = or i32 %shl7.i37.i, 3
  %qpn_ds.i39.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 0, i32 1
  %153 = ptrtoint ptr %qpn_ds.i39.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or8.i38.i, ptr %qpn_ds.i39.i, align 4
  %add.ptr.i40.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 1
  %154 = ptrtoint ptr %add.ptr.i40.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %125, ptr %add.ptr.i40.i, align 8
  %rkey9.i41.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 1, i32 2
  %155 = ptrtoint ptr %rkey9.i41.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %127, ptr %rkey9.i41.i, align 8
  %reserved.i42.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 1, i32 5
  %156 = ptrtoint ptr %reserved.i42.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %reserved.i42.i, align 4
  %add.ptr10.i43.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 2
  %157 = ptrtoint ptr %length6.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %length6.i, align 8
  %159 = ptrtoint ptr %add.ptr10.i43.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %add.ptr10.i43.i, align 8
  %160 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %lkey.i, align 4
  %lkey11.i46.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 2, i32 1
  %162 = ptrtoint ptr %lkey11.i46.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %lkey11.i46.i, align 4
  %163 = ptrtoint ptr %read.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %read.i, align 8
  %addr12.i47.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i28.i, i32 2, i32 2
  %165 = ptrtoint ptr %addr12.i47.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %addr12.i47.i, align 8
  %166 = load i32, ptr %sq.i.i, align 4
  %inc.i48.i = add i32 %166, 1
  store i32 %inc.i48.i, ptr %sq.i.i, align 4
  %167 = ptrtoint ptr %wqe_head.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %wqe_head.i.i, align 4
  %arrayidx.i50.i = getelementptr i32, ptr %168, i32 %and.i12.i
  %169 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %166, ptr %arrayidx.i50.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  %170 = ptrtoint ptr %sq.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sq.i.i, align 4
  %and.i.i.i = and i32 %171, 65535
  %db.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 1, i32 1, i32 1
  %172 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %db.i.i.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %and.i.i.i, ptr %173, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %uar.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %76, i32 0, i32 2
  %175 = ptrtoint ptr %uar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %uar.i.i.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %178, i32 2048
  %179 = ptrtoint ptr %add.ptr.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i.i.i28.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %180) #8, !srcloc !84
  %181 = ptrtoint ptr %qpn_ds.i39.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %qpn_ds.i39.i, align 4
  %add.ptr.i.i38.i.i = getelementptr i8, ptr %178, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38.i.i, i32 %182) #8, !srcloc !84
  br label %out_unlock

out_unlock:                                       ; preds = %dr_fill_data_segs.exit, %if.end24.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then14, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %out_unlock ], [ 0, %if.then14 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_send_postsend_htbl(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %htbl, ptr noundef %formatted_ste, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  %send_info = alloca %struct.postsend_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 3
  %0 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk, align 4
  %byte_size1 = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %byte_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_size1, align 4
  %send_ring.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %4 = ptrtoint ptr %send_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_ring.i, align 8
  %max_post_send_size.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_post_send_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_post_send_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.i = icmp ugt i32 %3, %7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %3, %7
  %div823.i = lshr i32 %7, 6
  br label %dr_get_tbl_copy_details.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_of_entries.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_of_entries.i, align 8
  %mul.i = shl i32 %9, 6
  br label %dr_get_tbl_copy_details.exit

dr_get_tbl_copy_details.exit:                     ; preds = %if.else.i, %if.then.i
  %byte_size.0 = phi i32 [ %7, %if.then.i ], [ %3, %if.else.i ]
  %num_stes_per_iter.0 = phi i32 [ %div823.i, %if.then.i ], [ %9, %if.else.i ]
  %iterations.0 = phi i32 [ %div.i, %if.then.i ], [ 1, %if.else.i ]
  %alloc_size.0.i = phi i32 [ %7, %if.then.i ], [ %mul.i, %if.else.i ]
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %alloc_size.0.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.not, label %dr_get_tbl_copy_details.exit.cleanup33_crit_edge, label %if.end

dr_get_tbl_copy_details.exit.cleanup33_crit_edge: ; preds = %dr_get_tbl_copy_details.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.end:                                           ; preds = %dr_get_tbl_copy_details.exit
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %10 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ste_ctx, align 4
  tail call void @mlx5dr_ste_prepare_for_postsend(ptr noundef %11, ptr noundef %formatted_ste, i32 noundef 64) #8
  %12 = ptrtoint ptr %call.i.i.i to i32
  %conv = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations.0)
  %cmp72 = icmp sgt i32 %iterations.0, 0
  br i1 %cmp72, label %for.body.lr.ph, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

for.body.lr.ph:                                   ; preds = %if.end
  %div63 = lshr i32 %byte_size.0, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_stes_per_iter.0)
  %cmp370 = icmp sgt i32 %num_stes_per_iter.0, 0
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 4
  %length = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 1
  %lkey = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %remote_addr = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 2
  %rkey24 = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.end
  %inc31 = add nuw nsw i32 %i.073, 1
  %exitcond75.not = icmp eq i32 %inc31, %iterations.0
  br i1 %exitcond75.not, label %for.cond.out_free_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.out_free_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc31, %for.cond.for.body_crit_edge ]
  %mul = mul i32 %i.073, %div63
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %send_info) #8
  %13 = call ptr @memset(ptr %send_info, i32 0, i32 64)
  br i1 %cmp370, label %for.body.for.body4_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body4:                                        ; preds = %if.end17.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %j.071 = phi i32 [ %inc, %if.end17.for.body4_crit_edge ], [ 0, %for.body.for.body4_crit_edge ]
  %14 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ste_arr, align 4
  %add = add i32 %j.071, %mul
  %mul5 = shl i32 %j.071, 6
  %refcount.i = getelementptr %struct.mlx5dr_ste, ptr %15, i32 %add, i32 1
  %16 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i64 = icmp eq i32 %17, 0
  br i1 %tobool.not.i64, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call.i.i.i, i32 %mul5
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %formatted_ste, i32 64)
  br label %if.end17

if.else:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.mlx5dr_ste, ptr %15, i32 %add
  %add.ptr8 = getelementptr i8, ptr %call.i.i.i, i32 %mul5
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = call ptr @memcpy(ptr %add.ptr8, ptr %20, i32 48)
  %add.ptr13 = getelementptr i8, ptr %add.ptr8, i32 48
  %22 = call ptr @memcpy(ptr %add.ptr13, ptr %mask, i32 16)
  %23 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ste_ctx, align 4
  call void @mlx5dr_ste_prepare_for_postsend(ptr noundef %24, ptr noundef %add.ptr8, i32 noundef 64) #8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then7
  %inc = add nuw nsw i32 %j.071, 1
  %exitcond.not = icmp eq i32 %inc, %num_stes_per_iter.0
  br i1 %exitcond.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body4_crit_edge

if.end17.for.body4_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %for.body.for.end_crit_edge
  %25 = ptrtoint ptr %send_info to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %send_info, align 8
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %byte_size.0, ptr %length, align 8
  %27 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %lkey, align 4
  %28 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ste_arr, align 4
  %add.ptr21 = getelementptr %struct.mlx5dr_ste, ptr %29, i32 %mul
  %call22 = call i64 @mlx5dr_ste_get_mr_addr(ptr noundef %add.ptr21) #8
  %30 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call22, ptr %remote_addr, align 8
  %31 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chunk, align 4
  %rkey = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rkey, align 4
  %35 = ptrtoint ptr %rkey24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rkey24, align 8
  %call25 = call fastcc i32 @dr_postsend_icm_data(ptr noundef %dmn, ptr noundef nonnull %send_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %send_info) #8
  br i1 %tobool26.not, label %for.cond, label %for.end.out_free_crit_edge

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

out_free:                                         ; preds = %for.end.out_free_crit_edge, %for.cond.out_free_crit_edge, %if.end.out_free_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.out_free_crit_edge ], [ %call25, %for.end.out_free_crit_edge ], [ 0, %for.cond.out_free_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %cleanup33

cleanup33:                                        ; preds = %out_free, %dr_get_tbl_copy_details.exit.cleanup33_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ -12, %dr_get_tbl_copy_details.exit.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_send_postsend_formatted_htbl(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %htbl, ptr noundef %ste_init_data, i1 noundef zeroext %update_hw_ste) local_unnamed_addr #0 align 64 {
entry:
  %send_info = alloca %struct.postsend_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 3
  %0 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk, align 4
  %byte_size1 = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %byte_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_size1, align 4
  %send_ring.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %4 = ptrtoint ptr %send_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_ring.i, align 8
  %max_post_send_size.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_post_send_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_post_send_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.i = icmp ugt i32 %3, %7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %3, %7
  %div823.i = lshr i32 %7, 6
  br label %dr_get_tbl_copy_details.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_of_entries.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_of_entries.i, align 8
  %mul.i = shl i32 %9, 6
  br label %dr_get_tbl_copy_details.exit

dr_get_tbl_copy_details.exit:                     ; preds = %if.else.i, %if.then.i
  %byte_size.0 = phi i32 [ %7, %if.then.i ], [ %3, %if.else.i ]
  %iterations.0 = phi i32 [ %div.i, %if.then.i ], [ 1, %if.else.i ]
  %num_stes.0 = phi i32 [ %div823.i, %if.then.i ], [ %9, %if.else.i ]
  %alloc_size.0.i = phi i32 [ %7, %if.then.i ], [ %mul.i, %if.else.i ]
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %alloc_size.0.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.not, label %dr_get_tbl_copy_details.exit.cleanup33_crit_edge, label %if.end

dr_get_tbl_copy_details.exit.cleanup33_crit_edge: ; preds = %dr_get_tbl_copy_details.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup33

if.end:                                           ; preds = %dr_get_tbl_copy_details.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_stes.0)
  %cmp65 = icmp sgt i32 %num_stes.0, 0
  %or.cond = select i1 %update_hw_ste, i1 %cmp65, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.lr.ph:                                   ; preds = %if.end
  %hw_ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %hw_ste_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_ste_arr, align 4
  %mul = mul i32 %i.066, 48
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %ste_init_data, i32 48)
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %num_stes.0
  br i1 %exitcond.not, label %for.body.if.end4_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %for.body.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %13 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ste_ctx, align 4
  tail call void @mlx5dr_ste_prepare_for_postsend(ptr noundef %14, ptr noundef %ste_init_data, i32 noundef 64) #8
  br i1 %cmp65, label %if.end4.for.body7_crit_edge, label %if.end4.for.cond13.preheader_crit_edge

if.end4.for.cond13.preheader_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.preheader

if.end4.for.body7_crit_edge:                      ; preds = %if.end4
  br label %for.body7

for.cond13.preheader:                             ; preds = %for.body7.for.cond13.preheader_crit_edge, %if.end4.for.cond13.preheader_crit_edge
  %div60 = lshr i32 %byte_size.0, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations.0)
  %cmp1469 = icmp sgt i32 %iterations.0, 0
  br i1 %cmp1469, label %for.body15.lr.ph, label %for.cond13.preheader.out_free_crit_edge

for.cond13.preheader.out_free_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %15 = ptrtoint ptr %call.i.i.i to i32
  %conv17 = zext i32 %15 to i64
  %length = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 1
  %lkey = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %ste_arr = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %htbl, i32 0, i32 4
  %remote_addr = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 2
  %rkey24 = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 3
  %16 = getelementptr inbounds i8, ptr %send_info, i32 16
  br label %for.body15

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end4.for.body7_crit_edge
  %i.168 = phi i32 [ %inc11, %for.body7.for.body7_crit_edge ], [ 0, %if.end4.for.body7_crit_edge ]
  %mul8 = shl i32 %i.168, 6
  %add.ptr9 = getelementptr i8, ptr %call.i.i.i, i32 %mul8
  %17 = call ptr @memcpy(ptr %add.ptr9, ptr %ste_init_data, i32 64)
  %inc11 = add nuw nsw i32 %i.168, 1
  %exitcond72.not = icmp eq i32 %inc11, %num_stes.0
  br i1 %exitcond72.not, label %for.body7.for.cond13.preheader_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.body7.for.cond13.preheader_crit_edge:         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.preheader

for.cond13:                                       ; preds = %for.body15
  %inc31 = add nuw nsw i32 %i.270, 1
  %exitcond73.not = icmp eq i32 %inc31, %iterations.0
  br i1 %exitcond73.not, label %for.cond13.out_free_crit_edge, label %for.cond13.for.body15_crit_edge

for.cond13.for.body15_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.cond13.out_free_crit_edge:                    ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

for.body15:                                       ; preds = %for.cond13.for.body15_crit_edge, %for.body15.lr.ph
  %i.270 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc31, %for.cond13.for.body15_crit_edge ]
  %mul16 = mul i32 %i.270, %div60
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %send_info) #8
  %18 = call ptr @memset(ptr %16, i32 0, i32 48)
  %19 = ptrtoint ptr %send_info to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv17, ptr %send_info, align 8
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %byte_size.0, ptr %length, align 8
  %21 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lkey, align 4
  %22 = ptrtoint ptr %ste_arr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ste_arr, align 4
  %conv20 = and i32 %mul16, 255
  %add.ptr21 = getelementptr %struct.mlx5dr_ste, ptr %23, i32 %conv20
  %call22 = call i64 @mlx5dr_ste_get_mr_addr(ptr noundef %add.ptr21) #8
  %24 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call22, ptr %remote_addr, align 8
  %25 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chunk, align 4
  %rkey = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rkey, align 4
  %29 = ptrtoint ptr %rkey24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rkey24, align 8
  %call25 = call fastcc i32 @dr_postsend_icm_data(ptr noundef %dmn, ptr noundef nonnull %send_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %send_info) #8
  br i1 %tobool26.not, label %for.cond13, label %for.body15.out_free_crit_edge

for.body15.out_free_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

out_free:                                         ; preds = %for.body15.out_free_crit_edge, %for.cond13.out_free_crit_edge, %for.cond13.preheader.out_free_crit_edge
  %ret.1 = phi i32 [ 0, %for.cond13.preheader.out_free_crit_edge ], [ %call25, %for.body15.out_free_crit_edge ], [ 0, %for.cond13.out_free_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %cleanup33

cleanup33:                                        ; preds = %out_free, %dr_get_tbl_copy_details.exit.cleanup33_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free ], [ -12, %dr_get_tbl_copy_details.exit.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_send_postsend_action(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %action) local_unnamed_addr #0 align 64 {
entry:
  %send_info = alloca %struct.postsend_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %send_info) #8
  %0 = getelementptr inbounds i8, ptr %send_info, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %data = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %send_info to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %send_info, align 8
  %num_of_actions = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %num_of_actions to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_of_actions, align 4
  %conv1 = zext i16 %10 to i32
  %mul = shl nuw nsw i32 %conv1, 3
  %length = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %length, align 8
  %lkey = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %12 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lkey, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chunk, align 4
  %mr_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %mr_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mr_addr, align 8
  %remote_addr = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 2
  %17 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %remote_addr, align 8
  %18 = load ptr, ptr %chunk, align 4
  %rkey = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rkey, align 4
  %rkey5 = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 3
  %21 = ptrtoint ptr %rkey5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rkey5, align 8
  %call = call fastcc i32 @dr_postsend_icm_data(ptr noundef %dmn, ptr noundef nonnull %send_info)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %send_info) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_send_ring_alloc(ptr noundef %dmn) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %in.i80.i = alloca [68 x i32], align 4
  %_out.i81.i = alloca [4 x i32], align 4
  %in.i74.i = alloca [68 x i32], align 4
  %_out.i75.i = alloca [4 x i32], align 4
  %in.i.i = alloca [68 x i32], align 4
  %_out.i.i = alloca [4 x i32], align 4
  %rtr_attr.i = alloca %struct.dr_qp_rtr_attr, align 4
  %out.i172 = alloca [4 x i32], align 4
  %temp_qpc.i = alloca [58 x i32], align 4
  %wqp.i173 = alloca %struct.mlx5_wq_param, align 4
  %temp_cqc.i = alloca [16 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  %wqp.i = alloca %struct.mlx5_wq_param, align 4
  %eqn.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #12
  %send_ring = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %1 = ptrtoint ptr %send_ring to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %send_ring, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %uar = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 3
  %4 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uar, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp_cqc.i) #8
  %6 = call ptr @memset(ptr %temp_cqc.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #8
  %7 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqp.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eqn.i) #8
  %8 = ptrtoint ptr %eqn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %eqn.i, align 4, !annotation !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 216) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.dr_create_cq.exit_crit_edge, label %cond.end32.i

if.end.dr_create_cq.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_create_cq.exit

cond.end32.i:                                     ; preds = %if.end
  %10 = getelementptr inbounds %struct.mlx5_wq_param, ptr %wqp.i, i32 0, i32 1
  %add.ptr.i = getelementptr inbounds i32, ptr %temp_cqc.i, i32 3
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %12, -520093697
  %or.i = or i32 %and.i, 134217728
  store i32 %or.i, ptr %add.ptr.i, align 4
  %numa_node.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 17
  %13 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %numa_node.i, align 8
  %15 = ptrtoint ptr %wqp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %wqp.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %10, align 4
  %wq.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 1
  %wq_ctrl.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 2
  %call44.i = call i32 @mlx5_cqwq_create(ptr noundef %3, ptr noundef nonnull %wqp.i, ptr noundef nonnull %temp_cqc.i, ptr noundef %wq.i, ptr noundef %wq_ctrl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %for.cond.preheader.i, label %cond.end32.i.out180.i_crit_edge

cond.end32.i.out180.i_crit_edge:                  ; preds = %cond.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out180.i

for.cond.preheader.i:                             ; preds = %cond.end32.i
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sz_m1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp502.not.i = icmp eq i32 %18, -1
  br i1 %cmp502.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %20 to i32
  %add.i.i.i = add i32 %i.03.i, %conv.i.i.i
  %21 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %22 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %23 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %24, i32 %shr.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %27 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %28 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %29 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %30 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %30)
  %cmp.i.i = icmp eq i8 %30, 7
  %conv2.i.i = zext i1 %cmp.i.i to i32
  %add.ptr.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i, i32 %conv2.i.i
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i, i32 0, i32 23
  %31 = ptrtoint ptr %op_own.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -15, ptr %op_own.i, align 1
  %inc.i = add nuw i32 %i.03.i, 1
  %32 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sz_m1.i.i, align 8
  %add.i.i = add i32 %33, 1
  %cmp50.i = icmp ult i32 %inc.i, %add.i.i
  br i1 %cmp50.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %buf.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %npages.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %npages.i, align 4
  %mul.i = shl i32 %35, 3
  %add55.i = add i32 %mul.i, 272
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add55.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool57.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool57.not.i, label %for.end.i.err_cqwq.i_crit_edge, label %if.end59.i

for.end.i.err_cqwq.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cqwq.i

if.end59.i:                                       ; preds = %for.end.i
  %36 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %call61.i = call i32 @mlx5_comp_vectors_count(ptr noundef %3) #8
  %rem.i = urem i32 %39, %call61.i
  %call62.i = call i32 @mlx5_vector2eqn(ptr noundef %3, i32 noundef %rem.i, ptr noundef nonnull %eqn.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %cond.end81.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  br label %err_cqwq.i

cond.end81.i:                                     ; preds = %if.end59.i
  %add.ptr86.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %40 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr86.i, align 4
  %42 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eqn.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %call.i.i.i, i32 36
  %44 = ptrtoint ptr %add.ptr99.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr99.i, align 4
  %index.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i, align 4
  %or90.i = and i32 %41, -536870912
  %and114.i = and i32 %46, 16777215
  %and113.i = or i32 %or90.i, %and114.i
  %or116.i = or i32 %and113.i, 134217728
  store i32 %or116.i, ptr %add.ptr86.i, align 4
  %page_shift.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 3
  %47 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %page_shift.i, align 4
  %add.ptr129.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %49 = ptrtoint ptr %add.ptr129.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr129.i, align 4
  %and130.i = and i32 %50, -520093697
  %51 = add i8 %48, 20
  %52 = and i8 %51, 31
  %and131.i = zext i8 %52 to i32
  %shl132.i = shl nuw nsw i32 %and131.i, 24
  %or133.i = or i32 %shl132.i, %and130.i
  store i32 %or133.i, ptr %add.ptr129.i, align 4
  %dma.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 2
  %53 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma.i, align 8
  %conv146.i = zext i32 %54 to i64
  %add.ptr147.i = getelementptr i8, ptr %call.i.i.i, i32 72
  %55 = ptrtoint ptr %add.ptr147.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv146.i, ptr %add.ptr147.i, align 8
  %add.ptr152.i = getelementptr i8, ptr %call.i.i.i, i32 272
  call void @mlx5_fill_page_frag_array(ptr noundef %buf.i, ptr noundef %add.ptr152.i) #8
  %mcq.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3
  %comp.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3, i32 9
  %56 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dr_cq_complete, ptr %comp.i, align 8
  %call157.i = call i32 @mlx5_core_create_cq(ptr noundef %3, ptr noundef %mcq.i, ptr noundef nonnull %call.i.i.i, i32 noundef %add55.i, ptr noundef nonnull %out.i, i32 noundef 16) #8
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %tobool158.not.i = icmp eq i32 %call157.i, 0
  br i1 %tobool158.not.i, label %if.end160.i, label %cond.end81.i.err_cqwq.i_crit_edge

cond.end81.i.err_cqwq.i_crit_edge:                ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cqwq.i

if.end160.i:                                      ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #10
  %db.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %cqe_sz.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 64, ptr %cqe_sz.i, align 4
  %58 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %db.i, align 8
  %set_ci_db.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %set_ci_db.i, align 8
  %add.ptr169.i = getelementptr i32, ptr %59, i32 1
  %arm_db.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr169.i, ptr %arm_db.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %59, align 4
  %63 = load ptr, ptr %arm_db.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 536870912, ptr %63, align 4
  %vector176.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3, i32 7
  %65 = ptrtoint ptr %vector176.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %vector176.i, align 8
  %uar178.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %call7.i.i.i, i32 0, i32 3, i32 4
  %66 = ptrtoint ptr %uar178.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %5, ptr %uar178.i, align 8
  br label %dr_create_cq.exit

err_cqwq.i:                                       ; preds = %cond.end81.i.err_cqwq.i_crit_edge, %if.then64.i, %for.end.i.err_cqwq.i_crit_edge
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i) #8
  br label %out180.i

out180.i:                                         ; preds = %err_cqwq.i, %cond.end32.i.out180.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %dr_create_cq.exit

dr_create_cq.exit:                                ; preds = %out180.i, %if.end160.i, %if.end.dr_create_cq.exit_crit_edge
  %retval.0.i = phi ptr [ null, %out180.i ], [ %call7.i.i.i, %if.end160.i ], [ null, %if.end.dr_create_cq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eqn.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqp.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp_cqc.i) #8
  %67 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %send_ring, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %retval.0.i, ptr %68, align 4
  %70 = load ptr, ptr %send_ring, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool6.not = icmp eq ptr %72, null
  br i1 %tobool6.not, label %do.end, label %if.end10

do.end:                                           ; preds = %dr_create_cq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdev, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %77 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i170 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i170 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 930, i32 noundef %82) #13
  br label %free_send_ring

if.end10:                                         ; preds = %dr_create_cq.exit
  %mcq = getelementptr inbounds %struct.mlx5dr_cq, ptr %72, i32 0, i32 3
  %83 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mcq, align 4
  %pdn = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 2
  %85 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pdn, align 8
  %87 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %uar, align 4
  %roce_caps.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 32
  %89 = ptrtoint ptr %roce_caps.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i = load i8, ptr %roce_caps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i171 = icmp slt i8 %bf.load.i, 0
  %90 = and i8 %bf.load.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %90)
  %.not.i = icmp eq i8 %90, -96
  %91 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool15.i = icmp ne i8 %91, 0
  %92 = select i1 %tobool.not.i171, i1 %.not.i, i1 %tobool15.i
  br i1 %92, label %if.then18, label %if.end10.do.body25_crit_edge

if.end10.do.body25_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %isolate_vl_tc = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 33
  %93 = ptrtoint ptr %isolate_vl_tc to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load = load i8, ptr %isolate_vl_tc, align 2
  %94 = lshr i8 %bf.load, 6
  %phi.bo = and i8 %94, 1
  %phi.cast = zext i8 %phi.bo to i32
  %phi.bo216 = shl nuw nsw i32 %phi.cast, 13
  br label %do.body25

do.body25:                                        ; preds = %if.then18, %if.end10.do.body25_crit_edge
  %init_attr.sroa.12.0 = phi i32 [ %phi.bo216, %if.then18 ], [ 0, %if.end10.do.body25_crit_edge ]
  %lock = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %70, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx5dr_send_ring_alloc.__key, i16 noundef signext 3) #8
  %95 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mdev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i172) #8
  %97 = call ptr @memset(ptr %out.i172, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %temp_qpc.i) #8
  %98 = call ptr @memset(ptr %temp_qpc.i, i32 0, i32 232)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wqp.i173) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i174 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %99, i32 noundef 3520, i32 noundef 144) #12
  %tobool.not.i175 = icmp eq ptr %call7.i.i.i174, null
  br i1 %tobool.not.i175, label %do.body25.dr_create_rc_qp.exit_crit_edge, label %cond.end64.i

do.body25.dr_create_rc_qp.exit_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_create_rc_qp.exit

cond.end64.i:                                     ; preds = %do.body25
  %100 = getelementptr inbounds %struct.mlx5_wq_param, ptr %wqp.i173, i32 0, i32 1
  %numa_node.i176 = getelementptr inbounds %struct.mlx5_core_dev, ptr %96, i32 0, i32 17, i32 17
  %101 = ptrtoint ptr %numa_node.i176 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %numa_node.i176, align 8
  %103 = ptrtoint ptr %wqp.i173 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %wqp.i173, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %102, ptr %100, align 4
  %rq.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 6
  %105 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %rq.i, align 4
  %cc.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 6, i32 1
  %106 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %cc.i, align 8
  %wqe_cnt.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 6, i32 3
  %107 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 4, ptr %wqe_cnt.i, align 8
  %sq.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 5
  %108 = ptrtoint ptr %sq.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %sq.i, align 8
  %cc7.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %cc7.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %cc7.i, align 4
  %wqe_cnt34.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 5, i32 4
  %110 = ptrtoint ptr %wqe_cnt34.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 128, ptr %wqe_cnt34.i, align 8
  %add.ptr.i177 = getelementptr inbounds i32, ptr %temp_qpc.i, i32 2
  %111 = ptrtoint ptr %add.ptr.i177 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i177, align 4
  %or74.i = and i32 %112, -8353793
  %or111.i = or i32 %or74.i, 1062912
  store i32 %or111.i, ptr %add.ptr.i177, align 4
  %wq.i178 = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 1
  %wq_ctrl.i179 = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 3
  %call117.i = call i32 @mlx5_wq_qp_create(ptr noundef %96, ptr noundef nonnull %wqp.i173, ptr noundef nonnull %temp_qpc.i, ptr noundef %wq.i178, ptr noundef %wq_ctrl.i179) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool118.not.i = icmp eq i32 %call117.i, 0
  br i1 %tobool118.not.i, label %if.end124.i, label %do.end122.i

do.end122.i:                                      ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %96, align 8
  %115 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i180 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i180 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 68
  %119 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 137, i32 noundef %120) #13
  br label %err_wq.i

if.end124.i:                                      ; preds = %cond.end64.i
  %121 = ptrtoint ptr %wqe_cnt34.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %wqe_cnt34.i, align 8
  %123 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 4) #8
  %124 = extractvalue { i32, i1 } %123, 1
  br i1 %124, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !78

kcalloc.exit.thread.i:                            ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  %wqe_head582.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 5, i32 3
  %125 = ptrtoint ptr %wqe_head582.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %wqe_head582.i, align 4
  br label %do.end135.i

if.end7.i.i.i:                                    ; preds = %if.end124.i
  %126 = extractvalue { i32, i1 } %123, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %126, i32 noundef 3520) #11
  %wqe_head.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 5, i32 3
  %127 = ptrtoint ptr %wqe_head.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call8.i.i.i, ptr %wqe_head.i, align 4
  %tobool131.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool131.not.i, label %if.end7.i.i.i.do.end135.i_crit_edge, label %if.end140.i

if.end7.i.i.i.do.end135.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end135.i

do.end135.i:                                      ; preds = %if.end7.i.i.i.do.end135.i_crit_edge, %kcalloc.exit.thread.i
  %128 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %96, align 8
  %130 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i573.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i573.i to ptr
  %task138.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task138.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task138.i, align 8
  %pid139.i = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 68
  %134 = ptrtoint ptr %pid139.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pid139.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, i32 noundef 146, i32 noundef %135) #13
  br label %err_wqe_head.i

if.end140.i:                                      ; preds = %if.end7.i.i.i
  %buf.i181 = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 3, i32 1
  %npages.i182 = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 3, i32 1, i32 1
  %136 = ptrtoint ptr %npages.i182 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %npages.i182, align 8
  %mul.i183 = shl i32 %137, 3
  %add142.i = add i32 %mul.i183, 272
  %call.i.i.i184 = call noalias ptr @kvmalloc_node(i32 noundef %add142.i, i32 noundef 3520, i32 noundef -1) #11
  %tobool144.not.i = icmp eq ptr %call.i.i.i184, null
  br i1 %tobool144.not.i, label %if.end140.i.err_in.i_crit_edge, label %if.end146.i

if.end140.i.err_in.i_crit_edge:                   ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_in.i

if.end146.i:                                      ; preds = %if.end140.i
  %add.ptr147.i185 = getelementptr i8, ptr %call.i.i.i184, i32 24
  %138 = ptrtoint ptr %add.ptr147.i185 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr147.i185, align 4
  %or170.i = and i32 %139, -16726017
  %and181.i = or i32 %or170.i, %init_attr.sroa.12.0
  %or184.i = or i32 %and181.i, 6144
  store i32 %or184.i, ptr %add.ptr147.i185, align 4
  %add.ptr193.i = getelementptr i8, ptr %call.i.i.i184, i32 28
  %140 = ptrtoint ptr %add.ptr193.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr193.i, align 4
  %and194.i = and i32 %141, -16777216
  %and195.i = and i32 %86, 16777215
  %or197.i = or i32 %and194.i, %and195.i
  store i32 %or197.i, ptr %add.ptr193.i, align 4
  %index.i187 = getelementptr inbounds %struct.mlx5_uars_page, ptr %88, i32 0, i32 2
  %142 = ptrtoint ptr %index.i187 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %index.i187, align 4
  %add.ptr206.i = getelementptr i8, ptr %call.i.i.i184, i32 36
  %144 = ptrtoint ptr %add.ptr206.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr206.i, align 4
  %and207.i = and i32 %145, -16777216
  %and208.i = and i32 %143, 16777215
  %or210.i = or i32 %and207.i, %and208.i
  store i32 %or210.i, ptr %add.ptr206.i, align 4
  %page_shift.i188 = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 3, i32 1, i32 3
  %146 = ptrtoint ptr %page_shift.i188 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %page_shift.i188, align 8
  %add.ptr223.i = getelementptr i8, ptr %call.i.i.i184, i32 44
  %148 = ptrtoint ptr %add.ptr223.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr223.i, align 4
  %and224.i = and i32 %149, -520093697
  %150 = add i8 %147, 20
  %151 = and i8 %150, 31
  %and225.i = zext i8 %151 to i32
  %shl226.i = shl nuw nsw i32 %and225.i, 24
  %or227.i = or i32 %shl226.i, %and224.i
  store i32 %or227.i, ptr %add.ptr223.i, align 4
  %add.ptr236.i = getelementptr i8, ptr %call.i.i.i184, i32 136
  %152 = ptrtoint ptr %add.ptr236.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr236.i, align 4
  %or240.i = or i32 %153, 2048
  store i32 %or240.i, ptr %add.ptr236.i, align 4
  %add.ptr249.i = getelementptr i8, ptr %call.i.i.i184, i32 32
  %154 = ptrtoint ptr %add.ptr249.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr249.i, align 4
  %or253.i = or i32 %155, 16
  %add.ptr262.i = getelementptr i8, ptr %call.i.i.i184, i32 148
  %156 = ptrtoint ptr %add.ptr262.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr262.i, align 4
  %and263.i = and i32 %157, -16777216
  %and264.i = and i32 %84, 16777215
  %or266.i = or i32 %and263.i, %and264.i
  store i32 %or266.i, ptr %add.ptr262.i, align 4
  %add.ptr276.i = getelementptr i8, ptr %call.i.i.i184, i32 180
  %158 = ptrtoint ptr %add.ptr276.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr276.i, align 4
  %and277.i = and i32 %159, -16777216
  %or280.i = or i32 %and277.i, %and264.i
  store i32 %or280.i, ptr %add.ptr276.i, align 4
  %and290.i = and i32 %or253.i, -458753
  store i32 %and290.i, ptr %add.ptr249.i, align 4
  %160 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %wqe_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i.i574.i = icmp eq i32 %161, 0
  %162 = call i32 @llvm.ctlz.i32(i32 %161, i1 true) #8, !range !86
  %and325.i = and i32 %or253.i, -8323073
  %sub.i.op.i575.i = shl nuw nsw i32 %162, 19
  %sub.i.op.i575.i.op = and i32 %sub.i.op.i575.i, 7864320
  %sub.i.op.i575.i.op.op = xor i32 %sub.i.op.i575.i.op, 7864320
  %shl327.i = select i1 %tobool.not.i.i574.i, i32 7864320, i32 %sub.i.op.i575.i.op.op
  %or328.i = or i32 %shl327.i, %and325.i
  %163 = ptrtoint ptr %add.ptr249.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or328.i, ptr %add.ptr249.i, align 4
  %add.ptr337.i = getelementptr i8, ptr %call.i.i.i184, i32 196
  %164 = ptrtoint ptr %add.ptr337.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr337.i, align 4
  %and338.i = and i32 %165, -117440513
  store i32 %and338.i, ptr %add.ptr337.i, align 4
  %166 = ptrtoint ptr %wqe_cnt34.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %wqe_cnt34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i.i577.i = icmp eq i32 %167, 0
  %168 = call i32 @llvm.ctlz.i32(i32 %167, i1 true) #8, !range !86
  %and373.i = and i32 %or328.i, -489665
  %sub.i.op.i578.i = shl nuw nsw i32 %168, 11
  %sub.i.op.i578.i.op = and i32 %sub.i.op.i578.i, 30720
  %sub.i.op.i578.i.op.op = xor i32 %sub.i.op.i578.i.op, 30720
  %shl375.i = select i1 %tobool.not.i.i577.i, i32 30720, i32 %sub.i.op.i578.i.op.op
  %or376.i = or i32 %shl375.i, %and373.i
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %96, i32 0, i32 8, i32 0, i32 4
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i.i, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %and.i580.i = and i32 %172, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i580.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i580.i, 0
  %and388.i = select i1 %tobool.not.i.not.i, i32 0, i32 64
  %or390.i = or i32 %or376.i, %and388.i
  %173 = ptrtoint ptr %add.ptr249.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or390.i, ptr %add.ptr249.i, align 4
  %dma.i189 = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 3, i32 2, i32 2
  %174 = ptrtoint ptr %dma.i189 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dma.i189, align 4
  %conv403.i = zext i32 %175 to i64
  %add.ptr404.i = getelementptr i8, ptr %call.i.i.i184, i32 184
  %176 = ptrtoint ptr %add.ptr404.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %conv403.i, ptr %add.ptr404.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %96, i32 0, i32 8
  %177 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %caps.i, align 8
  %add.ptr410.i = getelementptr i32, ptr %178, i32 15
  %179 = ptrtoint ptr %add.ptr410.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr410.i, align 4
  %and411.i = and i32 %180, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and411.i)
  %cmp412.i = icmp eq i32 %and411.i, 1
  br i1 %cmp412.i, label %do.body415.i, label %if.end146.i.if.end428.i_crit_edge

if.end146.i.if.end428.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end428.i

do.body415.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr420.i = getelementptr i8, ptr %call.i.i.i184, i32 40
  %181 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr420.i, align 4
  %or424.i = or i32 %182, 16777215
  store i32 %or424.i, ptr %add.ptr420.i, align 4
  br label %if.end428.i

if.end428.i:                                      ; preds = %do.body415.i, %if.end146.i.if.end428.i_crit_edge
  %add.ptr431.i = getelementptr i8, ptr %call.i.i.i184, i32 272
  call void @mlx5_fill_page_frag_array(ptr noundef %buf.i181, ptr noundef %add.ptr431.i) #8
  %183 = ptrtoint ptr %call.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %call.i.i.i184, align 4
  %and438.i = and i32 %184, 65535
  %or441.i = or i32 %and438.i, 83886080
  store i32 %or441.i, ptr %call.i.i.i184, align 4
  %call446.i = call i32 @mlx5_cmd_exec(ptr noundef %96, ptr noundef nonnull %call.i.i.i184, i32 noundef %add142.i, ptr noundef nonnull %out.i172, i32 noundef 16) #8
  %add.ptr448.i = getelementptr inbounds i32, ptr %out.i172, i32 2
  %185 = ptrtoint ptr %add.ptr448.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr448.i, align 4
  %and450.i = and i32 %186, 16777215
  %qpn.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 4
  %187 = ptrtoint ptr %qpn.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %and450.i, ptr %qpn.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i184) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446.i)
  %tobool451.not.i = icmp eq i32 %call446.i, 0
  br i1 %tobool451.not.i, label %if.end453.i, label %if.end428.i.err_in.i_crit_edge

if.end428.i.err_in.i_crit_edge:                   ; preds = %if.end428.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_in.i

if.end453.i:                                      ; preds = %if.end428.i
  call void @__sanitizer_cov_trace_pc() #10
  %uar455.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %call7.i.i.i174, i32 0, i32 2
  %188 = ptrtoint ptr %uar455.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %88, ptr %uar455.i, align 4
  br label %dr_create_rc_qp.exit

err_in.i:                                         ; preds = %if.end428.i.err_in.i_crit_edge, %if.end140.i.err_in.i_crit_edge
  %189 = ptrtoint ptr %wqe_head.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wqe_head.i, align 4
  call void @kfree(ptr noundef %190) #8
  br label %err_wqe_head.i

err_wqe_head.i:                                   ; preds = %err_in.i, %do.end135.i
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i179) #8
  br label %err_wq.i

err_wq.i:                                         ; preds = %err_wqe_head.i, %do.end122.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i174) #8
  br label %dr_create_rc_qp.exit

dr_create_rc_qp.exit:                             ; preds = %err_wq.i, %if.end453.i, %do.body25.dr_create_rc_qp.exit_crit_edge
  %retval.0.i190 = phi ptr [ null, %err_wq.i ], [ %call7.i.i.i174, %if.end453.i ], [ null, %do.body25.dr_create_rc_qp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wqp.i173) #8
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %temp_qpc.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i172) #8
  %191 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %send_ring, align 8
  %qp = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %retval.0.i190, ptr %qp, align 4
  %194 = load ptr, ptr %send_ring, align 8
  %qp34 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %qp34 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %qp34, align 4
  %tobool35.not = icmp eq ptr %196, null
  br i1 %tobool35.not, label %do.end39, label %if.end45

do.end39:                                         ; preds = %dr_create_rc_qp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mdev, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 8
  %201 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i191 = and i32 %201, -16384
  %202 = inttoptr i32 %and.i191 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %task43, align 8
  %pid44 = getelementptr inbounds %struct.task_struct, ptr %204, i32 0, i32 68
  %205 = ptrtoint ptr %pid44 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pid44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 948, i32 noundef %206) #13
  br label %clean_cq

if.end45:                                         ; preds = %dr_create_rc_qp.exit
  %207 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %194, align 4
  %qp50 = getelementptr inbounds %struct.mlx5dr_cq, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %qp50 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %196, ptr %qp50, align 4
  %max_send_wr52 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 2
  %210 = ptrtoint ptr %max_send_wr52 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 128, ptr %max_send_wr52, align 8
  %211 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %send_ring, align 8
  %qp54 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %qp54 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %qp54, align 4
  %max_inline_data = getelementptr inbounds %struct.mlx5dr_qp, ptr %214, i32 0, i32 7
  %215 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %max_inline_data, align 4
  %217 = call i32 @llvm.smin.i32(i32 %216, i32 64)
  %max_inline_size = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 1
  %218 = ptrtoint ptr %max_inline_size to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %max_inline_size, align 4
  %signal_th = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %212, i32 0, i32 4
  %219 = ptrtoint ptr %signal_th to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 8, ptr %signal_th, align 4
  %220 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %send_ring, align 8
  %qp.i = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %rtr_attr.i) #8
  %224 = call ptr @memset(ptr %rtr_attr.i, i32 0, i32 44)
  %225 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mdev, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i.i) #8
  %227 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %228 = call ptr @memset(ptr %227, i32 0, i32 268)
  %add.ptr.i.i192 = getelementptr inbounds i8, ptr %in.i.i, i32 24
  %add.ptr2.i.i = getelementptr inbounds i8, ptr %in.i.i, i32 84
  %229 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 65536, ptr %add.ptr2.i.i, align 4
  %230 = ptrtoint ptr %add.ptr.i.i192 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 6144, ptr %add.ptr.i.i192, align 4
  %add.ptr25.i.i = getelementptr inbounds i8, ptr %in.i.i, i32 168
  %231 = ptrtoint ptr %add.ptr25.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 49152, ptr %add.ptr25.i.i, align 4
  %232 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 84017152, ptr %in.i.i, align 4
  %qpn.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %223, i32 0, i32 4
  %233 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %qpn.i.i, align 4
  %add.ptr67.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %and69.i.i = and i32 %234, 16777215
  %235 = ptrtoint ptr %add.ptr67.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %and69.i.i, ptr %add.ptr67.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i) #8
  %236 = call ptr @memset(ptr %_out.i.i, i32 0, i32 16)
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %226, ptr noundef nonnull %in.i.i, i32 noundef 272, ptr noundef nonnull %_out.i.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i193 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i193, label %if.end.i198, label %do.end.i

do.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mdev, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 8
  %241 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i194 = and i32 %241, -16384
  %242 = inttoptr i32 %and.i.i194 to ptr
  %task.i195 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %task.i195 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %task.i195, align 8
  %pid.i196 = getelementptr inbounds %struct.task_struct, ptr %244, i32 0, i32 68
  %245 = ptrtoint ptr %pid.i196 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %pid.i196, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 704, i32 noundef %246) #13
  br label %dr_prepare_qp_to_rts.exit.thread

if.end.i198:                                      ; preds = %if.end45
  %mtu3.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 1
  %247 = ptrtoint ptr %mtu3.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 3, ptr %mtu3.i, align 4
  %248 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %qpn.i.i, align 4
  %qp_num.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 2
  %250 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %qp_num.i, align 4
  %min_rnr_timer.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 4
  %251 = ptrtoint ptr %min_rnr_timer.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 12, ptr %min_rnr_timer.i, align 2
  %port_num.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 3
  %252 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 1, ptr %port_num.i, align 4
  %roce_min_src_udp.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 22
  %253 = ptrtoint ptr %roce_min_src_udp.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %roce_min_src_udp.i, align 2
  %udp_src_port.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 6
  %255 = ptrtoint ptr %udp_src_port.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %254, ptr %udp_src_port.i, align 4
  %256 = ptrtoint ptr %roce_caps.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load.i.i = load i8, ptr %roce_caps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp slt i8 %bf.load.i.i, 0
  %257 = and i8 %bf.load.i.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %257)
  %.not.i.i = icmp eq i8 %257, -96
  %258 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool15.i.i = icmp ne i8 %258, 0
  %259 = select i1 %tobool.not.i.i, i1 %.not.i.i, i1 %tobool15.i.i
  %fl.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 7
  %260 = ptrtoint ptr %fl.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %bf.load.i197 = load i8, ptr %fl.i, align 2
  %bf.shl.i = select i1 %259, i8 -128, i8 0
  %bf.clear.i = and i8 %bf.load.i197, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %fl.i, align 2
  br i1 %259, label %if.end.i198.if.end19.i_crit_edge, label %if.then11.i

if.end.i198.if.end19.i_crit_edge:                 ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then11.i:                                      ; preds = %if.end.i198
  %261 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %mdev, align 4
  %call14.i = call i32 @mlx5dr_cmd_query_gid(ptr noundef %262, i8 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %rtr_attr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then11.i.dr_prepare_qp_to_rts.exit.thread_crit_edge

if.then11.i.dr_prepare_qp_to_rts.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_prepare_qp_to_rts.exit.thread

if.end17.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %sgid_index.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 5
  %263 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %sgid_index.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end17.i, %if.end.i198.if.end19.i_crit_edge
  %264 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mdev, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i74.i) #8
  %266 = call ptr @memset(ptr %in.i74.i, i32 0, i32 272)
  %267 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %qpn.i.i, align 4
  %269 = ptrtoint ptr %mtu3.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %mtu3.i, align 4
  %add.ptr14.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 32
  %shl17.i.i = shl i32 %270, 29
  %or31.i.i = or i32 %shl17.i.i, 352321536
  %271 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %or31.i.i, ptr %add.ptr14.i.i, align 4
  %272 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %qp_num.i, align 4
  %add.ptr40.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 44
  %and42.i.i = and i32 %273, 16777215
  %274 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %and42.i.i, ptr %add.ptr40.i.i, align 4
  %add.ptr48.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 86
  %mac.i.i = getelementptr inbounds %struct.mlx5dr_cmd_gid_attr, ptr %rtr_attr.i, i32 0, i32 1
  %275 = call ptr @memcpy(ptr %add.ptr48.i.i, ptr %mac.i.i, i32 6)
  %add.ptr50.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 64
  %276 = call ptr @memcpy(ptr %add.ptr50.i.i, ptr %rtr_attr.i, i32 16)
  %sgid_index.i.i = getelementptr inbounds %struct.dr_qp_rtr_attr, ptr %rtr_attr.i, i32 0, i32 5
  %277 = ptrtoint ptr %sgid_index.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %sgid_index.i.i, align 1
  %conv.i.i = zext i8 %278 to i32
  %add.ptr58.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 56
  %shl61.i.i = shl nuw nsw i32 %conv.i.i, 16
  %279 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %shl61.i.i, ptr %add.ptr58.i.i, align 4
  %roce_ver.i.i = getelementptr inbounds %struct.mlx5dr_cmd_gid_attr, ptr %rtr_attr.i, i32 0, i32 2
  %280 = ptrtoint ptr %roce_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %roce_ver.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %281)
  %cmp.i.i199 = icmp eq i32 %281, 2
  br i1 %cmp.i.i199, label %do.body68.i.i, label %if.end19.i.dr_cmd_modify_qp_init2rtr.exit.i_crit_edge

if.end19.i.dr_cmd_modify_qp_init2rtr.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_cmd_modify_qp_init2rtr.exit.i

do.body68.i.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %282 = ptrtoint ptr %udp_src_port.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %udp_src_port.i, align 4
  %conv70.i.i = zext i16 %283 to i32
  %add.ptr74.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 80
  %284 = ptrtoint ptr %add.ptr74.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %add.ptr74.i.i, align 4
  %and75.i.i = and i32 %285, -65536
  %or78.i.i = or i32 %and75.i.i, %conv70.i.i
  store i32 %or78.i.i, ptr %add.ptr74.i.i, align 4
  br label %dr_cmd_modify_qp_init2rtr.exit.i

dr_cmd_modify_qp_init2rtr.exit.i:                 ; preds = %do.body68.i.i, %if.end19.i.dr_cmd_modify_qp_init2rtr.exit.i_crit_edge
  %and4.i.i = and i32 %268, 16777215
  %add.ptr3.i.i = getelementptr inbounds i32, ptr %in.i74.i, i32 2
  %286 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %port_num.i, align 4
  %add.ptr88.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 84
  %288 = ptrtoint ptr %add.ptr88.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %add.ptr88.i.i, align 4
  %and89.i.i = and i32 %289, -16711681
  %290 = and i16 %287, 255
  %and90.i.i = zext i16 %290 to i32
  %shl91.i.i = shl nuw nsw i32 %and90.i.i, 16
  %or92.i.i = or i32 %shl91.i.i, %and89.i.i
  store i32 %or92.i.i, ptr %add.ptr88.i.i, align 4
  %291 = ptrtoint ptr %fl.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load.i77.i = load i8, ptr %fl.i, align 2
  %bf.lshr.i.i = lshr i8 %bf.load.i77.i, 7
  %conv98.i.i = zext i8 %bf.lshr.i.i to i32
  %add.ptr102.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 48
  %292 = ptrtoint ptr %add.ptr102.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %add.ptr102.i.i, align 4
  %and103.i.i = and i32 %293, 2147483647
  %shl105.i.i = shl nuw i32 %conv98.i.i, 31
  %or106.i.i = or i32 %shl105.i.i, %and103.i.i
  store i32 %or106.i.i, ptr %add.ptr102.i.i, align 4
  %add.ptr115.i.i = getelementptr inbounds i8, ptr %in.i74.i, i32 172
  %294 = ptrtoint ptr %add.ptr115.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %add.ptr115.i.i, align 4
  %and116.i.i = and i32 %295, -520093697
  %or119.i.i = or i32 %and116.i.i, 16777216
  store i32 %or119.i.i, ptr %add.ptr115.i.i, align 4
  %296 = ptrtoint ptr %in.i74.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %in.i74.i, align 4
  %and130.i.i = and i32 %297, 65535
  %or133.i.i = or i32 %and130.i.i, 84082688
  store i32 %or133.i.i, ptr %in.i74.i, align 4
  %298 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %and4.i.i, ptr %add.ptr3.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i75.i) #8
  %299 = call ptr @memset(ptr %_out.i75.i, i32 0, i32 16)
  %call.i78.i = call i32 @mlx5_cmd_exec(ptr noundef %265, ptr noundef nonnull %in.i74.i, i32 noundef 272, ptr noundef nonnull %_out.i75.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i75.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i74.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool22.not.i = icmp eq i32 %call.i78.i, 0
  %300 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %mdev, align 4
  br i1 %tobool22.not.i, label %if.end32.i, label %do.end26.i

do.end26.i:                                       ; preds = %dr_cmd_modify_qp_init2rtr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %301, align 8
  %304 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i79.i = and i32 %304, -16384
  %305 = inttoptr i32 %and.i79.i to ptr
  %task30.i = getelementptr inbounds %struct.thread_info, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %task30.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %task30.i, align 8
  %pid31.i = getelementptr inbounds %struct.task_struct, ptr %307, i32 0, i32 68
  %308 = ptrtoint ptr %pid31.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %pid31.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 731, i32 noundef %309) #13
  br label %dr_prepare_qp_to_rts.exit.thread

if.end32.i:                                       ; preds = %dr_cmd_modify_qp_init2rtr.exit.i
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i80.i) #8
  %310 = getelementptr inbounds i8, ptr %in.i80.i, i32 4
  %311 = call ptr @memset(ptr %310, i32 0, i32 268)
  %312 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %qpn.i.i, align 4
  %add.ptr3.i83.i = getelementptr inbounds i32, ptr %in.i80.i, i32 2
  %and4.i84.i = and i32 %313, 16777215
  %add.ptr14.i85.i = getelementptr inbounds i8, ptr %in.i80.i, i32 136
  %314 = ptrtoint ptr %add.ptr14.i85.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 516096, ptr %add.ptr14.i85.i, align 4
  %add.ptr41.i.i = getelementptr inbounds i8, ptr %in.i80.i, i32 56
  %315 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 1073741824, ptr %add.ptr41.i.i, align 4
  %316 = ptrtoint ptr %in.i80.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 84148224, ptr %in.i80.i, align 4
  %317 = ptrtoint ptr %add.ptr3.i83.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %and4.i84.i, ptr %add.ptr3.i83.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i81.i) #8
  %318 = call ptr @memset(ptr %_out.i81.i, i32 0, i32 16)
  %call.i87.i = call i32 @mlx5_cmd_exec(ptr noundef %301, ptr noundef nonnull %in.i80.i, i32 noundef 272, ptr noundef nonnull %_out.i81.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i81.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i80.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool35.not.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool35.not.i, label %if.end62, label %do.end39.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %319 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %mdev, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 8
  %323 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i88.i = and i32 %323, -16384
  %324 = inttoptr i32 %and.i88.i to ptr
  %task43.i = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 2
  %325 = ptrtoint ptr %task43.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %task43.i, align 8
  %pid44.i = getelementptr inbounds %struct.task_struct, ptr %326, i32 0, i32 68
  %327 = ptrtoint ptr %pid44.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %pid44.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %322, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef 742, i32 noundef %328) #13
  br label %dr_prepare_qp_to_rts.exit.thread

dr_prepare_qp_to_rts.exit.thread:                 ; preds = %do.end39.i, %do.end26.i, %if.then11.i.dr_prepare_qp_to_rts.exit.thread_crit_edge, %do.end.i
  %retval.0.i200.ph = phi i32 [ %call14.i, %if.then11.i.dr_prepare_qp_to_rts.exit.thread_crit_edge ], [ %call.i87.i, %do.end39.i ], [ %call.i78.i, %do.end26.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %rtr_attr.i) #8
  br label %clean_qp

if.end62:                                         ; preds = %if.end32.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %rtr_attr.i) #8
  %329 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %send_ring, align 8
  %max_post_send_size = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %330, i32 0, i32 5
  %331 = ptrtoint ptr %max_post_send_size to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 65536, ptr %max_post_send_size, align 4
  %332 = load ptr, ptr %send_ring, align 8
  %signal_th66 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %332, i32 0, i32 4
  %333 = ptrtoint ptr %signal_th66 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %signal_th66, align 4
  %conv67 = zext i16 %334 to i32
  %max_post_send_size69 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %332, i32 0, i32 5
  %335 = ptrtoint ptr %max_post_send_size69 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %max_post_send_size69, align 4
  %mul = mul i32 %336, %conv67
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #11
  %337 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %send_ring, align 8
  %buf = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %338, i32 0, i32 7
  %339 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call9.i.i, ptr %buf, align 4
  %340 = load ptr, ptr %send_ring, align 8
  %buf73 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %340, i32 0, i32 7
  %341 = ptrtoint ptr %buf73 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %buf73, align 4
  %tobool74.not = icmp eq ptr %342, null
  br i1 %tobool74.not, label %if.end62.clean_qp_crit_edge, label %if.end76

if.end62.clean_qp_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %clean_qp

if.end76:                                         ; preds = %if.end62
  %buf_size = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %340, i32 0, i32 8
  %343 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %mul, ptr %buf_size, align 4
  %344 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %mdev, align 4
  %346 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %pdn, align 8
  %348 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %send_ring, align 8
  %buf81 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %349, i32 0, i32 7
  %350 = ptrtoint ptr %buf81 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %buf81, align 4
  %call82 = call fastcc ptr @dr_reg_mr(ptr noundef %345, i32 noundef %347, ptr noundef %351, i32 noundef %mul)
  %352 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %send_ring, align 8
  %mr = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %353, i32 0, i32 2
  %354 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %call82, ptr %mr, align 4
  %355 = load ptr, ptr %send_ring, align 8
  %mr85 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %355, i32 0, i32 2
  %356 = ptrtoint ptr %mr85 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %mr85, align 4
  %tobool86.not = icmp eq ptr %357, null
  br i1 %tobool86.not, label %if.end76.free_mem_crit_edge, label %if.end88

if.end76.free_mem_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem

if.end88:                                         ; preds = %if.end76
  %358 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %mdev, align 4
  %360 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %pdn, align 8
  %sync_buff = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %355, i32 0, i32 9
  %call92 = call fastcc ptr @dr_reg_mr(ptr noundef %359, i32 noundef %361, ptr noundef %sync_buff, i32 noundef 64)
  %362 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %send_ring, align 8
  %sync_mr = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %363, i32 0, i32 10
  %364 = ptrtoint ptr %sync_mr to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %call92, ptr %sync_mr, align 4
  %365 = load ptr, ptr %send_ring, align 8
  %sync_mr95 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %365, i32 0, i32 10
  %366 = ptrtoint ptr %sync_mr95 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sync_mr95, align 4
  %tobool96.not = icmp eq ptr %367, null
  br i1 %tobool96.not, label %if.then97, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %368 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %mdev, align 4
  %mr101 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %365, i32 0, i32 2
  %370 = ptrtoint ptr %mr101 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %mr101, align 4
  %mkey.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %mkey.i, align 4
  %call.i = call i32 @mlx5_core_destroy_mkey(ptr noundef %369, i32 noundef %373) #8
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %369, i32 0, i32 2
  %374 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %375, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %371, i32 0, i32 2
  %376 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %371, i32 0, i32 4
  %378 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %size.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %377, i32 noundef %379, i32 noundef 0, i32 noundef 0) #8
  call void @kfree(ptr noundef %371) #8
  br label %free_mem

free_mem:                                         ; preds = %if.then97, %if.end76.free_mem_crit_edge
  %380 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %send_ring, align 8
  %buf103 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %381, i32 0, i32 7
  %382 = ptrtoint ptr %buf103 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %buf103, align 4
  call void @kfree(ptr noundef %383) #8
  br label %clean_qp

clean_qp:                                         ; preds = %free_mem, %if.end62.clean_qp_crit_edge, %dr_prepare_qp_to_rts.exit.thread
  %ret.1 = phi i32 [ -12, %free_mem ], [ -12, %if.end62.clean_qp_crit_edge ], [ %retval.0.i200.ph, %dr_prepare_qp_to_rts.exit.thread ]
  %384 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %mdev, align 4
  %386 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %send_ring, align 8
  %qp106 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %qp106 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %qp106, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #8
  %390 = getelementptr inbounds i8, ptr %in.i, i32 4
  %391 = call ptr @memset(ptr %390, i32 0, i32 12)
  %392 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 83951616, ptr %in.i, align 4
  %qpn.i205 = getelementptr inbounds %struct.mlx5dr_qp, ptr %389, i32 0, i32 4
  %393 = ptrtoint ptr %qpn.i205 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %qpn.i205, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %394, 16777215
  %395 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #8
  %396 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i206 = call i32 @mlx5_cmd_exec(ptr noundef %385, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #8
  %wqe_head.i207 = getelementptr inbounds %struct.mlx5dr_qp, ptr %389, i32 0, i32 5, i32 3
  %397 = ptrtoint ptr %wqe_head.i207 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %wqe_head.i207, align 4
  call void @kfree(ptr noundef %398) #8
  %wq_ctrl.i208 = getelementptr inbounds %struct.mlx5dr_qp, ptr %389, i32 0, i32 3
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i208) #8
  call void @kfree(ptr noundef %389) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  br label %clean_cq

clean_cq:                                         ; preds = %clean_qp, %do.end39
  %ret.2 = phi i32 [ %ret.1, %clean_qp ], [ -12, %do.end39 ]
  %399 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %mdev, align 4
  %401 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %send_ring, align 8
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %402, align 4
  %mcq.i209 = getelementptr inbounds %struct.mlx5dr_cq, ptr %404, i32 0, i32 3
  %call.i210 = call i32 @mlx5_core_destroy_cq(ptr noundef %400, ptr noundef %mcq.i209) #8
  %wq_ctrl.i211 = getelementptr inbounds %struct.mlx5dr_cq, ptr %404, i32 0, i32 2
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i211) #8
  call void @kfree(ptr noundef %404) #8
  br label %free_send_ring

free_send_ring:                                   ; preds = %clean_cq, %do.end
  %ret.3 = phi i32 [ %ret.2, %clean_cq ], [ -12, %do.end ]
  %405 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %send_ring, align 8
  call void @kfree(ptr noundef %406) #8
  br label %cleanup

cleanup:                                          ; preds = %free_send_ring, %if.end88.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free_send_ring ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_reg_mr(ptr noundef %mdev, i32 noundef %pdn, ptr noundef %buf, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 2
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !80

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef -1) #8
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef %buf, i32 noundef %size) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %8, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %7, i32 %shr.i
  %and.i = and i32 %8, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %size, i32 noundef 0, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end7

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i42 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i42 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 887, i32 noundef %16) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  %mkey = getelementptr inbounds %struct.mlx5dr_mr, ptr %call7.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i) #8
  %17 = call ptr @memset(ptr %in.i, i32 0, i32 272)
  %add.ptr.i43 = getelementptr inbounds i8, ptr %in.i, i32 16
  %18 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 31744, ptr %add.ptr.i43, align 4
  %add.ptr77.i = getelementptr inbounds i8, ptr %in.i, i32 28
  %and79.i = and i32 %pdn, 16777215
  %or94.i = or i32 %and79.i, -2147483648
  %19 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or94.i, ptr %add.ptr77.i, align 4
  %add.ptr103.i = getelementptr inbounds i8, ptr %in.i, i32 20
  %20 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -256, ptr %add.ptr103.i, align 4
  %call.i44 = call i32 @mlx5_core_create_mkey(ptr noundef %mdev, ptr noundef %mkey, ptr noundef nonnull %in.i, i32 noundef 272) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool9.not = icmp eq i32 %call.i44, 0
  br i1 %tobool9.not, label %if.end18, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i45 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i45 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task16, align 8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid17, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 894, i32 noundef %28) #13
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %call41.i, i32 noundef %size, i32 noundef 0, i32 noundef 0) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dma_addr19 = getelementptr inbounds %struct.mlx5dr_mr, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %dma_addr19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call41.i, ptr %dma_addr19, align 8
  %size20 = getelementptr inbounds %struct.mlx5dr_mr, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size, ptr %size20, align 8
  %addr = getelementptr inbounds %struct.mlx5dr_mr, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf, ptr %addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end13 ], [ %call7.i.i, %if.end18 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_send_ring_free(ptr nocapture noundef readonly %dmn, ptr noundef %send_ring) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %qp = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 1
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #8
  %4 = getelementptr inbounds i8, ptr %in.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %6 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 83951616, ptr %in.i, align 4
  %qpn.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qpn.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %8, 16777215
  %9 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #8
  %10 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #8
  %wqe_head.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %3, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %wqe_head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wqe_head.i, align 4
  call void @kfree(ptr noundef %12) #8
  %wq_ctrl.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %3, i32 0, i32 3
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i) #8
  call void @kfree(ptr noundef %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 4
  %15 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_ring, align 4
  %mcq.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %16, i32 0, i32 3
  %call.i12 = call i32 @mlx5_core_destroy_cq(ptr noundef %14, ptr noundef %mcq.i) #8
  %wq_ctrl.i13 = getelementptr inbounds %struct.mlx5dr_cq, ptr %16, i32 0, i32 2
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i13) #8
  call void @kfree(ptr noundef %16) #8
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 4
  %sync_mr = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 10
  %19 = ptrtoint ptr %sync_mr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sync_mr, align 4
  %mkey.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mkey.i, align 4
  %call.i14 = call i32 @mlx5_core_destroy_mkey(ptr noundef %18, i32 noundef %22) #8
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr inbounds %struct.mlx5dr_mr, ptr %20, i32 0, i32 4
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %26, i32 noundef %28, i32 noundef 0, i32 noundef 0) #8
  call void @kfree(ptr noundef %20) #8
  %29 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev, align 4
  %mr = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 2
  %31 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mr, align 4
  %mkey.i15 = getelementptr inbounds %struct.mlx5dr_mr, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %mkey.i15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mkey.i15, align 4
  %call.i16 = call i32 @mlx5_core_destroy_mkey(ptr noundef %30, i32 noundef %34) #8
  %pdev.i.i17 = getelementptr inbounds %struct.mlx5_core_dev, ptr %30, i32 0, i32 2
  %35 = ptrtoint ptr %pdev.i.i17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i17, align 8
  %dev1.i.i18 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %dma_addr.i19 = getelementptr inbounds %struct.mlx5dr_mr, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %dma_addr.i19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr.i19, align 4
  %size.i20 = getelementptr inbounds %struct.mlx5dr_mr, ptr %32, i32 0, i32 4
  %39 = ptrtoint ptr %size.i20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i20, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i18, i32 noundef %38, i32 noundef %40, i32 noundef 0, i32 noundef 0) #8
  call void @kfree(ptr noundef %32) #8
  %buf = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 7
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %42) #8
  call void @kfree(ptr noundef %send_ring) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_send_ring_force_drain(ptr nocapture noundef readonly %dmn) local_unnamed_addr #0 align 64 {
entry:
  %send_info = alloca %struct.postsend_info, align 8
  %data = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %send_ring1 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %0 = ptrtoint ptr %send_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_ring1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %send_info) #8
  %2 = getelementptr inbounds i8, ptr %send_info, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #8
  %4 = call ptr @memset(ptr %data, i32 255, i32 64)
  %signal_th = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %signal_th to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %signal_th, align 4
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %data to i32
  %conv2 = zext i32 %7 to i64
  %8 = ptrtoint ptr %send_info to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2, ptr %send_info, align 8
  %length = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %length, align 8
  %lkey = getelementptr inbounds %struct.dr_data_seg, ptr %send_info, i32 0, i32 2
  %10 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lkey, align 4
  %sync_mr = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %sync_mr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sync_mr, align 4
  %addr5 = getelementptr inbounds %struct.mlx5dr_mr, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr5, align 4
  %15 = ptrtoint ptr %14 to i32
  %conv6 = zext i32 %15 to i64
  %remote_addr = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 2
  %16 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv6, ptr %remote_addr, align 8
  %mkey = getelementptr inbounds %struct.mlx5dr_mr, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mkey, align 4
  %rkey = getelementptr inbounds %struct.postsend_info, ptr %send_info, i32 0, i32 3
  %19 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rkey, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp26.not = icmp eq i16 %6, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = call fastcc i32 @dr_postsend_icm_data(ptr noundef %dmn, ptr noundef nonnull %send_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %lock = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %1, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %call9 = call fastcc i32 @dr_handle_pending_wc(ptr noundef %dmn, ptr noundef %1)
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %for.end ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %send_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_handle_pending_wc(ptr nocapture noundef readonly %dmn, ptr nocapture noundef %send_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_wqe = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 3
  %0 = ptrtoint ptr %pending_wqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_wqe, align 4
  %signal_th = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 4
  %2 = ptrtoint ptr %signal_th to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %signal_th, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %send_ring3 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %4 = ptrtoint ptr %send_ring3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_ring3, align 8
  %signal_th4 = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %signal_th4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %signal_th4, align 4
  %conv5 = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul)
  %cmp6.not = icmp ult i32 %1, %mul
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %8 = ptrtoint ptr %send_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_ring, align 4
  %wq.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1
  %cc.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 2
  %sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 0, i32 1
  %strides_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 0, i32 3
  %log_frag_strides.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 0, i32 6
  %frag_sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 0, i32 2
  %log_stride.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 0, i32 5
  %log_sz.i.i.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 0, i32 4
  %qp17.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 4
  %db.i.i.i = getelementptr inbounds %struct.mlx5dr_cq, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cc.i.i.i.i, align 4
  %12 = ptrtoint ptr %sz_m1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sz_m1.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %13, %11
  %14 = ptrtoint ptr %strides_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %strides_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %15 to i32
  %add.i.i.i.i.i = add i32 %and.i.i.i.i.i, %conv.i.i.i.i.i
  %16 = ptrtoint ptr %log_frag_strides.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %log_frag_strides.i.i.i.i.i, align 2
  %conv1.i.i.i.i.i = zext i8 %17 to i32
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i, %conv1.i.i.i.i.i
  %18 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %19, i32 %shr.i.i.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %frag_sz_m1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %frag_sz_m1.i.i.i.i.i, align 4
  %conv2.i.i.i.i.i = zext i16 %23 to i32
  %and.i.i15.i.i.i = and i32 %add.i.i.i.i.i, %conv2.i.i.i.i.i
  %24 = ptrtoint ptr %log_stride.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %log_stride.i.i.i.i.i, align 1
  %conv3.i.i.i.i.i = zext i8 %25 to i32
  %shl.i.i.i.i.i = shl i32 %and.i.i15.i.i.i, %conv3.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %21, i32 %shl.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp.i.i.i.i = icmp eq i8 %25, 7
  %conv2.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add.ptr.i.i.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i.i, i32 %conv2.i.i.i.i
  %op_own.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i, i32 0, i32 23
  %26 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %op_own.i.i.i, align 1
  %28 = and i8 %27, 1
  %29 = ptrtoint ptr %log_sz.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_sz.i.i.i.i.i, align 4
  %conv.i.i17.i.i.i = zext i8 %30 to i32
  %shr.i.i18.i.i.i = lshr i32 %11, %conv.i.i17.i.i.i
  %conv5.i.i.i = and i32 %shr.i.i18.i.i.i, 1
  %conv6.i.i.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i.i, i32 %conv6.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %conv5.i.i.i, %conv6.i.i.i
  br i1 %cmp.not.i.i.i, label %mlx5_cqwq_get_cqe.exit.i.i, label %do.body.do.cond30_crit_edge

do.body.do.cond30_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond30

mlx5_cqwq_get_cqe.exit.i.i:                       ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %mlx5_cqwq_get_cqe.exit.i.i.do.cond30_crit_edge, label %if.end.i.i

mlx5_cqwq_get_cqe.exit.i.i.do.cond30_crit_edge:   ; preds = %mlx5_cqwq_get_cqe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond30

if.end.i.i:                                       ; preds = %mlx5_cqwq_get_cqe.exit.i.i
  %31 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cc.i.i.i.i, align 4
  %inc.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i, ptr %cc.i.i.i.i, align 4
  %33 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %op_own.i.i.i, align 1
  %35 = lshr i8 %34, 4
  %trunc.i.i.i = trunc i8 %35 to i4
  %36 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i.i.i, label %if.then24 [
    i4 -3, label %if.then.i.i.i
    i4 -2, label %if.then10.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wqe_counter.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i, i32 0, i32 21
  %37 = ptrtoint ptr %wqe_counter.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %wqe_counter.i.i.i, align 4
  %conv2.i.i.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %qp17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qp17.i.i.i, align 4
  %wqe_cnt.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %40, i32 0, i32 5, i32 4
  %41 = ptrtoint ptr %wqe_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wqe_cnt.i.i.i, align 4
  %sub.i.i.i = add i32 %42, 65535
  %and.i.i.i = and i32 %sub.i.i.i, %conv2.i.i.i
  %wqe_head.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %40, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %wqe_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wqe_head.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %44, i32 %and.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %46, 1
  %cc.i9.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %40, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %cc.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i.i.i, ptr %cc.i9.i.i, align 4
  br label %do.body14

if.then10.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %qp17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %qp17.i.i.i, align 4
  %cc13.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %49, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %cc13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cc13.i.i.i, align 4
  %inc.i10.i.i = add i32 %51, 1
  store i32 %inc.i10.i.i, ptr %cc13.i.i.i, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then10.i.i.i, %if.then.i.i.i
  %52 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cc.i.i.i.i, align 4
  %and.i13.i.i53 = and i32 %53, 16777215
  %54 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %db.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i13.i.i53, ptr %55, align 4
  %.b48 = load i1, ptr @dr_handle_pending_wc.__print_once, align 1
  br i1 %.b48, label %do.body14.do.end21_crit_edge, label %if.then16

do.body14.do.end21_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dr_handle_pending_wc.__print_once, align 1
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %57 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid, align 8
  %qp = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 1
  %67 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %qp, align 4
  %qpn = getelementptr inbounds %struct.mlx5dr_qp, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qpn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 330, i32 noundef %66, i32 noundef %70) #13
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body14.do.end21_crit_edge
  %err_state = getelementptr inbounds %struct.mlx5dr_send_ring, ptr %send_ring, i32 0, i32 12
  %71 = ptrtoint ptr %err_state to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %err_state, align 4
  br label %cleanup

if.then24:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wqe_counter15.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i, i32 0, i32 21
  %72 = ptrtoint ptr %wqe_counter15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %wqe_counter15.i.i.i, align 4
  %conv16.i.i.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %qp17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %qp17.i.i.i, align 4
  %wqe_cnt19.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %75, i32 0, i32 5, i32 4
  %76 = ptrtoint ptr %wqe_cnt19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wqe_cnt19.i.i.i, align 4
  %sub20.i.i.i = add i32 %77, 65535
  %and21.i.i.i = and i32 %sub20.i.i.i, %conv16.i.i.i
  %wqe_head24.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %75, i32 0, i32 5, i32 3
  %78 = ptrtoint ptr %wqe_head24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wqe_head24.i.i.i, align 4
  %arrayidx25.i.i.i = getelementptr i32, ptr %79, i32 %and21.i.i.i
  %80 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx25.i.i.i, align 4
  %add26.i.i.i = add i32 %81, 1
  %cc29.i.i.i = getelementptr inbounds %struct.mlx5dr_qp, ptr %75, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %cc29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add26.i.i.i, ptr %cc29.i.i.i, align 4
  %83 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cc.i.i.i.i, align 4
  %and.i13.i.i = and i32 %84, 16777215
  %85 = ptrtoint ptr %db.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %db.i.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and.i13.i.i, ptr %86, align 4
  %88 = ptrtoint ptr %signal_th to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %signal_th, align 4
  %conv26 = zext i16 %89 to i32
  %90 = ptrtoint ptr %pending_wqe to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pending_wqe, align 4
  %sub = sub i32 %91, %conv26
  store i32 %sub, ptr %pending_wqe, align 4
  br label %do.cond30

do.cond30:                                        ; preds = %if.then24, %mlx5_cqwq_get_cqe.exit.i.i.do.cond30_crit_edge, %do.body.do.cond30_crit_edge
  br i1 %cmp6.not, label %do.cond30.cleanup_crit_edge, label %land.rhs

do.cond30.cleanup_crit_edge:                      ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %do.cond30
  %92 = ptrtoint ptr %pending_wqe to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pending_wqe, align 4
  %tobool34.not = icmp eq i32 %93, 0
  br i1 %tobool34.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %do.cond30.cleanup_crit_edge, %do.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.cond30.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cqwq_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_comp_vectors_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vector2eqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fill_page_frag_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_cq_complete(ptr nocapture noundef readonly %mcq, ptr nocapture noundef readnone %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mcq, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_cq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_wq_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_wq_qp_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_gid(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 930, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5dr_send_ring_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5dr_send_ring_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mlx5dr_send_ring_alloc.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 944, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 948, i32 3}
!13 = !{ptr @mlx5dr_send_ring_alloc._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx5dr_send_ring_alloc._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__print_once", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 370, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dr_postsend_icm_data.__UNIQUE_ID_ddebug568, !16, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 752, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dr_cq_complete._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @dr_cq_complete._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 137, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dr_create_rc_qp._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @dr_create_rc_qp._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 146, i32 3}
!34 = !{ptr @dr_create_rc_qp._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dr_create_rc_qp._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 704, i32 3}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dr_prepare_qp_to_rts._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @dr_prepare_qp_to_rts._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 731, i32 3}
!43 = !{ptr @dr_prepare_qp_to_rts._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @dr_prepare_qp_to_rts._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 742, i32 3}
!47 = !{ptr @dr_prepare_qp_to_rts._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @dr_prepare_qp_to_rts._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 887, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dr_reg_mr._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dr_reg_mr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 894, i32 3}
!56 = !{ptr @dr_reg_mr._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dr_reg_mr._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__print_once", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_send.c", i32 329, i32 4}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dr_handle_pending_wc._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @dr_handle_pending_wc._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i8 0, i8 2}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2148850412, i64 2148850417, i64 2148850430, i64 2148850474, i64 2148850508, i64 2148850529}
!82 = !{i64 2159082615}
!83 = !{i64 2159082828}
!84 = !{i64 5086215}
!85 = !{!"auto-init"}
!86 = !{i32 0, i32 33}
!87 = !{i64 2158913875}
