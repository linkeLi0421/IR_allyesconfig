; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mlx5e_rq = type { %union.anon.177, %struct.anon.191, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.177 = type { %struct.anon.184 }
%struct.anon.184 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.186 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.185, i64, i32, [28 x i8] }
%union.anon.185 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { %struct.anon.188, [0 x %struct.mlx5_mtt] }
%struct.anon.188 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.191 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.174, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.180, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.183, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i8, i8, i16, i32 }
%union.anon.183 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.192, i32 }
%union.anon.192 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.175, i32, i32 }
%union.anon.175 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.179 }
%union.anon.179 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.206, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.206 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.207 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.207 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.208 }
%struct.anon.208 = type { i8, i8 }
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
%struct.mlx5e_port_buffer = type { i32, i32, [8 x %struct.mlx5e_bufferx_reg] }
%struct.mlx5e_bufferx_reg = type { i8, i8, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"buffer %d: size=%d, xon=%d, xoff=%d, epsb=%d, lossy=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"total buffer size=%d, spare buffer size=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: change=%x\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.mlx5e_port_manual_buffer_config = private unnamed_addr constant [32 x i8] c"mlx5e_port_manual_buffer_config\00", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: buffer[%d]=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: lossless buffer[%d] size cannot be zero\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: total buffer requested=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: xoff=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.calculate_xoff = private unnamed_addr constant [15 x i8] c"calculate_xoff\00", align 1
@update_xoff_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013buffer_size[%d]=%d is not enough for lossless buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"update_xoff_threshold\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c\00", [39 x i8] zeroinitializer }, align 32
@update_xoff_threshold._entry_ptr = internal global ptr @update_xoff_threshold._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 68, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 81, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 281, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 320, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 322, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 331, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 144, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 162, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @update_xoff_threshold._entry, ptr @update_xoff_threshold._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_xoff_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_query_buffer(ptr nocapture noundef readonly %priv, ptr nocapture noundef %port_buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_buff_cell_sz1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 8
  %0 = ptrtoint ptr %port_buff_cell_sz1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port_buff_cell_sz1, align 8
  %mdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 108) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mlx5e_port_query_pbmc(ptr noundef %3, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.out76_crit_edge

if.end.out76_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out76

for.cond.preheader:                               ; preds = %if.end
  %conv18 = zext i16 %1 to i32
  %msglevel = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0133 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %total_used.0132 = phi i32 [ 0, %for.cond.preheader ], [ %add, %for.inc.for.body_crit_edge ]
  %5 = shl i32 %i.0133, 6
  %6 = add nuw nsw i32 %5, 96
  %div131 = lshr exact i32 %6, 3
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %div131
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %8, 25
  %9 = trunc i32 %shr to i8
  %conv = and i8 %9, 1
  %arrayidx = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0133
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 4
  %shr10 = lshr i32 %8, 24
  %11 = trunc i32 %shr10 to i8
  %conv12 = and i8 %11, 1
  %epsb = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0133, i32 1
  %12 = ptrtoint ptr %epsb to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %epsb, align 1
  %and17 = and i32 %8, 65535
  %mul = mul nuw i32 %and17, %conv18
  %size = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0133, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %size, align 4
  %add.ptr21 = getelementptr i32, ptr %add.ptr, i32 1
  %14 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr21, align 8
  %and23 = and i32 %15, 65535
  %mul25 = mul nuw i32 %and23, %conv18
  %xon = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0133, i32 4
  %16 = ptrtoint ptr %xon to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul25, ptr %xon, align 4
  %shr29 = lshr i32 %15, 16
  %mul32 = mul nuw i32 %shr29, %conv18
  %xoff = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0133, i32 3
  %17 = ptrtoint ptr %xoff to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul32, ptr %xoff, align 4
  %add = add i32 %mul, %total_used.0132
  %18 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msglevel, align 4
  %and38 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %for.body.for.inc_crit_edge, label %if.then40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  %conv53 = zext i8 %conv12 to i32
  %conv57 = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %i.0133, i32 noundef %mul, i32 noundef %mul25, i32 noundef %mul32, i32 noundef %conv53, i32 noundef %conv57) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr59 = getelementptr i32, ptr %call7.i.i, i32 2
  %22 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr59, align 8
  %and61 = and i32 %23, 65535
  %mul63 = mul nuw i32 %and61, %conv18
  %24 = ptrtoint ptr %port_buffer to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul63, ptr %port_buffer, align 4
  %sub = sub i32 %mul63, %add
  %spare_buffer_size = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 1
  %25 = ptrtoint ptr %spare_buffer_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %spare_buffer_size, align 4
  %26 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msglevel, align 4
  %and67 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.end.out76_crit_edge, label %if.then69

for.end.out76_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out76

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %mul63, i32 noundef %sub) #10
  br label %out76

out76:                                            ; preds = %if.then69, %for.end.out76_crit_edge, %if.end.out76_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out76 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_query_pbmc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_port_manual_buffer_config(ptr nocapture noundef %priv, i32 noundef %change, i32 noundef %mtu, ptr nocapture noundef readonly %pfc, ptr nocapture noundef readonly %buffer_size, ptr noundef %prio2buffer) local_unnamed_addr #0 align 64 {
entry:
  %g_rx_pause.i = alloca i32, align 4
  %g_tx_pause.i = alloca i32, align 4
  %speed.i = alloca i32, align 4
  %port_buffer = alloca %struct.mlx5e_port_buffer, align 4
  %buffer = alloca [8 x i8], align 8
  %update_buffer = alloca i8, align 1
  %curr_pfc_en = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_buff_cell_sz1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 8
  %0 = ptrtoint ptr %port_buff_cell_sz1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port_buff_cell_sz1, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %port_buffer) #6
  %2 = call ptr @memset(ptr %port_buffer, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #6
  %3 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %speed.i, align 4, !annotation !31
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 64
  %call.i = call i32 @mlx5e_port_linkspeed(ptr noundef %5, ptr noundef nonnull %speed.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40000, ptr %speed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed.i, align 4
  %9 = call i32 @llvm.umax.i32(i32 %8, i32 40000) #6
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %speed.i, align 4
  %cable_len.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 6
  %11 = ptrtoint ptr %cable_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cable_len.i, align 8
  %mul.i = mul i32 %12, 216
  %div.i = udiv i32 %mul.i, 100
  %add.i = add nuw nsw i32 %div.i, 301
  %mul1.i = mul i32 %add.i, %9
  %div2.i = udiv i32 %mul1.i, 1000
  %mul3.i = mul i32 %mtu, 272
  %div4.i = udiv i32 %mul3.i, 100
  %add5.i = add nuw nsw i32 %div2.i, %div4.i
  %msglevel.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 4
  %13 = ptrtoint ptr %msglevel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msglevel.i, align 4
  %and.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.calculate_xoff.exit_crit_edge, label %if.then7.i

if.end.i.calculate_xoff.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calculate_xoff.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.calculate_xoff, i32 noundef %add5.i) #10
  br label %calculate_xoff.exit

calculate_xoff.exit:                              ; preds = %if.then7.i, %if.end.i.calculate_xoff.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #6
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %buffer, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %update_buffer) #6
  %18 = ptrtoint ptr %update_buffer to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %update_buffer, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %curr_pfc_en) #6
  %19 = ptrtoint ptr %curr_pfc_en to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %curr_pfc_en, align 1, !annotation !31
  %20 = ptrtoint ptr %msglevel.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msglevel.i, align 4
  %and = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %calculate_xoff.exit.do.end_crit_edge, label %if.then

