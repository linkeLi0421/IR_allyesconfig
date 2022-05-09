; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5e_tc_attr_to_reg_mapping = type { i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.190, %struct.anon.204, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.190 = type { %struct.anon.197 }
%struct.anon.197 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.199 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.198, i64, i32, [28 x i8] }
%union.anon.198 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { %struct.anon.201, [0 x %struct.mlx5_mtt] }
%struct.anon.201 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.204 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.187, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.187 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.193, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.196, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { i8, i8, i16, i32 }
%union.anon.196 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.205, i32 }
%union.anon.205 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.188, i32, i32 }
%union.anon.188 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.192 }
%union.anon.192 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.219, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.219 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.220 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.220 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.221 }
%struct.anon.221 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5e_stats = type { %struct.mlx5e_sw_stats, %struct.mlx5e_qcounter_stats, %struct.mlx5e_vnic_env_stats, %struct.mlx5e_vport_stats, %struct.mlx5e_pport_stats, %struct.rtnl_link_stats64, %struct.mlx5e_pcie_stats }
%struct.mlx5e_sw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_qcounter_stats = type { i32, i32 }
%struct.mlx5e_vnic_env_stats = type { [66 x i64] }
%struct.mlx5e_vport_stats = type { [66 x i64] }
%struct.mlx5e_pport_stats = type { [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [8 x [32 x i64]] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_pcie_stats = type { [32 x i64] }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats, [48 x i8], %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, [80 x i8], i64, [120 x i8] }
%struct.mlx5e_ptp_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], [8 x %struct.mlx5e_ptp_cq_stats], %struct.mlx5e_rq_stats, [24 x i8] }
%struct.mlx5e_ptp_cq_stats = type { i64, i64, i64, i64 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx5e_dcbx = type { i32, %struct.mlx5e_cee_config, i8, [8 x i8], i8, i8, i32, i32, i16 }
%struct.mlx5e_cee_config = type { [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.mlx5e_xsk = type { ptr, i16, i8 }
%struct.mlx5e_scratchpad = type { ptr }
%struct.mlx5e_htb = type { [256 x %struct.hlist_head], [8 x i32], ptr, i16, i16, i16 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.167, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.177, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.167 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.176] }
%struct.anon.176 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.150 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.150 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.177 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5e_post_act = type { i32, ptr, ptr, ptr, %struct.xarray }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.227 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.227 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.228], ptr, ptr }
%struct.anon.228 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5e_post_act_handle = type { i32, ptr, ptr, i32 }

@mlx5e_tc_post_act_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): firmware level support is missing\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5e_tc_post_act_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_tc_post_act_init._entry_ptr = internal global ptr @mlx5e_tc_post_act_init._entry, section ".printk_index", align 4
@mlx5e_tc_post_act_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): failed to create post action table, err: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_tc_post_act_init._entry_ptr.7 = internal global ptr @mlx5e_tc_post_act_init._entry.5, section ".printk_index", align 4
@mlx5e_tc_attr_to_reg_mappings = external dso_local local_unnamed_addr global [0 x %struct.mlx5e_tc_attr_to_reg_mapping], align 4
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to add post action rule\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 39, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 52, i32 3 }
@___asan_gen_.35 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 124, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 378, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @mlx5e_tc_post_act_init._entry, ptr @mlx5e_tc_post_act_init._entry.5, ptr @mlx5e_tc_post_act_init._entry_ptr, ptr @mlx5e_tc_post_act_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @xa_init_flags.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_post_act_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_post_act_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_tc_post_act_init(ptr noundef %priv, ptr noundef %chains, i32 noundef %ns_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ns_type)
  %cmp = icmp eq i32 %ns_type, 8
  %mdev43 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev43 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev43, align 64
  br i1 %cmp, label %cond.true42, label %cond.true

cond.true:                                        ; preds = %entry
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %cond.true.if.then_crit_edge, label %cond.true.if.end123_crit_edge

