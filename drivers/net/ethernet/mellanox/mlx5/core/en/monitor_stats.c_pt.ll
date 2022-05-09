; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/monitor_stats.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/monitor_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.178, %struct.anon.192, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.178 = type { %struct.anon.185 }
%struct.anon.185 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.187 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.186, i64, i32, [28 x i8] }
%union.anon.186 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.187 = type { %struct.anon.188 }
%struct.anon.188 = type { %struct.anon.189, [0 x %struct.mlx5_mtt] }
%struct.anon.189 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.192 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.174, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.181, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.184, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i8, i8, i16, i32 }
%union.anon.184 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.193, i32 }
%union.anon.193 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.176, i32, i32 }
%union.anon.176 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.180 }
%union.anon.180 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.207, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.207 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.208 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.208 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.209 }
%struct.anon.209 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.162, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.164, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.162 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.163] }
%struct.anon.163 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.164 = type { %struct.mlx5_rsvd_gids, i32 }
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

@mlx5e_monitor_counter_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&priv->monitor_counters_work)\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/monitor_stats.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 130, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @mlx5e_monitor_counter_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_monitor_counter_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_monitor_counter_supported(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 49
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not = icmp ult i32 %5, 65536
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr4, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp ne i32 %8, 0
  %and15 = and i32 %5, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and15)
  %cmp = icmp ult i32 %and15, 6
  %or.cond = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr23 = getelementptr i32, ptr %3, i32 50
  %9 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr23, align 4
  %and25 = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp ne i32 %and25, 0
  %. = zext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_monitor_counter_arm(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 125108224, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %3 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %call = call i32 @mlx5_cmd_exec(ptr noundef %5, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_monitor_counter_init(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %in.i23 = alloca [4 x i32], align 4
  %_out.i24 = alloca [4 x i32], align 4
  %in.i = alloca [18 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %monitor_counters_work = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 19
  tail call void @__init_work(ptr noundef %monitor_counters_work, i32 noundef 0) #4
  %0 = ptrtoint ptr %monitor_counters_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %monitor_counters_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5e_monitor_counter_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry4 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 19, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 19, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlx5e_monitor_counters_work, ptr %func, align 4
  %monitor_counters_nb = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 20
  %4 = ptrtoint ptr %monitor_counters_nb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5e_monitor_event_handler, ptr %monitor_counters_nb, align 16
  %event_type = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 36, ptr %event_type, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 64
  %call = tail call i32 @mlx5_eq_notifier_register(ptr noundef %7, ptr noundef %monitor_counters_nb) #4
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %11, i32 49
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %13, 16
  %add.ptr7.i = getelementptr i32, ptr %11, i32 50
  %14 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr7.i, align 4
  %and9.i = and i32 %15, 65535
  %add.ptr12.i = getelementptr %struct.mlx5_core_dev, ptr %9, i32 0, i32 8, i32 1, i32 5
  %16 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr12.i, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp ne i32 %18, 0
  %and22.i = and i32 %13, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and22.i)
  %phi.cmp.i = icmp ugt i32 %and22.i, 5
  %cond.i = select i1 %tobool.not.i, i1 %phi.cmp.i, i1 false
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %in.i) #4
  %19 = call ptr @memset(ptr %in.i, i32 0, i32 72)
  %q_counter23.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %20 = ptrtoint ptr %q_counter23.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %q_counter23.i, align 4
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 393215, i32 %13)
  %cmp25.i = icmp ugt i32 %13, 393215
  %or.cond.i = select i1 %cond.i, i1 %cmp25.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i = getelementptr inbounds i32, ptr %in.i, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %and22.i.i = and i32 %23, -251723776
  store i32 %and22.i.i, ptr %add.ptr.i.i, align 4
  %add.ptr.1.i.i = getelementptr inbounds i32, ptr %in.i, i32 6
  %24 = ptrtoint ptr %add.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.1.i.i, align 4
  %and22.1.i.i = and i32 %25, -251723776
  %or27.1.i.i = or i32 %and22.1.i.i, 1
  store i32 %or27.1.i.i, ptr %add.ptr.1.i.i, align 4
  %add.ptr.2.i.i = getelementptr inbounds i32, ptr %in.i, i32 8
  %26 = ptrtoint ptr %add.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.2.i.i, align 4
  %and22.2.i.i = and i32 %27, -251723776
  %or27.2.i.i = or i32 %and22.2.i.i, 2
  store i32 %or27.2.i.i, ptr %add.ptr.2.i.i, align 4
  %add.ptr.3.i.i = getelementptr inbounds i32, ptr %in.i, i32 10
  %28 = ptrtoint ptr %add.ptr.3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.3.i.i, align 4
  %and22.3.i.i = and i32 %29, -251723776
  %or27.3.i.i = or i32 %and22.3.i.i, 3
  store i32 %or27.3.i.i, ptr %add.ptr.3.i.i, align 4
  %add.ptr.4.i.i = getelementptr inbounds i32, ptr %in.i, i32 12
  %30 = ptrtoint ptr %add.ptr.4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.4.i.i, align 4
  %and22.4.i.i = and i32 %31, -251723776
  %or27.4.i.i = or i32 %and22.4.i.i, 4
  store i32 %or27.4.i.i, ptr %add.ptr.4.i.i, align 4
  %add.ptr.5.i.i = getelementptr inbounds i32, ptr %in.i, i32 14
  %32 = ptrtoint ptr %add.ptr.5.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.5.i.i, align 4
  %and22.5.i.i = and i32 %33, -251723776
  %or27.5.i.i = or i32 %and22.5.i.i, 5
  store i32 %or27.5.i.i, ptr %add.ptr.5.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cnt.0.i = phi i32 [ 6, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp29.not.i = icmp eq i32 %and9.i, 0
  %add32.i = or i32 %cnt.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %add32.i)
  %cmp33.not.i = icmp ult i32 %shr.i, %add32.i
  %or.cond83.i = select i1 %cmp29.not.i, i1 true, i1 %cmp33.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool36.not.i = icmp eq i16 %21, 0
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %tobool36.not.i
  br i1 %or.cond84.i, label %if.end.i.mlx5e_set_monitor_counter.exit_crit_edge, label %if.then37.i

if.end.i.mlx5e_set_monitor_counter.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx5e_set_monitor_counter.exit

if.then37.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = shl nuw nsw i32 %cnt.0.i, 6
  %35 = add nuw nsw i32 %34, 132
  %div1.i.i = lshr i32 %35, 5
  %add.ptr.i85.i = getelementptr i32, ptr %in.i, i32 %div1.i.i
  %36 = ptrtoint ptr %add.ptr.i85.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i85.i, align 4
  %and2.i.i = and i32 %37, -251658241
  %or.i.i = or i32 %and2.i.i, 16777216
  store i32 %or.i.i, ptr %add.ptr.i85.i, align 4
  %38 = add nuw nsw i32 %34, 144
  %div162.i.i = lshr i32 %38, 5
  %add.ptr17.i.i = getelementptr i32, ptr %in.i, i32 %div162.i.i
  %39 = ptrtoint ptr %add.ptr17.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr17.i.i, align 4
  %and22.i86.i = and i32 %40, -65536
  %or27.i.i = or i32 %and22.i86.i, 4
  store i32 %or27.i.i, ptr %add.ptr17.i.i, align 4
  %41 = add nuw nsw i32 %34, 160
  %div373.i.i = lshr exact i32 %41, 5
  %add.ptr38.i.i = getelementptr i32, ptr %in.i, i32 %div373.i.i
  %42 = ptrtoint ptr %add.ptr38.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.i, ptr %add.ptr38.i.i, align 4
  br label %mlx5e_set_monitor_counter.exit

mlx5e_set_monitor_counter.exit:                   ; preds = %if.then37.i, %if.end.i.mlx5e_set_monitor_counter.exit_crit_edge
  %cnt.1.i = phi i32 [ %add32.i, %if.then37.i ], [ %cnt.0.i, %if.end.i.mlx5e_set_monitor_counter.exit_crit_edge ]
  %add.ptr44.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %43 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr44.i, align 4
  %and45.i = and i32 %44, -65536
  %or.i = or i32 %and45.i, %cnt.1.i
  store i32 %or.i, ptr %add.ptr44.i, align 4
  %45 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in.i, align 4
  %and58.i = and i32 %46, 65535
  %or61.i = or i32 %and58.i, 125042688
  store i32 %or61.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #4
  %47 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call69.i = call i32 @mlx5_cmd_exec(ptr noundef %9, ptr noundef nonnull %in.i, i32 noundef 72, ptr noundef nonnull %_out.i, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %in.i) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i23) #4
  %48 = getelementptr inbounds i8, ptr %in.i23, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 12)
  %50 = ptrtoint ptr %in.i23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 125108224, ptr %in.i23, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i24) #4
  %51 = call ptr @memset(ptr %_out.i24, i32 0, i32 16)
  %52 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev, align 64
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %53, ptr noundef nonnull %in.i23, i32 noundef 16, ptr noundef nonnull %_out.i24, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i24) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i23) #4
  %wq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 14
  %54 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wq, align 16
  %update_stats_work = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 18
  %call.i25 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %update_stats_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_monitor_counters_work(ptr noundef %work) #2 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8964
  %state_lock = getelementptr i8, ptr %work, i32 -8848
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #4
  tail call void @mlx5e_stats_update_ndo_stats(ptr noundef %add.ptr) #4
  tail call void @mutex_unlock(ptr noundef %state_lock) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #4
  %0 = getelementptr inbounds i8, ptr %in.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 125108224, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #4
  %3 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr i8, ptr %work, i32 60
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 64
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %5, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_monitor_event_handler(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %eqe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr i8, ptr %nb, i32 -224
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 16
  %monitor_counters_work = getelementptr i8, ptr %nb, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %monitor_counters_work) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_monitor_counter_cleanup(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %in = alloca [18 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %in) #4
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 125042688, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #4
  %3 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %call = call i32 @mlx5_cmd_exec(ptr noundef %5, ptr noundef nonnull %in, i32 noundef 72, ptr noundef nonnull %_out, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #4
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 64
  %monitor_counters_nb = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 20
  %call11 = call i32 @mlx5_eq_notifier_unregister(ptr noundef %7, ptr noundef %monitor_counters_nb) #4
  %monitor_counters_work = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 19
  %call12 = call zeroext i1 @cancel_work_sync(ptr noundef %monitor_counters_work) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %in) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_update_ndo_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @mlx5e_monitor_counter_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/monitor_stats.c", i32 130, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