calculate_xoff.exit.do.end_crit_edge:             ; preds = %calculate_xoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %calculate_xoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mlx5e_port_manual_buffer_config, i32 noundef %change) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %calculate_xoff.exit.do.end_crit_edge
  %netdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %24 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev2, align 4
  %max_mtu3 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %max_mtu3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_mtu3, align 4
  %28 = call i32 @llvm.umax.i32(i32 %27, i32 9216)
  %call4 = call i32 @mlx5e_port_query_buffer(ptr noundef %priv, ptr noundef nonnull %port_buffer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %and8 = and i32 %change, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %29 = ptrtoint ptr %update_buffer to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %update_buffer, align 1
  %call11 = call fastcc i32 @update_xoff_threshold(ptr noundef nonnull %port_buffer, i32 noundef %add5.i, i32 noundef %28, i16 noundef zeroext %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %and16 = and i32 %change, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end28_crit_edge, label %if.then18

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then18:                                        ; preds = %if.end15
  %30 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev.i, align 64
  %call19 = call i32 @mlx5e_port_query_priority2buffer(ptr noundef %31, ptr noundef nonnull %buffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %32 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pfc_en, align 1
  %call24 = call fastcc i32 @update_buffer_lossy(i32 noundef %28, i8 noundef zeroext %33, ptr noundef nonnull %buffer, i32 noundef %add5.i, i16 noundef zeroext %1, ptr noundef nonnull %port_buffer, ptr noundef nonnull %update_buffer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %if.end22.if.end28_crit_edge, %if.end15.if.end28_crit_edge
  %and29 = and i32 %change, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end42_crit_edge, label %if.then31

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then31:                                        ; preds = %if.end28
  %34 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev.i, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %g_rx_pause.i) #6
  %36 = ptrtoint ptr %g_rx_pause.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %g_rx_pause.i, align 4, !annotation !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %g_tx_pause.i) #6
  %37 = ptrtoint ptr %g_tx_pause.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %g_tx_pause.i, align 4, !annotation !31
  %call.i201 = call i32 @mlx5_query_port_pause(ptr noundef %35, ptr noundef nonnull %g_rx_pause.i, ptr noundef nonnull %g_tx_pause.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool.not.i202 = icmp eq i32 %call.i201, 0
  br i1 %tobool.not.i202, label %if.end.i203, label %fill_pfc_en.exit.thread211

fill_pfc_en.exit.thread211:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g_tx_pause.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g_rx_pause.i) #6
  br label %cleanup

if.end.i203:                                      ; preds = %if.then31
  %38 = ptrtoint ptr %g_rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %g_rx_pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i = icmp eq i32 %39, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i203.fill_pfc_en.exit.thread_crit_edge

if.end.i203.fill_pfc_en.exit.thread_crit_edge:    ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %fill_pfc_en.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i203
  %40 = ptrtoint ptr %g_tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %g_tx_pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i = icmp eq i32 %41, 0
  br i1 %tobool2.not.i, label %fill_pfc_en.exit, label %lor.lhs.false.i.fill_pfc_en.exit.thread_crit_edge

lor.lhs.false.i.fill_pfc_en.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fill_pfc_en.exit.thread

fill_pfc_en.exit.thread:                          ; preds = %lor.lhs.false.i.fill_pfc_en.exit.thread_crit_edge, %if.end.i203.fill_pfc_en.exit.thread_crit_edge
  %42 = ptrtoint ptr %curr_pfc_en to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %curr_pfc_en, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g_tx_pause.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g_rx_pause.i) #6
  br label %if.end36

fill_pfc_en.exit:                                 ; preds = %lor.lhs.false.i
  %call4.i = call i32 @mlx5_query_port_pfc(ptr noundef %35, ptr noundef nonnull %curr_pfc_en, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g_tx_pause.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %g_rx_pause.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool34.not = icmp eq i32 %call4.i, 0
  br i1 %tobool34.not, label %fill_pfc_en.exit.if.end36_crit_edge, label %fill_pfc_en.exit.cleanup_crit_edge

fill_pfc_en.exit.cleanup_crit_edge:               ; preds = %fill_pfc_en.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fill_pfc_en.exit.if.end36_crit_edge:              ; preds = %fill_pfc_en.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %fill_pfc_en.exit.if.end36_crit_edge, %fill_pfc_en.exit.thread
  %43 = ptrtoint ptr %curr_pfc_en to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %curr_pfc_en, align 1
  %conv = zext i16 %1 to i32
  %conv37 = trunc i32 %add5.i to i16
  %call38 = call fastcc i32 @update_buffer_lossy(i32 noundef %28, i8 noundef zeroext %44, ptr noundef %prio2buffer, i32 noundef %conv, i16 noundef zeroext %conv37, ptr noundef nonnull %port_buffer, ptr noundef nonnull %update_buffer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end36.if.end42_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end42:                                         ; preds = %if.end36.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  %and43 = and i32 %change, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end94, label %if.end42.do.body48_crit_edge

if.end42.do.body48_crit_edge:                     ; preds = %if.end42
  br label %do.body48

do.body48:                                        ; preds = %if.end72.do.body48_crit_edge, %if.end42.do.body48_crit_edge
  %i.0226 = phi i32 [ %inc, %if.end72.do.body48_crit_edge ], [ 0, %if.end42.do.body48_crit_edge ]
  %total_used.0225 = phi i32 [ %add, %if.end72.do.body48_crit_edge ], [ 0, %if.end42.do.body48_crit_edge ]
  %45 = ptrtoint ptr %msglevel.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msglevel.i, align 4
  %and50 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body48.do.end56_crit_edge, label %if.then52

do.body48.do.end56_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

if.then52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev2, align 4
  %arrayidx = getelementptr i32, ptr %buffer_size, i32 %i.0226
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mlx5e_port_manual_buffer_config, i32 noundef %i.0226, i32 noundef %50) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body48.do.end56_crit_edge
  %arrayidx58 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0226
  %51 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool59.not = icmp eq i8 %52, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end56.if.end72_crit_edge

do.end56.if.end72_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true:                                    ; preds = %do.end56
  %arrayidx60 = getelementptr i32, ptr %buffer_size, i32 %i.0226
  %53 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool61.not = icmp eq i32 %54, 0
  br i1 %tobool61.not, label %do.body63, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.body63:                                        ; preds = %land.lhs.true
  %55 = ptrtoint ptr %msglevel.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msglevel.i, align 4
  %and65 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body63.cleanup_crit_edge, label %if.then67

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev2, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %58, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mlx5e_port_manual_buffer_config, i32 noundef %i.0226) #10
  br label %cleanup

if.end72:                                         ; preds = %land.lhs.true.if.end72_crit_edge, %do.end56.if.end72_crit_edge
  %arrayidx73 = getelementptr i32, ptr %buffer_size, i32 %i.0226
  %59 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx73, align 4
  %size = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.0226, i32 2
  %61 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %size, align 4
  %add = add i32 %60, %total_used.0225
  %inc = add nuw nsw i32 %i.0226, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.body77, label %if.end72.do.body48_crit_edge

if.end72.do.body48_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

do.body77:                                        ; preds = %if.end72
  %62 = ptrtoint ptr %msglevel.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msglevel.i, align 4
  %and79 = and i32 %63, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body77.do.end85_crit_edge, label %if.then81

do.body77.do.end85_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end85

if.then81:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev2, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %65, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mlx5e_port_manual_buffer_config, i32 noundef %add) #10
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body77.do.end85_crit_edge
  %66 = ptrtoint ptr %port_buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port_buffer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %67)
  %cmp86 = icmp ugt i32 %add, %67
  br i1 %cmp86, label %do.end85.cleanup_crit_edge, label %if.end89