cond.true.if.end123_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.true42:                                      ; preds = %entry
  %arrayidx46 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx46, align 8
  %add.ptr49 = getelementptr i32, ptr %8, i32 16
  %9 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr49, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool52.not = icmp eq i32 %11, 0
  br i1 %tobool52.not, label %cond.true42.if.then_crit_edge, label %cond.true42.if.end123_crit_edge

cond.true42.if.end123_crit_edge:                  ; preds = %cond.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

cond.true42.if.then_crit_edge:                    ; preds = %cond.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.true42.if.then_crit_edge, %cond.true.if.then_crit_edge
  %mdev119 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %12 = ptrtoint ptr %mdev119 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev119, align 64
  %coredev_type = getelementptr inbounds %struct.mlx5_core_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %coredev_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %coredev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp120.not = icmp eq i32 %15, 1
  br i1 %cmp120.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !17) #7
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef %23) #10
  br label %cleanup

if.end123:                                        ; preds = %cond.true42.if.end123_crit_edge, %cond.true.if.end123_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 68) #11
  %tobool125.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool125.not, label %if.end123.cleanup_crit_edge, label %if.end127

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end127:                                        ; preds = %if.end123
  %call128 = tail call ptr @mlx5_chains_create_global_table(ptr noundef %chains) #7
  %ft = getelementptr inbounds %struct.mlx5e_post_act, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ft to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call128, ptr %ft, align 8
  %cmp.i = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then131, label %if.end142

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call128 to i32
  %mdev137 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %27 = ptrtoint ptr %mdev137 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev137, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !17) #7
  %and.i183 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i183 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task140, align 8
  %pid141 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid141 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid141, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef %36, i32 noundef %26) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end142:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  %chains143 = getelementptr inbounds %struct.mlx5e_post_act, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %chains143 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %chains, ptr %chains143, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %ns_type, ptr %call7.i.i, align 8
  %priv145 = getelementptr inbounds %struct.mlx5e_post_act, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %priv145 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %priv, ptr %priv145, align 4
  %ids = getelementptr inbounds %struct.mlx5e_post_act, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %ids, ptr noundef nonnull @.str.9, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i = getelementptr inbounds %struct.mlx5e_post_act, ptr %call7.i.i, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 12, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx5e_post_act, ptr %call7.i.i, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %xa_head.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then131, %if.end123.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end142 ], [ %call128, %if.then131 ], [ inttoptr (i32 -95 to ptr), %do.end ], [ inttoptr (i32 -95 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end123.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_chains_create_global_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_post_act_destroy(ptr noundef %post_act) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %post_act, null
  %cmp.i = icmp ugt ptr %post_act, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ids = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 4
  tail call void @xa_destroy(ptr noundef %ids) #7
  %chains = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 1
  %0 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chains, align 4
  %ft = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 2
  %2 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ft, align 4
  tail call void @mlx5_chains_destroy_global_table(ptr noundef %1, ptr noundef %3) #7
  tail call void @kfree(ptr noundef nonnull %post_act) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_chains_destroy_global_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_tc_post_act_add(ptr noundef %post_act, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %post_act, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #11
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #12
  %3 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %post_act, align 4
  %call3 = tail call ptr @mlx5_alloc_flow_attr(i32 noundef %4) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  %tobool6.not = icmp eq ptr %call3, null
  %or.cond82 = select i1 %or.cond, i1 true, i1 %tobool6.not
  br i1 %or.cond82, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call3) #7
  tail call void @kvfree(ptr noundef %call.i.i) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  %cond = select i1 %cmp, i32 880, i32 76
  %5 = call ptr @memcpy(ptr %call3, ptr %attr, i32 %cond)
  %chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call3, i32 0, i32 6
  %6 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %chain, align 4
  %prio = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %prio to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %prio, align 4
  %ft = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 2
  %8 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ft, align 4
  %ft8 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call3, i32 0, i32 9
  %10 = ptrtoint ptr %ft8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ft8, align 4
  %inner_match_level = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call3, i32 0, i32 11
  %11 = ptrtoint ptr %inner_match_level to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %inner_match_level, align 4
  %outer_match_level = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call3, i32 0, i32 12
  %12 = ptrtoint ptr %outer_match_level to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %outer_match_level, align 1
  %13 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call3, align 4
  %and = and i32 %14, -33
  store i32 %and, ptr %call3, align 4
  %15 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %post_act, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp12 = icmp eq i32 %16, 8
  br i1 %cmp12, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %split_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call3, i32 1, i32 3, i32 3
  %18 = ptrtoint ptr %split_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %split_count, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %ids = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 4
  %id = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %call7.i.i, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 8, i32 2) to i32))
  %19 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 8, i32 2), align 4
  %sub15 = sub i32 32, %19
  %shr = lshr i32 -1, %sub15
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %shr, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  tail call void @_raw_spin_lock(ptr noundef %ids) #7
  %call.i = tail call i32 @__xa_alloc(ptr noundef %ids, ptr noundef %id, ptr noundef nonnull %call3, [2 x i32] %.fca.1.insert, i32 noundef 3264) #7
  tail call void @_raw_spin_unlock(ptr noundef %ids) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.err_xarray_crit_edge