do.end85.cleanup_crit_edge:                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %do.end85
  %68 = ptrtoint ptr %update_buffer to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %update_buffer, align 1
  %call90 = call fastcc i32 @update_xoff_threshold(ptr noundef nonnull %port_buffer, i32 noundef %add5.i, i32 noundef %28, i16 noundef zeroext %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.if.end106.thread_crit_edge, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89.if.end106.thread_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.thread

if.end94:                                         ; preds = %if.end42
  %69 = ptrtoint ptr %update_buffer to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr = load i8, ptr %update_buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool95.not = icmp eq i8 %.pr, 0
  br i1 %tobool95.not, label %land.lhs.true96, label %if.end94.if.end106.thread_crit_edge

if.end94.if.end106.thread_crit_edge:              ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.thread

land.lhs.true96:                                  ; preds = %if.end94
  %xoff98 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 7
  %70 = ptrtoint ptr %xoff98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %xoff98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %71)
  %cmp99.not = icmp eq i32 %add5.i, %71
  br i1 %cmp99.not, label %if.end106, label %if.then101

if.then101:                                       ; preds = %land.lhs.true96
  %call102 = call fastcc i32 @update_xoff_threshold(ptr noundef nonnull %port_buffer, i32 noundef %add5.i, i32 noundef %28, i16 noundef zeroext %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then101.if.end106.thread_crit_edge, label %if.then101.cleanup_crit_edge

if.then101.cleanup_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then101.if.end106.thread_crit_edge:            ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.thread

if.end106.thread:                                 ; preds = %if.then101.if.end106.thread_crit_edge, %if.end94.if.end106.thread_crit_edge, %if.end89.if.end106.thread_crit_edge
  %xoff108216 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 7
  %72 = ptrtoint ptr %xoff108216 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add5.i, ptr %xoff108216, align 4
  br label %if.then110

if.end106:                                        ; preds = %land.lhs.true96
  %73 = ptrtoint ptr %update_buffer to i32
  call void @__asan_load1_noabort(i32 %73)
  %.pr215 = load i8, ptr %update_buffer, align 1
  %74 = ptrtoint ptr %xoff98 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add5.i, ptr %xoff98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr215)
  %tobool109.not = icmp eq i8 %.pr215, 0
  br i1 %tobool109.not, label %if.end115, label %if.end106.if.then110_crit_edge

if.end106.if.then110_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.then110:                                       ; preds = %if.end106.if.then110_crit_edge, %if.end106.thread
  %75 = ptrtoint ptr %port_buff_cell_sz1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %port_buff_cell_sz1, align 8
  %77 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdev.i, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3520, i32 noundef 108) #9
  %tobool.not.i204 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i204, label %if.then110.cleanup_crit_edge, label %if.end.i205

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i205:                                      ; preds = %if.then110
  %call3.i = call i32 @mlx5e_port_query_pbmc(ptr noundef %78, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.body.i, label %port_set_buffer.exit.thread

port_set_buffer.exit.thread:                      ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i205
  %conv17.i = zext i16 %76 to i32
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 12
  %arrayidx.i = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0
  %xon15.i = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 4
  %80 = ptrtoint ptr %xon15.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %xon15.i, align 4
  %div641.i = udiv i32 %81, %conv17.i
  %xoff11.i = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 3
  %82 = ptrtoint ptr %xoff11.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xoff11.i, align 4
  %div4191100.i = udiv i32 %83, %conv17.i
  %size8.i = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 2
  %84 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size8.i, align 4
  %div1971061.i = udiv i32 %85, %conv17.i
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i, align 4
  %and652.i = and i32 %87, -33619968
  %and653.i = and i32 %div1971061.i, 65535
  %or655.i = or i32 %and653.i, %and652.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i, align 4
  %90 = and i8 %89, 1
  %and669.i = zext i8 %90 to i32
  %shl670.i = shl nuw nsw i32 %and669.i, 25
  %or671.i = or i32 %shl670.i, %or655.i
  store i32 %or671.i, ptr %add.ptr.i, align 4
  %add.ptr681.i = getelementptr i8, ptr %call7.i.i.i, i32 16
  %shl684.i = shl i32 %div4191100.i, 16
  %and697.i = and i32 %div641.i, 65535
  %or699.i = or i32 %and697.i, %shl684.i
  %91 = ptrtoint ptr %add.ptr681.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or699.i, ptr %add.ptr681.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %call7.i.i.i, i32 20
  %arrayidx.i.1 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1
  %xon15.i.1 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 4
  %92 = ptrtoint ptr %xon15.i.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %xon15.i.1, align 4
  %div641.i.1 = udiv i32 %93, %conv17.i
  %xoff11.i.1 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 3
  %94 = ptrtoint ptr %xoff11.i.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %xoff11.i.1, align 4
  %div4191100.i.1 = udiv i32 %95, %conv17.i
  %size8.i.1 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 2
  %96 = ptrtoint ptr %size8.i.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size8.i.1, align 4
  %div1971061.i.1 = udiv i32 %97, %conv17.i
  %98 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.1, align 4
  %and652.i.1 = and i32 %99, -33619968
  %and653.i.1 = and i32 %div1971061.i.1, 65535
  %or655.i.1 = or i32 %and653.i.1, %and652.i.1
  %100 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.1, align 4
  %102 = and i8 %101, 1
  %and669.i.1 = zext i8 %102 to i32
  %shl670.i.1 = shl nuw nsw i32 %and669.i.1, 25
  %or671.i.1 = or i32 %shl670.i.1, %or655.i.1
  store i32 %or671.i.1, ptr %add.ptr.i.1, align 4
  %add.ptr681.i.1 = getelementptr i8, ptr %call7.i.i.i, i32 24
  %shl684.i.1 = shl i32 %div4191100.i.1, 16
  %and697.i.1 = and i32 %div641.i.1, 65535
  %or699.i.1 = or i32 %and697.i.1, %shl684.i.1
  %103 = ptrtoint ptr %add.ptr681.i.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or699.i.1, ptr %add.ptr681.i.1, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %call7.i.i.i, i32 28
  %arrayidx.i.2 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2
  %xon15.i.2 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 4
  %104 = ptrtoint ptr %xon15.i.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %xon15.i.2, align 4
  %div641.i.2 = udiv i32 %105, %conv17.i
  %xoff11.i.2 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 3
  %106 = ptrtoint ptr %xoff11.i.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %xoff11.i.2, align 4
  %div4191100.i.2 = udiv i32 %107, %conv17.i
  %size8.i.2 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 2
  %108 = ptrtoint ptr %size8.i.2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size8.i.2, align 4
  %div1971061.i.2 = udiv i32 %109, %conv17.i
  %110 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr.i.2, align 4
  %and652.i.2 = and i32 %111, -33619968
  %and653.i.2 = and i32 %div1971061.i.2, 65535
  %or655.i.2 = or i32 %and653.i.2, %and652.i.2
  %112 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.2, align 4
  %114 = and i8 %113, 1
  %and669.i.2 = zext i8 %114 to i32
  %shl670.i.2 = shl nuw nsw i32 %and669.i.2, 25
  %or671.i.2 = or i32 %shl670.i.2, %or655.i.2
  store i32 %or671.i.2, ptr %add.ptr.i.2, align 4
  %add.ptr681.i.2 = getelementptr i8, ptr %call7.i.i.i, i32 32
  %shl684.i.2 = shl i32 %div4191100.i.2, 16
  %and697.i.2 = and i32 %div641.i.2, 65535
  %or699.i.2 = or i32 %and697.i.2, %shl684.i.2
  %115 = ptrtoint ptr %add.ptr681.i.2 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or699.i.2, ptr %add.ptr681.i.2, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %call7.i.i.i, i32 36
  %arrayidx.i.3 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3
  %xon15.i.3 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 4
  %116 = ptrtoint ptr %xon15.i.3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %xon15.i.3, align 4
  %div641.i.3 = udiv i32 %117, %conv17.i
  %xoff11.i.3 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 3
  %118 = ptrtoint ptr %xoff11.i.3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xoff11.i.3, align 4
  %div4191100.i.3 = udiv i32 %119, %conv17.i
  %size8.i.3 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 2
  %120 = ptrtoint ptr %size8.i.3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %size8.i.3, align 4
  %div1971061.i.3 = udiv i32 %121, %conv17.i
  %122 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i.3, align 4
  %and652.i.3 = and i32 %123, -33619968
  %and653.i.3 = and i32 %div1971061.i.3, 65535
  %or655.i.3 = or i32 %and653.i.3, %and652.i.3
  %124 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i.3, align 4
  %126 = and i8 %125, 1
  %and669.i.3 = zext i8 %126 to i32
  %shl670.i.3 = shl nuw nsw i32 %and669.i.3, 25
  %or671.i.3 = or i32 %shl670.i.3, %or655.i.3
  store i32 %or671.i.3, ptr %add.ptr.i.3, align 4
  %add.ptr681.i.3 = getelementptr i8, ptr %call7.i.i.i, i32 40
  %shl684.i.3 = shl i32 %div4191100.i.3, 16
  %and697.i.3 = and i32 %div641.i.3, 65535
  %or699.i.3 = or i32 %and697.i.3, %shl684.i.3
  %127 = ptrtoint ptr %add.ptr681.i.3 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or699.i.3, ptr %add.ptr681.i.3, align 8
  %add.ptr.i.4 = getelementptr i8, ptr %call7.i.i.i, i32 44
  %arrayidx.i.4 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4
  %xon15.i.4 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 4
  %128 = ptrtoint ptr %xon15.i.4 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %xon15.i.4, align 4
  %div641.i.4 = udiv i32 %129, %conv17.i
  %xoff11.i.4 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 3
  %130 = ptrtoint ptr %xoff11.i.4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %xoff11.i.4, align 4
  %div4191100.i.4 = udiv i32 %131, %conv17.i
  %size8.i.4 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 2
  %132 = ptrtoint ptr %size8.i.4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size8.i.4, align 4
  %div1971061.i.4 = udiv i32 %133, %conv17.i
  %134 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.i.4, align 4
  %and652.i.4 = and i32 %135, -33619968
  %and653.i.4 = and i32 %div1971061.i.4, 65535
  %or655.i.4 = or i32 %and653.i.4, %and652.i.4
  %136 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i.4, align 4
  %138 = and i8 %137, 1
  %and669.i.4 = zext i8 %138 to i32
  %shl670.i.4 = shl nuw nsw i32 %and669.i.4, 25
  %or671.i.4 = or i32 %shl670.i.4, %or655.i.4
  store i32 %or671.i.4, ptr %add.ptr.i.4, align 4
  %add.ptr681.i.4 = getelementptr i8, ptr %call7.i.i.i, i32 48
  %shl684.i.4 = shl i32 %div4191100.i.4, 16
  %and697.i.4 = and i32 %div641.i.4, 65535
  %or699.i.4 = or i32 %and697.i.4, %shl684.i.4
  %139 = ptrtoint ptr %add.ptr681.i.4 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or699.i.4, ptr %add.ptr681.i.4, align 8
  %add.ptr.i.5 = getelementptr i8, ptr %call7.i.i.i, i32 52
  %arrayidx.i.5 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5
  %xon15.i.5 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 4
  %140 = ptrtoint ptr %xon15.i.5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %xon15.i.5, align 4
  %div641.i.5 = udiv i32 %141, %conv17.i
  %xoff11.i.5 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 3
  %142 = ptrtoint ptr %xoff11.i.5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %xoff11.i.5, align 4
  %div4191100.i.5 = udiv i32 %143, %conv17.i
  %size8.i.5 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 2
  %144 = ptrtoint ptr %size8.i.5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %size8.i.5, align 4
  %div1971061.i.5 = udiv i32 %145, %conv17.i
  %146 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr.i.5, align 4
  %and652.i.5 = and i32 %147, -33619968
  %and653.i.5 = and i32 %div1971061.i.5, 65535
  %or655.i.5 = or i32 %and653.i.5, %and652.i.5
  %148 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i.5, align 4
  %150 = and i8 %149, 1
  %and669.i.5 = zext i8 %150 to i32
  %shl670.i.5 = shl nuw nsw i32 %and669.i.5, 25
  %or671.i.5 = or i32 %shl670.i.5, %or655.i.5
  store i32 %or671.i.5, ptr %add.ptr.i.5, align 4
  %add.ptr681.i.5 = getelementptr i8, ptr %call7.i.i.i, i32 56
  %shl684.i.5 = shl i32 %div4191100.i.5, 16
  %and697.i.5 = and i32 %div641.i.5, 65535
  %or699.i.5 = or i32 %and697.i.5, %shl684.i.5
  %151 = ptrtoint ptr %add.ptr681.i.5 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %or699.i.5, ptr %add.ptr681.i.5, align 8
  %add.ptr.i.6 = getelementptr i8, ptr %call7.i.i.i, i32 60
  %arrayidx.i.6 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6
  %xon15.i.6 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 4
  %152 = ptrtoint ptr %xon15.i.6 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %xon15.i.6, align 4
  %div641.i.6 = udiv i32 %153, %conv17.i
  %xoff11.i.6 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 3
  %154 = ptrtoint ptr %xoff11.i.6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %xoff11.i.6, align 4
  %div4191100.i.6 = udiv i32 %155, %conv17.i
  %size8.i.6 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 2
  %156 = ptrtoint ptr %size8.i.6 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %size8.i.6, align 4
  %div1971061.i.6 = udiv i32 %157, %conv17.i
  %158 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i.6, align 4
  %and652.i.6 = and i32 %159, -33619968
  %and653.i.6 = and i32 %div1971061.i.6, 65535
  %or655.i.6 = or i32 %and653.i.6, %and652.i.6
  %160 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i.6, align 4
  %162 = and i8 %161, 1
  %and669.i.6 = zext i8 %162 to i32
  %shl670.i.6 = shl nuw nsw i32 %and669.i.6, 25
  %or671.i.6 = or i32 %shl670.i.6, %or655.i.6
  store i32 %or671.i.6, ptr %add.ptr.i.6, align 4
  %add.ptr681.i.6 = getelementptr i8, ptr %call7.i.i.i, i32 64
  %shl684.i.6 = shl i32 %div4191100.i.6, 16
  %and697.i.6 = and i32 %div641.i.6, 65535
  %or699.i.6 = or i32 %and697.i.6, %shl684.i.6
  %163 = ptrtoint ptr %add.ptr681.i.6 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or699.i.6, ptr %add.ptr681.i.6, align 8
  %add.ptr.i.7 = getelementptr i8, ptr %call7.i.i.i, i32 68
  %arrayidx.i.7 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7
  %xon15.i.7 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 4
  %164 = ptrtoint ptr %xon15.i.7 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %xon15.i.7, align 4
  %div641.i.7 = udiv i32 %165, %conv17.i
  %xoff11.i.7 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 3
  %166 = ptrtoint ptr %xoff11.i.7 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %xoff11.i.7, align 4
  %div4191100.i.7 = udiv i32 %167, %conv17.i
  %size8.i.7 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 2
  %168 = ptrtoint ptr %size8.i.7 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %size8.i.7, align 4
  %div1971061.i.7 = udiv i32 %169, %conv17.i
  %170 = ptrtoint ptr %add.ptr.i.7 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr.i.7, align 4
  %and652.i.7 = and i32 %171, -33619968
  %and653.i.7 = and i32 %div1971061.i.7, 65535
  %or655.i.7 = or i32 %and653.i.7, %and652.i.7
  %172 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i.7, align 4
  %174 = and i8 %173, 1
  %and669.i.7 = zext i8 %174 to i32
  %shl670.i.7 = shl nuw nsw i32 %and669.i.7, 25
  %or671.i.7 = or i32 %shl670.i.7, %or655.i.7
  store i32 %or671.i.7, ptr %add.ptr.i.7, align 4
  %add.ptr681.i.7 = getelementptr i8, ptr %call7.i.i.i, i32 72
  %shl684.i.7 = shl i32 %div4191100.i.7, 16
  %and697.i.7 = and i32 %div641.i.7, 65535
  %or699.i.7 = or i32 %and697.i.7, %shl684.i.7
  %175 = ptrtoint ptr %add.ptr681.i.7 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %or699.i.7, ptr %add.ptr681.i.7, align 8
  %call703.i = call i32 @mlx5e_port_set_pbmc(ptr noundef %78, ptr noundef nonnull %call7.i.i.i) #6
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call703.i)
  %tobool112.not = icmp ne i32 %call703.i, 0
  %brmerge = or i1 %tobool30.not, %tobool112.not
  br i1 %brmerge, label %for.body.i.cleanup_crit_edge, label %for.body.i.if.then117_crit_edge