if.end14.err_xarray_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_xarray

if.end20:                                         ; preds = %if.end14
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 8, i32 2) to i32))
  %22 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 8, i32 2), align 4
  %sub23 = sub i32 32, %22
  %shr24 = lshr i32 -1, %sub23
  tail call void @mlx5e_tc_match_to_reg_match(ptr noundef nonnull %call.i.i, i32 noundef 8, i32 noundef %21, i32 noundef %shr24) #7
  %priv = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 3
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %call27 = tail call ptr @mlx5_tc_rule_insert(ptr noundef %24, ptr noundef nonnull %call.i.i, ptr noundef nonnull %call3) #7
  %rule = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call27, ptr %rule, align 8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call27 to i32
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.8) #10
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %call38 = tail call ptr @xa_erase(ptr noundef %ids, i32 noundef %32) #7
  br label %err_xarray

if.end34:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %attr35 = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %attr35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call3, ptr %attr35, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

err_xarray:                                       ; preds = %if.then30, %if.end14.err_xarray_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end14.err_xarray_crit_edge ], [ %26, %if.then30 ]
  tail call void @kfree(ptr noundef nonnull %call3) #7
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %34 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_xarray, %if.end34, %if.then
  %retval.0 = phi ptr [ %34, %err_xarray ], [ %call7.i.i, %if.end34 ], [ inttoptr (i32 -12 to ptr), %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_alloc_flow_attr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_match_to_reg_match(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_tc_rule_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_post_act_del(ptr noundef %post_act, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rule = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %handle, i32 0, i32 2
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 4
  %attr = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %handle, i32 0, i32 1
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr, align 4
  tail call void @mlx5_tc_rule_delete(ptr noundef %1, ptr noundef %3, ptr noundef %5) #7
  %ids = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 4
  %id = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %handle, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call = tail call ptr @xa_erase(ptr noundef %ids, i32 noundef %7) #7
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr, align 4
  tail call void @kfree(ptr noundef %9) #7
  tail call void @kfree(ptr noundef %handle) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_tc_rule_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_tc_post_act_get_ft(ptr nocapture noundef readonly %post_act) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ft = getelementptr inbounds %struct.mlx5e_post_act, ptr %post_act, i32 0, i32 2
  %0 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ft, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_post_act_set_handle(ptr noundef %dev, ptr nocapture noundef readonly %handle, ptr noundef %acts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 4
  %id = getelementptr inbounds %struct.mlx5e_post_act_handle, ptr %handle, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %dev, ptr noundef %acts, i32 noundef %1, i32 noundef 8, i32 noundef %3) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_match_to_reg_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c", i32 39, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_tc_post_act_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5e_tc_post_act_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c", i32 52, i32 3}
!10 = !{ptr @mlx5e_tc_post_act_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5e_tc_post_act_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/post_act.c", i32 124, i32 39}
!14 = !{ptr @xa_init_flags.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