for.body.i.if.then117_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then117

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end115:                                        ; preds = %if.end106
  br i1 %tobool30.not, label %if.end115.cleanup_crit_edge, label %if.end115.if.then117_crit_edge

if.end115.if.then117_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then117

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then117:                                       ; preds = %if.end115.if.then117_crit_edge, %for.body.i.if.then117_crit_edge
  %176 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mdev.i, align 64
  %call119 = call i32 @mlx5e_port_set_priority2buffer(ptr noundef %177, ptr noundef %prio2buffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.end115.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %port_set_buffer.exit.thread, %if.then110.cleanup_crit_edge, %if.then101.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %do.end85.cleanup_crit_edge, %if.then67, %do.body63.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %fill_pfc_en.exit.cleanup_crit_edge, %fill_pfc_en.exit.thread211, %if.end22.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %call4.i, %fill_pfc_en.exit.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ -22, %if.then67 ], [ -22, %do.body63.cleanup_crit_edge ], [ -22, %do.end85.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ], [ %call102, %if.then101.cleanup_crit_edge ], [ %call703.i, %for.body.i.cleanup_crit_edge ], [ %call119, %if.then117 ], [ 0, %if.end115.cleanup_crit_edge ], [ %call.i201, %fill_pfc_en.exit.thread211 ], [ -12, %if.then110.cleanup_crit_edge ], [ %call3.i, %port_set_buffer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %curr_pfc_en) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %update_buffer) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %port_buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_xoff_threshold(ptr nocapture noundef %port_buffer, i32 noundef %xoff, i32 noundef %max_mtu, i16 noundef zeroext %port_buff_cell_sz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %max_mtu, %xoff
  %conv = zext i16 %port_buff_cell_sz to i32
  %add8 = add i32 %add, %conv
  %arrayidx = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %xoff3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xoff3, align 4
  br label %for.inc

if.end:                                           ; preds = %entry
  %size = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add8)
  %cmp9 = icmp ult i32 %4, %add8
  br i1 %cmp9, label %if.end.do.end_crit_edge, label %if.end15

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.7.do.end_crit_edge, %if.end.6.do.end_crit_edge, %if.end.5.do.end_crit_edge, %if.end.4.do.end_crit_edge, %if.end.3.do.end_crit_edge, %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge
  %i.051.lcssa = phi i32 [ 0, %if.end.do.end_crit_edge ], [ 1, %if.end.1.do.end_crit_edge ], [ 2, %if.end.2.do.end_crit_edge ], [ 3, %if.end.3.do.end_crit_edge ], [ 4, %if.end.4.do.end_crit_edge ], [ 5, %if.end.5.do.end_crit_edge ], [ 6, %if.end.6.do.end_crit_edge ], [ 7, %if.end.7.do.end_crit_edge ]
  %.lcssa = phi i32 [ %4, %if.end.do.end_crit_edge ], [ %11, %if.end.1.do.end_crit_edge ], [ %18, %if.end.2.do.end_crit_edge ], [ %25, %if.end.3.do.end_crit_edge ], [ %32, %if.end.4.do.end_crit_edge ], [ %39, %if.end.5.do.end_crit_edge ], [ %46, %if.end.6.do.end_crit_edge ], [ %54, %if.end.7.do.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %i.051.lcssa, i32 noundef %.lcssa) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %4, %xoff
  %xoff21 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %xoff21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %xoff21, align 4
  %sub25 = sub i32 %sub, %max_mtu
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.then
  %sub25.sink = phi i32 [ %sub25, %if.end15 ], [ 0, %if.then ]
  %xon28 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %xon28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub25.sink, ptr %xon28, align 4
  %arrayidx.1 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.1 = icmp eq i8 %8, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.1 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 3
  %9 = ptrtoint ptr %xoff3.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %xoff3.1, align 4
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %size.1 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add8)
  %cmp9.1 = icmp ult i32 %11, %add8
  br i1 %cmp9.1, label %if.end.1.do.end_crit_edge, label %if.end15.1

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub.1 = sub i32 %11, %xoff
  %xoff21.1 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 3
  %12 = ptrtoint ptr %xoff21.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.1, ptr %xoff21.1, align 4
  %sub25.1 = sub i32 %sub.1, %max_mtu
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end15.1, %if.then.1
  %sub25.1.sink = phi i32 [ %sub25.1, %if.end15.1 ], [ 0, %if.then.1 ]
  %xon28.1 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 4
  %13 = ptrtoint ptr %xon28.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub25.1.sink, ptr %xon28.1, align 4
  %arrayidx.2 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.2 = icmp eq i8 %15, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.2 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 3
  %16 = ptrtoint ptr %xoff3.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %xoff3.2, align 4
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %size.2 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 2
  %17 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add8)
  %cmp9.2 = icmp ult i32 %18, %add8
  br i1 %cmp9.2, label %if.end.2.do.end_crit_edge, label %if.end15.2

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub.2 = sub i32 %18, %xoff
  %xoff21.2 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 3
  %19 = ptrtoint ptr %xoff21.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.2, ptr %xoff21.2, align 4
  %sub25.2 = sub i32 %sub.2, %max_mtu
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end15.2, %if.then.2
  %sub25.2.sink = phi i32 [ %sub25.2, %if.end15.2 ], [ 0, %if.then.2 ]
  %xon28.2 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 4
  %20 = ptrtoint ptr %xon28.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub25.2.sink, ptr %xon28.2, align 4
  %arrayidx.3 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.3 = icmp eq i8 %22, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.3 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 3
  %23 = ptrtoint ptr %xoff3.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %xoff3.3, align 4
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %size.3 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 2
  %24 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add8)
  %cmp9.3 = icmp ult i32 %25, %add8
  br i1 %cmp9.3, label %if.end.3.do.end_crit_edge, label %if.end15.3

if.end.3.do.end_crit_edge:                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  %sub.3 = sub i32 %25, %xoff
  %xoff21.3 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 3
  %26 = ptrtoint ptr %xoff21.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.3, ptr %xoff21.3, align 4
  %sub25.3 = sub i32 %sub.3, %max_mtu
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end15.3, %if.then.3
  %sub25.3.sink = phi i32 [ %sub25.3, %if.end15.3 ], [ 0, %if.then.3 ]
  %xon28.3 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 4
  %27 = ptrtoint ptr %xon28.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub25.3.sink, ptr %xon28.3, align 4
  %arrayidx.4 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.4 = icmp eq i8 %29, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.4 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 3
  %30 = ptrtoint ptr %xoff3.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %xoff3.4, align 4
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %size.4 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 2
  %31 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add8)
  %cmp9.4 = icmp ult i32 %32, %add8
  br i1 %cmp9.4, label %if.end.4.do.end_crit_edge, label %if.end15.4

if.end.4.do.end_crit_edge:                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  %sub.4 = sub i32 %32, %xoff
  %xoff21.4 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 3
  %33 = ptrtoint ptr %xoff21.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.4, ptr %xoff21.4, align 4
  %sub25.4 = sub i32 %sub.4, %max_mtu
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end15.4, %if.then.4
  %sub25.4.sink = phi i32 [ %sub25.4, %if.end15.4 ], [ 0, %if.then.4 ]
  %xon28.4 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 4
  %34 = ptrtoint ptr %xon28.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub25.4.sink, ptr %xon28.4, align 4
  %arrayidx.5 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.5 = icmp eq i8 %36, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.5 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 3
  %37 = ptrtoint ptr %xoff3.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xoff3.5, align 4
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %size.5 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 2
  %38 = ptrtoint ptr %size.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add8)
  %cmp9.5 = icmp ult i32 %39, %add8
  br i1 %cmp9.5, label %if.end.5.do.end_crit_edge, label %if.end15.5

if.end.5.do.end_crit_edge:                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  %sub.5 = sub i32 %39, %xoff
  %xoff21.5 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 3
  %40 = ptrtoint ptr %xoff21.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.5, ptr %xoff21.5, align 4
  %sub25.5 = sub i32 %sub.5, %max_mtu
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end15.5, %if.then.5
  %sub25.5.sink = phi i32 [ %sub25.5, %if.end15.5 ], [ 0, %if.then.5 ]
  %xon28.5 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 4
  %41 = ptrtoint ptr %xon28.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub25.5.sink, ptr %xon28.5, align 4
  %arrayidx.6 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.6 = icmp eq i8 %43, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.6 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 3
  %44 = ptrtoint ptr %xoff3.6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %xoff3.6, align 4
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %size.6 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 2
  %45 = ptrtoint ptr %size.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add8)
  %cmp9.6 = icmp ult i32 %46, %add8
  br i1 %cmp9.6, label %if.end.6.do.end_crit_edge, label %if.end15.6

if.end.6.do.end_crit_edge:                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.6:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  %sub.6 = sub i32 %46, %xoff
  %xoff21.6 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 3
  %47 = ptrtoint ptr %xoff21.6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.6, ptr %xoff21.6, align 4
  %sub25.6 = sub i32 %sub.6, %max_mtu
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end15.6, %if.then.6
  %sub25.6.sink = phi i32 [ %sub25.6, %if.end15.6 ], [ 0, %if.then.6 ]
  %xon28.6 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 4
  %48 = ptrtoint ptr %xon28.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub25.6.sink, ptr %xon28.6, align 4
  %arrayidx.7 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7
  %49 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.7 = icmp eq i8 %50, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %xoff3.7 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 3
  %51 = ptrtoint ptr %xoff3.7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %xoff3.7, align 4
  %xon.7 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 4
  %52 = ptrtoint ptr %xon.7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %xon.7, align 4
  br label %cleanup

if.end.7:                                         ; preds = %for.inc.6
  %size.7 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 2
  %53 = ptrtoint ptr %size.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add8)
  %cmp9.7 = icmp ult i32 %54, %add8
  br i1 %cmp9.7, label %if.end.7.do.end_crit_edge, label %if.end15.7

if.end.7.do.end_crit_edge:                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end15.7:                                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  %sub.7 = sub i32 %54, %xoff
  %xoff21.7 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 3
  %55 = ptrtoint ptr %xoff21.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.7, ptr %xoff21.7, align 4
  %sub25.7 = sub i32 %sub.7, %max_mtu
  %xon28.7 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 4
  %56 = ptrtoint ptr %xon28.7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub25.7, ptr %xon28.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15.7, %if.then.7, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end15.7 ], [ 0, %if.then.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_query_priority2buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_buffer_lossy(i32 noundef %max_mtu, i8 noundef zeroext %pfc_en, ptr nocapture noundef readonly %buffer, i32 noundef %xoff, i16 noundef zeroext %port_buff_cell_sz, ptr nocapture noundef %port_buffer, ptr nocapture noundef writeonly %change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv6 = zext i8 %pfc_en to i32
  %0 = xor i32 %conv6, -1
  %1 = trunc i32 %0 to i8
  %2 = and i8 %1, 1
  %arrayidx.1 = getelementptr i8, ptr %buffer, i32 1
  %3 = trunc i32 %0 to i8
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 1
  %arrayidx.2 = getelementptr i8, ptr %buffer, i32 2
  %6 = trunc i32 %0 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %arrayidx.3 = getelementptr i8, ptr %buffer, i32 3
  %9 = trunc i32 %0 to i8
  %10 = lshr i8 %9, 3
  %11 = and i8 %10, 1
  %arrayidx.4 = getelementptr i8, ptr %buffer, i32 4
  %12 = trunc i32 %0 to i8
  %13 = lshr i8 %12, 4
  %14 = and i8 %13, 1
  %arrayidx.5 = getelementptr i8, ptr %buffer, i32 5
  %15 = trunc i32 %0 to i8
  %16 = lshr i8 %15, 5
  %17 = and i8 %16, 1
  %arrayidx.6 = getelementptr i8, ptr %buffer, i32 6
  %18 = trunc i32 %0 to i8
  %19 = lshr i8 %18, 6
  %20 = and i8 %19, 1
  %arrayidx.7 = getelementptr i8, ptr %buffer, i32 7
  %21 = trunc i32 %0 to i8
  %22 = lshr i8 %21, 7
  br label %for.cond1.preheader.outer

for.cond1.preheader.outer:                        ; preds = %for.inc28.thread.for.cond1.preheader.outer_crit_edge, %entry
  %i.062.ph = phi i32 [ %inc2964, %for.inc28.thread.for.cond1.preheader.outer_crit_edge ], [ 0, %entry ]
  %changed.0.off061.ph = phi i1 [ true, %for.inc28.thread.for.cond1.preheader.outer_crit_edge ], [ false, %entry ]
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buffer, align 1
  %conv = zext i8 %24 to i32
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %26 to i32
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %30 to i32
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %34 to i32
  %35 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %36 to i32
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %38 to i32
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc28.for.cond1.preheader_crit_edge, %for.cond1.preheader.outer
  %i.062 = phi i32 [ %inc29, %for.inc28.for.cond1.preheader_crit_edge ], [ %i.062.ph, %for.cond1.preheader.outer ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv)
  %cmp4.not = icmp eq i32 %i.062, %conv
  %conv8 = select i1 %cmp4.not, i8 %2, i8 0
  %inc = zext i1 %cmp4.not to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.1)
  %cmp4.not.1 = icmp eq i32 %i.062, %conv.1
  %conv8.1 = select i1 %cmp4.not.1, i8 %5, i8 0
  %lossy_count.1.1 = add nuw nsw i8 %conv8, %conv8.1
  %inc.1 = zext i1 %cmp4.not.1 to i8
  %prio_count.1.1 = add nuw nsw i8 %inc, %inc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.2)
  %cmp4.not.2 = icmp eq i32 %i.062, %conv.2
  %conv8.2 = select i1 %cmp4.not.2, i8 %8, i8 0
  %lossy_count.1.2 = add nuw nsw i8 %lossy_count.1.1, %conv8.2
  %inc.2 = zext i1 %cmp4.not.2 to i8
  %prio_count.1.2 = add nuw nsw i8 %prio_count.1.1, %inc.2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.3)
  %cmp4.not.3 = icmp eq i32 %i.062, %conv.3
  %conv8.3 = select i1 %cmp4.not.3, i8 %11, i8 0
  %lossy_count.1.3 = add nuw nsw i8 %lossy_count.1.2, %conv8.3
  %inc.3 = zext i1 %cmp4.not.3 to i8
  %prio_count.1.3 = add nuw nsw i8 %prio_count.1.2, %inc.3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.4)
  %cmp4.not.4 = icmp eq i32 %i.062, %conv.4
  %conv8.4 = select i1 %cmp4.not.4, i8 %14, i8 0
  %lossy_count.1.4 = add nuw nsw i8 %lossy_count.1.3, %conv8.4
  %inc.4 = zext i1 %cmp4.not.4 to i8
  %prio_count.1.4 = add nuw nsw i8 %prio_count.1.3, %inc.4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.5)
  %cmp4.not.5 = icmp eq i32 %i.062, %conv.5
  %conv8.5 = select i1 %cmp4.not.5, i8 %17, i8 0
  %lossy_count.1.5 = add nuw nsw i8 %lossy_count.1.4, %conv8.5
  %inc.5 = zext i1 %cmp4.not.5 to i8
  %prio_count.1.5 = add nuw nsw i8 %prio_count.1.4, %inc.5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.6)
  %cmp4.not.6 = icmp eq i32 %i.062, %conv.6
  %conv8.6 = select i1 %cmp4.not.6, i8 %20, i8 0
  %lossy_count.1.6 = add nuw nsw i8 %lossy_count.1.5, %conv8.6
  %inc.6 = zext i1 %cmp4.not.6 to i8
  %prio_count.1.6 = add nuw nsw i8 %prio_count.1.5, %inc.6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062, i32 %conv.7)
  %cmp4.not.7 = icmp eq i32 %i.062, %conv.7
  %conv8.7 = select i1 %cmp4.not.7, i8 %22, i8 0
  %lossy_count.1.7 = add nuw nsw i8 %lossy_count.1.6, %conv8.7
  %inc.7 = zext i1 %cmp4.not.7 to i8
  %prio_count.1.7 = add nuw nsw i8 %prio_count.1.6, %inc.7
  call void @__sanitizer_cov_trace_cmp1(i8 %lossy_count.1.7, i8 %prio_count.1.7)
  %cmp12 = icmp eq i8 %lossy_count.1.7, %prio_count.1.7
  %. = zext i1 %cmp12 to i8
  %arrayidx18 = getelementptr %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 %i.062
  %39 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %.)
  %cmp21.not = icmp eq i8 %40, %.
  br i1 %cmp21.not, label %for.inc28, label %for.inc28.thread

for.inc28:                                        ; preds = %for.cond1.preheader
  %inc29 = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc29, 8
  br i1 %exitcond.not, label %for.end30, label %for.inc28.for.cond1.preheader_crit_edge

for.inc28.for.cond1.preheader_crit_edge:          ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.inc28.thread:                                 ; preds = %for.cond1.preheader
  %41 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %., ptr %arrayidx18, align 4
  %inc2964 = add nuw nsw i32 %i.062, 1
  %exitcond.not65 = icmp eq i32 %inc2964, 8
  br i1 %exitcond.not65, label %for.inc28.thread.if.then32_crit_edge, label %for.inc28.thread.for.cond1.preheader.outer_crit_edge

for.inc28.thread.for.cond1.preheader.outer_crit_edge: ; preds = %for.inc28.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.outer

for.inc28.thread.if.then32_crit_edge:             ; preds = %for.inc28.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

for.end30:                                        ; preds = %for.inc28
  br i1 %changed.0.off061.ph, label %for.end30.if.then32_crit_edge, label %for.end30.cleanup_crit_edge

for.end30.cleanup_crit_edge:                      ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end30.if.then32_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then32:                                        ; preds = %for.end30.if.then32_crit_edge, %for.inc28.thread.if.then32_crit_edge
  %call = tail call fastcc i32 @update_xoff_threshold(ptr noundef %port_buffer, i32 noundef %xoff, i32 noundef %max_mtu, i16 noundef zeroext %port_buff_cell_sz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool33.not = icmp eq i32 %call, 0
  br i1 %tobool33.not, label %if.end35, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %change, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then32.cleanup_crit_edge, %for.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then32.cleanup_crit_edge ], [ 0, %if.end35 ], [ 0, %for.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_set_priority2buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_linkspeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_pfc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_set_pbmc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 81, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 281, i32 2}
!6 = !{ptr @__func__.mlx5e_port_manual_buffer_config, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 320, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 322, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 331, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 144, i32 2}
!15 = !{ptr @__func__.calculate_xoff, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/port_buffer.c", i32 162, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @update_xoff_threshold._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @update_xoff_threshold._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
