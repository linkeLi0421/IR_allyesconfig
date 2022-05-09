; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_l2.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qed_get_eth_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qed_get_eth_ops\09\09\09\09"
module asm "\09.long\09__crc_qed_get_eth_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qed_get_eth_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qed_get_eth_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qed_get_eth_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qed_put_eth_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qed_put_eth_ops\09\09\09\09"
module asm "\09.long\09__crc_qed_put_eth_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qed_put_eth_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qed_put_eth_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qed_put_eth_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_iov_hv_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_eth_dcbnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_eth_ptp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.qed_l2_info = type { i32, ptr, %struct.mutex }
%struct.qed_queue_cid = type { %struct.qed_queue_cid_params, %struct.qed_queue_cid_params, i16, i8, i32, i16, i8, i8, i8, i8, i8, ptr }
%struct.qed_queue_cid_params = type { i8, i16, i8 }
%struct.qed_queue_cid_vf_params = type { i8, i8, i8, i8 }
%struct.qed_queue_start_common_params = type { i8, i16, i8, ptr, i8, i8 }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.qed_sp_init_data = type { i32, i16, i32, ptr }
%struct.qed_sp_vport_start_params = type { i32, i8, i8, i8, i8, i8, i8, i32, i16, i8, i16, i8, i8 }
%struct.qed_spq_entry = type { %struct.list_head, i8, %struct.slow_path_element, %union.ramrod_data, i32, ptr, i32, %struct.qed_spq_comp_cb, %struct.qed_spq_comp_done, ptr }
%struct.slow_path_element = type { %struct.ramrod_header, %struct.regpair }
%struct.ramrod_header = type { i32, i8, i8, i16 }
%struct.regpair = type { i32, i32 }
%union.ramrod_data = type { %struct.iwarp_init_func_ramrod_data }
%struct.iwarp_init_func_ramrod_data = type { %struct.rdma_init_func_ramrod_data, %struct.tcp_init_params, %struct.iwarp_init_func_params }
%struct.rdma_init_func_ramrod_data = type { %struct.rdma_init_func_hdr, %struct.rdma_cnq_params, [128 x %struct.rdma_cnq_params] }
%struct.rdma_init_func_hdr = type { i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8 }
%struct.rdma_cnq_params = type { i16, i8, i8, i32, %struct.regpair, i16, [6 x i8] }
%struct.tcp_init_params = type { i32, i16, i8, [9 x i8] }
%struct.iwarp_init_func_params = type { i8, [7 x i8] }
%struct.qed_spq_comp_cb = type { ptr, ptr }
%struct.qed_spq_comp_done = type { i32, i8 }
%struct.vport_start_ramrod_data = type { i8, i8, i16, i8, i8, %struct.eth_vport_rx_mode, %struct.eth_vport_tx_mode, %struct.eth_vport_tpa_param, i16, i8, i8, i8, i8, i8, i8, %struct.eth_tx_err_vals, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %struct.eth_in_to_in_pri_map_cfg }
%struct.eth_vport_rx_mode = type { i16 }
%struct.eth_vport_tx_mode = type { i16 }
%struct.eth_vport_tpa_param = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8 }
%struct.eth_tx_err_vals = type { i16 }
%struct.eth_in_to_in_pri_map_cfg = type { i8, [7 x i8], [8 x i8], [8 x i8] }
%struct.qed_sp_vport_update_params = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [8 x i32], ptr, %struct.qed_filter_accept_flags, ptr, i8, i8, i8 }
%struct.qed_filter_accept_flags = type { i8, i8, i8, i8 }
%struct.vport_update_ramrod_data_cmn = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, [1 x i8] }
%struct.qed_rss_params = type { i8, i8, i8, i8, i8, i8, i8, i8, [128 x ptr], [10 x i32] }
%struct.vport_update_ramrod_data = type { %struct.vport_update_ramrod_data_cmn, %struct.eth_vport_rx_mode, %struct.eth_vport_tx_mode, [3 x i32], %struct.eth_vport_tpa_param, %struct.vport_update_ramrod_mcast, %struct.eth_vport_rss_config }
%struct.vport_update_ramrod_mcast = type { [8 x i32] }
%struct.eth_vport_rss_config = type { i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [128 x i16], [4 x i32], [10 x i32], i32 }
%struct.qed_sge_tpa_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16 }
%struct.rx_queue_start_ramrod_data = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, [5 x i8], i16, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.qed_filter_ucast = type { i32, i32, i8, i8, i8, i8, [6 x i8], i8, i16, i32 }
%struct.eth_filter_cmd = type { i8, i8, i8, i8, i32, i16, i16, i16, i16 }
%struct.eth_mstorm_per_queue_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.eth_ustorm_per_queue_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.eth_pstorm_per_queue_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.qed_vf_iov = type { ptr, i32, ptr, i32, %struct.mutex, ptr, %struct.qed_bulletin, %struct.qed_bulletin_content, %struct.pfvf_acquire_resp_tlv, i8, [16 x ptr], i8 }
%struct.qed_bulletin = type { i32, ptr, i32 }
%struct.qed_bulletin_content = type { i32, i32, i64, [6 x i8], i8, i8, i8, i8, i8, i8, [4 x i8], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [2 x i8], i32, i32, i32, i16, i16 }
%struct.pfvf_acquire_resp_tlv = type { %struct.pfvf_tlv, %struct.pf_vf_pfdev_info, %struct.pf_vf_resc, i32, i32 }
%struct.pfvf_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.channel_tlv = type { i16, i16 }
%struct.pf_vf_pfdev_info = type { i32, i32, i16, i16, i16, i16, i64, i16, i8, i8, i16, i8, i8, %struct.pfvf_stats_info, [6 x i8], i8, i8 }
%struct.pfvf_stats_info = type { %struct.pfvf_storm_stats, %struct.pfvf_storm_stats, %struct.pfvf_storm_stats, %struct.pfvf_storm_stats }
%struct.pfvf_storm_stats = type { i32, i32 }
%struct.pf_vf_resc = type { [16 x %struct.hw_sb_info], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hw_sb_info = type { i16, i8, [5 x i8] }
%struct.qed_eth_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_arfs_config_params = type { i8, i8, i8, i8, i32 }
%struct.qed_ntuple_filter_params = type { i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.rx_update_gft_filter_ramrod_data = type { %struct.regpair, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.cau_sb_entry = type { i32, i32 }
%struct.tstorm_per_port_stat = type { %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair, %struct.regpair }
%struct.port_stats = type { %struct.brb_stats, %struct.eth_stats }
%struct.brb_stats = type { [8 x i64], [8 x i64] }
%struct.eth_stats = type { i64, i64, i64, i64, i64, i64, %union.anon.132, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.135, i64, i64, %union.anon.138, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i64, i64, i64, i64, i64 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i64, i64, i64, i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i64, i64 }
%struct.qed_mcp_info = type { %struct.list_head, %struct.spinlock, i8, %struct.spinlock, i32, i32, i32, i32, i16, i16, %struct.qed_mcp_link_params, %struct.qed_mcp_link_state, %struct.qed_mcp_link_capabilities, %struct.qed_mcp_function_info, ptr, ptr, i16, i32, i32, %struct.atomic_t }
%struct.qed_mcp_link_params = type { %struct.qed_mcp_link_speed_params, %struct.qed_mcp_link_pause_params, i32, %struct.qed_link_eee_params, i32, %struct.qed_mcp_link_speed_params, i32 }
%struct.qed_mcp_link_pause_params = type { i8, i8, i8 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_mcp_link_speed_params = type { i8, i32, i32 }
%struct.qed_mcp_link_state = type { i8, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.qed_mcp_link_capabilities = type { i32, i8, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.qed_mcp_function_info = type { i8, i32, i8, i8, [6 x i8], i64, i64, i16, i16 }
%struct.qed_eth_stats = type { %struct.qed_eth_stats_common, %union.anon.7 }
%union.anon.7 = type { %struct.qed_eth_stats_bb }
%struct.qed_eth_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_dev_eth_info = type { %struct.qed_dev_info, i8, i8, [6 x i8], i16, i16, i8, i8 }
%struct.qed_hw_sriov_info = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i32 }
%struct.qed_start_vport_params = type { i8, i8, i8, i8, i8, i16, i8 }
%struct.qed_update_vport_params = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.qed_update_vport_rss_params }
%struct.qed_update_vport_rss_params = type { [128 x ptr], [10 x i32], i8 }
%struct.qed_rxq_start_ret_params = type { ptr, ptr }
%struct.qed_txq_start_ret_params = type { ptr, ptr }
%struct.qed_filter_ucast_params = type { i32, i8, i16, i8, [6 x i8] }
%struct.qed_filter_mcast = type { i32, i8, i8, i8, [64 x [6 x i8]] }
%struct.qed_filter_mcast_params = type { i32, i8, [64 x [6 x i8]] }
%struct.qed_tunn_params = type { i16, i8, i16, i8 }

@qed_l2_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&p_hwfn->p_l2_info->lock\00", [39 x i8] zeroinitializer }, align 32
@qed_eth_queue_to_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Failed to acquire cid\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_eth_queue_to_cid\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/qlogic/qed/qed_l2.c\00", [55 x i8] zeroinitializer }, align 32
@qed_eth_queue_to_cid._entry_ptr = internal global ptr @qed_eth_queue_to_cid._entry, section ".printk_index", align 4
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_eth_rxq_start_ramrod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015[%s:%d(%s)]opaque_fid=0x%x, cid=0x%x, rx_qzone=0x%x, vport_id=0x%x, sb_id=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_eth_rxq_start_ramrod\00", [39 x i8] zeroinitializer }, align 32
@qed_eth_rxq_start_ramrod._entry_ptr = internal global ptr @qed_eth_rxq_start_ramrod._entry, section ".printk_index", align 4
@qed_eth_rxq_start_ramrod._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Queue%s is meant for VF rxq[%02x]\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_eth_rxq_start_ramrod._entry_ptr.9 = internal global ptr @qed_eth_rxq_start_ramrod._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" [legacy]\00", [22 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_ucast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]Uni. filter command failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_sp_eth_filter_ucast\00", [40 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_ucast._entry_ptr = internal global ptr @qed_sp_eth_filter_ucast._entry, section ".printk_index", align 4
@qed_sp_eth_filter_ucast._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[%s:%d(%s)]Unicast filter ADD command failed %d\0A\00", [45 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_ucast._entry_ptr.15 = internal global ptr @qed_sp_eth_filter_ucast._entry.13, section ".printk_index", align 4
@qed_sp_eth_filter_ucast._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\015[%s:%d(%s)]Unicast filter configured, opcode = %s, type = %s, cmd_cnt = %d, is_rx_filter = %d, is_tx_filter = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_ucast._entry_ptr.18 = internal global ptr @qed_sp_eth_filter_ucast._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADD\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REMOVE\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOVE\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REPLACE\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VLAN\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAC & VLAN\00", [21 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_ucast._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.3, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\015[%s:%d(%s)]vport_to_add_to = %d, vport_to_remove_from = %d, mac = %2x:%2x:%2x:%2x:%2x:%2x, vlan = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_ucast._entry_ptr.28 = internal global ptr @qed_sp_eth_filter_ucast._entry.26, section ".printk_index", align 4
@qed_reset_vport_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]Failed to acquire ptt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_reset_vport_stats\00", [42 x i8] zeroinitializer }, align 32
@qed_reset_vport_stats._entry_ptr = internal global ptr @qed_reset_vport_stats._entry, section ".printk_index", align 4
@qed_reset_vport_stats._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Reset stats not allocated\0A\00", [56 x i8] zeroinitializer }, align 32
@qed_reset_vport_stats._entry_ptr.33 = internal global ptr @qed_reset_vport_stats._entry.31, section ".printk_index", align 4
@qed_arfs_mode_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\015[%s:%d(%s)]Configured Filtering: tcp = %s, udp = %s, ipv4 = %s, ipv6 =%s mode=%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_arfs_mode_configure\00", [40 x i8] zeroinitializer }, align 32
@qed_arfs_mode_configure._entry_ptr = internal global ptr @qed_arfs_mode_configure._entry, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@qed_arfs_mode_configure._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.3, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Disabled Filtering\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_arfs_mode_configure._entry_ptr.40 = internal global ptr @qed_arfs_mode_configure._entry.38, section ".printk_index", align 4
@qed_configure_rfs_ntuple_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]V[%0x], Q[%04x] - %s filter from 0x%llx [length %04xb]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qed_configure_rfs_ntuple_filter\00", [32 x i8] zeroinitializer }, align 32
@qed_configure_rfs_ntuple_filter._entry_ptr = internal global ptr @qed_configure_rfs_ntuple_filter._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adding\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Removing\00", [23 x i8] zeroinitializer }, align 32
@qed_get_rxq_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 2095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]dmae_grc2host failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_get_rxq_coalesce\00", [43 x i8] zeroinitializer }, align 32
@qed_get_rxq_coalesce._entry_ptr = internal global ptr @qed_get_rxq_coalesce._entry, section ".printk_index", align 4
@qed_get_txq_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.47, ptr @.str.3, i32 2129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_get_txq_coalesce\00", [43 x i8] zeroinitializer }, align 32
@qed_get_txq_coalesce._entry_ptr = internal global ptr @qed_get_txq_coalesce._entry, section ".printk_index", align 4
@qed_get_queue_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 2159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]Unable to read queue coalescing\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_get_queue_coalesce\00", [41 x i8] zeroinitializer }, align 32
@qed_get_queue_coalesce._entry_ptr = internal global ptr @qed_get_queue_coalesce._entry, section ".printk_index", align 4
@qed_eth_ops_pass = internal constant { %struct.qed_eth_ops, [60 x i8] } { %struct.qed_eth_ops { ptr @qed_common_ops_pass, ptr @qed_iov_ops_pass, ptr @qed_dcbnl_ops_pass, ptr @qed_ptp_ops_pass, ptr @qed_fill_eth_dev_info, ptr @qed_register_eth_ops, ptr @qed_check_mac, ptr @qed_start_vport, ptr @qed_stop_vport, ptr @qed_update_vport, ptr @qed_start_rxq, ptr @qed_stop_rxq, ptr @qed_start_txq, ptr @qed_stop_txq, ptr @qed_configure_filter_rx_mode, ptr @qed_configure_filter_ucast, ptr @qed_configure_filter_mcast, ptr @qed_fastpath_stop, ptr @qed_fp_cqe_completion, ptr @qed_get_vport_stats, ptr @qed_tunn_configure, ptr @qed_ntuple_arfs_filter_config, ptr @qed_configure_arfs_searcher, ptr @qed_get_coalesce, ptr @qed_req_bulletin_update_mac }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_qed_get_eth_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qed_get_eth_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qed_get_eth_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qed_get_eth_ops to i32), ptr @__kstrtab_qed_get_eth_ops, ptr @__kstrtabns_qed_get_eth_ops }, section "___ksymtab+qed_get_eth_ops", align 4
@__kstrtab_qed_put_eth_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qed_put_eth_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qed_put_eth_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qed_put_eth_ops to i32), ptr @__kstrtab_qed_put_eth_ops, ptr @__kstrtabns_qed_put_eth_ops }, section "___ksymtab+qed_put_eth_ops", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_qed_eth_queue_to_cid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\015[%s:%d(%s)]opaque_fid: %04x CID %08x vport %02x [%02x] qzone %04x.%02x [%04x] stats %02x [%02x] SB %04x PI %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_qed_eth_queue_to_cid\00", [42 x i8] zeroinitializer }, align 32
@_qed_eth_queue_to_cid._entry_ptr = internal global ptr @_qed_eth_queue_to_cid._entry, section ".printk_index", align 4
@qed_eth_queue_qid_usage_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015[%s:%d(%s)]Requested to increase usage for qzone %04x out of %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qed_eth_queue_qid_usage_add\00", [36 x i8] zeroinitializer }, align 32
@qed_eth_queue_qid_usage_add._entry_ptr = internal global ptr @qed_eth_queue_qid_usage_add._entry, section ".printk_index", align 4
@qed_sp_vport_update_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\015[%s:%d(%s)]update rss flag %d, rss_mode = %d, update_caps = %d, capabilities = %d, update_ind = %d, update_rss_key = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_sp_vport_update_rss\00", [40 x i8] zeroinitializer }, align 32
@qed_sp_vport_update_rss._entry_ptr = internal global ptr @qed_sp_vport_update_rss._entry, section ".printk_index", align 4
@qed_sp_vport_update_rss._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]Configured RSS indirection table [%d entries]:\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_sp_vport_update_rss._entry_ptr.58 = internal global ptr @qed_sp_vport_update_rss._entry.56, section ".printk_index", align 4
@qed_sp_vport_update_rss._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\015[%s:%d(%s)]%04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_sp_vport_update_rss._entry_ptr.61 = internal global ptr @qed_sp_vport_update_rss._entry.59, section ".printk_index", align 4
@qed_sp_update_accept_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]p_ramrod->rx_mode.state = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qed_sp_update_accept_mode\00", [38 x i8] zeroinitializer }, align 32
@qed_sp_update_accept_mode._entry_ptr = internal global ptr @qed_sp_update_accept_mode._entry, section ".printk_index", align 4
@qed_sp_update_accept_mode._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]p_ramrod->tx_mode.state = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_sp_update_accept_mode._entry_ptr.66 = internal global ptr @qed_sp_update_accept_mode._entry.64, section ".printk_index", align 4
@qed_filter_ucast_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]%d is not supported yet\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_filter_ucast_common\00", [40 x i8] zeroinitializer }, align 32
@qed_filter_ucast_common._entry_ptr = internal global ptr @qed_filter_ucast_common._entry, section ".printk_index", align 4
@_qed_get_vport_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]No vport available!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_qed_get_vport_stats\00", [43 x i8] zeroinitializer }, align 32
@_qed_get_vport_stats._entry_ptr = internal global ptr @_qed_get_vport_stats._entry, section ".printk_index", align 4
@_qed_get_vport_stats._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.70, ptr @.str.3, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_qed_get_vport_stats._entry_ptr.72 = internal global ptr @_qed_get_vport_stats._entry.71, section ".printk_index", align 4
@qed_common_ops_pass = external dso_local constant %struct.qed_common_ops, align 4
@qed_iov_ops_pass = external dso_local constant %struct.qed_iov_hv_ops, align 4
@qed_dcbnl_ops_pass = external dso_local constant %struct.qed_eth_dcbnl_ops, align 4
@qed_ptp_ops_pass = external dso_local constant %struct.qed_eth_ptp_ops, align 4
@qed_start_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]Failed to start VPORT\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_start_vport\00", [16 x i8] zeroinitializer }, align 32
@qed_start_vport._entry_ptr = internal global ptr @qed_start_vport._entry, section ".printk_index", align 4
@qed_start_vport._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 2331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[%s:%d(%s)]Failed to start VPORT fastpath\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_start_vport._entry_ptr.77 = internal global ptr @qed_start_vport._entry.75, section ".printk_index", align 4
@qed_start_vport._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.3, i32 2337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Started V-PORT %d with MTU %d\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_start_vport._entry_ptr.80 = internal global ptr @qed_start_vport._entry.78, section ".printk_index", align 4
@qed_stop_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 2357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013[%s:%d(%s)]Failed to stop VPORT\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qed_stop_vport\00", [17 x i8] zeroinitializer }, align 32
@qed_stop_vport._entry_ptr = internal global ptr @qed_stop_vport._entry, section ".printk_index", align 4
@qed_update_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 2471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed to update VPORT\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_update_vport\00", [47 x i8] zeroinitializer }, align 32
@qed_update_vport._entry_ptr = internal global ptr @qed_update_vport._entry, section ".printk_index", align 4
@qed_update_vport._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 2478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]Updated V-PORT %d: active_flag %d [update %d]\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_update_vport._entry_ptr.87 = internal global ptr @qed_update_vport._entry.85, section ".printk_index", align 4
@qed_update_vport_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 2418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]CMT - 1 queue per-hwfn; Disabling RSS\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_update_vport_rss\00", [43 x i8] zeroinitializer }, align 32
@qed_update_vport_rss._entry_ptr = internal global ptr @qed_update_vport_rss._entry, section ".printk_index", align 4
@qed_start_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 2511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed to start RXQ#%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_start_rxq\00", [18 x i8] zeroinitializer }, align 32
@qed_start_rxq._entry_ptr = internal global ptr @qed_start_rxq._entry, section ".printk_index", align 4
@qed_start_rxq._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 2518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]Started RX-Q %d [rss_num %d] on V-PORT %d and SB igu %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_start_rxq._entry_ptr.94 = internal global ptr @qed_start_rxq._entry.92, section ".printk_index", align 4
@qed_stop_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 2533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Failed to stop RXQ#%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_stop_rxq\00", [19 x i8] zeroinitializer }, align 32
@qed_stop_rxq._entry_ptr = internal global ptr @qed_stop_rxq._entry, section ".printk_index", align 4
@qed_start_txq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 2561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed to start TXQ#%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_start_txq\00", [18 x i8] zeroinitializer }, align 32
@qed_start_txq._entry_ptr = internal global ptr @qed_start_txq._entry, section ".printk_index", align 4
@qed_start_txq._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.3, i32 2568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]Started TX-Q %d [rss_num %d] on V-PORT %d and SB igu %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_start_txq._entry_ptr.101 = internal global ptr @qed_start_txq._entry.99, section ".printk_index", align 4
@qed_stop_txq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 2597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Failed to stop TXQ#%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qed_stop_txq\00", [19 x i8] zeroinitializer }, align 32
@qed_stop_txq._entry_ptr = internal global ptr @qed_stop_txq._entry, section ".printk_index", align 4
@qed_filter_accept_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Update rx_mode failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_filter_accept_cmd\00", [42 x i8] zeroinitializer }, align 32
@qed_filter_accept_cmd._entry_ptr = internal global ptr @qed_filter_accept_cmd._entry, section ".printk_index", align 4
@qed_filter_accept_cmd._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]Accept filter configured, flags = [Rx]%x [Tx]%x\0A\00", [34 x i8] zeroinitializer }, align 32
@qed_filter_accept_cmd._entry_ptr.108 = internal global ptr @qed_filter_accept_cmd._entry.106, section ".printk_index", align 4
@qed_filter_accept_cmd._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.3, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]accept_any_vlan=%d configured\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_filter_accept_cmd._entry_ptr.111 = internal global ptr @qed_filter_accept_cmd._entry.109, section ".printk_index", align 4
@qed_configure_filter_ucast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 2702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\015[%s:%d(%s)]Tried configuring a unicast filter, but both MAC and VLAN are not set\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_configure_filter_ucast\00", [37 x i8] zeroinitializer }, align 32
@qed_configure_filter_ucast._entry_ptr = internal global ptr @qed_configure_filter_ucast._entry, section ".printk_index", align 4
@qed_configure_filter_ucast._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.3, i32 2719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Unknown unicast filter type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_configure_filter_ucast._entry_ptr.116 = internal global ptr @qed_configure_filter_ucast._entry.114, section ".printk_index", align 4
@qed_configure_filter_mcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 2756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Unknown multicast filter type %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qed_configure_filter_mcast\00", [37 x i8] zeroinitializer }, align 32
@qed_configure_filter_mcast._entry_ptr = internal global ptr @qed_configure_filter_mcast._entry, section ".printk_index", align 4
@qed_sp_eth_filter_mcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]Multi-cast command failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_sp_eth_filter_mcast\00", [40 x i8] zeroinitializer }, align 32
@qed_sp_eth_filter_mcast._entry_ptr = internal global ptr @qed_sp_eth_filter_mcast._entry, section ".printk_index", align 4
@qed_fastpath_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 2580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Failed to stop Fastpath\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_fastpath_stop\00", [46 x i8] zeroinitializer }, align 32
@qed_fastpath_stop._entry_ptr = internal global ptr @qed_fastpath_stop._entry, section ".printk_index", align 4
@qed_ntuple_arfs_filter_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 2810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]vfid 0x%02x is out of bounds\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qed_ntuple_arfs_filter_config\00", [34 x i8] zeroinitializer }, align 32
@qed_ntuple_arfs_filter_config._entry_ptr = internal global ptr @qed_ntuple_arfs_filter_config._entry, section ".printk_index", align 4
@qed_ntuple_arfs_filter_config._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.3, i32 2821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015[%s:%d(%s)]Failed to issue a-RFS filter configuration\0A\00", [39 x i8] zeroinitializer }, align 32
@qed_ntuple_arfs_filter_config._entry_ptr.127 = internal global ptr @qed_ntuple_arfs_filter_config._entry.125, section ".printk_index", align 4
@qed_ntuple_arfs_filter_config._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.3, i32 2824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]Successfully issued a-RFS filter configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_ntuple_arfs_filter_config._entry_ptr.130 = internal global ptr @qed_ntuple_arfs_filter_config._entry.128, section ".printk_index", align 4
@qed_get_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.131, ptr @.str.3, i32 2839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qed_get_coalesce\00", [47 x i8] zeroinitializer }, align 32
@qed_get_coalesce._entry_ptr = internal global ptr @qed_get_coalesce._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 97, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 318, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 850, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 888, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1375, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1383, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1387, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1400, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1936, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1961, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1994, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2003, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2069, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2095, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2129, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2159, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"qed_eth_ops_pass\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2869, i32 33 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 266, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 138, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 484, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 504, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 508, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 573, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 600, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1343, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1882, i32 5 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1888, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2325, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2331, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2335, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2357, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2471, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2475, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2417, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2511, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2515, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2533, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2561, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2565, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2597, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 822, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 826, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 831, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2701, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2718, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2755, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1495, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2580, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2809, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2820, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2823, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.571 = private constant [44 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_l2.c\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2838, i32 3 }
@llvm.compiler.used = appending global [196 x ptr] [ptr @__ksymtab_qed_get_eth_ops, ptr @__ksymtab_qed_put_eth_ops, ptr @_qed_eth_queue_to_cid._entry, ptr @_qed_eth_queue_to_cid._entry_ptr, ptr @_qed_get_vport_stats._entry, ptr @_qed_get_vport_stats._entry.71, ptr @_qed_get_vport_stats._entry_ptr, ptr @_qed_get_vport_stats._entry_ptr.72, ptr @qed_arfs_mode_configure._entry, ptr @qed_arfs_mode_configure._entry.38, ptr @qed_arfs_mode_configure._entry_ptr, ptr @qed_arfs_mode_configure._entry_ptr.40, ptr @qed_configure_filter_mcast._entry, ptr @qed_configure_filter_mcast._entry_ptr, ptr @qed_configure_filter_ucast._entry, ptr @qed_configure_filter_ucast._entry.114, ptr @qed_configure_filter_ucast._entry_ptr, ptr @qed_configure_filter_ucast._entry_ptr.116, ptr @qed_configure_rfs_ntuple_filter._entry, ptr @qed_configure_rfs_ntuple_filter._entry_ptr, ptr @qed_eth_queue_qid_usage_add._entry, ptr @qed_eth_queue_qid_usage_add._entry_ptr, ptr @qed_eth_queue_to_cid._entry, ptr @qed_eth_queue_to_cid._entry_ptr, ptr @qed_eth_rxq_start_ramrod._entry, ptr @qed_eth_rxq_start_ramrod._entry.7, ptr @qed_eth_rxq_start_ramrod._entry_ptr, ptr @qed_eth_rxq_start_ramrod._entry_ptr.9, ptr @qed_fastpath_stop._entry, ptr @qed_fastpath_stop._entry_ptr, ptr @qed_filter_accept_cmd._entry, ptr @qed_filter_accept_cmd._entry.106, ptr @qed_filter_accept_cmd._entry.109, ptr @qed_filter_accept_cmd._entry_ptr, ptr @qed_filter_accept_cmd._entry_ptr.108, ptr @qed_filter_accept_cmd._entry_ptr.111, ptr @qed_filter_ucast_common._entry, ptr @qed_filter_ucast_common._entry_ptr, ptr @qed_get_coalesce._entry, ptr @qed_get_coalesce._entry_ptr, ptr @qed_get_queue_coalesce._entry, ptr @qed_get_queue_coalesce._entry_ptr, ptr @qed_get_rxq_coalesce._entry, ptr @qed_get_rxq_coalesce._entry_ptr, ptr @qed_get_txq_coalesce._entry, ptr @qed_get_txq_coalesce._entry_ptr, ptr @qed_ntuple_arfs_filter_config._entry, ptr @qed_ntuple_arfs_filter_config._entry.125, ptr @qed_ntuple_arfs_filter_config._entry.128, ptr @qed_ntuple_arfs_filter_config._entry_ptr, ptr @qed_ntuple_arfs_filter_config._entry_ptr.127, ptr @qed_ntuple_arfs_filter_config._entry_ptr.130, ptr @qed_reset_vport_stats._entry, ptr @qed_reset_vport_stats._entry.31, ptr @qed_reset_vport_stats._entry_ptr, ptr @qed_reset_vport_stats._entry_ptr.33, ptr @qed_sp_eth_filter_mcast._entry, ptr @qed_sp_eth_filter_mcast._entry_ptr, ptr @qed_sp_eth_filter_ucast._entry, ptr @qed_sp_eth_filter_ucast._entry.13, ptr @qed_sp_eth_filter_ucast._entry.16, ptr @qed_sp_eth_filter_ucast._entry.26, ptr @qed_sp_eth_filter_ucast._entry_ptr, ptr @qed_sp_eth_filter_ucast._entry_ptr.15, ptr @qed_sp_eth_filter_ucast._entry_ptr.18, ptr @qed_sp_eth_filter_ucast._entry_ptr.28, ptr @qed_sp_update_accept_mode._entry, ptr @qed_sp_update_accept_mode._entry.64, ptr @qed_sp_update_accept_mode._entry_ptr, ptr @qed_sp_update_accept_mode._entry_ptr.66, ptr @qed_sp_vport_update_rss._entry, ptr @qed_sp_vport_update_rss._entry.56, ptr @qed_sp_vport_update_rss._entry.59, ptr @qed_sp_vport_update_rss._entry_ptr, ptr @qed_sp_vport_update_rss._entry_ptr.58, ptr @qed_sp_vport_update_rss._entry_ptr.61, ptr @qed_start_rxq._entry, ptr @qed_start_rxq._entry.92, ptr @qed_start_rxq._entry_ptr, ptr @qed_start_rxq._entry_ptr.94, ptr @qed_start_txq._entry, ptr @qed_start_txq._entry.99, ptr @qed_start_txq._entry_ptr, ptr @qed_start_txq._entry_ptr.101, ptr @qed_start_vport._entry, ptr @qed_start_vport._entry.75, ptr @qed_start_vport._entry.78, ptr @qed_start_vport._entry_ptr, ptr @qed_start_vport._entry_ptr.77, ptr @qed_start_vport._entry_ptr.80, ptr @qed_stop_rxq._entry, ptr @qed_stop_rxq._entry_ptr, ptr @qed_stop_txq._entry, ptr @qed_stop_txq._entry_ptr, ptr @qed_stop_vport._entry, ptr @qed_stop_vport._entry_ptr, ptr @qed_update_vport._entry, ptr @qed_update_vport._entry.85, ptr @qed_update_vport._entry_ptr, ptr @qed_update_vport._entry_ptr.87, ptr @qed_update_vport_rss._entry, ptr @qed_update_vport_rss._entry_ptr, ptr @qed_l2_setup.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @qed_eth_ops_pass, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.131], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_l2_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eth_queue_to_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eth_rxq_start_ramrod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eth_rxq_start_ramrod._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_eth_filter_ucast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_eth_filter_ucast._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_eth_filter_ucast._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_eth_filter_ucast._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_reset_vport_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_reset_vport_stats._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_arfs_mode_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_arfs_mode_configure._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_configure_rfs_ntuple_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_rxq_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_txq_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_queue_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eth_ops_pass to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_eth_queue_to_cid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_eth_queue_qid_usage_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_vport_update_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_vport_update_rss._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_vport_update_rss._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_update_accept_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_update_accept_mode._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_filter_ucast_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_get_vport_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_qed_get_vport_stats._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_vport._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_vport._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_stop_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_update_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_update_vport._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_update_vport_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_rxq._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_stop_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_txq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_start_txq._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_stop_txq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_filter_accept_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_filter_accept_cmd._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_filter_accept_cmd._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_configure_filter_ucast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_configure_filter_ucast._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_configure_filter_mcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_sp_eth_filter_mcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_fastpath_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ntuple_arfs_filter_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ntuple_arfs_filter_config._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ntuple_arfs_filter_config._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_l2_alloc(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  %rx = alloca i8, align 1
  %tx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge75
    i32 5, label %entry.if.end_crit_edge76
    i32 6, label %entry.if.end_crit_edge77
  ]

entry.if.end_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge75, %entry.if.end_crit_edge76, %entry.if.end_crit_edge77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 100) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %p_l2_info14 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 61
  %4 = ptrtoint ptr %p_l2_info14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %p_l2_info14, align 4
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 39
  %7 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx) #10
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx) #10
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx, align 1
  call void @qed_vf_get_num_rxqs(ptr noundef %p_hwfn, ptr noundef nonnull %rx) #10
  call void @qed_vf_get_num_txqs(ptr noundef %p_hwfn, ptr noundef nonnull %tx) #10
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx, align 1
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx, align 1
  %18 = call i8 @llvm.umax.i8(i8 %15, i8 %17)
  %cond = zext i8 %18 to i32
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %call7.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i.i, align 8
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #10
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %if.end24.cleanup_crit_edge, label %if.end7.i.i, !prof !260

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end24
  %24 = extractvalue { i32, i1 } %22, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #14
  %tobool27.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool27.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end29

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end7.i.i
  %pp_qid_usage = getelementptr inbounds %struct.qed_l2_info, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %pp_qid_usage to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %pp_qid_usage, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3172.not = icmp eq i32 %27, 0
  br i1 %cmp3172.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.073, 1
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i.i, align 8
  %cmp31 = icmp ult i32 %inc, %29
  br i1 %cmp31, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.073 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i65 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 4) #13
  %arrayidx34 = getelementptr ptr, ptr %call8.i.i, i32 %i.073
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i65, ptr %arrayidx34, align 4
  %tobool36.not = icmp eq ptr %call7.i.i65, null
  br i1 %tobool36.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end24.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_num_rxqs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_num_txqs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_l2_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %1, label %entry.do.end_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 4, label %entry.do.body_crit_edge16
    i32 5, label %entry.do.body_crit_edge17
    i32 6, label %entry.do.body_crit_edge18
  ]

entry.do.body_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge16, %entry.do.body_crit_edge17, %entry.do.body_crit_edge18
  %p_l2_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 61
  %3 = ptrtoint ptr %p_l2_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_l2_info, align 4
  %lock = getelementptr inbounds %struct.qed_l2_info, ptr %4, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @qed_l2_setup.__key) #10
  br label %do.end

do.end:                                           ; preds = %do.body, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_l2_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge51
    i32 5, label %entry.if.end_crit_edge52
    i32 6, label %entry.if.end_crit_edge53
  ]

entry.if.end_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge51, %entry.if.end_crit_edge52, %entry.if.end_crit_edge53
  %p_l2_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 61
  %3 = ptrtoint ptr %p_l2_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_l2_info, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %pp_qid_usage = getelementptr inbounds %struct.qed_l2_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pp_qid_usage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pp_qid_usage, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.end13.out_l2_info_crit_edge, label %for.cond.preheader

if.end13.out_l2_info_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_l2_info

for.cond.preheader:                               ; preds = %if.end13
  %7 = ptrtoint ptr %p_l2_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_l2_info, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1948.not = icmp eq i32 %10, 0
  br i1 %cmp1948.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi ptr [ %17, %if.end24.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %i.049 = phi i32 [ %inc, %if.end24.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %pp_qid_usage21 = getelementptr inbounds %struct.qed_l2_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pp_qid_usage21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_qid_usage21, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.049
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %for.body.for.end_crit_edge, label %if.end24

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end24:                                         ; preds = %for.body
  tail call void @kfree(ptr noundef nonnull %15) #10
  %inc = add nuw i32 %i.049, 1
  %16 = ptrtoint ptr %p_l2_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_l2_info, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %cmp19 = icmp ult i32 %inc, %19
  br i1 %cmp19, label %if.end24.for.body_crit_edge, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %8, %for.cond.preheader.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ], [ %17, %if.end24.for.end_crit_edge ]
  %pp_qid_usage29 = getelementptr inbounds %struct.qed_l2_info, ptr %.lcssa, i32 0, i32 1
  %20 = ptrtoint ptr %pp_qid_usage29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pp_qid_usage29, align 4
  tail call void @kfree(ptr noundef %21) #10
  br label %out_l2_info

out_l2_info:                                      ; preds = %for.end, %if.end13.out_l2_info_crit_edge
  %22 = ptrtoint ptr %p_l2_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_l2_info, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %p_l2_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %p_l2_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_l2_info, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_eth_queue_cid_release(ptr noundef %p_hwfn, ptr noundef %p_cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vf_legacy = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 10
  %4 = ptrtoint ptr %vf_legacy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vf_legacy, align 2
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 4
  %7 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cid, align 4
  %vfid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 7
  %9 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vfid, align 1
  tail call void @_qed_cxt_release_cid(ptr noundef %p_hwfn, i32 noundef %8, i8 noundef zeroext %10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vfid4 = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 7
  %11 = ptrtoint ptr %vfid4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vfid4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp = icmp eq i8 %12, -1
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %p_l2_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 61
  %13 = ptrtoint ptr %p_l2_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_l2_info.i, align 4
  %lock.i = getelementptr inbounds %struct.qed_l2_info, ptr %14, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %qid_usage_idx.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 9
  %15 = ptrtoint ptr %qid_usage_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %qid_usage_idx.i, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %p_l2_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_l2_info.i, align 4
  %pp_qid_usage.i = getelementptr inbounds %struct.qed_l2_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pp_qid_usage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pp_qid_usage.i, align 4
  %queue_id.i = getelementptr inbounds %struct.qed_queue_cid_params, ptr %p_cid, i32 0, i32 1
  %21 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %queue_id.i, align 2
  %idxprom.i = zext i16 %22 to i32
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %24) #10
  %25 = ptrtoint ptr %p_l2_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_l2_info.i, align 4
  %lock3.i = getelementptr inbounds %struct.qed_l2_info, ptr %26, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock3.i) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call void @vfree(ptr noundef %p_cid) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_qed_cxt_release_cid(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_eth_queue_to_cid(ptr noundef %p_hwfn, i16 noundef zeroext %opaque_fid, ptr nocapture noundef readonly %p_params, i1 noundef zeroext %b_is_rx, ptr noundef readonly %p_vf_params) local_unnamed_addr #0 align 64 {
entry:
  %cid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #10
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cid, align 4
  %tobool.not = icmp eq ptr %p_vf_params, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %p_vf_params to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p_vf_params, align 1
  %vf_legacy = getelementptr inbounds %struct.qed_queue_cid_vf_params, ptr %p_vf_params, i32 0, i32 2
  %3 = ptrtoint ptr %vf_legacy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vf_legacy, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.end5.thread

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %vf_qid = getelementptr inbounds %struct.qed_queue_cid_vf_params, ptr %p_vf_params, i32 0, i32 1
  %6 = ptrtoint ptr %vf_qid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vf_qid, align 1
  %conv4 = zext i8 %7 to i32
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv4, ptr %cid, align 4
  br label %if.end25

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %vfid.0 = phi i8 [ %2, %if.then.if.end5_crit_edge ], [ -1, %entry.if.end5_crit_edge ]
  %9 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 39
  %11 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not.not = icmp eq i8 %12, 0
  br i1 %tobool6.not.not, label %if.then8, label %if.end5.if.end25_crit_edge

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then8:                                         ; preds = %if.end5
  %call = call i32 @_qed_cxt_acquire_cid(ptr noundef %p_hwfn, i32 noundef 4, ptr noundef nonnull %cid, i8 noundef zeroext %vfid.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then8.if.end25_crit_edge, label %do.body

if.then8.if.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body:                                          ; preds = %if.then8
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp = icmp ult i8 %14, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !260

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool17.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool17.not, ptr @.str.4, ptr %name
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 318, ptr noundef nonnull %spec.select) #15
  br label %cleanup

if.end25:                                         ; preds = %if.then8.if.end25_crit_edge, %if.end5.if.end25_crit_edge, %if.end5.thread
  %b_legacy_vf.0.off062 = phi i1 [ true, %if.end5.thread ], [ false, %if.end5.if.end25_crit_edge ], [ false, %if.then8.if.end25_crit_edge ]
  %vfid.061 = phi i8 [ %2, %if.end5.thread ], [ %vfid.0, %if.end5.if.end25_crit_edge ], [ %vfid.0, %if.then8.if.end25_crit_edge ]
  %15 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cid, align 4
  %call.i = call noalias ptr @vzalloc(i32 noundef 32) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end25.land.lhs.true29_crit_edge, label %if.end.i

if.end25.land.lhs.true29_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true29

if.end.i:                                         ; preds = %if.end25
  %frombool.i = zext i1 %b_is_rx to i8
  %opaque_fid1.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %opaque_fid1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %opaque_fid, ptr %opaque_fid1.i, align 4
  %cid2.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %cid2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %cid2.i, align 4
  %p_owner.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 11
  %19 = ptrtoint ptr %p_owner.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %p_hwfn, ptr %p_owner.i, align 4
  %20 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p_params, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %call.i, align 4
  %queue_id.i = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 1
  %23 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %queue_id.i, align 2
  %queue_id5.i = getelementptr inbounds %struct.qed_queue_cid_params, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %queue_id5.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %queue_id5.i, align 2
  %stats_id.i = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 2
  %26 = ptrtoint ptr %stats_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stats_id.i, align 4
  %stats_id7.i = getelementptr inbounds %struct.qed_queue_cid_params, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %stats_id7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %stats_id7.i, align 4
  %p_sb.i = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 3
  %29 = ptrtoint ptr %p_sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p_sb.i, align 4
  %igu_sb_id.i = getelementptr inbounds %struct.qed_sb_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %igu_sb_id.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %igu_sb_id.i, align 4
  %sb_igu_id.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %sb_igu_id.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %sb_igu_id.i, align 4
  %b_is_rx9.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %b_is_rx9.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool.i, ptr %b_is_rx9.i, align 2
  %sb_idx.i = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 4
  %35 = ptrtoint ptr %sb_idx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sb_idx.i, align 4
  %sb_idx11.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %sb_idx11.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %sb_idx11.i, align 2
  br i1 %tobool.not, label %if.end.i.if.end18.i_crit_edge, label %if.then13.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %p_vf_params to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %p_vf_params, align 1
  %vf_qid.i = getelementptr inbounds %struct.qed_queue_cid_vf_params, ptr %p_vf_params, i32 0, i32 1
  %40 = ptrtoint ptr %vf_qid.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vf_qid.i, align 1
  %vf_qid15.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %vf_qid15.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %vf_qid15.i, align 4
  %vf_legacy.i = getelementptr inbounds %struct.qed_queue_cid_vf_params, ptr %p_vf_params, i32 0, i32 2
  %43 = ptrtoint ptr %vf_legacy.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vf_legacy.i, align 1
  %vf_legacy16.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 10
  %45 = ptrtoint ptr %vf_legacy16.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %vf_legacy16.i, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end.i.if.end18.i_crit_edge
  %.sink.i = phi i8 [ %39, %if.then13.i ], [ -1, %if.end.i.if.end18.i_crit_edge ]
  %46 = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink.i, ptr %46, align 1
  %48 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %49, i32 0, i32 39
  %50 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool19.not.i = icmp eq i8 %51, 0
  %abs25.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 1
  br i1 %tobool19.not.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call ptr @memcpy(ptr %abs25.i, ptr %call.i, i32 6)
  br label %out.i

if.end22.i:                                       ; preds = %if.end18.i
  %call27.i = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %21, ptr noundef %abs25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end22.i.fail.i_crit_edge

if.end22.i.fail.i_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end30.i:                                       ; preds = %if.end22.i
  %53 = ptrtoint ptr %queue_id5.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %queue_id5.i, align 2
  %queue_id34.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 1, i32 1
  %call35.i = call i32 @qed_fw_l2_queue(ptr noundef %p_hwfn, i16 noundef zeroext %54, ptr noundef %queue_id34.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end30.i.fail.i_crit_edge

if.end30.i.fail.i_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end38.i:                                       ; preds = %if.end30.i
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp.i = icmp eq i8 %56, -1
  %57 = ptrtoint ptr %stats_id7.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %stats_id7.i, align 4
  %stats_id45.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 1, i32 2
  br i1 %cmp.i, label %if.then41.i, label %if.else50.i

if.then41.i:                                      ; preds = %if.end38.i
  %call46.i = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %58, ptr noundef %stats_id45.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then41.i.out.i_crit_edge, label %if.then41.i.fail.i_crit_edge

if.then41.i.fail.i_crit_edge:                     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.then41.i.out.i_crit_edge:                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.else50.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %stats_id45.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %stats_id45.i, align 2
  br label %out.i

out.i:                                            ; preds = %if.else50.i, %if.then41.i.out.i_crit_edge, %if.then20.i
  br i1 %tobool.not, label %if.then57.i, label %if.else61.i

if.then57.i:                                      ; preds = %out.i
  %p_l2_info1.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 61
  %60 = ptrtoint ptr %p_l2_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p_l2_info1.i.i, align 4
  %62 = ptrtoint ptr %queue_id5.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %queue_id5.i, align 2
  %lock.i.i = getelementptr inbounds %struct.qed_l2_info, ptr %61, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #10
  %conv.i.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %65, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end17.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then57.i
  %dp_level.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %66 = ptrtoint ptr %dp_level.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dp_level.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp5.i.i = icmp ult i8 %67, 3
  br i1 %cmp5.i.i, label %do.end.i.i, label %do.body.i.i.qed_eth_queue_qid_usage_add.exit.thread.i_crit_edge, !prof !260

do.body.i.i.qed_eth_queue_qid_usage_add.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_eth_queue_qid_usage_add.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 140, ptr noundef nonnull %name.i.i, i32 noundef %conv.i.i, i32 noundef %65) #15
  br label %qed_eth_queue_qid_usage_add.exit.thread.i

if.end17.i.i:                                     ; preds = %if.then57.i
  %pp_qid_usage.i.i = getelementptr inbounds %struct.qed_l2_info, ptr %61, i32 0, i32 1
  %68 = ptrtoint ptr %pp_qid_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pp_qid_usage.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %69, i32 %conv.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %call18.i.i = call i32 @_find_first_zero_bit_be(ptr noundef %71, i32 noundef 32) #10
  %conv20.i.i = and i32 %call18.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv20.i.i)
  %cmp21.i.i = icmp ugt i32 %conv20.i.i, 31
  br i1 %cmp21.i.i, label %if.end17.i.i.qed_eth_queue_qid_usage_add.exit.thread.i_crit_edge, label %qed_eth_queue_qid_usage_add.exit.i

if.end17.i.i.qed_eth_queue_qid_usage_add.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_eth_queue_qid_usage_add.exit.thread.i

qed_eth_queue_qid_usage_add.exit.thread.i:        ; preds = %if.end17.i.i.qed_eth_queue_qid_usage_add.exit.thread.i_crit_edge, %do.end.i.i, %do.body.i.i.qed_eth_queue_qid_usage_add.exit.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #10
  br label %fail.i

qed_eth_queue_qid_usage_add.exit.i:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv19.i.i = trunc i32 %call18.i.i to i8
  %72 = ptrtoint ptr %pp_qid_usage.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pp_qid_usage.i.i, align 4
  %arrayidx28.i.i = getelementptr ptr, ptr %73, i32 %conv.i.i
  %74 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx28.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %conv20.i.i
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %or.i.i.i = or i32 %77, %shl.i.i.i
  store i32 %or.i.i.i, ptr %75, align 4
  %qid_usage_idx.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 9
  %78 = ptrtoint ptr %qid_usage_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv19.i.i, ptr %qid_usage_idx.i.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i.i) #10
  br label %do.body.i

if.else61.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  %qid_usage_idx.i = getelementptr inbounds %struct.qed_queue_cid_vf_params, ptr %p_vf_params, i32 0, i32 3
  %79 = ptrtoint ptr %qid_usage_idx.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %qid_usage_idx.i, align 1
  %qid_usage_idx62.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 9
  %81 = ptrtoint ptr %qid_usage_idx62.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %qid_usage_idx62.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.else61.i, %qed_eth_queue_qid_usage_add.exit.i
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %82 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp65.i = icmp eq i8 %83, 0
  br i1 %cmp65.i, label %land.rhs.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %84 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %85, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool67.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool67.not.i, label %land.rhs.i.cleanup_crit_edge, label %do.end.i, !prof !261

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %86 = ptrtoint ptr %opaque_fid1.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %opaque_fid1.i, align 4
  %conv76.i = zext i16 %87 to i32
  %88 = ptrtoint ptr %cid2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cid2.i, align 4
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %call.i, align 4
  %conv80.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %abs25.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %abs25.i, align 2
  %conv83.i = zext i8 %93 to i32
  %94 = ptrtoint ptr %queue_id5.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %queue_id5.i, align 2
  %conv86.i = zext i16 %95 to i32
  %qid_usage_idx87.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 9
  %96 = ptrtoint ptr %qid_usage_idx87.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %qid_usage_idx87.i, align 1
  %conv88.i = zext i8 %97 to i32
  %queue_id90.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %queue_id90.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %queue_id90.i, align 2
  %conv91.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %stats_id7.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %stats_id7.i, align 4
  %conv94.i = zext i8 %101 to i32
  %stats_id96.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i, i32 0, i32 1, i32 2
  %102 = ptrtoint ptr %stats_id96.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %stats_id96.i, align 2
  %conv97.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %sb_igu_id.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %sb_igu_id.i, align 4
  %conv99.i = zext i16 %105 to i32
  %106 = ptrtoint ptr %sb_idx11.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %sb_idx11.i, align 2
  %conv101.i = zext i8 %107 to i32
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 277, ptr noundef nonnull %name.i, i32 noundef %conv76.i, i32 noundef %89, i32 noundef %conv80.i, i32 noundef %conv83.i, i32 noundef %conv86.i, i32 noundef %conv88.i, i32 noundef %conv91.i, i32 noundef %conv94.i, i32 noundef %conv97.i, i32 noundef %conv99.i, i32 noundef %conv101.i) #15
  br label %cleanup

fail.i:                                           ; preds = %qed_eth_queue_qid_usage_add.exit.thread.i, %if.then41.i.fail.i_crit_edge, %if.end30.i.fail.i_crit_edge, %if.end22.i.fail.i_crit_edge
  call void @vfree(ptr noundef nonnull %call.i) #10
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %fail.i, %if.end25.land.lhs.true29_crit_edge
  %108 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf31 = getelementptr inbounds %struct.qed_dev, ptr %109, i32 0, i32 39
  %110 = ptrtoint ptr %b_is_vf31 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %b_is_vf31, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool32.not = icmp ne i8 %111, 0
  %brmerge54 = or i1 %b_legacy_vf.0.off062, %tobool32.not
  br i1 %brmerge54, label %land.lhs.true29.cleanup_crit_edge, label %if.then35

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cid, align 4
  call void @_qed_cxt_release_cid(ptr noundef %p_hwfn, i32 noundef %113, i8 noundef zeroext %vfid.061) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %land.lhs.true29.cleanup_crit_edge, %do.end.i, %land.rhs.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.body.cleanup_crit_edge ], [ null, %land.lhs.true29.cleanup_crit_edge ], [ null, %if.then35 ], [ %call.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %do.end.i ], [ %call.i, %land.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_qed_cxt_acquire_cid(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_eth_vport_start(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_params) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  %abs_vport_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abs_vport_id) #10
  %1 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %abs_vport_id, align 1
  %vport_id = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 9
  %2 = ptrtoint ptr %vport_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vport_id, align 2
  %call = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %3, ptr noundef nonnull %abs_vport_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %init_data, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %call1 = call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #10
  %6 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 8
  %7 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opaque_fid, align 4
  %opaque_fid2 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %9 = ptrtoint ptr %opaque_fid2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %opaque_fid2, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %10 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %comp_mode, align 4
  %call3 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 1, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %abs_vport_id, align 1
  %15 = ptrtoint ptr %ramrod to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ramrod, align 2
  %mtu = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 10
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mtu, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %mtu8 = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %mtu8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %mtu8, align 2
  %handle_ptp_pkts = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 3
  %20 = ptrtoint ptr %handle_ptp_pkts to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %handle_ptp_pkts, align 2, !range !259
  %handle_ptp_pkts10 = getelementptr inbounds %struct.vport_start_ramrod_data, ptr %ramrod, i32 0, i32 12
  %22 = ptrtoint ptr %handle_ptp_pkts10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %handle_ptp_pkts10, align 1
  %remove_inner_vlan = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 1
  %23 = ptrtoint ptr %remove_inner_vlan to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %remove_inner_vlan, align 4, !range !259
  %inner_vlan_removal_en = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 5
  %25 = ptrtoint ptr %inner_vlan_removal_en to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %inner_vlan_removal_en, align 1
  %drop_ttl0 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 5
  %26 = ptrtoint ptr %drop_ttl0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %drop_ttl0, align 4, !range !259
  %drop_ttl0_en = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %drop_ttl0_en to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %drop_ttl0_en, align 2
  %only_untagged = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 4
  %29 = ptrtoint ptr %only_untagged to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %only_untagged, align 1, !range !259
  %untagged = getelementptr inbounds %struct.vport_start_ramrod_data, ptr %ramrod, i32 0, i32 14
  %31 = ptrtoint ptr %untagged to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %untagged, align 1
  %rx_mode30 = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6
  %32 = ptrtoint ptr %rx_mode30 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2304, ptr %rx_mode30, align 2
  %tpa_param31 = getelementptr inbounds %struct.vport_start_ramrod_data, ptr %ramrod, i32 0, i32 7
  %33 = call ptr @memset(ptr %tpa_param31, i32 0, i32 16)
  %max_buffers_per_cqe = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 6
  %34 = ptrtoint ptr %max_buffers_per_cqe to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %max_buffers_per_cqe, align 1
  %max_buff_num = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %max_buff_num to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %max_buff_num, align 2
  %37 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %p_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cond = icmp eq i32 %38, 2
  br i1 %cond, label %sw.bb, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mtu, align 4
  %41 = lshr i16 %40, 1
  %tpa_max_aggs_num = getelementptr inbounds %struct.vport_start_ramrod_data, ptr %ramrod, i32 0, i32 7, i32 7
  %42 = ptrtoint ptr %tpa_max_aggs_num to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 64, ptr %tpa_max_aggs_num, align 1
  %tpa_max_size = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %tpa_max_size to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %tpa_max_size, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %41)
  %tpa_min_size_to_cont = getelementptr inbounds %struct.vport_start_ramrod_data, ptr %ramrod, i32 0, i32 7, i32 10
  %45 = ptrtoint ptr %tpa_min_size_to_cont to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tpa_min_size_to_cont, align 2
  %tpa_min_size_to_start = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %tpa_min_size_to_start to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %44, ptr %tpa_min_size_to_start, align 2
  %47 = ptrtoint ptr %tpa_param31 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %tpa_param31, align 2
  %tpa_ipv6_en_flg = getelementptr inbounds %struct.vport_start_ramrod_data, ptr %ramrod, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %tpa_ipv6_en_flg to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %tpa_ipv6_en_flg, align 1
  %tpa_pkt_split_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 10
  %49 = ptrtoint ptr %tpa_pkt_split_flg to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %tpa_pkt_split_flg, align 2
  %tpa_gro_consistent_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %tpa_gro_consistent_flg to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %tpa_gro_consistent_flg, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end6.sw.epilog_crit_edge
  %tx_switching = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 2
  %51 = ptrtoint ptr %tx_switching to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx_switching, align 1, !range !259
  %tx_switching_en = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %53 = ptrtoint ptr %tx_switching_en to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tx_switching_en, align 2
  %check_mac = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 11
  %54 = ptrtoint ptr %check_mac to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %check_mac, align 2, !range !259
  %ctl_frame_mac_check_en = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 3
  %56 = ptrtoint ptr %ctl_frame_mac_check_en to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ctl_frame_mac_check_en, align 1
  %check_ethtype = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 12
  %57 = ptrtoint ptr %check_ethtype to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %check_ethtype, align 1, !range !259
  %ctl_frame_ethtype_check_en = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 4
  %59 = ptrtoint ptr %ctl_frame_ethtype_check_en to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ctl_frame_ethtype_check_en, align 2
  %concrete_fid = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %p_params, i32 0, i32 7
  %60 = ptrtoint ptr %concrete_fid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %concrete_fid, align 4
  %62 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  %shr.i = lshr i32 %61, 8
  %63 = trunc i32 %shr.i to i8
  %conv8.i = add i8 %63, 16
  %64 = trunc i32 %61 to i8
  %conv3.i = and i8 %64, 15
  %sw_fid.0.i = select i1 %tobool.not.i, i8 %conv3.i, i8 %conv8.i
  %sw_fid = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %sw_fid to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %sw_fid.0.i, ptr %sw_fid, align 1
  %call47 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %12, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abs_vport_id) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_fw_vport(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_get_cid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_init_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_spq_post(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_vport_update(ptr noundef %p_hwfn, ptr noundef %p_params, i32 noundef %comp_mode, ptr noundef %p_comp_data) local_unnamed_addr #0 align 64 {
entry:
  %init_data = alloca %struct.qed_sp_init_data, align 4
  %p_ent = alloca ptr, align 4
  %abs_vport_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_params = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 21
  %0 = ptrtoint ptr %rss_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_params, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  %2 = call ptr @memset(ptr %init_data, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %3 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abs_vport_id) #10
  %4 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %abs_vport_id, align 1
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 39
  %7 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @qed_vf_pf_vport_update(ptr noundef %p_hwfn, ptr noundef %p_params) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vport_id = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 1
  %9 = ptrtoint ptr %vport_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vport_id, align 2
  %call1 = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %10, ptr noundef nonnull %abs_vport_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = call ptr @memset(ptr %init_data, i32 0, i32 16)
  %call5 = call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #10
  %12 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call5, ptr %init_data, align 4
  %13 = ptrtoint ptr %p_params to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %p_params, align 4
  %opaque_fid6 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %15 = ptrtoint ptr %opaque_fid6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %opaque_fid6, align 4
  %comp_mode7 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %16 = ptrtoint ptr %comp_mode7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %comp_mode, ptr %comp_mode7, align 4
  %p_comp_data8 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 3
  %17 = ptrtoint ptr %p_comp_data8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %p_comp_data, ptr %p_comp_data8, align 4
  %call9 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 2, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %18 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %abs_vport_id, align 1
  %22 = ptrtoint ptr %ramrod to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ramrod, align 2
  %vport_active_rx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 3
  %23 = ptrtoint ptr %vport_active_rx_flg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vport_active_rx_flg, align 4
  %rx_active_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %rx_active_flg to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %rx_active_flg, align 2
  %update_vport_active_rx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 2
  %26 = ptrtoint ptr %update_vport_active_rx_flg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %update_vport_active_rx_flg, align 1
  %update_rx_active_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %update_rx_active_flg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %update_rx_active_flg, align 1
  %vport_active_tx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 5
  %29 = ptrtoint ptr %vport_active_tx_flg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vport_active_tx_flg, align 2
  %tx_active_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %31 = ptrtoint ptr %tx_active_flg to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %tx_active_flg, align 2
  %update_vport_active_tx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 4
  %32 = ptrtoint ptr %update_vport_active_tx_flg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %update_vport_active_tx_flg, align 1
  %update_tx_active_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %update_tx_active_flg to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %update_tx_active_flg, align 1
  %accept_any_vlan = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 19
  %35 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %accept_any_vlan, align 2
  %accept_any_vlan14 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 24
  %37 = ptrtoint ptr %accept_any_vlan14 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %accept_any_vlan14, align 1
  %update_accept_any_vlan_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 18
  %38 = ptrtoint ptr %update_accept_any_vlan_flg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %update_accept_any_vlan_flg, align 1
  %update_accept_any_vlan_flg15 = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %update_accept_any_vlan_flg15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %update_accept_any_vlan_flg15, align 2
  %inner_vlan_removal_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 7
  %41 = ptrtoint ptr %inner_vlan_removal_flg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %inner_vlan_removal_flg, align 4
  %inner_vlan_removal_en = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 10
  %43 = ptrtoint ptr %inner_vlan_removal_en to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %inner_vlan_removal_en, align 2
  %update_inner_vlan_removal_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 6
  %44 = ptrtoint ptr %update_inner_vlan_removal_flg to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %update_inner_vlan_removal_flg, align 1
  %update_inner_vlan_removal_en_flg = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 9
  %46 = ptrtoint ptr %update_inner_vlan_removal_en_flg to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %update_inner_vlan_removal_en_flg, align 1
  %default_vlan_enable_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 10
  %47 = ptrtoint ptr %default_vlan_enable_flg to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %default_vlan_enable_flg, align 1
  %default_vlan_en = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %default_vlan_en to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %default_vlan_en, align 2
  %update_default_vlan_enable_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 9
  %50 = ptrtoint ptr %update_default_vlan_enable_flg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %update_default_vlan_enable_flg, align 2
  %update_default_vlan_en_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %update_default_vlan_en_flg to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %update_default_vlan_en_flg, align 1
  %default_vlan = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 12
  %53 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %default_vlan, align 2
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %default_vlan16 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 22
  %56 = ptrtoint ptr %default_vlan16 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %default_vlan16, align 2
  %update_default_vlan_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 11
  %57 = ptrtoint ptr %update_default_vlan_flg to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %update_default_vlan_flg, align 4
  %update_default_vlan_flg17 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 21
  %59 = ptrtoint ptr %update_default_vlan_flg17 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %update_default_vlan_flg17, align 1
  %silent_vlan_removal_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 8
  %60 = ptrtoint ptr %silent_vlan_removal_flg to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %silent_vlan_removal_flg, align 1
  %silent_vlan_removal_en = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 25
  %62 = ptrtoint ptr %silent_vlan_removal_en to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %silent_vlan_removal_en, align 2
  %tx_switching_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 14
  %63 = ptrtoint ptr %tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tx_switching_flg, align 1
  %tx_switching_en = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 10
  %65 = ptrtoint ptr %tx_switching_en to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tx_switching_en, align 2
  %update_tx_switching_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 13
  %66 = ptrtoint ptr %update_tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %update_tx_switching_flg, align 4
  %update_tx_switching_en_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 9
  %68 = ptrtoint ptr %update_tx_switching_en_flg to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %update_tx_switching_en_flg, align 1
  %anti_spoofing_en = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 17
  %69 = ptrtoint ptr %anti_spoofing_en to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %anti_spoofing_en, align 4
  %anti_spoofing_en19 = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %anti_spoofing_en19 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %anti_spoofing_en19, align 2
  %update_anti_spoofing_en_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 16
  %72 = ptrtoint ptr %update_anti_spoofing_en_flg to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %update_anti_spoofing_en_flg, align 1
  %update_anti_spoofing_en_flg21 = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 11
  %74 = ptrtoint ptr %update_anti_spoofing_en_flg21 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %update_anti_spoofing_en_flg21, align 1
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %update_rss_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %75 = ptrtoint ptr %update_rss_flg.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %update_rss_flg.i, align 4
  br label %if.end25

if.end.i:                                         ; preds = %if.end12
  %rss_eng_id.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %rss_eng_id.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rss_eng_id.i, align 2
  %rss_id.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 1
  %call.i = call i32 @qed_fw_rss_eng(ptr noundef %p_hwfn, i8 noundef zeroext %77, ptr noundef %rss_id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.if.then24_crit_edge

if.end.i.if.then24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end3.i:                                        ; preds = %if.end.i
  %rss_config.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %1, align 4
  %update_rss_flg5.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %80 = ptrtoint ptr %update_rss_flg5.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %update_rss_flg5.i, align 4
  %update_rss_capabilities.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 3
  %81 = ptrtoint ptr %update_rss_capabilities.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %update_rss_capabilities.i, align 1
  %update_rss_capabilities6.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 5
  %83 = ptrtoint ptr %update_rss_capabilities6.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %update_rss_capabilities6.i, align 2
  %update_rss_ind_table.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %update_rss_ind_table.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %update_rss_ind_table.i, align 4
  %update_rss_ind_table7.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 4
  %86 = ptrtoint ptr %update_rss_ind_table7.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %update_rss_ind_table7.i, align 1
  %update_rss_key.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 5
  %87 = ptrtoint ptr %update_rss_key.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %update_rss_key.i, align 1
  %update_rss_key8.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 3
  %89 = ptrtoint ptr %update_rss_key8.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %update_rss_key8.i, align 4
  %rss_enable.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 1
  %90 = ptrtoint ptr %rss_enable.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rss_enable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool9.not.i = icmp ne i8 %91, 0
  %conv10.i = zext i1 %tobool9.not.i to i8
  %rss_mode.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 3, i32 2
  %92 = ptrtoint ptr %rss_mode.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv10.i, ptr %rss_mode.i, align 1
  %rss_caps.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 6
  %93 = ptrtoint ptr %rss_caps.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rss_caps.i, align 2
  %or114431.i = and i8 %94, 63
  %conv115.i = zext i8 %or114431.i to i16
  %rss_table_size_log.i = getelementptr inbounds %struct.qed_rss_params, ptr %1, i32 0, i32 7
  %95 = ptrtoint ptr %rss_table_size_log.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rss_table_size_log.i, align 1
  %tbl_size.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 6
  %97 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %tbl_size.i, align 1
  %98 = shl nuw nsw i16 %conv115.i, 8
  %99 = ptrtoint ptr %rss_config.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %rss_config.i, align 4
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %100 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp.i = icmp eq i8 %101, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end3.i.do.end153.i_crit_edge

if.end3.i.do.end153.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153.i

land.rhs.i:                                       ; preds = %if.end3.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %102 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dp_module.i, align 4
  %and122.i = and i32 %103, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %land.rhs.i.do.end153.i_crit_edge, label %do.end132.i, !prof !261

land.rhs.i.do.end153.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end153.i

do.end132.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %conv139.i = zext i8 %79 to i32
  %conv141.i = zext i1 %tobool9.not.i to i32
  %conv143.i = zext i8 %82 to i32
  %conv145.i = zext i16 %98 to i32
  %conv147.i = zext i8 %85 to i32
  %conv149.i = zext i8 %88 to i32
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 490, ptr noundef nonnull %name.i, i32 noundef %conv139.i, i32 noundef %conv141.i, i32 noundef %conv143.i, i32 noundef %conv145.i, i32 noundef %conv147.i, i32 noundef %conv149.i) #15
  br label %do.end153.i

do.end153.i:                                      ; preds = %do.end132.i, %land.rhs.i.do.end153.i_crit_edge, %if.end3.i.do.end153.i_crit_edge
  %104 = ptrtoint ptr %tbl_size.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tbl_size.i, align 1
  %conv155.i = zext i8 %105 to i32
  %shl156.i = shl nuw i32 1, %conv155.i
  %106 = call i32 @llvm.smin.i32(i32 %shl156.i, i32 128) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %105)
  %cmp164435.not.i = icmp eq i8 %105, 31
  br i1 %cmp164435.not.i, label %do.end153.i.do.body170.i_crit_edge, label %for.body.preheader.i

do.end153.i.do.body170.i_crit_edge:               ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body170.i

for.body.preheader.i:                             ; preds = %do.end153.i
  %smax.i = call i32 @llvm.smax.i32(i32 %106, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end168.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0436.i = phi i32 [ %inc.i, %if.end168.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 8, i32 %i.0436.i
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i, align 4
  %tobool166.not.i = icmp eq ptr %108, null
  br i1 %tobool166.not.i, label %for.body.i.if.then24_crit_edge, label %if.end168.i

for.body.i.if.then24_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end168.i:                                      ; preds = %for.body.i
  %queue_id.i = getelementptr inbounds %struct.qed_queue_cid, ptr %108, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %queue_id.i, align 2
  %111 = call i16 @llvm.bswap.i16(i16 %110) #10
  %arrayidx169.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %i.0436.i
  %112 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %arrayidx169.i, align 2
  %inc.i = add nuw nsw i32 %i.0436.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %if.end168.i.do.body170.i_crit_edge, label %if.end168.i.for.body.i_crit_edge

if.end168.i.for.body.i_crit_edge:                 ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end168.i.do.body170.i_crit_edge:               ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body170.i

do.body170.i:                                     ; preds = %if.end168.i.do.body170.i_crit_edge, %do.end153.i.do.body170.i_crit_edge
  %113 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp173.i = icmp eq i8 %114, 0
  br i1 %cmp173.i, label %land.rhs175.i, label %do.body170.i.do.end203.i_crit_edge

do.body170.i.do.end203.i_crit_edge:               ; preds = %do.body170.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end203.i

land.rhs175.i:                                    ; preds = %do.body170.i
  %dp_module176.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %115 = ptrtoint ptr %dp_module176.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dp_module176.i, align 4
  %and177.i = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %land.rhs175.i.do.end203.i_crit_edge, label %do.end189.i, !prof !261

land.rhs175.i.do.end203.i_crit_edge:              ; preds = %land.rhs175.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end203.i

do.end189.i:                                      ; preds = %land.rhs175.i
  call void @__sanitizer_cov_trace_pc() #12
  %name191.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef 506, ptr noundef nonnull %name191.i, i32 noundef %106) #15
  br label %do.end203.i

do.end203.i:                                      ; preds = %do.end189.i, %land.rhs175.i.do.end203.i_crit_edge, %do.body170.i.do.end203.i_crit_edge
  %dp_module214.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name229.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  br label %do.body208.i

do.body208.i:                                     ; preds = %for.inc304.i.do.body208.i_crit_edge, %do.end203.i
  %i.1437.i = phi i32 [ 0, %do.end203.i ], [ %add305.i, %for.inc304.i.do.body208.i_crit_edge ]
  %117 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp211.i = icmp eq i8 %118, 0
  br i1 %cmp211.i, label %land.rhs213.i, label %do.body208.i.for.inc304.i_crit_edge

do.body208.i.for.inc304.i_crit_edge:              ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc304.i

land.rhs213.i:                                    ; preds = %do.body208.i
  %119 = ptrtoint ptr %dp_module214.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dp_module214.i, align 4
  %and215.i = and i32 %120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i)
  %tobool216.not.i = icmp eq i32 %and215.i, 0
  br i1 %tobool216.not.i, label %land.rhs213.i.for.inc304.i_crit_edge, label %do.end227.i, !prof !261

land.rhs213.i.for.inc304.i_crit_edge:             ; preds = %land.rhs213.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc304.i

do.end227.i:                                      ; preds = %land.rhs213.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx239.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %i.1437.i
  %121 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx239.i, align 2
  %123 = call i16 @llvm.bswap.i16(i16 %122) #10
  %conv240.i = zext i16 %123 to i32
  %add.i = or i32 %i.1437.i, 1
  %arrayidx242.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add.i
  %124 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx242.i, align 2
  %126 = call i16 @llvm.bswap.i16(i16 %125) #10
  %conv243.i = zext i16 %126 to i32
  %add245.i = or i32 %i.1437.i, 2
  %arrayidx246.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add245.i
  %127 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx246.i, align 2
  %129 = call i16 @llvm.bswap.i16(i16 %128) #10
  %conv247.i = zext i16 %129 to i32
  %add249.i = or i32 %i.1437.i, 3
  %arrayidx250.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add249.i
  %130 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx250.i, align 2
  %132 = call i16 @llvm.bswap.i16(i16 %131) #10
  %conv251.i = zext i16 %132 to i32
  %add253.i = or i32 %i.1437.i, 4
  %arrayidx254.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add253.i
  %133 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx254.i, align 2
  %135 = call i16 @llvm.bswap.i16(i16 %134) #10
  %conv255.i = zext i16 %135 to i32
  %add257.i = or i32 %i.1437.i, 5
  %arrayidx258.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add257.i
  %136 = ptrtoint ptr %arrayidx258.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx258.i, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #10
  %conv259.i = zext i16 %138 to i32
  %add261.i = or i32 %i.1437.i, 6
  %arrayidx262.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add261.i
  %139 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx262.i, align 2
  %141 = call i16 @llvm.bswap.i16(i16 %140) #10
  %conv263.i = zext i16 %141 to i32
  %add265.i = or i32 %i.1437.i, 7
  %arrayidx266.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add265.i
  %142 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx266.i, align 2
  %144 = call i16 @llvm.bswap.i16(i16 %143) #10
  %conv267.i = zext i16 %144 to i32
  %add269.i = or i32 %i.1437.i, 8
  %arrayidx270.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add269.i
  %145 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx270.i, align 2
  %147 = call i16 @llvm.bswap.i16(i16 %146) #10
  %conv271.i = zext i16 %147 to i32
  %add273.i = or i32 %i.1437.i, 9
  %arrayidx274.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add273.i
  %148 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx274.i, align 2
  %150 = call i16 @llvm.bswap.i16(i16 %149) #10
  %conv275.i = zext i16 %150 to i32
  %add277.i = or i32 %i.1437.i, 10
  %arrayidx278.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add277.i
  %151 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx278.i, align 2
  %153 = call i16 @llvm.bswap.i16(i16 %152) #10
  %conv279.i = zext i16 %153 to i32
  %add281.i = or i32 %i.1437.i, 11
  %arrayidx282.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add281.i
  %154 = ptrtoint ptr %arrayidx282.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx282.i, align 2
  %156 = call i16 @llvm.bswap.i16(i16 %155) #10
  %conv283.i = zext i16 %156 to i32
  %add285.i = or i32 %i.1437.i, 12
  %arrayidx286.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add285.i
  %157 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx286.i, align 2
  %159 = call i16 @llvm.bswap.i16(i16 %158) #10
  %conv287.i = zext i16 %159 to i32
  %add289.i = or i32 %i.1437.i, 13
  %arrayidx290.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add289.i
  %160 = ptrtoint ptr %arrayidx290.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx290.i, align 2
  %162 = call i16 @llvm.bswap.i16(i16 %161) #10
  %conv291.i = zext i16 %162 to i32
  %add293.i = or i32 %i.1437.i, 14
  %arrayidx294.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add293.i
  %163 = ptrtoint ptr %arrayidx294.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx294.i, align 2
  %165 = call i16 @llvm.bswap.i16(i16 %164) #10
  %conv295.i = zext i16 %165 to i32
  %add297.i = or i32 %i.1437.i, 15
  %arrayidx298.i = getelementptr %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 6, i32 9, i32 %add297.i
  %166 = ptrtoint ptr %arrayidx298.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx298.i, align 2
  %168 = call i16 @llvm.bswap.i16(i16 %167) #10
  %conv299.i = zext i16 %168 to i32
  %call300.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.55, i32 noundef 526, ptr noundef nonnull %name229.i, i32 noundef %conv240.i, i32 noundef %conv243.i, i32 noundef %conv247.i, i32 noundef %conv251.i, i32 noundef %conv255.i, i32 noundef %conv259.i, i32 noundef %conv263.i, i32 noundef %conv267.i, i32 noundef %conv271.i, i32 noundef %conv275.i, i32 noundef %conv279.i, i32 noundef %conv283.i, i32 noundef %conv287.i, i32 noundef %conv291.i, i32 noundef %conv295.i, i32 noundef %conv299.i) #15
  br label %for.inc304.i

for.inc304.i:                                     ; preds = %do.end227.i, %land.rhs213.i.for.inc304.i_crit_edge, %do.body208.i.for.inc304.i_crit_edge
  %add305.i = add nuw nsw i32 %i.1437.i, 16
  %cmp205.i = icmp ult i32 %i.1437.i, 112
  br i1 %cmp205.i, label %for.inc304.i.do.body208.i_crit_edge, label %for.body310.preheader.i

for.inc304.i.do.body208.i_crit_edge:              ; preds = %for.inc304.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body208.i

for.body310.preheader.i:                          ; preds = %for.inc304.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx311.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 0
  %169 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx311.i, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %170) #10
  %arrayidx313.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 14, i32 6, i32 2
  %172 = ptrtoint ptr %arrayidx313.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx313.i, align 4
  %arrayidx311.1.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 1
  %173 = ptrtoint ptr %arrayidx311.1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx311.1.i, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #10
  %arrayidx313.1.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 15
  %176 = ptrtoint ptr %arrayidx313.1.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx313.1.i, align 4
  %arrayidx311.2.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 2
  %177 = ptrtoint ptr %arrayidx311.2.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx311.2.i, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178) #10
  %arrayidx313.2.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 15, i32 3
  %180 = ptrtoint ptr %arrayidx313.2.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx313.2.i, align 4
  %arrayidx311.3.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 3
  %181 = ptrtoint ptr %arrayidx311.3.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx311.3.i, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182) #10
  %arrayidx313.3.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 15, i32 4
  %184 = ptrtoint ptr %arrayidx313.3.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx313.3.i, align 4
  %arrayidx311.4.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 4
  %185 = ptrtoint ptr %arrayidx311.4.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx311.4.i, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #10
  %arrayidx313.4.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 15, i32 4, i32 1
  %188 = ptrtoint ptr %arrayidx313.4.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %arrayidx313.4.i, align 4
  %arrayidx311.5.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 5
  %189 = ptrtoint ptr %arrayidx311.5.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx311.5.i, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190) #10
  %arrayidx313.5.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 15, i32 5
  %192 = ptrtoint ptr %arrayidx313.5.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx313.5.i, align 4
  %arrayidx311.6.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 6
  %193 = ptrtoint ptr %arrayidx311.6.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx311.6.i, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194) #10
  %arrayidx313.6.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 15, i32 6, i32 2
  %196 = ptrtoint ptr %arrayidx313.6.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx313.6.i, align 4
  %arrayidx311.7.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 7
  %197 = ptrtoint ptr %arrayidx311.7.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx311.7.i, align 4
  %199 = call i32 @llvm.bswap.i32(i32 %198) #10
  %arrayidx313.7.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 16
  %200 = ptrtoint ptr %arrayidx313.7.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx313.7.i, align 4
  %arrayidx311.8.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 8
  %201 = ptrtoint ptr %arrayidx311.8.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx311.8.i, align 4
  %203 = call i32 @llvm.bswap.i32(i32 %202) #10
  %arrayidx313.8.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 16, i32 3
  %204 = ptrtoint ptr %arrayidx313.8.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %arrayidx313.8.i, align 4
  %arrayidx311.9.i = getelementptr %struct.qed_rss_params, ptr %1, i32 0, i32 9, i32 9
  %205 = ptrtoint ptr %arrayidx311.9.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx311.9.i, align 4
  %207 = call i32 @llvm.bswap.i32(i32 %206) #10
  %arrayidx313.9.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 16, i32 4
  %208 = ptrtoint ptr %arrayidx313.9.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %arrayidx313.9.i, align 4
  br label %if.end25

if.then24:                                        ; preds = %for.body.i.if.then24_crit_edge, %if.end.i.if.then24_crit_edge
  %retval.2.i = phi i32 [ %call.i, %if.end.i.if.then24_crit_edge ], [ -22, %for.body.i.if.then24_crit_edge ]
  %209 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %p_ent, align 4
  call void @qed_sp_destroy_request(ptr noundef %p_hwfn, ptr noundef %210) #10
  br label %cleanup

if.end25:                                         ; preds = %for.body310.preheader.i, %if.then.i
  %update_ctl_frame_check = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 24
  %211 = ptrtoint ptr %update_ctl_frame_check to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %update_ctl_frame_check, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool26.not = icmp eq i8 %212, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %mac_chk_en = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 25
  %213 = ptrtoint ptr %mac_chk_en to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %mac_chk_en, align 1
  %ctl_frame_mac_check_en = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 29
  %215 = ptrtoint ptr %ctl_frame_mac_check_en to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %214, ptr %ctl_frame_mac_check_en, align 1
  %ethtype_chk_en = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 26
  %216 = ptrtoint ptr %ethtype_chk_en to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %ethtype_chk_en, align 2
  %ctl_frame_ethtype_check_en = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %218 = ptrtoint ptr %ctl_frame_ethtype_check_en to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %ctl_frame_ethtype_check_en, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %approx_mcast.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 5
  %219 = call ptr @memset(ptr %approx_mcast.i, i32 0, i32 32)
  %update_approx_mcast_flg.i = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 15
  %220 = ptrtoint ptr %update_approx_mcast_flg.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %update_approx_mcast_flg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i105 = icmp eq i8 %221, 0
  br i1 %tobool.not.i105, label %if.end28.qed_sp_update_mcast_bin.exit_crit_edge, label %if.end.i106

if.end28.qed_sp_update_mcast_bin.exit_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_sp_update_mcast_bin.exit

if.end.i106:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %update_approx_mcast_flg1.i = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 7
  %222 = ptrtoint ptr %update_approx_mcast_flg1.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %update_approx_mcast_flg1.i, align 1
  %bins2.i = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20
  %223 = ptrtoint ptr %bins2.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %bins2.i, align 4
  %225 = call i32 @llvm.bswap.i32(i32 %224) #10
  %226 = ptrtoint ptr %approx_mcast.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %approx_mcast.i, align 4
  %arrayidx.1.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 1
  %227 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx.1.i, align 4
  %229 = call i32 @llvm.bswap.i32(i32 %228) #10
  %arrayidx5.1.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6, i32 2
  %230 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %arrayidx5.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 2
  %231 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.2.i, align 4
  %233 = call i32 @llvm.bswap.i32(i32 %232) #10
  %arrayidx5.2.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2
  %234 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %arrayidx5.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 3
  %235 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.3.i, align 4
  %237 = call i32 @llvm.bswap.i32(i32 %236) #10
  %arrayidx5.3.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 3
  %238 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %arrayidx5.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 4
  %239 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx.4.i, align 4
  %241 = call i32 @llvm.bswap.i32(i32 %240) #10
  %arrayidx5.4.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4
  %242 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %arrayidx5.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 5
  %243 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx.5.i, align 4
  %245 = call i32 @llvm.bswap.i32(i32 %244) #10
  %arrayidx5.5.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4, i32 1
  %246 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %arrayidx5.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 6
  %247 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.6.i, align 4
  %249 = call i32 @llvm.bswap.i32(i32 %248) #10
  %arrayidx5.6.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 5
  %250 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %arrayidx5.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 20, i32 7
  %251 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx.7.i, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252) #10
  %arrayidx5.7.i = getelementptr %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 6, i32 2
  %254 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %arrayidx5.7.i, align 4
  br label %qed_sp_update_mcast_bin.exit

qed_sp_update_mcast_bin.exit:                     ; preds = %if.end.i106, %if.end28.qed_sp_update_mcast_bin.exit_crit_edge
  %accept_flags = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 22
  %255 = ptrtoint ptr %accept_flags to i32
  call void @__asan_load4_noabort(i32 %255)
  %.unpack = load i32, ptr %accept_flags, align 4
  %accept_flags.sroa.0.0.extract.shift.i = lshr i32 %.unpack, 24
  %accept_flags.sroa.0.0.extract.trunc.i = trunc i32 %accept_flags.sroa.0.0.extract.shift.i to i8
  %accept_flags.sroa.2.0.extract.shift.i = lshr i32 %.unpack, 16
  %accept_flags.sroa.2.0.extract.trunc.i = trunc i32 %accept_flags.sroa.2.0.extract.shift.i to i8
  %update_rx_mode_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 5
  %256 = ptrtoint ptr %update_rx_mode_flg.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %accept_flags.sroa.0.0.extract.trunc.i, ptr %update_rx_mode_flg.i, align 1
  %update_tx_mode_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6
  %257 = ptrtoint ptr %update_tx_mode_flg.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %accept_flags.sroa.2.0.extract.trunc.i, ptr %update_tx_mode_flg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %accept_flags.sroa.0.0.extract.trunc.i)
  %tobool.not.i107 = icmp eq i8 %accept_flags.sroa.0.0.extract.trunc.i, 0
  br i1 %tobool.not.i107, label %qed_sp_update_mcast_bin.exit.if.end140.i_crit_edge, label %if.then.i110

qed_sp_update_mcast_bin.exit.if.end140.i_crit_edge: ; preds = %qed_sp_update_mcast_bin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140.i

if.then.i110:                                     ; preds = %qed_sp_update_mcast_bin.exit
  %258 = and i32 %.unpack, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool7.not.i = icmp eq i32 %258, 0
  %259 = lshr i32 %.unpack, 10
  %260 = and i32 %259, 1
  %phi.cast345.i = xor i32 %260, 1
  %261 = select i1 %tobool7.not.i, i32 %phi.cast345.i, i32 0
  %262 = lshr i32 %.unpack, 8
  %263 = and i32 %.unpack, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool40.not.i = icmp eq i32 %263, 0
  %264 = lshr i32 %.unpack, 9
  %phi.cast.i = and i32 %264, 8
  %phi.bo350.i = xor i32 %phi.cast.i, 8
  %265 = select i1 %tobool40.not.i, i32 %phi.bo350.i, i32 0
  %phi.cast353.i = and i32 %262, 16
  %266 = select i1 %tobool40.not.i, i32 0, i32 %phi.cast353.i
  %or55.i = and i32 %262, 100
  %or76.i = or i32 %266, %or55.i
  %or94354.i = or i32 %or76.i, %261
  %or112355.i = or i32 %or94354.i, %265
  %conv113.i = trunc i32 %or112355.i to i16
  %267 = shl nuw nsw i16 %conv113.i, 8
  %rx_mode.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 4
  %268 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %rx_mode.i, align 4
  %dp_level.i108 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %269 = ptrtoint ptr %dp_level.i108 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %dp_level.i108, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %cmp.i109 = icmp eq i8 %270, 0
  br i1 %cmp.i109, label %land.rhs120.i, label %if.then.i110.if.end140thread-pre-split.i_crit_edge

if.then.i110.if.end140thread-pre-split.i_crit_edge: ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140thread-pre-split.i

land.rhs120.i:                                    ; preds = %if.then.i110
  %dp_module.i111 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %271 = ptrtoint ptr %dp_module.i111 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %dp_module.i111, align 4
  %and121.i = and i32 %272, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %land.rhs120.i.if.end140thread-pre-split.i_crit_edge, label %do.end133.i, !prof !261

land.rhs120.i.if.end140thread-pre-split.i_crit_edge: ; preds = %land.rhs120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140thread-pre-split.i

do.end133.i:                                      ; preds = %land.rhs120.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i112 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call.i113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 574, ptr noundef nonnull %name.i112, i32 noundef %or112355.i) #15
  br label %if.end140thread-pre-split.i

if.end140thread-pre-split.i:                      ; preds = %do.end133.i, %land.rhs120.i.if.end140thread-pre-split.i_crit_edge, %if.then.i110.if.end140thread-pre-split.i_crit_edge
  %273 = ptrtoint ptr %update_tx_mode_flg.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %.pr.i = load i8, ptr %update_tx_mode_flg.i, align 2
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.end140thread-pre-split.i, %qed_sp_update_mcast_bin.exit.if.end140.i_crit_edge
  %274 = phi i8 [ %.pr.i, %if.end140thread-pre-split.i ], [ %accept_flags.sroa.2.0.extract.trunc.i, %qed_sp_update_mcast_bin.exit.if.end140.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool143.not.i = icmp eq i8 %274, 0
  br i1 %tobool143.not.i, label %if.end140.i.qed_sp_update_accept_mode.exit_crit_edge, label %if.then144.i

if.end140.i.qed_sp_update_accept_mode.exit_crit_edge: ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_sp_update_accept_mode.exit

if.then144.i:                                     ; preds = %if.end140.i
  %and152.i = and i32 %.unpack, 1
  %or179337.i = mul nuw nsw i32 %and152.i, 5
  %and188.i = and i32 %.unpack, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  %275 = lshr i32 %.unpack, 1
  %phi.bo.i = and i32 %275, 8
  %276 = select i1 %tobool189.not.i, i32 0, i32 %phi.bo.i
  %and212.i = and i32 %.unpack, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i)
  %tobool213.not.i = icmp eq i32 %and212.i, 0
  %phi.bo339.i = and i32 %275, 2
  %277 = select i1 %tobool213.not.i, i32 0, i32 %phi.bo339.i
  %278 = and i32 %275, 16
  %or203338.i = or i32 %278, %or179337.i
  %or227340.i = or i32 %or203338.i, %276
  %or245341.i = add nuw nsw i32 %or227340.i, %277
  %conv246.i = trunc i32 %or245341.i to i16
  %279 = shl nuw nsw i16 %conv246.i, 8
  %tx_mode.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 2
  %280 = ptrtoint ptr %tx_mode.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %279, ptr %tx_mode.i, align 2
  %dp_level251.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %281 = ptrtoint ptr %dp_level251.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %dp_level251.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %cmp253.i = icmp eq i8 %282, 0
  br i1 %cmp253.i, label %land.rhs255.i, label %if.then144.i.qed_sp_update_accept_mode.exit_crit_edge

if.then144.i.qed_sp_update_accept_mode.exit_crit_edge: ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_sp_update_accept_mode.exit

land.rhs255.i:                                    ; preds = %if.then144.i
  %dp_module256.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %283 = ptrtoint ptr %dp_module256.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %dp_module256.i, align 4
  %and257.i = and i32 %284, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257.i)
  %tobool258.not.i = icmp eq i32 %and257.i, 0
  br i1 %tobool258.not.i, label %land.rhs255.i.qed_sp_update_accept_mode.exit_crit_edge, label %do.end270.i, !prof !261

land.rhs255.i.qed_sp_update_accept_mode.exit_crit_edge: ; preds = %land.rhs255.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_sp_update_accept_mode.exit

do.end270.i:                                      ; preds = %land.rhs255.i
  call void @__sanitizer_cov_trace_pc() #12
  %name272.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call282.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 601, ptr noundef nonnull %name272.i, i32 noundef %or245341.i) #15
  br label %qed_sp_update_accept_mode.exit

qed_sp_update_accept_mode.exit:                   ; preds = %do.end270.i, %land.rhs255.i.qed_sp_update_accept_mode.exit_crit_edge, %if.then144.i.qed_sp_update_accept_mode.exit_crit_edge, %if.end140.i.qed_sp_update_accept_mode.exit_crit_edge
  %sge_tpa_params = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %p_params, i32 0, i32 23
  %285 = ptrtoint ptr %sge_tpa_params to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %sge_tpa_params, align 4
  %tobool.not.i114 = icmp eq ptr %286, null
  br i1 %tobool.not.i114, label %if.then.i115, label %if.end.i116

if.then.i115:                                     ; preds = %qed_sp_update_accept_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %update_tpa_param_flg.i = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 11
  %287 = ptrtoint ptr %update_tpa_param_flg.i to i32
  call void @__asan_storeN_noabort(i32 %287, i32 2)
  store i16 0, ptr %update_tpa_param_flg.i, align 1
  br label %qed_sp_vport_update_sge_tpa.exit

if.end.i116:                                      ; preds = %qed_sp_update_accept_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %update_tpa_en_flg4.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 1
  %288 = ptrtoint ptr %update_tpa_en_flg4.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %update_tpa_en_flg4.i, align 1
  %update_tpa_en_flg6.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %290 = ptrtoint ptr %update_tpa_en_flg6.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %update_tpa_en_flg6.i, align 4
  %tpa_param.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %tpa_ipv4_en_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 2
  %291 = ptrtoint ptr %tpa_ipv4_en_flg.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %tpa_ipv4_en_flg.i, align 2
  %293 = ptrtoint ptr %tpa_param.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %292, ptr %tpa_param.i, align 2
  %tpa_ipv6_en_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 3
  %294 = ptrtoint ptr %tpa_ipv6_en_flg.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %tpa_ipv6_en_flg.i, align 1
  %tpa_ipv6_en_flg8.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 4, i32 1
  %296 = ptrtoint ptr %tpa_ipv6_en_flg8.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %295, ptr %tpa_ipv6_en_flg8.i, align 1
  %tpa_ipv4_tunn_en_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 4
  %297 = ptrtoint ptr %tpa_ipv4_tunn_en_flg.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %tpa_ipv4_tunn_en_flg.i, align 2
  %tpa_ipv4_tunn_en_flg9.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 1
  %299 = ptrtoint ptr %tpa_ipv4_tunn_en_flg9.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %298, ptr %tpa_ipv4_tunn_en_flg9.i, align 2
  %tpa_ipv6_tunn_en_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 5
  %300 = ptrtoint ptr %tpa_ipv6_tunn_en_flg.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %tpa_ipv6_tunn_en_flg.i, align 1
  %tpa_ipv6_tunn_en_flg10.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 2
  %302 = ptrtoint ptr %tpa_ipv6_tunn_en_flg10.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %tpa_ipv6_tunn_en_flg10.i, align 1
  %update_tpa_param_flg11.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 6
  %303 = ptrtoint ptr %update_tpa_param_flg11.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %update_tpa_param_flg11.i, align 2
  %update_tpa_param_flg13.i = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod, i32 0, i32 11
  %305 = ptrtoint ptr %update_tpa_param_flg13.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %update_tpa_param_flg13.i, align 1
  %306 = ptrtoint ptr %286 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %286, align 2
  %max_buff_num.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 4, i32 11
  %308 = ptrtoint ptr %max_buff_num.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %max_buff_num.i, align 2
  %tpa_pkt_split_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 7
  %309 = ptrtoint ptr %tpa_pkt_split_flg.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %tpa_pkt_split_flg.i, align 1
  %tpa_pkt_split_flg14.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 3
  %311 = ptrtoint ptr %tpa_pkt_split_flg14.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %310, ptr %tpa_pkt_split_flg14.i, align 2
  %tpa_hdr_data_split_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 8
  %312 = ptrtoint ptr %tpa_hdr_data_split_flg.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %tpa_hdr_data_split_flg.i, align 2
  %tpa_hdr_data_split_flg15.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 4, i32 5
  %314 = ptrtoint ptr %tpa_hdr_data_split_flg15.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %313, ptr %tpa_hdr_data_split_flg15.i, align 1
  %tpa_gro_consistent_flg.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 9
  %315 = ptrtoint ptr %tpa_gro_consistent_flg.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %tpa_gro_consistent_flg.i, align 1
  %tpa_gro_consistent_flg16.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 4, i32 6
  %317 = ptrtoint ptr %tpa_gro_consistent_flg16.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %316, ptr %tpa_gro_consistent_flg16.i, align 2
  %tpa_max_aggs_num.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 10
  %318 = ptrtoint ptr %tpa_max_aggs_num.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %tpa_max_aggs_num.i, align 2
  %tpa_max_aggs_num17.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 4, i32 7
  %320 = ptrtoint ptr %tpa_max_aggs_num17.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %tpa_max_aggs_num17.i, align 1
  %tpa_max_size.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 11
  %321 = ptrtoint ptr %tpa_max_size.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %tpa_max_size.i, align 2
  %323 = call i16 @llvm.bswap.i16(i16 %322) #10
  %tpa_max_size18.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4
  %324 = ptrtoint ptr %tpa_max_size18.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %323, ptr %tpa_max_size18.i, align 2
  %tpa_min_size_to_start.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 12
  %325 = ptrtoint ptr %tpa_min_size_to_start.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %tpa_min_size_to_start.i, align 2
  %327 = call i16 @llvm.bswap.i16(i16 %326) #10
  %tpa_min_size_to_start19.i = getelementptr inbounds %struct.vport_update_ramrod_data, ptr %ramrod, i32 0, i32 4, i32 9
  %328 = ptrtoint ptr %tpa_min_size_to_start19.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %327, ptr %tpa_min_size_to_start19.i, align 2
  %tpa_min_size_to_cont.i = getelementptr inbounds %struct.qed_sge_tpa_params, ptr %286, i32 0, i32 13
  %329 = ptrtoint ptr %tpa_min_size_to_cont.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %tpa_min_size_to_cont.i, align 2
  %331 = call i16 @llvm.bswap.i16(i16 %330) #10
  %tpa_min_size_to_cont20.i = getelementptr inbounds %struct.qed_spq_entry, ptr %19, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 4, i32 1
  %332 = ptrtoint ptr %tpa_min_size_to_cont20.i to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %331, ptr %tpa_min_size_to_cont20.i, align 2
  br label %qed_sp_vport_update_sge_tpa.exit

qed_sp_vport_update_sge_tpa.exit:                 ; preds = %if.end.i116, %if.then.i115
  %333 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %p_ent, align 4
  %call29 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %334, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %qed_sp_vport_update_sge_tpa.exit, %if.then24, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.2.i, %if.then24 ], [ %call29, %qed_sp_vport_update_sge_tpa.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ %call9, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abs_vport_id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_vport_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_sp_destroy_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_vport_stop(ptr noundef %p_hwfn, i16 noundef zeroext %opaque_fid, i8 noundef zeroext %vport_id) local_unnamed_addr #0 align 64 {
entry:
  %init_data = alloca %struct.qed_sp_init_data, align 4
  %p_ent = alloca ptr, align 4
  %abs_vport_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %p_ent, align 4, !annotation !262
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abs_vport_id) #10
  %1 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %abs_vport_id, align 1
  %2 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @qed_vf_pf_vport_stop(ptr noundef %p_hwfn) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %vport_id, ptr noundef nonnull %abs_vport_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = getelementptr inbounds i8, ptr %init_data, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %call5 = call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #10
  %8 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %init_data, align 4
  %opaque_fid6 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %9 = ptrtoint ptr %opaque_fid6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %opaque_fid, ptr %opaque_fid6, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %10 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %comp_mode, align 4
  %call7 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 3, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %abs_vport_id, align 1
  %15 = ptrtoint ptr %ramrod to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ramrod, align 1
  %call12 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %12, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call12, %if.end10 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abs_vport_id) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_vport_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eth_rxq_start_ramrod(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_cid, i16 noundef zeroext %bd_max_bytes, i32 noundef %bd_chain_phys_addr, i32 noundef %cqe_pbl_addr, i16 noundef zeroext %cqe_pbl_size) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %3 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dp_module, align 4
  %and = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end14_crit_edge, label %do.end, !prof !261

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.4, ptr %name
  %opaque_fid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 5
  %5 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opaque_fid, align 4
  %conv8 = zext i16 %6 to i32
  %cid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 4
  %7 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cid, align 4
  %abs = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1
  %queue_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_id, align 2
  %conv9 = zext i16 %10 to i32
  %11 = ptrtoint ptr %abs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %abs, align 2
  %conv11 = zext i8 %12 to i32
  %sb_igu_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %13 = ptrtoint ptr %sb_igu_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sb_igu_id, align 4
  %conv12 = zext i16 %14 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 853, ptr noundef nonnull %spec.select, i32 noundef %conv8, i32 noundef %8, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv12) #15
  br label %do.end14

do.end14:                                         ; preds = %do.end, %land.rhs.do.end14_crit_edge, %entry.do.end14_crit_edge
  %15 = getelementptr inbounds i8, ptr %init_data, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 12)
  %cid15 = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 4
  %17 = ptrtoint ptr %cid15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cid15, align 4
  %19 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %init_data, align 4
  %opaque_fid17 = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 5
  %20 = ptrtoint ptr %opaque_fid17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %opaque_fid17, align 4
  %opaque_fid18 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %22 = ptrtoint ptr %opaque_fid18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %opaque_fid18, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %23 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %comp_mode, align 4
  %call19 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 4, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %do.end14
  %24 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3
  %sb_igu_id23 = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %26 = ptrtoint ptr %sb_igu_id23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sb_igu_id23, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %sb_id = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6
  %29 = ptrtoint ptr %sb_id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %sb_id, align 2
  %sb_idx = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 3
  %30 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sb_idx, align 2
  %sb_index = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %32 = ptrtoint ptr %sb_index to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sb_index, align 4
  %abs24 = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1
  %33 = ptrtoint ptr %abs24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %abs24, align 2
  %vport_id26 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, ptr %ramrod, i32 0, i32 5
  %35 = ptrtoint ptr %vport_id26 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %vport_id26, align 1
  %stats_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %stats_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %stats_id, align 2
  %stats_counter_id = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 9
  %38 = ptrtoint ptr %stats_counter_id to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %stats_counter_id, align 1
  %queue_id29 = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %queue_id29 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %queue_id29, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %ramrod to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %ramrod, align 4
  %complete_cqe_flg = getelementptr inbounds %struct.rx_queue_start_ramrod_data, ptr %ramrod, i32 0, i32 7
  %43 = ptrtoint ptr %complete_cqe_flg to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %complete_cqe_flg, align 1
  %complete_event_flg = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %44 = ptrtoint ptr %complete_event_flg to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %complete_event_flg, align 4
  %45 = call i16 @llvm.bswap.i16(i16 %bd_max_bytes)
  %bd_max_bytes30 = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %46 = ptrtoint ptr %bd_max_bytes30 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %bd_max_bytes30, align 4
  %bd_base = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 2
  %hi = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %hi, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %bd_chain_phys_addr)
  %49 = ptrtoint ptr %bd_base to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %bd_base, align 4
  %50 = call i16 @llvm.bswap.i16(i16 %cqe_pbl_size)
  %num_of_pbl_pages = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %num_of_pbl_pages to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %num_of_pbl_pages, align 2
  %cqe_pbl_addr40 = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %hi41 = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %52 = ptrtoint ptr %hi41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %hi41, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %cqe_pbl_addr)
  %54 = ptrtoint ptr %cqe_pbl_addr40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cqe_pbl_addr40, align 4
  %vfid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 7
  %55 = ptrtoint ptr %vfid to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %vfid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %cmp48.not = icmp eq i8 %56, -1
  br i1 %cmp48.not, label %if.end22.if.end99_crit_edge, label %if.then50

if.end22.if.end99_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then50:                                        ; preds = %if.end22
  %vf_legacy = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 10
  %57 = ptrtoint ptr %vf_legacy to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vf_legacy, align 2
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool53.not = icmp eq i8 %59, 0
  %vf_qid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 8
  %60 = ptrtoint ptr %vf_qid to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vf_qid, align 4
  %vf_rx_prod_index = getelementptr inbounds %struct.rx_queue_start_ramrod_data, ptr %ramrod, i32 0, i32 18
  %62 = ptrtoint ptr %vf_rx_prod_index to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %vf_rx_prod_index, align 1
  %63 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp61 = icmp eq i8 %64, 0
  br i1 %cmp61, label %land.rhs63, label %if.then50.do.end96_crit_edge

if.then50.do.end96_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

land.rhs63:                                       ; preds = %if.then50
  %dp_module64 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %65 = ptrtoint ptr %dp_module64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dp_module64, align 4
  %and65 = and i32 %66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.rhs63.do.end96_crit_edge, label %do.end77, !prof !261

land.rhs63.do.end96_crit_edge:                    ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

do.end77:                                         ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #12
  %name79 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool81.not = icmp eq ptr %name79, null
  %spec.select146 = select i1 %tobool81.not, ptr @.str.4, ptr %name79
  %cond90 = select i1 %tobool53.not, ptr @.str.4, ptr @.str.10
  %67 = ptrtoint ptr %vf_qid to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %vf_qid, align 4
  %conv92 = zext i8 %68 to i32
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 890, ptr noundef nonnull %spec.select146, ptr noundef nonnull %cond90, i32 noundef %conv92) #15
  br label %do.end96

do.end96:                                         ; preds = %do.end77, %land.rhs63.do.end96_crit_edge, %if.then50.do.end96_crit_edge
  %vf_rx_prod_use_zone_a = getelementptr inbounds %struct.qed_spq_entry, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %vf_rx_prod_use_zone_a to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %59, ptr %vf_rx_prod_use_zone_a, align 4
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %if.end22.if.end99_crit_edge
  %70 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p_ent, align 4
  %call100 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %71, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call100, %if.end99 ], [ %call19, %do.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_eth_rx_queues_update(ptr noundef %p_hwfn, ptr nocapture noundef readonly %pp_rxq_handles, i8 noundef zeroext %num_rxqs, i8 noundef zeroext %complete_cqe_flg, i8 noundef zeroext %complete_event_flg, i32 noundef %comp_mode, ptr noundef %p_comp_data) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  %1 = getelementptr inbounds i8, ptr %init_data, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %comp_mode1 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %3 = ptrtoint ptr %comp_mode1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %comp_mode, ptr %comp_mode1, align 4
  %p_comp_data2 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 3
  %4 = ptrtoint ptr %p_comp_data2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %p_comp_data, ptr %p_comp_data2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_rxqs)
  %cmp33.not = icmp eq i8 %num_rxqs, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %opaque_fid6 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %wide.trip.count = zext i8 %num_rxqs to i32
  br label %for.body

for.cond:                                         ; preds = %if.end
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pp_rxq_handles, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cid = getelementptr inbounds %struct.qed_queue_cid, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cid, align 4
  %9 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_queue_cid, ptr %6, i32 0, i32 5
  %10 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opaque_fid, align 4
  %12 = ptrtoint ptr %opaque_fid6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %opaque_fid6, align 4
  %call = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 9, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3
  %abs = getelementptr inbounds %struct.qed_queue_cid, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %abs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %abs, align 2
  %vport_id7 = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %vport_id7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %vport_id7, align 4
  %queue_id = getelementptr inbounds %struct.qed_queue_cid, ptr %6, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %queue_id, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %21 = ptrtoint ptr %ramrod to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %ramrod, align 4
  %complete_cqe_flg9 = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %complete_cqe_flg9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %complete_cqe_flg, ptr %complete_cqe_flg9, align 2
  %complete_event_flg10 = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %complete_event_flg10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %complete_event_flg, ptr %complete_event_flg10, align 1
  %call11 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %14, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call11, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eth_rx_queue_stop(ptr noundef %p_hwfn, ptr noundef %p_rxq, i1 noundef zeroext %eq_completion_only, i1 noundef zeroext %cqe_completion) local_unnamed_addr #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #10
  %4 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #10
  %5 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %cid.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_rxq, i32 0, i32 4
  %7 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cid.i, align 4
  %9 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_rxq, i32 0, i32 5
  %10 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opaque_fid.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %5, align 4
  %comp_mode.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %13 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %comp_mode.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 5, i8 noundef zeroext 4, ptr noundef nonnull %init_data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.qed_eth_pf_rx_queue_stop.exit_crit_edge

if.then.qed_eth_pf_rx_queue_stop.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_eth_pf_rx_queue_stop.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_ent.i, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3
  %abs.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_rxq, i32 0, i32 1
  %16 = ptrtoint ptr %abs.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %abs.i, align 2
  %vport_id4.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %vport_id4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %vport_id4.i, align 2
  %queue_id.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_rxq, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %queue_id.i, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20) #10
  %22 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %ramrod.i, align 2
  %vfid.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_rxq, i32 0, i32 7
  %23 = ptrtoint ptr %vfid.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vfid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp.i = icmp ne i8 %24, -1
  %brmerge.i = or i1 %cmp.i, %eq_completion_only
  %not.brmerge.i = xor i1 %brmerge.i, true
  %spec.select36.i = or i1 %not.brmerge.i, %cqe_completion
  %conv10.i = zext i1 %spec.select36.i to i8
  %complete_cqe_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %complete_cqe_flg.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.i, ptr %complete_cqe_flg.i, align 2
  %26 = ptrtoint ptr %vfid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vfid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp13.not.i = icmp ne i8 %27, -1
  %spec.select.i = or i1 %cmp13.not.i, %eq_completion_only
  %conv20.i = zext i1 %spec.select.i to i8
  %complete_event_flg.i = getelementptr inbounds %struct.qed_spq_entry, ptr %15, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %complete_event_flg.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv20.i, ptr %complete_event_flg.i, align 1
  %call21.i = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %15, ptr noundef null) #10
  br label %qed_eth_pf_rx_queue_stop.exit

qed_eth_pf_rx_queue_stop.exit:                    ; preds = %if.end.i, %if.then.qed_eth_pf_rx_queue_stop.exit_crit_edge
  %retval.0.i = phi i32 [ %call21.i, %if.end.i ], [ %call.i, %if.then.qed_eth_pf_rx_queue_stop.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @qed_vf_pf_rxq_stop(ptr noundef %p_hwfn, ptr noundef %p_rxq, i1 noundef zeroext %cqe_completion) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %qed_eth_pf_rx_queue_stop.exit
  %rc.0 = phi i32 [ %call5, %if.else ], [ %retval.0.i, %qed_eth_pf_rx_queue_stop.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool6.not = icmp eq i32 %rc.0, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_eth_queue_cid_release(ptr noundef %p_hwfn, ptr noundef %p_rxq)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_rxq_stop(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eth_txq_start_ramrod(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_cid, i32 noundef %pbl_addr, i16 noundef zeroext %pbl_size, i16 noundef zeroext %pq_id) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  %1 = getelementptr inbounds i8, ptr %init_data, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %cid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 4
  %3 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cid, align 4
  %5 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 5
  %6 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opaque_fid, align 4
  %opaque_fid2 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %8 = ptrtoint ptr %opaque_fid2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %opaque_fid2, align 4
  %comp_mode = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %9 = ptrtoint ptr %comp_mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %comp_mode, align 4
  %call = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 6, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3
  %abs = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1
  %12 = ptrtoint ptr %abs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %abs, align 2
  %vport_id3 = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %vport_id3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %vport_id3, align 1
  %sb_igu_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %15 = ptrtoint ptr %sb_igu_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sb_igu_id, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %ramrod to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %ramrod, align 4
  %sb_idx = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 3
  %19 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sb_idx, align 2
  %sb_index = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %sb_index to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %sb_index, align 2
  %stats_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %stats_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stats_id, align 2
  %stats_counter_id = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 0, i32 5
  %24 = ptrtoint ptr %stats_counter_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %stats_counter_id, align 1
  %queue_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %queue_id, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %queue_zone_id = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %queue_zone_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %queue_zone_id, align 4
  %29 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %queue_id, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %same_as_last_id = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %same_as_last_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %same_as_last_id, align 4
  %33 = call i16 @llvm.bswap.i16(i16 %pbl_size)
  %pbl_size8 = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %pbl_size8 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %pbl_size8, align 4
  %pbl_base_addr = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %hi = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %35 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %hi, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %pbl_addr)
  %37 = ptrtoint ptr %pbl_base_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pbl_base_addr, align 4
  %38 = call i16 @llvm.bswap.i16(i16 %pq_id)
  %qm_pq_id = getelementptr inbounds %struct.qed_spq_entry, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6
  %39 = ptrtoint ptr %qm_pq_id to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %qm_pq_id, align 2
  %call11 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_eth_tx_queue_stop(ptr noundef %p_hwfn, ptr noundef %p_handle) local_unnamed_addr #0 align 64 {
entry:
  %p_ent.i = alloca ptr, align 4
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i) #10
  %4 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %p_ent.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #10
  %5 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %cid.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_handle, i32 0, i32 4
  %7 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cid.i, align 4
  %9 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %init_data.i, align 4
  %opaque_fid.i = getelementptr inbounds %struct.qed_queue_cid, ptr %p_handle, i32 0, i32 5
  %10 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %opaque_fid.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %5, align 4
  %comp_mode.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %13 = ptrtoint ptr %comp_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %comp_mode.i, align 4
  %call.i = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent.i, i8 noundef zeroext 7, i8 noundef zeroext 4, ptr noundef nonnull %init_data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.qed_eth_pf_tx_queue_stop.exit_crit_edge

if.then.qed_eth_pf_tx_queue_stop.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_eth_pf_tx_queue_stop.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %p_ent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_ent.i, align 4
  %call3.i = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %15, ptr noundef null) #10
  br label %qed_eth_pf_tx_queue_stop.exit

qed_eth_pf_tx_queue_stop.exit:                    ; preds = %if.end.i, %if.then.qed_eth_pf_tx_queue_stop.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.qed_eth_pf_tx_queue_stop.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @qed_vf_pf_txq_stop(ptr noundef %p_hwfn, ptr noundef %p_handle) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %qed_eth_pf_tx_queue_stop.exit
  %rc.0 = phi i32 [ %call1, %if.else ], [ %retval.0.i, %qed_eth_pf_tx_queue_stop.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool2.not = icmp eq i32 %rc.0, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_eth_queue_cid_release(ptr noundef %p_hwfn, ptr noundef %p_handle)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_txq_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_sp_eth_filter_ucast(ptr noundef %p_hwfn, i16 noundef zeroext %opaque_fid, ptr noundef %p_filter_cmd, i32 noundef %comp_mode, ptr noundef %p_comp_data) local_unnamed_addr #0 align 64 {
entry:
  %vport_to_add_to.i = alloca i8, align 1
  %vport_to_remove_from.i = alloca i8, align 1
  %init_data.i = alloca %struct.qed_sp_init_data, align 4
  %p_ent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vport_to_add_to.i) #10
  %1 = ptrtoint ptr %vport_to_add_to.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %vport_to_add_to.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vport_to_remove_from.i) #10
  %2 = ptrtoint ptr %vport_to_remove_from.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vport_to_remove_from.i, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #10
  %vport_to_remove_from1.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 5
  %3 = ptrtoint ptr %vport_to_remove_from1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vport_to_remove_from1.i, align 1
  %call.i = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %4, ptr noundef nonnull %vport_to_remove_from.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %vport_to_add_to2.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 4
  %5 = ptrtoint ptr %vport_to_add_to2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vport_to_add_to2.i, align 2
  %call3.i = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %6, ptr noundef nonnull %vport_to_add_to.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i
  %7 = getelementptr inbounds i8, ptr %init_data.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %call7.i = call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #10
  %9 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call7.i, ptr %init_data.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %opaque_fid, ptr %7, align 4
  %comp_mode9.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 2
  %11 = ptrtoint ptr %comp_mode9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %comp_mode, ptr %comp_mode9.i, align 4
  %p_comp_data10.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i, i32 0, i32 3
  %12 = ptrtoint ptr %p_comp_data10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %p_comp_data, ptr %p_comp_data10.i, align 4
  %call11.i = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 8, i8 noundef zeroext 4, ptr noundef nonnull %init_data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end6.i.do.end_crit_edge

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end14.i:                                       ; preds = %if.end6.i
  %13 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_ent, align 4
  %ramrod.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3
  %is_rx_filter.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 2
  %15 = ptrtoint ptr %is_rx_filter.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_rx_filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not.i = icmp ne i8 %16, 0
  %conv16.i = zext i1 %tobool15.not.i to i8
  %17 = ptrtoint ptr %ramrod.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16.i, ptr %ramrod.i, align 4
  %is_tx_filter.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 3
  %18 = ptrtoint ptr %is_tx_filter.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_tx_filter.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not.i = icmp ne i8 %19, 0
  %conv20.i = zext i1 %tobool18.not.i to i8
  %tx.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20.i, ptr %tx.i, align 1
  %21 = ptrtoint ptr %p_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p_filter_cmd, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch.i = icmp eq i32 %23, 2
  %spec.select276.i = select i1 %switch.i, i8 2, i8 1
  %24 = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select276.i, ptr %24, align 2
  %filter_cmds.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %arrayidx26.i = getelementptr %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %type.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %27, label %sw.epilog45.i [
    i32 0, label %if.end14.i.if.then73.sink.split.i_crit_edge
    i32 1, label %sw.bb29.i
    i32 2, label %sw.bb31.i
    i32 3, label %sw.bb33.i
    i32 4, label %sw.bb35.i
    i32 5, label %sw.bb37.i
    i32 6, label %sw.bb39.i
    i32 7, label %sw.bb41.i
    i32 8, label %sw.bb43.i
  ]

if.end14.i.if.then73.sink.split.i_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split.i

sw.bb29.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %filter_cmds.i, align 4
  br label %if.end74thread-pre-split.i

sw.bb31.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split.i

sw.bb33.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split.i

sw.bb35.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %filter_cmds.i, align 4
  br label %if.end74thread-pre-split.i

sw.bb37.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split.i

sw.bb39.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split.i

sw.bb41.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.sink.split.i

sw.bb43.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %filter_cmds.i, align 4
  br label %if.end74thread-pre-split.i

sw.epilog45.i:                                    ; preds = %if.end14.i
  %32 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr.i = load i8, ptr %filter_cmds.i, align 4
  %33 = zext i8 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %.pr.i, label %sw.epilog45.i.if.end74.i_crit_edge [
    i8 1, label %sw.epilog45.i.if.then73.i_crit_edge
    i8 3, label %sw.epilog45.i.if.then73.i_crit_edge185
    i8 4, label %sw.epilog45.i.if.then73.i_crit_edge186
    i8 6, label %sw.epilog45.i.if.then73.i_crit_edge187
    i8 7, label %sw.epilog45.i.if.then73.i_crit_edge188
    i8 8, label %sw.epilog45.i.if.then73.i_crit_edge189
  ]

sw.epilog45.i.if.then73.i_crit_edge189:           ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

sw.epilog45.i.if.then73.i_crit_edge188:           ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

sw.epilog45.i.if.then73.i_crit_edge187:           ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

sw.epilog45.i.if.then73.i_crit_edge186:           ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

sw.epilog45.i.if.then73.i_crit_edge185:           ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

sw.epilog45.i.if.then73.i_crit_edge:              ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

sw.epilog45.i.if.end74.i_crit_edge:               ; preds = %sw.epilog45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then73.sink.split.i:                           ; preds = %sw.bb41.i, %sw.bb39.i, %sw.bb37.i, %sw.bb33.i, %sw.bb31.i, %if.end14.i.if.then73.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 3, %sw.bb31.i ], [ 4, %sw.bb33.i ], [ 6, %sw.bb37.i ], [ 7, %sw.bb39.i ], [ 8, %sw.bb41.i ], [ 1, %if.end14.i.if.then73.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink.i, ptr %filter_cmds.i, align 4
  br label %if.then73.i

if.then73.i:                                      ; preds = %if.then73.sink.split.i, %sw.epilog45.i.if.then73.i_crit_edge, %sw.epilog45.i.if.then73.i_crit_edge185, %sw.epilog45.i.if.then73.i_crit_edge186, %sw.epilog45.i.if.then73.i_crit_edge187, %sw.epilog45.i.if.then73.i_crit_edge188, %sw.epilog45.i.if.then73.i_crit_edge189
  %mac_msb.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %mac_mid.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %mac_lsb.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1
  %mac.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6
  call void @qed_set_fw_mac_addr(ptr noundef %mac_msb.i, ptr noundef %mac_mid.i, ptr noundef %mac_lsb.i, ptr noundef %mac.i) #10
  br label %if.end74thread-pre-split.i

if.end74thread-pre-split.i:                       ; preds = %if.then73.i, %sw.bb43.i, %sw.bb35.i, %sw.bb29.i
  %35 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr272.i = load i8, ptr %filter_cmds.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74thread-pre-split.i, %sw.epilog45.i.if.end74.i_crit_edge
  %36 = phi i8 [ %.pr272.i, %if.end74thread-pre-split.i ], [ %.pr.i, %sw.epilog45.i.if.end74.i_crit_edge ]
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %36, label %if.end74.i.if.end95.i_crit_edge [
    i8 2, label %if.end74.i.if.then94.i_crit_edge
    i8 3, label %if.end74.i.if.then94.i_crit_edge190
    i8 5, label %if.end74.i.if.then94.i_crit_edge191
    i8 6, label %if.end74.i.if.then94.i_crit_edge192
  ]

if.end74.i.if.then94.i_crit_edge192:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94.i

if.end74.i.if.then94.i_crit_edge191:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94.i

if.end74.i.if.then94.i_crit_edge190:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94.i

if.end74.i.if.then94.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94.i

if.end74.i.if.end95.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then94.i:                                      ; preds = %if.end74.i.if.then94.i_crit_edge, %if.end74.i.if.then94.i_crit_edge190, %if.end74.i.if.then94.i_crit_edge191, %if.end74.i.if.then94.i_crit_edge192
  %vlan.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 8
  %38 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vlan.i, align 4
  %40 = call i16 @llvm.bswap.i16(i16 %39) #10
  %vlan_id.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 8
  %41 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %vlan_id.i, align 2
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then94.i, %if.end74.i.if.end95.i_crit_edge
  %42 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %filter_cmds.i, align 4
  %.off268.i = add i8 %43, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off268.i)
  %switch269.i = icmp ult i8 %.off268.i, 3
  br i1 %switch269.i, label %if.then110.i, label %if.end95.i.if.end112.i_crit_edge

if.end95.i.if.end112.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112.i

if.then110.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  %vni.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 9
  %44 = ptrtoint ptr %vni.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vni.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10
  %vni111.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %47 = ptrtoint ptr %vni111.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %vni111.i, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then110.i, %if.end95.i.if.end112.i_crit_edge
  %48 = ptrtoint ptr %p_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p_filter_cmd, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %49, label %do.body.i [
    i32 2, label %if.then116.i
    i32 3, label %if.then135.i
    i32 0, label %if.end112.i.if.end162.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
  ]

if.end112.i.if.end162.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

if.then116.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %filter_cmds.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %filter_cmds.i, align 4
  %53 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx26.i, align 4
  %mac_msb119.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %mac_msb119.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mac_msb119.i, align 4
  %mac_msb120.i = getelementptr %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %56 = ptrtoint ptr %mac_msb120.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %mac_msb120.i, align 4
  %mac_mid121.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %mac_mid121.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mac_mid121.i, align 2
  %mac_mid122.i = getelementptr %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6
  %59 = ptrtoint ptr %mac_mid122.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %mac_mid122.i, align 2
  %mac_lsb123.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %mac_lsb123.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %mac_lsb123.i, align 4
  %mac_lsb124.i = getelementptr %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %mac_lsb124.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %mac_lsb124.i, align 4
  %vlan_id125.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 8
  %63 = ptrtoint ptr %vlan_id125.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vlan_id125.i, align 2
  %vlan_id126.i = getelementptr %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 4
  %65 = ptrtoint ptr %vlan_id126.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %vlan_id126.i, align 2
  %vni127.i = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %66 = ptrtoint ptr %vni127.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vni127.i, align 4
  %vni128.i = getelementptr %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4, i32 1
  %68 = ptrtoint ptr %vni128.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %vni128.i, align 4
  %action129.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 2
  %69 = ptrtoint ptr %action129.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %action129.i, align 2
  %70 = ptrtoint ptr %vport_to_remove_from.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vport_to_remove_from.i, align 1
  %vport_id.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 1
  %72 = ptrtoint ptr %vport_id.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %vport_id.i, align 1
  %action130.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %arrayidx26.i, i32 0, i32 2
  %73 = ptrtoint ptr %action130.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %action130.i, align 2
  %74 = ptrtoint ptr %vport_to_add_to.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %vport_to_add_to.i, align 1
  %vport_id131.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %arrayidx26.i, i32 0, i32 1
  %76 = ptrtoint ptr %vport_id131.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %vport_id131.i, align 1
  br label %if.end

if.then135.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %vport_to_add_to.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %vport_to_add_to.i, align 1
  %vport_id136.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 1
  %79 = ptrtoint ptr %vport_id136.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %vport_id136.i, align 1
  %80 = call ptr @memcpy(ptr %arrayidx26.i, ptr %filter_cmds.i, i32 16)
  %action137.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 2
  %81 = ptrtoint ptr %action137.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %action137.i, align 2
  %action138.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %arrayidx26.i, i32 0, i32 2
  %82 = ptrtoint ptr %action138.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 2, ptr %action138.i, align 2
  br label %if.end

sw.bb1.i.i:                                       ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

sw.bb2.i.i:                                       ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

do.body.i:                                        ; preds = %if.end112.i
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %83 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp146.i = icmp ult i8 %84, 3
  br i1 %cmp146.i, label %do.end.i, label %do.body.i.do.end161.i_crit_edge, !prof !260

do.body.i.do.end161.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end161.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 1345, ptr noundef nonnull %name.i, i32 noundef %49) #15
  br label %do.end161.i

do.end161.i:                                      ; preds = %do.end.i, %do.body.i.do.end161.i_crit_edge
  %85 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %p_ent, align 4
  call void @qed_sp_destroy_request(ptr noundef %p_hwfn, ptr noundef %86) #10
  br label %do.end

if.end162.i:                                      ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %if.end112.i.if.end162.i_crit_edge
  %action.0.i.ph.i = phi i8 [ 1, %sw.bb1.i.i ], [ 3, %sw.bb2.i.i ], [ 2, %if.end112.i.if.end162.i_crit_edge ]
  %action164.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 2
  %87 = ptrtoint ptr %action164.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %action.0.i.ph.i, ptr %action164.i, align 2
  %88 = ptrtoint ptr %p_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %p_filter_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp166.i = icmp eq i32 %89, 1
  %90 = ptrtoint ptr %vport_to_remove_from.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %vport_to_remove_from.val.i = load i8, ptr %vport_to_remove_from.i, align 1
  %91 = ptrtoint ptr %vport_to_add_to.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %vport_to_add_to.val.i = load i8, ptr %vport_to_add_to.i, align 1
  %cond173.in267.i = select i1 %cmp166.i, i8 %vport_to_remove_from.val.i, i8 %vport_to_add_to.val.i
  %vport_id175.i = getelementptr inbounds %struct.eth_filter_cmd, ptr %filter_cmds.i, i32 0, i32 1
  %92 = ptrtoint ptr %vport_id175.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %cond173.in267.i, ptr %vport_id175.i, align 1
  br label %if.end

do.end:                                           ; preds = %do.end161.i, %if.end6.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call11.i, %if.end6.i.do.end_crit_edge ], [ %call3.i, %if.end.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ], [ -22, %do.end161.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vport_to_remove_from.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vport_to_add_to.i) #10
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.4, ptr %name
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 1375, ptr noundef nonnull %spec.select, i32 noundef %retval.0.i.ph) #15
  br label %cleanup

if.end:                                           ; preds = %if.end162.i, %if.then135.i, %if.then116.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vport_to_remove_from.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vport_to_add_to.i) #10
  %assert_on_error = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 7
  %93 = ptrtoint ptr %assert_on_error to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %assert_on_error, align 2
  %assert_on_error8 = getelementptr inbounds %struct.qed_spq_entry, ptr %14, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %95 = ptrtoint ptr %assert_on_error8 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %assert_on_error8, align 1
  %96 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p_ent, align 4
  %call9 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %97, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body30, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name17 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name17, null
  %spec.select176 = select i1 %tobool19.not, ptr @.str.4, ptr %name17
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 1383, ptr noundef nonnull %spec.select176, i32 noundef %call9) #15
  br label %cleanup

do.body30:                                        ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %98 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp = icmp eq i8 %99, 0
  br i1 %cmp, label %land.rhs, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %do.body30
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %100 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dp_module, align 4
  %and = and i32 %101, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.rhs.do.body84_crit_edge, label %do.end38, !prof !261

land.rhs.do.body84_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body84

do.end38:                                         ; preds = %land.rhs
  %name40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool42.not = icmp eq ptr %name40, null
  %spec.select177 = select i1 %tobool42.not, ptr @.str.4, ptr %name40
  %102 = ptrtoint ptr %p_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %p_filter_cmd, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %103, label %cond.false57 [
    i32 0, label %do.end38.cond.end64_crit_edge
    i32 1, label %cond.end64.fold.split
  ]

do.end38.cond.end64_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end64

cond.false57:                                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp59 = icmp eq i32 %103, 2
  %cond61 = select i1 %cmp59, ptr @.str.21, ptr @.str.22
  br label %cond.end64

cond.end64.fold.split:                            ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end64.fold.split, %cond.false57, %do.end38.cond.end64_crit_edge
  %cond65 = phi ptr [ @.str.19, %do.end38.cond.end64_crit_edge ], [ %cond61, %cond.false57 ], [ @.str.20, %cond.end64.fold.split ]
  %105 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp66 = icmp eq i32 %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp71 = icmp eq i32 %106, 1
  %cond73 = select i1 %cmp71, ptr @.str.24, ptr @.str.25
  %cond75 = select i1 %cmp66, ptr @.str.23, ptr %cond73
  %107 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %24, align 2
  %conv77 = zext i8 %108 to i32
  %109 = ptrtoint ptr %is_rx_filter.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_rx_filter.i, align 4
  %conv78 = zext i8 %110 to i32
  %111 = ptrtoint ptr %is_tx_filter.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %is_tx_filter.i, align 1
  %conv79 = zext i8 %112 to i32
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef 1399, ptr noundef nonnull %spec.select177, ptr noundef nonnull %cond65, ptr noundef nonnull %cond75, i32 noundef %conv77, i32 noundef %conv78, i32 noundef %conv79) #15
  br label %do.body84

do.body84:                                        ; preds = %cond.end64, %land.rhs.do.body84_crit_edge
  %113 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %113)
  %.pr = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp87 = icmp eq i8 %.pr, 0
  br i1 %cmp87, label %land.rhs89, label %do.body84.cleanup_crit_edge

do.body84.cleanup_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs89:                                       ; preds = %do.body84
  %114 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dp_module, align 4
  %and91 = and i32 %115, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %land.rhs89.cleanup_crit_edge, label %do.end103, !prof !261

land.rhs89.cleanup_crit_edge:                     ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end103:                                        ; preds = %land.rhs89
  call void @__sanitizer_cov_trace_pc() #12
  %name105 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool107.not = icmp eq ptr %name105, null
  %spec.select178 = select i1 %tobool107.not, ptr @.str.4, ptr %name105
  %116 = ptrtoint ptr %vport_to_add_to2.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %vport_to_add_to2.i, align 2
  %conv114 = zext i8 %117 to i32
  %118 = ptrtoint ptr %vport_to_remove_from1.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %vport_to_remove_from1.i, align 1
  %conv115 = zext i8 %119 to i32
  %mac = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6
  %120 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %mac, align 4
  %conv116 = zext i8 %121 to i32
  %arrayidx118 = getelementptr %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6, i32 1
  %122 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %123 to i32
  %arrayidx121 = getelementptr %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6, i32 2
  %124 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx121, align 2
  %conv122 = zext i8 %125 to i32
  %arrayidx124 = getelementptr %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6, i32 3
  %126 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %127 to i32
  %arrayidx127 = getelementptr %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6, i32 4
  %128 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx127, align 4
  %conv128 = zext i8 %129 to i32
  %arrayidx130 = getelementptr %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 6, i32 5
  %130 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %131 to i32
  %vlan = getelementptr inbounds %struct.qed_filter_ucast, ptr %p_filter_cmd, i32 0, i32 8
  %132 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vlan, align 4
  %conv132 = zext i16 %133 to i32
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.12, i32 noundef 1410, ptr noundef nonnull %spec.select178, i32 noundef %conv114, i32 noundef %conv115, i32 noundef %conv116, i32 noundef %conv119, i32 noundef %conv122, i32 noundef %conv125, i32 noundef %conv128, i32 noundef %conv131, i32 noundef %conv132) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %land.rhs89.cleanup_crit_edge, %do.body84.cleanup_crit_edge, %do.body30.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call9, %do.end15 ], [ 0, %do.body84.cleanup_crit_edge ], [ 0, %do.end103 ], [ 0, %land.rhs89.cleanup_crit_edge ], [ 0, %do.body30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @qed_mcast_bin_from_mac(ptr nocapture noundef readonly %mac) local_unnamed_addr #5 align 64 {
entry:
  %packet_buf.i = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packet_buf.i) #10
  %0 = ptrtoint ptr %packet_buf.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %packet_buf.i, align 8
  %1 = call ptr @memcpy(ptr %packet_buf.i, ptr %mac, i32 6)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %crc32_result.04.i.i = phi i32 [ %spec.select.7.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %byte.03.i.i = phi i32 [ %inc15.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr i8, ptr %packet_buf.i, i32 %byte.03.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %conv8.i.i = zext i8 %3 to i32
  %shr.i.i = lshr i32 %crc32_result.04.i.i, 31
  %shl.i.i = shl i32 %crc32_result.04.i.i, 1
  %and.i.i = and i32 %conv8.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %and.i.i)
  %cmp10.not.i.i = icmp eq i32 %shr.i.i, %and.i.i
  %or.i.i = xor i32 %shl.i.i, 517762881
  %spec.select.i.i = select i1 %cmp10.not.i.i, i32 %shl.i.i, i32 %or.i.i
  %shr.1.i.i = lshr i32 %spec.select.i.i, 31
  %shl.1.i.i = shl i32 %spec.select.i.i, 1
  %shr9.1.i.i = lshr i32 %conv8.i.i, 1
  %and.1.i.i = and i32 %shr9.1.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i.i, i32 %and.1.i.i)
  %cmp10.not.1.i.i = icmp eq i32 %shr.1.i.i, %and.1.i.i
  %or.1.i.i = xor i32 %shl.1.i.i, 517762881
  %spec.select.1.i.i = select i1 %cmp10.not.1.i.i, i32 %shl.1.i.i, i32 %or.1.i.i
  %shr.2.i.i = lshr i32 %spec.select.1.i.i, 31
  %shl.2.i.i = shl i32 %spec.select.1.i.i, 1
  %shr9.2.i.i = lshr i32 %conv8.i.i, 2
  %and.2.i.i = and i32 %shr9.2.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i.i, i32 %and.2.i.i)
  %cmp10.not.2.i.i = icmp eq i32 %shr.2.i.i, %and.2.i.i
  %or.2.i.i = xor i32 %shl.2.i.i, 517762881
  %spec.select.2.i.i = select i1 %cmp10.not.2.i.i, i32 %shl.2.i.i, i32 %or.2.i.i
  %shr.3.i.i = lshr i32 %spec.select.2.i.i, 31
  %shl.3.i.i = shl i32 %spec.select.2.i.i, 1
  %shr9.3.i.i = lshr i32 %conv8.i.i, 3
  %and.3.i.i = and i32 %shr9.3.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i.i, i32 %and.3.i.i)
  %cmp10.not.3.i.i = icmp eq i32 %shr.3.i.i, %and.3.i.i
  %or.3.i.i = xor i32 %shl.3.i.i, 517762881
  %spec.select.3.i.i = select i1 %cmp10.not.3.i.i, i32 %shl.3.i.i, i32 %or.3.i.i
  %shr.4.i.i = lshr i32 %spec.select.3.i.i, 31
  %shl.4.i.i = shl i32 %spec.select.3.i.i, 1
  %shr9.4.i.i = lshr i32 %conv8.i.i, 4
  %and.4.i.i = and i32 %shr9.4.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4.i.i, i32 %and.4.i.i)
  %cmp10.not.4.i.i = icmp eq i32 %shr.4.i.i, %and.4.i.i
  %or.4.i.i = xor i32 %shl.4.i.i, 517762881
  %spec.select.4.i.i = select i1 %cmp10.not.4.i.i, i32 %shl.4.i.i, i32 %or.4.i.i
  %shr.5.i.i = lshr i32 %spec.select.4.i.i, 31
  %shl.5.i.i = shl i32 %spec.select.4.i.i, 1
  %shr9.5.i.i = lshr i32 %conv8.i.i, 5
  %and.5.i.i = and i32 %shr9.5.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5.i.i, i32 %and.5.i.i)
  %cmp10.not.5.i.i = icmp eq i32 %shr.5.i.i, %and.5.i.i
  %or.5.i.i = xor i32 %shl.5.i.i, 517762881
  %spec.select.5.i.i = select i1 %cmp10.not.5.i.i, i32 %shl.5.i.i, i32 %or.5.i.i
  %shr.6.i.i = lshr i32 %spec.select.5.i.i, 31
  %shl.6.i.i = shl i32 %spec.select.5.i.i, 1
  %shr9.6.i.i = lshr i32 %conv8.i.i, 6
  %and.6.i.i = and i32 %shr9.6.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6.i.i, i32 %and.6.i.i)
  %cmp10.not.6.i.i = icmp eq i32 %shr.6.i.i, %and.6.i.i
  %or.6.i.i = xor i32 %shl.6.i.i, 517762881
  %spec.select.6.i.i = select i1 %cmp10.not.6.i.i, i32 %shl.6.i.i, i32 %or.6.i.i
  %shr.7.i.i = lshr i32 %spec.select.6.i.i, 31
  %shl.7.i.i = shl i32 %spec.select.6.i.i, 1
  %shr9.7.i.i = lshr i32 %conv8.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7.i.i, i32 %shr9.7.i.i)
  %cmp10.not.7.i.i = icmp eq i32 %shr.7.i.i, %shr9.7.i.i
  %or.7.i.i = xor i32 %shl.7.i.i, 517762881
  %spec.select.7.i.i = select i1 %cmp10.not.7.i.i, i32 %shl.7.i.i, i32 %or.7.i.i
  %inc15.i.i = add nuw nsw i32 %byte.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc15.i.i, 8
  br i1 %exitcond.not.i.i, label %qed_crc32c_le.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

qed_crc32c_le.exit:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packet_buf.i) #10
  %conv = trunc i32 %spec.select.7.i.i to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_get_vport_stats(ptr noundef %cdev, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memset(ptr %stats, i32 0, i32 576)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @_qed_get_vport_stats(ptr noundef nonnull %cdev, ptr noundef %stats)
  %reset_stats = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 41
  %1 = ptrtoint ptr %reset_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reset_stats, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %reset_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_stats, align 4
  %arrayidx = getelementptr i64, ptr %4, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  %arrayidx5 = getelementptr i64, ptr %stats, i32 %i.014
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx5, align 8
  %sub = sub i64 %8, %6
  store i64 %sub, ptr %arrayidx5, align 8
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 72
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_qed_get_vport_stats(ptr noundef %cdev, ptr noundef %stats) unnamed_addr #0 align 64 {
entry:
  %fw_vport = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_vport) #10
  %0 = ptrtoint ptr %fw_vport to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fw_vport, align 1
  %1 = call ptr @memset(ptr %stats, i32 0, i32 576)
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp90.not = icmp eq i8 %3, 0
  br i1 %cmp90.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.091
  %4 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %cond.end, label %for.body.land.end_crit_edge

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

cond.end:                                         ; preds = %for.body
  %call = call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #10
  %6 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %b_is_vf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool3.not = icmp eq i8 %.pr, 0
  br i1 %tobool3.not, label %if.then, label %cond.end.land.end_crit_edge

cond.end.land.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

if.then:                                          ; preds = %cond.end
  %call4 = call i32 @qed_fw_vport(ptr noundef %arrayidx, i8 noundef zeroext 0, ptr noundef nonnull %fw_vport) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.091, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 1882, ptr noundef nonnull %spec.select) #15
  br label %out

if.end18:                                         ; preds = %if.then
  %7 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr80 = load i8, ptr %b_is_vf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr80)
  %tobool20.not = icmp eq i8 %.pr80, 0
  %tobool21.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool20.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %do.end26, label %if.end40

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %name28 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.091, i32 8
  %tobool30.not = icmp eq ptr %name28, null
  %spec.select74 = select i1 %tobool30.not, ptr @.str.4, ptr %name28
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.70, i32 noundef 1888, ptr noundef nonnull %spec.select74) #15
  br label %cleanup

if.end40:                                         ; preds = %if.end18
  br i1 %tobool20.not, label %land.rhs, label %if.end40.land.end_crit_edge

if.end40.land.end_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %my_id = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.091, i32 1
  %8 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool43.not = icmp eq i8 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end40.land.end_crit_edge, %cond.end.land.end_crit_edge, %for.body.land.end_crit_edge
  %cond798587 = phi ptr [ %call, %if.end40.land.end_crit_edge ], [ %call, %land.rhs ], [ null, %for.body.land.end_crit_edge ], [ %call, %cond.end.land.end_crit_edge ]
  %10 = phi i1 [ false, %if.end40.land.end_crit_edge ], [ %tobool43.not, %land.rhs ], [ false, %for.body.land.end_crit_edge ], [ false, %cond.end.land.end_crit_edge ]
  %11 = ptrtoint ptr %fw_vport to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fw_vport, align 1
  %conv44 = zext i8 %12 to i16
  call fastcc void @__qed_get_vport_mstats(ptr noundef %arrayidx, ptr noundef %cond798587, ptr noundef %stats, i16 noundef zeroext %conv44) #10
  call fastcc void @__qed_get_vport_ustats(ptr noundef %arrayidx, ptr noundef %cond798587, ptr noundef %stats, i16 noundef zeroext %conv44) #10
  call fastcc void @__qed_get_vport_tstats(ptr noundef %arrayidx, ptr noundef %cond798587, ptr noundef %stats) #10
  call fastcc void @__qed_get_vport_pstats(ptr noundef %arrayidx, ptr noundef %cond798587, ptr noundef %stats, i16 noundef zeroext %conv44) #10
  br i1 %10, label %land.lhs.true.i, label %land.end.out_crit_edge

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.i:                                  ; preds = %land.end
  %mcp_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.091, i32 45
  %13 = ptrtoint ptr %mcp_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcp_info.i, align 8
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.out_crit_edge, label %if.then.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__qed_get_vport_port_stats(ptr noundef %arrayidx, ptr noundef %cond798587, ptr noundef %stats) #10
  br label %out

out:                                              ; preds = %if.then.i, %land.lhs.true.i.out_crit_edge, %land.end.out_crit_edge, %do.end
  %cond78 = phi ptr [ %call, %do.end ], [ %cond798587, %land.end.out_crit_edge ], [ %cond798587, %land.lhs.true.i.out_crit_edge ], [ %cond798587, %if.then.i ]
  %15 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool47.not = icmp ne i8 %16, 0
  %tobool49.not = icmp eq ptr %cond78, null
  %or.cond75 = select i1 %tobool47.not, i1 true, i1 %tobool49.not
  br i1 %or.cond75, label %out.cleanup_crit_edge, label %if.then50

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then50:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef nonnull %cond78) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %out.cleanup_crit_edge, %do.end26
  %inc = add nuw nsw i32 %i.091, 1
  %17 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_vport) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_reset_vport_stats(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  %mstats = alloca %struct.eth_mstorm_per_queue_stat, align 4
  %ustats = alloca %struct.eth_ustorm_per_queue_stat, align 4
  %pstats = alloca %struct.eth_pstorm_per_queue_stat, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp111.not = icmp eq i8 %1, 0
  br i1 %cmp111.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0112
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mstats) #10
  %2 = call ptr @memset(ptr %mstats, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ustats) #10
  %3 = call ptr @memset(ptr %ustats, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pstats) #10
  %4 = call ptr @memset(ptr %pstats, i32 255, i32 56)
  %5 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %cond.true, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.true ], [ null, %for.body.cond.end_crit_edge ]
  %7 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %tobool4.not = icmp eq ptr %cond, null
  %or.cond = select i1 %tobool3.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0112, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1936, ptr noundef nonnull %spec.select) #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = call ptr @memset(ptr %mstats, i32 0, i32 64)
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %11, i32 0, i32 31
  %14 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i = getelementptr %struct.iro, ptr %15, i32 27
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, 30408704
  br label %__qed_get_vport_mstats_addrlen.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0112, i32 43
  %18 = ptrtoint ptr %vf_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vf_iov_info.i, align 8
  %stats_info.i = getelementptr inbounds %struct.qed_vf_iov, ptr %19, i32 0, i32 8, i32 1, i32 13
  %20 = ptrtoint ptr %stats_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats_info.i, align 8
  %len.i = getelementptr inbounds %struct.qed_vf_iov, ptr %19, i32 0, i32 8, i32 1, i32 13, i32 0, i32 1
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  br label %__qed_get_vport_mstats_addrlen.exit

__qed_get_vport_mstats_addrlen.exit:              ; preds = %if.else.i, %if.then.i
  %addr.0 = phi i32 [ %add.i, %if.then.i ], [ %21, %if.else.i ]
  %storemerge.i = phi i32 [ 64, %if.then.i ], [ %23, %if.else.i ]
  call void @qed_memcpy_to(ptr noundef %arrayidx, ptr noundef %cond, i32 noundef %addr.0, ptr noundef nonnull %mstats, i32 noundef %storemerge.i) #10
  %24 = call ptr @memset(ptr %ustats, i32 0, i32 48)
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 8
  %b_is_vf.i82 = getelementptr inbounds %struct.qed_dev, ptr %26, i32 0, i32 39
  %27 = ptrtoint ptr %b_is_vf.i82 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %b_is_vf.i82, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i83 = icmp eq i8 %28, 0
  br i1 %tobool.not.i83, label %if.then.i89, label %if.else.i92

if.then.i89:                                      ; preds = %__qed_get_vport_mstats_addrlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr.i84 = getelementptr inbounds %struct.qed_dev, ptr %26, i32 0, i32 31
  %29 = ptrtoint ptr %iro_arr.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iro_arr.i84, align 8
  %arrayidx.i85 = getelementptr %struct.iro, ptr %30, i32 32
  %31 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i85, align 4
  %add.i88 = add i32 %32, 30932992
  br label %__qed_get_vport_ustats_addrlen.exit

if.else.i92:                                      ; preds = %__qed_get_vport_mstats_addrlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info.i90 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0112, i32 43
  %33 = ptrtoint ptr %vf_iov_info.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vf_iov_info.i90, align 8
  %ustats.i = getelementptr inbounds %struct.qed_vf_iov, ptr %34, i32 0, i32 8, i32 1, i32 13, i32 3
  %35 = ptrtoint ptr %ustats.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ustats.i, align 8
  %len.i91 = getelementptr inbounds %struct.qed_vf_iov, ptr %34, i32 0, i32 8, i32 1, i32 13, i32 3, i32 1
  %37 = ptrtoint ptr %len.i91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i91, align 4
  br label %__qed_get_vport_ustats_addrlen.exit

__qed_get_vport_ustats_addrlen.exit:              ; preds = %if.else.i92, %if.then.i89
  %addr.1 = phi i32 [ %add.i88, %if.then.i89 ], [ %36, %if.else.i92 ]
  %storemerge.i93 = phi i32 [ 48, %if.then.i89 ], [ %38, %if.else.i92 ]
  call void @qed_memcpy_to(ptr noundef %arrayidx, ptr noundef %cond, i32 noundef %addr.1, ptr noundef nonnull %ustats, i32 noundef %storemerge.i93) #10
  %39 = call ptr @memset(ptr %pstats, i32 0, i32 56)
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 8
  %b_is_vf.i94 = getelementptr inbounds %struct.qed_dev, ptr %41, i32 0, i32 39
  %42 = ptrtoint ptr %b_is_vf.i94 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b_is_vf.i94, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i95 = icmp eq i8 %43, 0
  br i1 %tobool.not.i95, label %if.then.i101, label %if.else.i104

if.then.i101:                                     ; preds = %__qed_get_vport_ustats_addrlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr.i96 = getelementptr inbounds %struct.qed_dev, ptr %41, i32 0, i32 31
  %44 = ptrtoint ptr %iro_arr.i96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iro_arr.i96, align 8
  %arrayidx.i97 = getelementptr %struct.iro, ptr %45, i32 34
  %46 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i97, align 4
  %add.i100 = add i32 %47, 32505856
  br label %__qed_get_vport_pstats_addrlen.exit

if.else.i104:                                     ; preds = %__qed_get_vport_ustats_addrlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info.i102 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0112, i32 43
  %48 = ptrtoint ptr %vf_iov_info.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vf_iov_info.i102, align 8
  %pstats.i = getelementptr inbounds %struct.qed_vf_iov, ptr %49, i32 0, i32 8, i32 1, i32 13, i32 1
  %50 = ptrtoint ptr %pstats.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pstats.i, align 8
  %len.i103 = getelementptr inbounds %struct.qed_vf_iov, ptr %49, i32 0, i32 8, i32 1, i32 13, i32 1, i32 1
  %52 = ptrtoint ptr %len.i103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i103, align 4
  br label %__qed_get_vport_pstats_addrlen.exit

__qed_get_vport_pstats_addrlen.exit:              ; preds = %if.else.i104, %if.then.i101
  %addr.2 = phi i32 [ %add.i100, %if.then.i101 ], [ %51, %if.else.i104 ]
  %storemerge.i105 = phi i32 [ 56, %if.then.i101 ], [ %53, %if.else.i104 ]
  call void @qed_memcpy_to(ptr noundef %arrayidx, ptr noundef %cond, i32 noundef %addr.2, ptr noundef nonnull %pstats, i32 noundef %storemerge.i105) #10
  %54 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool17.not = icmp eq i8 %55, 0
  br i1 %tobool17.not, label %if.then18, label %__qed_get_vport_pstats_addrlen.exit.cleanup_crit_edge

__qed_get_vport_pstats_addrlen.exit.cleanup_crit_edge: ; preds = %__qed_get_vport_pstats_addrlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %__qed_get_vport_pstats_addrlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %__qed_get_vport_pstats_addrlen.exit.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pstats) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ustats) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mstats) #10
  %inc = add nuw nsw i32 %i.0112, 1
  %56 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %57 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %reset_stats = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 41
  %58 = ptrtoint ptr %reset_stats to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reset_stats, align 4
  %tobool26.not = icmp eq ptr %59, null
  br i1 %tobool26.not, label %do.body28, label %if.else

do.body28:                                        ; preds = %for.end
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %60 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp30 = icmp ult i8 %61, 2
  br i1 %cmp30, label %do.end37, label %do.body28.if.end54_crit_edge, !prof !260

do.body28.if.end54_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end37:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %name39 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool41.not = icmp eq ptr %name39, null
  %spec.select81 = select i1 %tobool41.not, ptr @.str.4, ptr %name39
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 1961, ptr noundef nonnull %spec.select81) #15
  br label %if.end54

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @_qed_get_vport_stats(ptr noundef %cdev, ptr noundef nonnull %59)
  %62 = ptrtoint ptr %reset_stats to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reset_stats, align 4
  %link_change_count = getelementptr inbounds %struct.qed_eth_stats_common, ptr %63, i32 0, i32 60
  %64 = ptrtoint ptr %link_change_count to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %link_change_count, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else, %do.end37, %do.body28.if.end54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_to(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_arfs_mode_configure(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_cfg_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %mf_bits = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mf_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mf_bits, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end73_crit_edge

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.qed_arfs_config_params, ptr %p_cfg_params, i32 0, i32 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.body39, label %if.then1

if.then1:                                         ; preds = %if.end
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %7 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rel_pf_id, align 1
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %p_cfg_params to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p_cfg_params, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2 = icmp ne i8 %10, 0
  %udp = getelementptr inbounds %struct.qed_arfs_config_params, ptr %p_cfg_params, i32 0, i32 1
  %11 = ptrtoint ptr %udp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %udp, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3 = icmp ne i8 %12, 0
  %ipv4 = getelementptr inbounds %struct.qed_arfs_config_params, ptr %p_cfg_params, i32 0, i32 2
  %13 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ipv4, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4 = icmp ne i8 %14, 0
  %ipv6 = getelementptr inbounds %struct.qed_arfs_config_params, ptr %p_cfg_params, i32 0, i32 3
  %15 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ipv6, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5 = icmp ne i8 %16, 0
  %switch.tableidx = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 4
  %switch.tableidx. = select i1 %17, i32 %switch.tableidx, i32 1
  tail call void @qed_gft_config(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %conv, i1 noundef zeroext %tobool2, i1 noundef zeroext %tobool3, i1 noundef zeroext %tobool4, i1 noundef zeroext %tobool5, i32 noundef %switch.tableidx.) #10
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp9 = icmp eq i8 %19, 0
  br i1 %cmp9, label %land.rhs, label %if.then1.if.end73_crit_edge

if.then1.if.end73_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.rhs:                                         ; preds = %if.then1
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %20 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_module, align 4
  %and = and i32 %21, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.rhs.if.end73_crit_edge, label %do.end, !prof !261

land.rhs.if.end73_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool16.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool16.not, ptr @.str.4, ptr %name
  %22 = ptrtoint ptr %p_cfg_params to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p_cfg_params, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  %cond22 = select i1 %tobool20.not, ptr @.str.37, ptr @.str.36
  %24 = ptrtoint ptr %udp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %udp, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not = icmp eq i8 %25, 0
  %cond26 = select i1 %tobool24.not, ptr @.str.37, ptr @.str.36
  %26 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ipv4, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool28.not = icmp eq i8 %27, 0
  %cond30 = select i1 %tobool28.not, ptr @.str.37, ptr @.str.36
  %28 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ipv6, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  %cond34 = select i1 %tobool32.not, ptr @.str.37, ptr @.str.36
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 2001, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond22, ptr noundef nonnull %cond26, ptr noundef nonnull %cond30, ptr noundef nonnull %cond34, i32 noundef %31) #15
  br label %if.end73

do.body39:                                        ; preds = %if.end
  %dp_level40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %32 = ptrtoint ptr %dp_level40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level40, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp42 = icmp eq i8 %33, 0
  br i1 %cmp42, label %land.rhs44, label %do.body39.do.end70_crit_edge

do.body39.do.end70_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

land.rhs44:                                       ; preds = %do.body39
  %dp_module45 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %34 = ptrtoint ptr %dp_module45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_module45, align 4
  %and46 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.rhs44.do.end70_crit_edge, label %do.end57, !prof !261

land.rhs44.do.end70_crit_edge:                    ; preds = %land.rhs44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

do.end57:                                         ; preds = %land.rhs44
  call void @__sanitizer_cov_trace_pc() #12
  %name59 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool61.not = icmp eq ptr %name59, null
  %spec.select97 = select i1 %tobool61.not, ptr @.str.4, ptr %name59
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef 2003, ptr noundef nonnull %spec.select97) #15
  br label %do.end70

do.end70:                                         ; preds = %do.end57, %land.rhs44.do.end70_crit_edge, %do.body39.do.end70_crit_edge
  %rel_pf_id71 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %36 = ptrtoint ptr %rel_pf_id71 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rel_pf_id71, align 1
  %conv72 = zext i8 %37 to i16
  tail call void @qed_gft_disable(ptr noundef %p_hwfn, ptr noundef %p_ptt, i16 noundef zeroext %conv72) #10
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %do.end, %land.rhs.if.end73_crit_edge, %if.then1.if.end73_crit_edge, %entry.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_gft_config(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_gft_disable(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_configure_rfs_ntuple_filter(ptr noundef %p_hwfn, ptr noundef %p_cb, ptr nocapture noundef readonly %p_params) local_unnamed_addr #0 align 64 {
entry:
  %p_ent = alloca ptr, align 4
  %init_data = alloca %struct.qed_sp_init_data, align 4
  %abs_rx_q_id = alloca i16, align 2
  %abs_vport_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent) #10
  %0 = ptrtoint ptr %p_ent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p_ent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %abs_rx_q_id) #10
  %1 = ptrtoint ptr %abs_rx_q_id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %abs_rx_q_id, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abs_vport_id) #10
  %2 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %abs_vport_id, align 1
  %3 = getelementptr inbounds i8, ptr %init_data, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 12)
  %call = tail call i32 @qed_spq_get_cid(ptr noundef %p_hwfn) #10
  %5 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %init_data, align 4
  %opaque_fid = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17, i32 10
  %6 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opaque_fid, align 4
  %opaque_fid1 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 1
  %8 = ptrtoint ptr %opaque_fid1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %opaque_fid1, align 4
  %tobool.not = icmp eq ptr %p_cb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %p_comp_data = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 3
  %9 = ptrtoint ptr %p_comp_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %p_cb, ptr %p_comp_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %10 = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 4
  %call3 = call i32 @qed_sp_init_request(ptr noundef %p_hwfn, ptr noundef nonnull %p_ent, i8 noundef zeroext 16, i8 noundef zeroext 4, ptr noundef nonnull %init_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_ent, align 4
  %ramrod = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3
  %hi = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hi, align 4
  %15 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_params, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ramrod, align 4
  %length = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %p_params, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %pkt_hdr_length = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7
  %22 = ptrtoint ptr %pkt_hdr_length to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %pkt_hdr_length, align 4
  %b_is_drop = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %p_params, i32 0, i32 7
  %23 = ptrtoint ptr %b_is_drop to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b_is_drop, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %if.else12, label %if.end6.if.end28_crit_edge

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else12:                                        ; preds = %if.end6
  %vport_id13 = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %p_params, i32 0, i32 4
  %25 = ptrtoint ptr %vport_id13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vport_id13, align 1
  %call14 = call i32 @qed_fw_vport(ptr noundef %p_hwfn, i8 noundef zeroext %26, ptr noundef nonnull %abs_vport_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else12.err_crit_edge

if.else12.err_crit_edge:                          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end17:                                         ; preds = %if.else12
  %qid = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %p_params, i32 0, i32 2
  %27 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %qid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp.not = icmp eq i16 %28, -1
  br i1 %cmp.not, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %call21 = call i32 @qed_fw_l2_queue(ptr noundef %p_hwfn, i16 noundef zeroext %28, ptr noundef nonnull %abs_rx_q_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then19.err_crit_edge

if.then19.err_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %rx_qid_valid = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %rx_qid_valid to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %rx_qid_valid, align 1
  %30 = ptrtoint ptr %abs_rx_q_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %abs_rx_q_id, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %rx_qid = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 0, i32 8
  %33 = ptrtoint ptr %rx_qid to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %rx_qid, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end17.if.end25_crit_edge
  %34 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %abs_vport_id, align 1
  %conv26 = zext i8 %35 to i16
  %36 = shl nuw i16 %conv26, 8
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end6.if.end28_crit_edge
  %.sink102 = phi i16 [ %36, %if.end25 ], [ -255, %if.end6.if.end28_crit_edge ]
  %vport_id27 = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %vport_id27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %.sink102, ptr %vport_id27, align 4
  %flow_id_valid = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %flow_id_valid to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %flow_id_valid, align 4
  %flow_id = getelementptr inbounds %struct.qed_spq_entry, ptr %13, i32 0, i32 3, i32 0, i32 0, i32 0, i32 10
  %39 = ptrtoint ptr %flow_id to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flow_id, align 2
  %b_is_add = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %p_params, i32 0, i32 6
  %40 = ptrtoint ptr %b_is_add to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %b_is_add, align 1, !range !259
  %42 = xor i8 %41, 1
  %filter_action = getelementptr inbounds %struct.rx_update_gft_filter_ramrod_data, ptr %ramrod, i32 0, i32 9
  %43 = ptrtoint ptr %filter_action to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %filter_action, align 1
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %44 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp34 = icmp eq i8 %45, 0
  br i1 %cmp34, label %land.rhs, label %if.end28.do.end61_crit_edge

if.end28.do.end61_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

land.rhs:                                         ; preds = %if.end28
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %46 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dp_module, align 4
  %and36 = and i32 %47, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.rhs.do.end61_crit_edge, label %do.end43, !prof !261

land.rhs.do.end61_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end43:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool44.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool44.not, ptr @.str.4, ptr %name
  %48 = ptrtoint ptr %abs_vport_id to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %abs_vport_id, align 1
  %conv48 = zext i8 %49 to i32
  %50 = ptrtoint ptr %abs_rx_q_id to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %abs_rx_q_id, align 2
  %conv49 = zext i16 %51 to i32
  %52 = ptrtoint ptr %b_is_add to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %b_is_add, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool51.not = icmp eq i8 %53, 0
  %cond53 = select i1 %tobool51.not, ptr @.str.44, ptr @.str.43
  %54 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p_params, align 4
  %conv55 = zext i32 %55 to i64
  %56 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %length, align 4
  %conv57 = zext i16 %57 to i32
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 2073, ptr noundef nonnull %spec.select, i32 noundef %conv48, i32 noundef %conv49, ptr noundef nonnull %cond53, i64 noundef %conv55, i32 noundef %conv57) #15
  br label %do.end61

do.end61:                                         ; preds = %do.end43, %land.rhs.do.end61_crit_edge, %if.end28.do.end61_crit_edge
  %58 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p_ent, align 4
  %call62 = call i32 @qed_spq_post(ptr noundef %p_hwfn, ptr noundef %59, ptr noundef null) #10
  br label %cleanup

err:                                              ; preds = %if.then19.err_crit_edge, %if.else12.err_crit_edge
  %rc.0 = phi i32 [ %call14, %if.else12.err_crit_edge ], [ %call21, %if.then19.err_crit_edge ]
  %60 = ptrtoint ptr %p_ent to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p_ent, align 4
  call void @qed_sp_destroy_request(ptr noundef %p_hwfn, ptr noundef %61) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end61, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %do.end61 ], [ %rc.0, %err ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abs_vport_id) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %abs_rx_q_id) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_fw_l2_queue(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_get_rxq_coalesce(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_cid, ptr nocapture noundef writeonly %p_rx_coal) local_unnamed_addr #0 align 64 {
entry:
  %sb_entry = alloca %struct.cau_sb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_entry) #10
  %0 = ptrtoint ptr %sb_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sb_entry, align 4, !annotation !262
  %1 = getelementptr inbounds %struct.cau_sb_entry, ptr %sb_entry, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !262
  %sb_igu_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %3 = ptrtoint ptr %sb_igu_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sb_igu_id, align 4
  %conv = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 1859584
  %5 = ptrtoint ptr %sb_entry to i32
  %call = call i32 @qed_dmae_grc2host(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef %5, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool4.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool4.not, ptr @.str.4, ptr %name
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 2095, ptr noundef nonnull %spec.select, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_hwfn, align 8
  %iro_arr = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %iro_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iro_arr, align 8
  %arrayidx = getelementptr %struct.iro, ptr %11, i32 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %queue_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %queue_id, align 2
  %conv11 = zext i16 %15 to i32
  %m1 = getelementptr %struct.iro, ptr %11, i32 8, i32 1
  %16 = ptrtoint ptr %m1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %m1, align 4
  %conv15 = zext i16 %17 to i32
  %mul16 = mul nuw i32 %conv15, %conv11
  %add17 = add i32 %13, 30932992
  %add18 = add i32 %add17, %mul16
  %call19 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18) #10
  %18 = and i32 %call19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = lshr i32 %7, 22
  %conv10 = and i32 %19, 3
  %and26 = and i32 %call19, 127
  %shl = shl nuw nsw i32 %and26, %conv10
  %conv28 = trunc i32 %shl to i16
  %20 = ptrtoint ptr %p_rx_coal to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv28, ptr %p_rx_coal, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end24 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_entry) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_dmae_grc2host(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_rd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_get_txq_coalesce(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef readonly %p_cid, ptr nocapture noundef writeonly %p_tx_coal) local_unnamed_addr #0 align 64 {
entry:
  %sb_entry = alloca %struct.cau_sb_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sb_entry) #10
  %0 = ptrtoint ptr %sb_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sb_entry, align 4, !annotation !262
  %1 = getelementptr inbounds %struct.cau_sb_entry, ptr %sb_entry, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !262
  %sb_igu_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 2
  %3 = ptrtoint ptr %sb_igu_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sb_igu_id, align 4
  %conv = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 1859584
  %5 = ptrtoint ptr %sb_entry to i32
  %call = call i32 @qed_dmae_grc2host(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add, i32 noundef %5, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool4.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool4.not, ptr @.str.4, ptr %name
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, i32 noundef 2129, ptr noundef nonnull %spec.select, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_hwfn, align 8
  %iro_arr = getelementptr inbounds %struct.qed_dev, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %iro_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iro_arr, align 8
  %arrayidx = getelementptr %struct.iro, ptr %11, i32 40
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %queue_id = getelementptr inbounds %struct.qed_queue_cid, ptr %p_cid, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %queue_id, align 2
  %conv11 = zext i16 %15 to i32
  %m1 = getelementptr %struct.iro, ptr %11, i32 40, i32 1
  %16 = ptrtoint ptr %m1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %m1, align 4
  %conv15 = zext i16 %17 to i32
  %mul16 = mul nuw i32 %conv15, %conv11
  %add17 = add i32 %13, 31457280
  %add18 = add i32 %add17, %mul16
  %call19 = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add18) #10
  %18 = and i32 %call19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = lshr i32 %7, 8
  %conv10 = and i32 %19, 3
  %and26 = and i32 %call19, 127
  %shl = shl nuw nsw i32 %and26, %conv10
  %conv28 = trunc i32 %shl to i16
  %20 = ptrtoint ptr %p_tx_coal to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv28, ptr %p_tx_coal, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end24 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sb_entry) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_get_queue_coalesce(ptr noundef %p_hwfn, ptr noundef %p_coal, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @qed_vf_pf_get_coalesce(ptr noundef %p_hwfn, ptr noundef %p_coal, ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !260

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 2159, ptr noundef nonnull %spec.select) #15
  br label %cleanup

if.end15:                                         ; preds = %entry
  %call16 = tail call ptr @qed_ptt_acquire(ptr noundef %p_hwfn) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %b_is_rx = getelementptr inbounds %struct.qed_queue_cid, ptr %handle, i32 0, i32 6
  %6 = ptrtoint ptr %b_is_rx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_is_rx, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool20.not = icmp eq i8 %7, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @qed_get_rxq_coalesce(ptr noundef %p_hwfn, ptr noundef nonnull %call16, ptr noundef %handle, ptr noundef %p_coal)
  br label %out

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 @qed_get_txq_coalesce(ptr noundef %p_hwfn, ptr noundef nonnull %call16, ptr noundef %handle, ptr noundef %p_coal)
  br label %out

out:                                              ; preds = %if.else, %if.then21
  %rc.0 = phi i32 [ %call22, %if.then21 ], [ %call26, %if.else ]
  tail call void @qed_ptt_release(ptr noundef %p_hwfn, ptr noundef nonnull %call16) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %do.body.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ -11, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_get_coalesce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @qed_get_eth_ops() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @qed_eth_ops_pass
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_put_eth_ops() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_fw_rss_eng(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_set_fw_mac_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qed_get_vport_mstats(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_stats, i16 noundef zeroext %statistics_bin) unnamed_addr #9 align 64 {
entry:
  %mstats = alloca %struct.eth_mstorm_per_queue_stat, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mstats) #10
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i = getelementptr %struct.iro, ptr %5, i32 27
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %statistics_bin to i32
  %m1.i = getelementptr %struct.iro, ptr %5, i32 27, i32 1
  %8 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m1.i, align 4
  %conv5.i = zext i16 %9 to i32
  %mul.i = mul nuw i32 %conv5.i, %conv.i
  %add.i = add i32 %7, 30408704
  %add6.i = add i32 %add.i, %mul.i
  br label %__qed_get_vport_mstats_addrlen.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %10 = ptrtoint ptr %vf_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf_iov_info.i, align 8
  %stats_info.i = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 8, i32 1, i32 13
  %12 = ptrtoint ptr %stats_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats_info.i, align 8
  %len.i = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 8, i32 1, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  br label %__qed_get_vport_mstats_addrlen.exit

__qed_get_vport_mstats_addrlen.exit:              ; preds = %if.else.i, %if.then.i
  %mstats_addr.0 = phi i32 [ %add6.i, %if.then.i ], [ %13, %if.else.i ]
  %storemerge.i = phi i32 [ 64, %if.then.i ], [ %15, %if.else.i ]
  %16 = call ptr @memset(ptr %mstats, i32 0, i32 64)
  call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %mstats, i32 noundef %mstats_addr.0, i32 noundef %storemerge.i) #10
  %no_buff_discard = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 2
  %17 = ptrtoint ptr %no_buff_discard to i32
  call void @__asan_load4_noabort(i32 %17)
  %__regpair.sroa.0.0.copyload = load i32, ptr %no_buff_discard, align 4
  %__regpair.sroa.5.0.no_buff_discard.sroa_idx = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %__regpair.sroa.5.0.no_buff_discard.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %__regpair.sroa.5.0.copyload = load i32, ptr %__regpair.sroa.5.0.no_buff_discard.sroa_idx, align 4
  %19 = zext i32 %__regpair.sroa.5.0.copyload to i64
  %20 = zext i32 %__regpair.sroa.0.0.copyload to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %24 = ptrtoint ptr %p_stats to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %p_stats, align 8
  %add2 = add i64 %23, %25
  store i64 %add2, ptr %p_stats, align 8
  %packet_too_big_discard = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 1
  %26 = ptrtoint ptr %packet_too_big_discard to i32
  call void @__asan_load4_noabort(i32 %26)
  %__regpair3.sroa.0.0.copyload = load i32, ptr %packet_too_big_discard, align 4
  %__regpair3.sroa.5.0.packet_too_big_discard.sroa_idx = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %__regpair3.sroa.5.0.packet_too_big_discard.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %__regpair3.sroa.5.0.copyload = load i32, ptr %__regpair3.sroa.5.0.packet_too_big_discard.sroa_idx, align 4
  %28 = zext i32 %__regpair3.sroa.5.0.copyload to i64
  %29 = zext i32 %__regpair3.sroa.0.0.copyload to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %packet_too_big_discard12 = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 1
  %33 = ptrtoint ptr %packet_too_big_discard12 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %packet_too_big_discard12, align 8
  %add13 = add i64 %32, %34
  store i64 %add13, ptr %packet_too_big_discard12, align 8
  %35 = ptrtoint ptr %mstats to i32
  call void @__asan_load4_noabort(i32 %35)
  %__regpair14.sroa.0.0.copyload = load i32, ptr %mstats, align 4
  %__regpair14.sroa.5.0.ttl0_discard.sroa_idx = getelementptr inbounds i8, ptr %mstats, i32 4
  %36 = ptrtoint ptr %__regpair14.sroa.5.0.ttl0_discard.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %__regpair14.sroa.5.0.copyload = load i32, ptr %__regpair14.sroa.5.0.ttl0_discard.sroa_idx, align 4
  %37 = zext i32 %__regpair14.sroa.5.0.copyload to i64
  %38 = zext i32 %__regpair14.sroa.0.0.copyload to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %ttl0_discard23 = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 2
  %42 = ptrtoint ptr %ttl0_discard23 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ttl0_discard23, align 8
  %add24 = add i64 %41, %43
  store i64 %add24, ptr %ttl0_discard23, align 8
  %tpa_coalesced_pkts = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 4
  %44 = ptrtoint ptr %tpa_coalesced_pkts to i32
  call void @__asan_load4_noabort(i32 %44)
  %__regpair25.sroa.0.0.copyload = load i32, ptr %tpa_coalesced_pkts, align 4
  %__regpair25.sroa.5.0.tpa_coalesced_pkts.sroa_idx = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %__regpair25.sroa.5.0.tpa_coalesced_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %__regpair25.sroa.5.0.copyload = load i32, ptr %__regpair25.sroa.5.0.tpa_coalesced_pkts.sroa_idx, align 4
  %46 = zext i32 %__regpair25.sroa.5.0.copyload to i64
  %47 = zext i32 %__regpair25.sroa.0.0.copyload to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %tpa_coalesced_pkts34 = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 19
  %51 = ptrtoint ptr %tpa_coalesced_pkts34 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tpa_coalesced_pkts34, align 8
  %add35 = add i64 %50, %52
  store i64 %add35, ptr %tpa_coalesced_pkts34, align 8
  %tpa_coalesced_events = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 5
  %53 = ptrtoint ptr %tpa_coalesced_events to i32
  call void @__asan_load4_noabort(i32 %53)
  %__regpair36.sroa.0.0.copyload = load i32, ptr %tpa_coalesced_events, align 4
  %__regpair36.sroa.5.0.tpa_coalesced_events.sroa_idx = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %__regpair36.sroa.5.0.tpa_coalesced_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %__regpair36.sroa.5.0.copyload = load i32, ptr %__regpair36.sroa.5.0.tpa_coalesced_events.sroa_idx, align 4
  %55 = zext i32 %__regpair36.sroa.5.0.copyload to i64
  %56 = zext i32 %__regpair36.sroa.0.0.copyload to i64
  %57 = shl nuw i64 %56, 32
  %58 = or i64 %57, %55
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %tpa_coalesced_events45 = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 20
  %60 = ptrtoint ptr %tpa_coalesced_events45 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tpa_coalesced_events45, align 8
  %add46 = add i64 %59, %61
  store i64 %add46, ptr %tpa_coalesced_events45, align 8
  %tpa_aborts_num = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 6
  %62 = ptrtoint ptr %tpa_aborts_num to i32
  call void @__asan_load4_noabort(i32 %62)
  %__regpair47.sroa.0.0.copyload = load i32, ptr %tpa_aborts_num, align 4
  %__regpair47.sroa.5.0.tpa_aborts_num.sroa_idx = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %__regpair47.sroa.5.0.tpa_aborts_num.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %__regpair47.sroa.5.0.copyload = load i32, ptr %__regpair47.sroa.5.0.tpa_aborts_num.sroa_idx, align 4
  %64 = zext i32 %__regpair47.sroa.5.0.copyload to i64
  %65 = zext i32 %__regpair47.sroa.0.0.copyload to i64
  %66 = shl nuw i64 %65, 32
  %67 = or i64 %66, %64
  %68 = call i64 @llvm.bswap.i64(i64 %67)
  %tpa_aborts_num56 = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 21
  %69 = ptrtoint ptr %tpa_aborts_num56 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tpa_aborts_num56, align 8
  %add57 = add i64 %68, %70
  store i64 %add57, ptr %tpa_aborts_num56, align 8
  %tpa_coalesced_bytes = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 7
  %71 = ptrtoint ptr %tpa_coalesced_bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %__regpair58.sroa.0.0.copyload = load i32, ptr %tpa_coalesced_bytes, align 4
  %__regpair58.sroa.5.0.tpa_coalesced_bytes.sroa_idx = getelementptr inbounds %struct.eth_mstorm_per_queue_stat, ptr %mstats, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %__regpair58.sroa.5.0.tpa_coalesced_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %__regpair58.sroa.5.0.copyload = load i32, ptr %__regpair58.sroa.5.0.tpa_coalesced_bytes.sroa_idx, align 4
  %73 = zext i32 %__regpair58.sroa.5.0.copyload to i64
  %74 = zext i32 %__regpair58.sroa.0.0.copyload to i64
  %75 = shl nuw i64 %74, 32
  %76 = or i64 %75, %73
  %77 = call i64 @llvm.bswap.i64(i64 %76)
  %tpa_coalesced_bytes67 = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 23
  %78 = ptrtoint ptr %tpa_coalesced_bytes67 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %tpa_coalesced_bytes67, align 8
  %add68 = add i64 %77, %79
  store i64 %add68, ptr %tpa_coalesced_bytes67, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mstats) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qed_get_vport_ustats(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_stats, i16 noundef zeroext %statistics_bin) unnamed_addr #9 align 64 {
entry:
  %ustats = alloca %struct.eth_ustorm_per_queue_stat, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ustats) #10
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i = getelementptr %struct.iro, ptr %5, i32 32
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %statistics_bin to i32
  %m1.i = getelementptr %struct.iro, ptr %5, i32 32, i32 1
  %8 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m1.i, align 4
  %conv5.i = zext i16 %9 to i32
  %mul.i = mul nuw i32 %conv5.i, %conv.i
  %add.i = add i32 %7, 30932992
  %add6.i = add i32 %add.i, %mul.i
  br label %__qed_get_vport_ustats_addrlen.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %10 = ptrtoint ptr %vf_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf_iov_info.i, align 8
  %ustats.i = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 8, i32 1, i32 13, i32 3
  %12 = ptrtoint ptr %ustats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ustats.i, align 8
  %len.i = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 8, i32 1, i32 13, i32 3, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  br label %__qed_get_vport_ustats_addrlen.exit

__qed_get_vport_ustats_addrlen.exit:              ; preds = %if.else.i, %if.then.i
  %ustats_addr.0 = phi i32 [ %add6.i, %if.then.i ], [ %13, %if.else.i ]
  %storemerge.i = phi i32 [ 48, %if.then.i ], [ %15, %if.else.i ]
  %16 = call ptr @memset(ptr %ustats, i32 0, i32 48)
  call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %ustats, i32 noundef %ustats_addr.0, i32 noundef %storemerge.i) #10
  %17 = ptrtoint ptr %ustats to i32
  call void @__asan_load4_noabort(i32 %17)
  %__regpair.sroa.0.0.copyload = load i32, ptr %ustats, align 4
  %__regpair.sroa.5.0.rcv_ucast_bytes.sroa_idx = getelementptr inbounds i8, ptr %ustats, i32 4
  %18 = ptrtoint ptr %__regpair.sroa.5.0.rcv_ucast_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %__regpair.sroa.5.0.copyload = load i32, ptr %__regpair.sroa.5.0.rcv_ucast_bytes.sroa_idx, align 4
  %19 = zext i32 %__regpair.sroa.5.0.copyload to i64
  %20 = zext i32 %__regpair.sroa.0.0.copyload to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %rx_ucast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 3
  %24 = ptrtoint ptr %rx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_ucast_bytes, align 8
  %add2 = add i64 %23, %25
  store i64 %add2, ptr %rx_ucast_bytes, align 8
  %rcv_mcast_bytes = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 1
  %26 = ptrtoint ptr %rcv_mcast_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %__regpair3.sroa.0.0.copyload = load i32, ptr %rcv_mcast_bytes, align 4
  %__regpair3.sroa.5.0.rcv_mcast_bytes.sroa_idx = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %__regpair3.sroa.5.0.rcv_mcast_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %__regpair3.sroa.5.0.copyload = load i32, ptr %__regpair3.sroa.5.0.rcv_mcast_bytes.sroa_idx, align 4
  %28 = zext i32 %__regpair3.sroa.5.0.copyload to i64
  %29 = zext i32 %__regpair3.sroa.0.0.copyload to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %rx_mcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 4
  %33 = ptrtoint ptr %rx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_mcast_bytes, align 8
  %add12 = add i64 %32, %34
  store i64 %add12, ptr %rx_mcast_bytes, align 8
  %rcv_bcast_bytes = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 2
  %35 = ptrtoint ptr %rcv_bcast_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %__regpair13.sroa.0.0.copyload = load i32, ptr %rcv_bcast_bytes, align 4
  %__regpair13.sroa.5.0.rcv_bcast_bytes.sroa_idx = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %__regpair13.sroa.5.0.rcv_bcast_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %__regpair13.sroa.5.0.copyload = load i32, ptr %__regpair13.sroa.5.0.rcv_bcast_bytes.sroa_idx, align 4
  %37 = zext i32 %__regpair13.sroa.5.0.copyload to i64
  %38 = zext i32 %__regpair13.sroa.0.0.copyload to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %rx_bcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 5
  %42 = ptrtoint ptr %rx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_bcast_bytes, align 8
  %add22 = add i64 %41, %43
  store i64 %add22, ptr %rx_bcast_bytes, align 8
  %rcv_ucast_pkts = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 3
  %44 = ptrtoint ptr %rcv_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %44)
  %__regpair23.sroa.0.0.copyload = load i32, ptr %rcv_ucast_pkts, align 4
  %__regpair23.sroa.5.0.rcv_ucast_pkts.sroa_idx = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %__regpair23.sroa.5.0.rcv_ucast_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %__regpair23.sroa.5.0.copyload = load i32, ptr %__regpair23.sroa.5.0.rcv_ucast_pkts.sroa_idx, align 4
  %46 = zext i32 %__regpair23.sroa.5.0.copyload to i64
  %47 = zext i32 %__regpair23.sroa.0.0.copyload to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %rx_ucast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 6
  %51 = ptrtoint ptr %rx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_ucast_pkts, align 8
  %add32 = add i64 %50, %52
  store i64 %add32, ptr %rx_ucast_pkts, align 8
  %rcv_mcast_pkts = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 4
  %53 = ptrtoint ptr %rcv_mcast_pkts to i32
  call void @__asan_load4_noabort(i32 %53)
  %__regpair33.sroa.0.0.copyload = load i32, ptr %rcv_mcast_pkts, align 4
  %__regpair33.sroa.5.0.rcv_mcast_pkts.sroa_idx = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %__regpair33.sroa.5.0.rcv_mcast_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %__regpair33.sroa.5.0.copyload = load i32, ptr %__regpair33.sroa.5.0.rcv_mcast_pkts.sroa_idx, align 4
  %55 = zext i32 %__regpair33.sroa.5.0.copyload to i64
  %56 = zext i32 %__regpair33.sroa.0.0.copyload to i64
  %57 = shl nuw i64 %56, 32
  %58 = or i64 %57, %55
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %rx_mcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 7
  %60 = ptrtoint ptr %rx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_mcast_pkts, align 8
  %add42 = add i64 %59, %61
  store i64 %add42, ptr %rx_mcast_pkts, align 8
  %rcv_bcast_pkts = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 5
  %62 = ptrtoint ptr %rcv_bcast_pkts to i32
  call void @__asan_load4_noabort(i32 %62)
  %__regpair43.sroa.0.0.copyload = load i32, ptr %rcv_bcast_pkts, align 4
  %__regpair43.sroa.5.0.rcv_bcast_pkts.sroa_idx = getelementptr inbounds %struct.eth_ustorm_per_queue_stat, ptr %ustats, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %__regpair43.sroa.5.0.rcv_bcast_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %__regpair43.sroa.5.0.copyload = load i32, ptr %__regpair43.sroa.5.0.rcv_bcast_pkts.sroa_idx, align 4
  %64 = zext i32 %__regpair43.sroa.5.0.copyload to i64
  %65 = zext i32 %__regpair43.sroa.0.0.copyload to i64
  %66 = shl nuw i64 %65, 32
  %67 = or i64 %66, %64
  %68 = call i64 @llvm.bswap.i64(i64 %67)
  %rx_bcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 8
  %69 = ptrtoint ptr %rx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rx_bcast_pkts, align 8
  %add52 = add i64 %68, %70
  store i64 %add52, ptr %rx_bcast_pkts, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ustats) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qed_get_vport_tstats(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_stats) unnamed_addr #9 align 64 {
entry:
  %tstats = alloca %struct.tstorm_per_port_stat, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %tstats) #10
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %iro_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iro_arr, align 8
  %arrayidx = getelementptr %struct.iro, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %abs_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 3
  %8 = ptrtoint ptr %abs_pf_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %abs_pf_id, align 2
  %conv = zext i8 %9 to i32
  %call = tail call i32 @qed_device_num_ports(ptr noundef %1) #10
  %rem = srem i32 %conv, %call
  %10 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_hwfn, align 8
  %iro_arr4 = getelementptr inbounds %struct.qed_dev, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %iro_arr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iro_arr4, align 8
  %m1 = getelementptr %struct.iro, ptr %13, i32 2, i32 1
  %14 = ptrtoint ptr %m1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %m1, align 4
  %conv6 = zext i16 %15 to i32
  %mul = mul nuw nsw i32 %rem, %conv6
  %add = add i32 %7, 29884416
  %add7 = add i32 %add, %mul
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %16 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vf_iov_info, align 8
  %tstats8 = getelementptr inbounds %struct.qed_vf_iov, ptr %17, i32 0, i32 8, i32 1, i32 13, i32 2
  %18 = ptrtoint ptr %tstats8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tstats8, align 8
  %len = getelementptr inbounds %struct.qed_vf_iov, ptr %17, i32 0, i32 8, i32 1, i32 13, i32 2, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tstats_len.0 = phi i32 [ %21, %if.else ], [ 136, %if.then ]
  %tstats_addr.0 = phi i32 [ %19, %if.else ], [ %add7, %if.then ]
  %22 = call ptr @memset(ptr %tstats, i32 0, i32 136)
  call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %tstats, i32 noundef %tstats_addr.0, i32 noundef %tstats_len.0) #10
  %mftag_filter_discard = getelementptr inbounds %struct.tstorm_per_port_stat, ptr %tstats, i32 0, i32 2
  %23 = ptrtoint ptr %mftag_filter_discard to i32
  call void @__asan_load4_noabort(i32 %23)
  %__regpair.sroa.0.0.copyload = load i32, ptr %mftag_filter_discard, align 4
  %__regpair.sroa.5.0.mftag_filter_discard.sroa_idx = getelementptr inbounds %struct.tstorm_per_port_stat, ptr %tstats, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %__regpair.sroa.5.0.mftag_filter_discard.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %__regpair.sroa.5.0.copyload = load i32, ptr %__regpair.sroa.5.0.mftag_filter_discard.sroa_idx, align 4
  %25 = zext i32 %__regpair.sroa.5.0.copyload to i64
  %26 = zext i32 %__regpair.sroa.0.0.copyload to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  %mftag_filter_discards = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 9
  %30 = ptrtoint ptr %mftag_filter_discards to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mftag_filter_discards, align 8
  %add15 = add i64 %29, %31
  store i64 %add15, ptr %mftag_filter_discards, align 8
  %eth_mac_filter_discard = getelementptr inbounds %struct.tstorm_per_port_stat, ptr %tstats, i32 0, i32 3
  %32 = ptrtoint ptr %eth_mac_filter_discard to i32
  call void @__asan_load4_noabort(i32 %32)
  %__regpair16.sroa.0.0.copyload = load i32, ptr %eth_mac_filter_discard, align 4
  %__regpair16.sroa.5.0.eth_mac_filter_discard.sroa_idx = getelementptr inbounds %struct.tstorm_per_port_stat, ptr %tstats, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %__regpair16.sroa.5.0.eth_mac_filter_discard.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %__regpair16.sroa.5.0.copyload = load i32, ptr %__regpair16.sroa.5.0.eth_mac_filter_discard.sroa_idx, align 4
  %34 = zext i32 %__regpair16.sroa.5.0.copyload to i64
  %35 = zext i32 %__regpair16.sroa.0.0.copyload to i64
  %36 = shl nuw i64 %35, 32
  %37 = or i64 %36, %34
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %mac_filter_discards = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 10
  %39 = ptrtoint ptr %mac_filter_discards to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mac_filter_discards, align 8
  %add25 = add i64 %38, %40
  store i64 %add25, ptr %mac_filter_discards, align 8
  %eth_gft_drop_pkt = getelementptr inbounds %struct.tstorm_per_port_stat, ptr %tstats, i32 0, i32 16
  %41 = ptrtoint ptr %eth_gft_drop_pkt to i32
  call void @__asan_load4_noabort(i32 %41)
  %__regpair26.sroa.0.0.copyload = load i32, ptr %eth_gft_drop_pkt, align 4
  %__regpair26.sroa.5.0.eth_gft_drop_pkt.sroa_idx = getelementptr inbounds %struct.tstorm_per_port_stat, ptr %tstats, i32 0, i32 16, i32 1
  %42 = ptrtoint ptr %__regpair26.sroa.5.0.eth_gft_drop_pkt.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %__regpair26.sroa.5.0.copyload = load i32, ptr %__regpair26.sroa.5.0.eth_gft_drop_pkt.sroa_idx, align 4
  %43 = zext i32 %__regpair26.sroa.5.0.copyload to i64
  %44 = zext i32 %__regpair26.sroa.0.0.copyload to i64
  %45 = shl nuw i64 %44, 32
  %46 = or i64 %45, %43
  %47 = call i64 @llvm.bswap.i64(i64 %46)
  %gft_filter_drop = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 11
  %48 = ptrtoint ptr %gft_filter_drop to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gft_filter_drop, align 8
  %add35 = add i64 %47, %49
  store i64 %add35, ptr %gft_filter_drop, align 8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %tstats) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qed_get_vport_pstats(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr nocapture noundef %p_stats, i16 noundef zeroext %statistics_bin) unnamed_addr #9 align 64 {
entry:
  %pstats = alloca %struct.eth_pstorm_per_queue_stat, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pstats) #10
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iro_arr.i = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iro_arr.i, align 8
  %arrayidx.i = getelementptr %struct.iro, ptr %5, i32 34
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %statistics_bin to i32
  %m1.i = getelementptr %struct.iro, ptr %5, i32 34, i32 1
  %8 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m1.i, align 4
  %conv5.i = zext i16 %9 to i32
  %mul.i = mul nuw i32 %conv5.i, %conv.i
  %add.i = add i32 %7, 32505856
  %add6.i = add i32 %add.i, %mul.i
  br label %__qed_get_vport_pstats_addrlen.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vf_iov_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 43
  %10 = ptrtoint ptr %vf_iov_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf_iov_info.i, align 8
  %pstats.i = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 8, i32 1, i32 13, i32 1
  %12 = ptrtoint ptr %pstats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pstats.i, align 8
  %len.i = getelementptr inbounds %struct.qed_vf_iov, ptr %11, i32 0, i32 8, i32 1, i32 13, i32 1, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  br label %__qed_get_vport_pstats_addrlen.exit

__qed_get_vport_pstats_addrlen.exit:              ; preds = %if.else.i, %if.then.i
  %pstats_addr.0 = phi i32 [ %add6.i, %if.then.i ], [ %13, %if.else.i ]
  %storemerge.i = phi i32 [ 56, %if.then.i ], [ %15, %if.else.i ]
  %16 = call ptr @memset(ptr %pstats, i32 0, i32 56)
  call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %pstats, i32 noundef %pstats_addr.0, i32 noundef %storemerge.i) #10
  %17 = ptrtoint ptr %pstats to i32
  call void @__asan_load4_noabort(i32 %17)
  %__regpair.sroa.0.0.copyload = load i32, ptr %pstats, align 4
  %__regpair.sroa.5.0.sent_ucast_bytes.sroa_idx = getelementptr inbounds i8, ptr %pstats, i32 4
  %18 = ptrtoint ptr %__regpair.sroa.5.0.sent_ucast_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %__regpair.sroa.5.0.copyload = load i32, ptr %__regpair.sroa.5.0.sent_ucast_bytes.sroa_idx, align 4
  %19 = zext i32 %__regpair.sroa.5.0.copyload to i64
  %20 = zext i32 %__regpair.sroa.0.0.copyload to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %tx_ucast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 12
  %24 = ptrtoint ptr %tx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_ucast_bytes, align 8
  %add2 = add i64 %23, %25
  store i64 %add2, ptr %tx_ucast_bytes, align 8
  %sent_mcast_bytes = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 1
  %26 = ptrtoint ptr %sent_mcast_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %__regpair3.sroa.0.0.copyload = load i32, ptr %sent_mcast_bytes, align 4
  %__regpair3.sroa.5.0.sent_mcast_bytes.sroa_idx = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %__regpair3.sroa.5.0.sent_mcast_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %__regpair3.sroa.5.0.copyload = load i32, ptr %__regpair3.sroa.5.0.sent_mcast_bytes.sroa_idx, align 4
  %28 = zext i32 %__regpair3.sroa.5.0.copyload to i64
  %29 = zext i32 %__regpair3.sroa.0.0.copyload to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %tx_mcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 13
  %33 = ptrtoint ptr %tx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_mcast_bytes, align 8
  %add12 = add i64 %32, %34
  store i64 %add12, ptr %tx_mcast_bytes, align 8
  %sent_bcast_bytes = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 2
  %35 = ptrtoint ptr %sent_bcast_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %__regpair13.sroa.0.0.copyload = load i32, ptr %sent_bcast_bytes, align 4
  %__regpair13.sroa.5.0.sent_bcast_bytes.sroa_idx = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %__regpair13.sroa.5.0.sent_bcast_bytes.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %__regpair13.sroa.5.0.copyload = load i32, ptr %__regpair13.sroa.5.0.sent_bcast_bytes.sroa_idx, align 4
  %37 = zext i32 %__regpair13.sroa.5.0.copyload to i64
  %38 = zext i32 %__regpair13.sroa.0.0.copyload to i64
  %39 = shl nuw i64 %38, 32
  %40 = or i64 %39, %37
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %tx_bcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 14
  %42 = ptrtoint ptr %tx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tx_bcast_bytes, align 8
  %add22 = add i64 %41, %43
  store i64 %add22, ptr %tx_bcast_bytes, align 8
  %sent_ucast_pkts = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 3
  %44 = ptrtoint ptr %sent_ucast_pkts to i32
  call void @__asan_load4_noabort(i32 %44)
  %__regpair23.sroa.0.0.copyload = load i32, ptr %sent_ucast_pkts, align 4
  %__regpair23.sroa.5.0.sent_ucast_pkts.sroa_idx = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %__regpair23.sroa.5.0.sent_ucast_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %__regpair23.sroa.5.0.copyload = load i32, ptr %__regpair23.sroa.5.0.sent_ucast_pkts.sroa_idx, align 4
  %46 = zext i32 %__regpair23.sroa.5.0.copyload to i64
  %47 = zext i32 %__regpair23.sroa.0.0.copyload to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %50 = call i64 @llvm.bswap.i64(i64 %49)
  %tx_ucast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 15
  %51 = ptrtoint ptr %tx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tx_ucast_pkts, align 8
  %add32 = add i64 %50, %52
  store i64 %add32, ptr %tx_ucast_pkts, align 8
  %sent_mcast_pkts = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 4
  %53 = ptrtoint ptr %sent_mcast_pkts to i32
  call void @__asan_load4_noabort(i32 %53)
  %__regpair33.sroa.0.0.copyload = load i32, ptr %sent_mcast_pkts, align 4
  %__regpair33.sroa.5.0.sent_mcast_pkts.sroa_idx = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %__regpair33.sroa.5.0.sent_mcast_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %__regpair33.sroa.5.0.copyload = load i32, ptr %__regpair33.sroa.5.0.sent_mcast_pkts.sroa_idx, align 4
  %55 = zext i32 %__regpair33.sroa.5.0.copyload to i64
  %56 = zext i32 %__regpair33.sroa.0.0.copyload to i64
  %57 = shl nuw i64 %56, 32
  %58 = or i64 %57, %55
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %tx_mcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 16
  %60 = ptrtoint ptr %tx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %tx_mcast_pkts, align 8
  %add42 = add i64 %59, %61
  store i64 %add42, ptr %tx_mcast_pkts, align 8
  %sent_bcast_pkts = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 5
  %62 = ptrtoint ptr %sent_bcast_pkts to i32
  call void @__asan_load4_noabort(i32 %62)
  %__regpair43.sroa.0.0.copyload = load i32, ptr %sent_bcast_pkts, align 4
  %__regpair43.sroa.5.0.sent_bcast_pkts.sroa_idx = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %__regpair43.sroa.5.0.sent_bcast_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %__regpair43.sroa.5.0.copyload = load i32, ptr %__regpair43.sroa.5.0.sent_bcast_pkts.sroa_idx, align 4
  %64 = zext i32 %__regpair43.sroa.5.0.copyload to i64
  %65 = zext i32 %__regpair43.sroa.0.0.copyload to i64
  %66 = shl nuw i64 %65, 32
  %67 = or i64 %66, %64
  %68 = call i64 @llvm.bswap.i64(i64 %67)
  %tx_bcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 17
  %69 = ptrtoint ptr %tx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tx_bcast_pkts, align 8
  %add52 = add i64 %68, %70
  store i64 %add52, ptr %tx_bcast_pkts, align 8
  %error_drop_pkts = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 6
  %71 = ptrtoint ptr %error_drop_pkts to i32
  call void @__asan_load4_noabort(i32 %71)
  %__regpair53.sroa.0.0.copyload = load i32, ptr %error_drop_pkts, align 4
  %__regpair53.sroa.5.0.error_drop_pkts.sroa_idx = getelementptr inbounds %struct.eth_pstorm_per_queue_stat, ptr %pstats, i32 0, i32 6, i32 1
  %72 = ptrtoint ptr %__regpair53.sroa.5.0.error_drop_pkts.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %__regpair53.sroa.5.0.copyload = load i32, ptr %__regpair53.sroa.5.0.error_drop_pkts.sroa_idx, align 4
  %73 = zext i32 %__regpair53.sroa.5.0.copyload to i64
  %74 = zext i32 %__regpair53.sroa.0.0.copyload to i64
  %75 = shl nuw i64 %74, 32
  %76 = or i64 %75, %73
  %77 = call i64 @llvm.bswap.i64(i64 %76)
  %tx_err_drop_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 18
  %78 = ptrtoint ptr %tx_err_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %tx_err_drop_pkts, align 8
  %add62 = add i64 %77, %79
  store i64 %add62, ptr %tx_err_drop_pkts, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pstats) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qed_get_vport_port_stats(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %p_stats) unnamed_addr #9 align 64 {
entry:
  %port_stats = alloca %struct.port_stats, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %port_stats) #10
  %0 = call ptr @memset(ptr %port_stats, i32 0, i32 488)
  %mcp_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 45
  %1 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mcp_info, align 8
  %port_addr = getelementptr inbounds %struct.qed_mcp_info, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %port_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_addr, align 8
  %add = add i32 %4, 40
  call void @qed_memcpy_from(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %port_stats, i32 noundef %add, i32 noundef 488) #10
  %eth = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1
  %5 = ptrtoint ptr %eth to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %eth, align 8
  %rx_64_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 24
  %7 = ptrtoint ptr %rx_64_byte_packets to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rx_64_byte_packets, align 8
  %add1 = add i64 %8, %6
  store i64 %add1, ptr %rx_64_byte_packets, align 8
  %r127 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %r127 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %r127, align 8
  %rx_65_to_127_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 25
  %11 = ptrtoint ptr %rx_65_to_127_byte_packets to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_65_to_127_byte_packets, align 8
  %add3 = add i64 %12, %10
  store i64 %add3, ptr %rx_65_to_127_byte_packets, align 8
  %r255 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %r255 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %r255, align 8
  %rx_128_to_255_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 26
  %15 = ptrtoint ptr %rx_128_to_255_byte_packets to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_128_to_255_byte_packets, align 8
  %add5 = add i64 %16, %14
  store i64 %add5, ptr %rx_128_to_255_byte_packets, align 8
  %r511 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %r511 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %r511, align 8
  %rx_256_to_511_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 27
  %19 = ptrtoint ptr %rx_256_to_511_byte_packets to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_256_to_511_byte_packets, align 8
  %add7 = add i64 %20, %18
  store i64 %add7, ptr %rx_256_to_511_byte_packets, align 8
  %r1023 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %r1023 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %r1023, align 8
  %rx_512_to_1023_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 28
  %23 = ptrtoint ptr %rx_512_to_1023_byte_packets to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_512_to_1023_byte_packets, align 8
  %add9 = add i64 %24, %22
  store i64 %add9, ptr %rx_512_to_1023_byte_packets, align 8
  %r1518 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %r1518 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %r1518, align 8
  %rx_1024_to_1518_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 29
  %27 = ptrtoint ptr %rx_1024_to_1518_byte_packets to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_1024_to_1518_byte_packets, align 8
  %add11 = add i64 %28, %26
  store i64 %add11, ptr %rx_1024_to_1518_byte_packets, align 8
  %rfcs = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %rfcs to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rfcs, align 8
  %rx_crc_errors = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 30
  %31 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_crc_errors, align 8
  %add13 = add i64 %32, %30
  store i64 %add13, ptr %rx_crc_errors, align 8
  %rxcf = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %rxcf to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rxcf, align 8
  %rx_mac_crtl_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 31
  %35 = ptrtoint ptr %rx_mac_crtl_frames to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_mac_crtl_frames, align 8
  %add15 = add i64 %36, %34
  store i64 %add15, ptr %rx_mac_crtl_frames, align 8
  %rxpf = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %rxpf to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rxpf, align 8
  %rx_pause_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 32
  %39 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rx_pause_frames, align 8
  %add17 = add i64 %40, %38
  store i64 %add17, ptr %rx_pause_frames, align 8
  %rxpp = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 10
  %41 = ptrtoint ptr %rxpp to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rxpp, align 8
  %rx_pfc_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 33
  %43 = ptrtoint ptr %rx_pfc_frames to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rx_pfc_frames, align 8
  %add19 = add i64 %44, %42
  store i64 %add19, ptr %rx_pfc_frames, align 8
  %raln = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 11
  %45 = ptrtoint ptr %raln to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %raln, align 8
  %rx_align_errors = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 34
  %47 = ptrtoint ptr %rx_align_errors to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_align_errors, align 8
  %add21 = add i64 %48, %46
  store i64 %add21, ptr %rx_align_errors, align 8
  %rfcr = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 12
  %49 = ptrtoint ptr %rfcr to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rfcr, align 8
  %rx_carrier_errors = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 35
  %51 = ptrtoint ptr %rx_carrier_errors to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_carrier_errors, align 8
  %add23 = add i64 %52, %50
  store i64 %add23, ptr %rx_carrier_errors, align 8
  %rovr = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 13
  %53 = ptrtoint ptr %rovr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rovr, align 8
  %rx_oversize_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 36
  %55 = ptrtoint ptr %rx_oversize_packets to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_oversize_packets, align 8
  %add25 = add i64 %56, %54
  store i64 %add25, ptr %rx_oversize_packets, align 8
  %rjbr = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 14
  %57 = ptrtoint ptr %rjbr to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rjbr, align 8
  %rx_jabbers = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 37
  %59 = ptrtoint ptr %rx_jabbers to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rx_jabbers, align 8
  %add27 = add i64 %60, %58
  store i64 %add27, ptr %rx_jabbers, align 8
  %rund = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 15
  %61 = ptrtoint ptr %rund to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rund, align 8
  %rx_undersize_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 38
  %63 = ptrtoint ptr %rx_undersize_packets to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %rx_undersize_packets, align 8
  %add29 = add i64 %64, %62
  store i64 %add29, ptr %rx_undersize_packets, align 8
  %rfrg = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 16
  %65 = ptrtoint ptr %rfrg to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rfrg, align 8
  %rx_fragments = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 39
  %67 = ptrtoint ptr %rx_fragments to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rx_fragments, align 8
  %add31 = add i64 %68, %66
  store i64 %add31, ptr %rx_fragments, align 8
  %t64 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 17
  %69 = ptrtoint ptr %t64 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %t64, align 8
  %tx_64_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 40
  %71 = ptrtoint ptr %tx_64_byte_packets to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tx_64_byte_packets, align 8
  %add33 = add i64 %72, %70
  store i64 %add33, ptr %tx_64_byte_packets, align 8
  %t127 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 18
  %73 = ptrtoint ptr %t127 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %t127, align 8
  %tx_65_to_127_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 41
  %75 = ptrtoint ptr %tx_65_to_127_byte_packets to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %tx_65_to_127_byte_packets, align 8
  %add35 = add i64 %76, %74
  store i64 %add35, ptr %tx_65_to_127_byte_packets, align 8
  %t255 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 19
  %77 = ptrtoint ptr %t255 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %t255, align 8
  %tx_128_to_255_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 42
  %79 = ptrtoint ptr %tx_128_to_255_byte_packets to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %tx_128_to_255_byte_packets, align 8
  %add37 = add i64 %80, %78
  store i64 %add37, ptr %tx_128_to_255_byte_packets, align 8
  %t511 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 20
  %81 = ptrtoint ptr %t511 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %t511, align 8
  %tx_256_to_511_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 43
  %83 = ptrtoint ptr %tx_256_to_511_byte_packets to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %tx_256_to_511_byte_packets, align 8
  %add39 = add i64 %84, %82
  store i64 %add39, ptr %tx_256_to_511_byte_packets, align 8
  %t1023 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 21
  %85 = ptrtoint ptr %t1023 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %t1023, align 8
  %tx_512_to_1023_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 44
  %87 = ptrtoint ptr %tx_512_to_1023_byte_packets to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %tx_512_to_1023_byte_packets, align 8
  %add41 = add i64 %88, %86
  store i64 %add41, ptr %tx_512_to_1023_byte_packets, align 8
  %t1518 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 22
  %89 = ptrtoint ptr %t1518 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %t1518, align 8
  %tx_1024_to_1518_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 45
  %91 = ptrtoint ptr %tx_1024_to_1518_byte_packets to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %tx_1024_to_1518_byte_packets, align 8
  %add43 = add i64 %92, %90
  store i64 %add43, ptr %tx_1024_to_1518_byte_packets, align 8
  %txpf = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 24
  %93 = ptrtoint ptr %txpf to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %txpf, align 8
  %tx_pause_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 46
  %95 = ptrtoint ptr %tx_pause_frames to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %tx_pause_frames, align 8
  %add45 = add i64 %96, %94
  store i64 %add45, ptr %tx_pause_frames, align 8
  %txpp = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 25
  %97 = ptrtoint ptr %txpp to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %txpp, align 8
  %tx_pfc_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 47
  %99 = ptrtoint ptr %tx_pfc_frames to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tx_pfc_frames, align 8
  %add47 = add i64 %100, %98
  store i64 %add47, ptr %tx_pfc_frames, align 8
  %rbyte = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 27
  %101 = ptrtoint ptr %rbyte to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %rbyte, align 8
  %rx_mac_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 50
  %103 = ptrtoint ptr %rx_mac_bytes to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rx_mac_bytes, align 8
  %add49 = add i64 %104, %102
  store i64 %add49, ptr %rx_mac_bytes, align 8
  %rxuca = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 28
  %105 = ptrtoint ptr %rxuca to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %rxuca, align 8
  %rx_mac_uc_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 51
  %107 = ptrtoint ptr %rx_mac_uc_packets to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %rx_mac_uc_packets, align 8
  %add51 = add i64 %108, %106
  store i64 %add51, ptr %rx_mac_uc_packets, align 8
  %rxmca = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 29
  %109 = ptrtoint ptr %rxmca to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %rxmca, align 8
  %rx_mac_mc_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 52
  %111 = ptrtoint ptr %rx_mac_mc_packets to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rx_mac_mc_packets, align 8
  %add53 = add i64 %112, %110
  store i64 %add53, ptr %rx_mac_mc_packets, align 8
  %rxbca = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 30
  %113 = ptrtoint ptr %rxbca to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %rxbca, align 8
  %rx_mac_bc_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 53
  %115 = ptrtoint ptr %rx_mac_bc_packets to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %rx_mac_bc_packets, align 8
  %add55 = add i64 %116, %114
  store i64 %add55, ptr %rx_mac_bc_packets, align 8
  %rxpok = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 31
  %117 = ptrtoint ptr %rxpok to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %rxpok, align 8
  %rx_mac_frames_ok = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 54
  %119 = ptrtoint ptr %rx_mac_frames_ok to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %rx_mac_frames_ok, align 8
  %add57 = add i64 %120, %118
  store i64 %add57, ptr %rx_mac_frames_ok, align 8
  %tbyte = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 32
  %121 = ptrtoint ptr %tbyte to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %tbyte, align 8
  %tx_mac_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 55
  %123 = ptrtoint ptr %tx_mac_bytes to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %tx_mac_bytes, align 8
  %add59 = add i64 %124, %122
  store i64 %add59, ptr %tx_mac_bytes, align 8
  %txuca = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 33
  %125 = ptrtoint ptr %txuca to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %txuca, align 8
  %tx_mac_uc_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 56
  %127 = ptrtoint ptr %tx_mac_uc_packets to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %tx_mac_uc_packets, align 8
  %add61 = add i64 %128, %126
  store i64 %add61, ptr %tx_mac_uc_packets, align 8
  %txmca = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 34
  %129 = ptrtoint ptr %txmca to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %txmca, align 8
  %tx_mac_mc_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 57
  %131 = ptrtoint ptr %tx_mac_mc_packets to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %tx_mac_mc_packets, align 8
  %add63 = add i64 %132, %130
  store i64 %add63, ptr %tx_mac_mc_packets, align 8
  %txbca = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 35
  %133 = ptrtoint ptr %txbca to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %txbca, align 8
  %tx_mac_bc_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 58
  %135 = ptrtoint ptr %tx_mac_bc_packets to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %tx_mac_bc_packets, align 8
  %add65 = add i64 %136, %134
  store i64 %add65, ptr %tx_mac_bc_packets, align 8
  %txcf = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 36
  %137 = ptrtoint ptr %txcf to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %txcf, align 8
  %tx_mac_ctrl_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 59
  %139 = ptrtoint ptr %tx_mac_ctrl_frames to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %tx_mac_ctrl_frames, align 8
  %add67 = add i64 %140, %138
  store i64 %add67, ptr %tx_mac_ctrl_frames, align 8
  %brb_truncates = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 48
  %brb_discards = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 49
  %141 = ptrtoint ptr %brb_truncates to i32
  call void @__asan_load8_noabort(i32 %141)
  %brb_truncates.promoted = load i64, ptr %brb_truncates, align 8
  %142 = ptrtoint ptr %brb_discards to i32
  call void @__asan_load8_noabort(i32 %142)
  %brb_discards.promoted = load i64, ptr %brb_discards, align 8
  %143 = ptrtoint ptr %port_stats to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %port_stats, align 8
  %add68 = add i64 %brb_truncates.promoted, %144
  %arrayidx70 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 0
  %145 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx70, align 8
  %add71 = add i64 %brb_discards.promoted, %146
  %arrayidx.1 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 1
  %147 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx.1, align 8
  %add68.1 = add i64 %add68, %148
  %arrayidx70.1 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 1
  %149 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx70.1, align 8
  %add71.1 = add i64 %add71, %150
  %arrayidx.2 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 2
  %151 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %arrayidx.2, align 8
  %add68.2 = add i64 %add68.1, %152
  %arrayidx70.2 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 2
  %153 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx70.2, align 8
  %add71.2 = add i64 %add71.1, %154
  %arrayidx.3 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 3
  %155 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %arrayidx.3, align 8
  %add68.3 = add i64 %add68.2, %156
  %arrayidx70.3 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 3
  %157 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %arrayidx70.3, align 8
  %add71.3 = add i64 %add71.2, %158
  %arrayidx.4 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 4
  %159 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx.4, align 8
  %add68.4 = add i64 %add68.3, %160
  %arrayidx70.4 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 4
  %161 = ptrtoint ptr %arrayidx70.4 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %arrayidx70.4, align 8
  %add71.4 = add i64 %add71.3, %162
  %arrayidx.5 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 5
  %163 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx.5, align 8
  %add68.5 = add i64 %add68.4, %164
  %arrayidx70.5 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 5
  %165 = ptrtoint ptr %arrayidx70.5 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %arrayidx70.5, align 8
  %add71.5 = add i64 %add71.4, %166
  %arrayidx.6 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 6
  %167 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx.6, align 8
  %add68.6 = add i64 %add68.5, %168
  %arrayidx70.6 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 6
  %169 = ptrtoint ptr %arrayidx70.6 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %arrayidx70.6, align 8
  %add71.6 = add i64 %add71.5, %170
  %arrayidx.7 = getelementptr inbounds [8 x i64], ptr %port_stats, i32 0, i32 7
  %171 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %arrayidx.7, align 8
  %add68.7 = add i64 %add68.6, %172
  %arrayidx70.7 = getelementptr inbounds %struct.brb_stats, ptr %port_stats, i32 0, i32 1, i32 7
  %173 = ptrtoint ptr %arrayidx70.7 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx70.7, align 8
  %add71.7 = add i64 %add71.6, %174
  store i64 %add68.7, ptr %brb_truncates, align 8
  store i64 %add71.7, ptr %brb_discards, align 8
  %175 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %p_hwfn, align 8
  %type = getelementptr inbounds %struct.qed_dev, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp72 = icmp eq i32 %178, 0
  %179 = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1
  br i1 %cmp72, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %u0 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 6
  %180 = ptrtoint ptr %u0 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %u0, align 8
  %182 = ptrtoint ptr %179 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %179, align 8
  %add74 = add i64 %183, %181
  store i64 %add74, ptr %179, align 8
  %r2047 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 6, i32 0, i32 1
  %184 = ptrtoint ptr %r2047 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %r2047, align 8
  %rx_1519_to_2047_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 1
  %186 = ptrtoint ptr %rx_1519_to_2047_byte_packets to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %rx_1519_to_2047_byte_packets, align 8
  %add77 = add i64 %187, %185
  store i64 %add77, ptr %rx_1519_to_2047_byte_packets, align 8
  %r4095 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 6, i32 0, i32 2
  %188 = ptrtoint ptr %r4095 to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %r4095, align 8
  %rx_2048_to_4095_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 2
  %190 = ptrtoint ptr %rx_2048_to_4095_byte_packets to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %rx_2048_to_4095_byte_packets, align 8
  %add80 = add i64 %191, %189
  store i64 %add80, ptr %rx_2048_to_4095_byte_packets, align 8
  %r9216 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 6, i32 0, i32 3
  %192 = ptrtoint ptr %r9216 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %r9216, align 8
  %rx_4096_to_9216_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 3
  %194 = ptrtoint ptr %rx_4096_to_9216_byte_packets to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %rx_4096_to_9216_byte_packets, align 8
  %add83 = add i64 %195, %193
  store i64 %add83, ptr %rx_4096_to_9216_byte_packets, align 8
  %r16383 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 6, i32 0, i32 4
  %196 = ptrtoint ptr %r16383 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %r16383, align 8
  %rx_9217_to_16383_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 4
  %198 = ptrtoint ptr %rx_9217_to_16383_byte_packets to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %rx_9217_to_16383_byte_packets, align 8
  %add86 = add i64 %199, %197
  store i64 %add86, ptr %rx_9217_to_16383_byte_packets, align 8
  %u1 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 23
  %200 = ptrtoint ptr %u1 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %u1, align 8
  %tx_1519_to_2047_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 5
  %202 = ptrtoint ptr %tx_1519_to_2047_byte_packets to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %tx_1519_to_2047_byte_packets, align 8
  %add88 = add i64 %203, %201
  store i64 %add88, ptr %tx_1519_to_2047_byte_packets, align 8
  %t4095 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 23, i32 0, i32 1
  %204 = ptrtoint ptr %t4095 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %t4095, align 8
  %tx_2048_to_4095_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 6
  %206 = ptrtoint ptr %tx_2048_to_4095_byte_packets to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %tx_2048_to_4095_byte_packets, align 8
  %add91 = add i64 %207, %205
  store i64 %add91, ptr %tx_2048_to_4095_byte_packets, align 8
  %t9216 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 23, i32 0, i32 2
  %208 = ptrtoint ptr %t9216 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %t9216, align 8
  %tx_4096_to_9216_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 7
  %210 = ptrtoint ptr %tx_4096_to_9216_byte_packets to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %tx_4096_to_9216_byte_packets, align 8
  %add94 = add i64 %211, %209
  store i64 %add94, ptr %tx_4096_to_9216_byte_packets, align 8
  %t16383 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 23, i32 0, i32 3
  %212 = ptrtoint ptr %t16383 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %t16383, align 8
  %tx_9217_to_16383_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 8
  %214 = ptrtoint ptr %tx_9217_to_16383_byte_packets to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %tx_9217_to_16383_byte_packets, align 8
  %add97 = add i64 %215, %213
  store i64 %add97, ptr %tx_9217_to_16383_byte_packets, align 8
  %u2 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 26
  %216 = ptrtoint ptr %u2 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %u2, align 8
  %tx_lpi_entry_count = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 9
  %218 = ptrtoint ptr %tx_lpi_entry_count to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %tx_lpi_entry_count, align 8
  %add99 = add i64 %219, %217
  store i64 %add99, ptr %tx_lpi_entry_count, align 8
  %tncl = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 26, i32 0, i32 1
  %220 = ptrtoint ptr %tncl to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %tncl, align 8
  %tx_total_collisions = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 10
  %222 = ptrtoint ptr %tx_total_collisions to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %tx_total_collisions, align 8
  %add102 = add i64 %223, %221
  store i64 %add102, ptr %tx_total_collisions, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %r1519_to_max = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 6, i32 0, i32 1
  %224 = ptrtoint ptr %r1519_to_max to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %r1519_to_max, align 8
  %226 = ptrtoint ptr %179 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %179, align 8
  %add105 = add i64 %227, %225
  store i64 %add105, ptr %179, align 8
  %u1107 = getelementptr inbounds %struct.port_stats, ptr %port_stats, i32 0, i32 1, i32 23
  %228 = ptrtoint ptr %u1107 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %u1107, align 8
  %tx_1519_to_max_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %p_stats, i32 0, i32 1, i32 0, i32 1
  %230 = ptrtoint ptr %tx_1519_to_max_byte_packets to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %229, ptr %tx_1519_to_max_byte_packets, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %231 = ptrtoint ptr %mcp_info to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mcp_info, align 8
  %port_addr109 = getelementptr inbounds %struct.qed_mcp_info, ptr %232, i32 0, i32 7
  %233 = ptrtoint ptr %port_addr109 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port_addr109, align 8
  %add110 = add i32 %234, 536
  %call = call i32 @qed_rd(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add110) #10
  %conv = zext i32 %call to i64
  %link_change_count = getelementptr inbounds %struct.qed_eth_stats_common, ptr %p_stats, i32 0, i32 60
  %235 = ptrtoint ptr %link_change_count to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %conv, ptr %link_change_count, align 8
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %port_stats) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_memcpy_from(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_device_num_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fill_eth_dev_info(ptr noundef %cdev, ptr noundef %info) #0 align 64 {
entry:
  %queues = alloca i8, align 1
  %cids80 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %0 = call ptr @memset(ptr %info, i32 0, i32 76)
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %1 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else69

if.then:                                          ; preds = %entry
  %num_hw_tc = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 4
  %3 = ptrtoint ptr %num_hw_tc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_hw_tc, align 8
  %num_tc = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %num_tc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %num_tc, align 1
  %out = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %8 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_hwfns, align 4
  br i1 %cmp, label %for.cond.preheader, label %if.then.if.end43.sink.split_crit_edge

if.then.if.end43.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.sink.split

for.cond.preheader:                               ; preds = %if.then
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp2182.not = icmp eq i8 %9, 0
  br i1 %cmp2182.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv10 = zext i8 %4 to i16
  %add = add nuw nsw i16 %conv10, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %num_queues.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %phi.cast, %for.body.for.body_crit_edge ]
  %feat_num = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0184, i32 17, i32 3
  %10 = ptrtoint ptr %feat_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %feat_num, align 4
  %pf_params = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0184, i32 36
  %12 = ptrtoint ptr %pf_params to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pf_params, align 8
  %div = udiv i16 %13, %add
  %conv13 = and i32 %11, 65535
  %conv14 = zext i16 %div to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %conv13, i32 %conv14)
  %add20 = add nuw nsw i32 %14, %num_queues.0183
  %inc = add nuw nsw i32 %i.0184, 1
  %phi.cast = and i32 %add20, 65535
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_queues.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.body.for.end_crit_edge ]
  %fp_msix_cnt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 54, i32 5
  %15 = ptrtoint ptr %fp_msix_cnt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fp_msix_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %for.end.if.end43_crit_edge, label %if.then24

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv30 = zext i8 %16 to i32
  %17 = tail call i32 @llvm.umin.i32(i32 %num_queues.0.lcssa, i32 %conv30)
  %conv39 = trunc i32 %17 to i8
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.then24, %if.then.if.end43.sink.split_crit_edge
  %conv39.sink = phi i8 [ %conv39, %if.then24 ], [ %9, %if.then.if.end43.sink.split_crit_edge ]
  %num_queues40 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %num_queues40 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv39.sink, ptr %num_queues40, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %for.end.if.end43_crit_edge
  %p_iov_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 37
  %19 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_iov_info, align 4
  %tobool44.not = icmp eq ptr %20, null
  br i1 %tobool44.not, label %if.end43.if.end52_crit_edge, label %if.then45

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %total_vfs = getelementptr inbounds %struct.qed_hw_sriov_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %total_vfs, align 2
  %conv47 = zext i16 %22 to i32
  %mul.neg = mul nsw i32 %conv47, -2
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.end43.if.end52_crit_edge
  %max_vf_mac_filters.0 = phi i32 [ %conv47, %if.then45 ], [ 0, %if.end43.if.end52_crit_edge ]
  %max_vf_vlan_filters.0.neg = phi i32 [ %mul.neg, %if.then45 ], [ 0, %if.end43.if.end52_crit_edge ]
  %arrayidx56 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 2, i32 7
  %23 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx56, align 4
  %sub = add i32 %24, %max_vf_vlan_filters.0.neg
  %conv57 = trunc i32 %sub to i16
  %num_vlan_filters = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv57, ptr %num_vlan_filters, align 4
  %arrayidx62 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 2, i32 6
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx62, align 8
  %sub63 = sub i32 %27, %max_vf_mac_filters.0
  %conv64 = trunc i32 %sub63 to i16
  %num_mac_filters = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 5
  %28 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv64, ptr %num_mac_filters, align 2
  %port_mac = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 3
  %hw_mac_addr = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 13
  %29 = ptrtoint ptr %hw_mac_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_mac_addr, align 4
  %31 = ptrtoint ptr %port_mac to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %port_mac, align 4
  %add.ptr.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 17, i32 13, i32 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_dev_eth_info, ptr %info, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i, align 2
  %xdp_supported = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 7
  %35 = ptrtoint ptr %xdp_supported to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %xdp_supported, align 1
  br label %if.end116

if.else69:                                        ; preds = %entry
  %num_tc70 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %num_tc70 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %num_tc70, align 1
  %num_hwfns72 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %37 = ptrtoint ptr %num_hwfns72 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_hwfns72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp74179.not = icmp eq i8 %38, 0
  br i1 %cmp74179.not, label %if.else69.for.end92_crit_edge, label %for.body76.lr.ph

if.else69.for.end92_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body76.lr.ph:                                 ; preds = %if.else69
  %num_queues82 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 1
  br label %for.body76

for.body76:                                       ; preds = %for.body76.for.body76_crit_edge, %for.body76.lr.ph
  %total_cids.0181 = phi i32 [ 0, %for.body76.lr.ph ], [ %phi.cast177, %for.body76.for.body76_crit_edge ]
  %i.1180 = phi i32 [ 0, %for.body76.lr.ph ], [ %inc91, %for.body76.for.body76_crit_edge ]
  %arrayidx79 = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.1180
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %queues) #10
  %39 = ptrtoint ptr %queues to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %queues, align 1, !annotation !262
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cids80) #10
  %40 = ptrtoint ptr %cids80 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %cids80, align 1, !annotation !262
  call void @qed_vf_get_num_cids(ptr noundef %arrayidx79, ptr noundef nonnull %cids80) #10
  call void @qed_vf_get_num_rxqs(ptr noundef %arrayidx79, ptr noundef nonnull %queues) #10
  %41 = ptrtoint ptr %queues to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %queues, align 1
  %43 = ptrtoint ptr %num_queues82 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_queues82, align 4
  %add84 = add i8 %44, %42
  store i8 %add84, ptr %num_queues82, align 4
  %45 = ptrtoint ptr %cids80 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cids80, align 1
  %conv86 = zext i8 %46 to i32
  %add88 = add nuw nsw i32 %total_cids.0181, %conv86
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cids80) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %queues) #10
  %inc91 = add nuw nsw i32 %i.1180, 1
  %phi.cast177 = and i32 %add88, 65535
  %47 = ptrtoint ptr %num_hwfns72 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num_hwfns72, align 4
  %conv73 = zext i8 %48 to i32
  %cmp74 = icmp ult i32 %inc91, %conv73
  br i1 %cmp74, label %for.body76.for.body76_crit_edge, label %for.body76.for.end92_crit_edge

for.body76.for.end92_crit_edge:                   ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end92

for.body76.for.body76_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body76

for.end92:                                        ; preds = %for.body76.for.end92_crit_edge, %if.else69.for.end92_crit_edge
  %total_cids.0.lcssa = phi i32 [ 0, %if.else69.for.end92_crit_edge ], [ %phi.cast177, %for.body76.for.end92_crit_edge ]
  %num_queues94 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 1
  %49 = ptrtoint ptr %num_queues94 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_queues94, align 4
  %conv95 = zext i8 %50 to i32
  %mul96 = mul nuw nsw i32 %conv95, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %total_cids.0.lcssa, i32 %mul96)
  %cmp97.not = icmp ult i32 %total_cids.0.lcssa, %mul96
  br i1 %cmp97.not, label %for.end92.if.end101_crit_edge, label %if.then99

for.end92.if.end101_crit_edge:                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then99:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #12
  %xdp_supported100 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 7
  %51 = ptrtoint ptr %xdp_supported100 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %xdp_supported100, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %for.end92.if.end101_crit_edge
  %num_vlan_filters104 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 4
  call void @qed_vf_get_num_vlan_filters(ptr noundef %hwfns, ptr noundef %num_vlan_filters104) #10
  %num_mac_filters107 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 5
  call void @qed_vf_get_num_mac_filters(ptr noundef %hwfns, ptr noundef %num_mac_filters107) #10
  %port_mac110 = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 3
  call void @qed_vf_get_port_mac(ptr noundef %hwfns, ptr noundef %port_mac110) #10
  %vf_iov_info = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 43
  %52 = ptrtoint ptr %vf_iov_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vf_iov_info, align 8
  %b_pre_fp_hsi = getelementptr inbounds %struct.qed_vf_iov, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %b_pre_fp_hsi to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %b_pre_fp_hsi, align 8, !range !259
  %is_legacy = getelementptr inbounds %struct.qed_dev_eth_info, ptr %info, i32 0, i32 6
  %56 = ptrtoint ptr %is_legacy to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %is_legacy, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.end101, %if.end52
  %call = call i32 @qed_fill_dev_info(ptr noundef %cdev, ptr noundef %info) #10
  %57 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool118.not = icmp eq i8 %58, 0
  br i1 %tobool118.not, label %if.end116.if.end122_crit_edge, label %if.then119

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %hw_mac = getelementptr inbounds %struct.qed_dev_info, ptr %info, i32 0, i32 4
  %59 = call ptr @memset(ptr %hw_mac, i32 0, i32 6)
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end116.if.end122_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_register_eth_ops(ptr noundef %cdev, ptr noundef %ops, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 56
  %0 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %protocol_ops, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 57
  %1 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cookie, ptr %ops_cookie, align 4
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %2 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qed_vf_start_iov_wq(ptr noundef %cdev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @qed_check_mac(ptr noundef %cdev, ptr noundef %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call zeroext i1 @qed_vf_check_mac(ptr noundef %hwfns, ptr noundef %mac) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_start_vport(ptr noundef %cdev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %start = alloca %struct.qed_sp_vport_start_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp113.not = icmp eq i8 %1, 0
  br i1 %cmp113.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %gro_enable = getelementptr inbounds %struct.qed_start_vport_params, ptr %params, i32 0, i32 2
  %remove_inner_vlan4 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 1
  %only_untagged = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 4
  %drop_ttl0 = getelementptr inbounds %struct.qed_start_vport_params, ptr %params, i32 0, i32 3
  %drop_ttl06 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 5
  %opaque_fid8 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 8
  %concrete_fid10 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 7
  %handle_ptp_pkts = getelementptr inbounds %struct.qed_start_vport_params, ptr %params, i32 0, i32 1
  %handle_ptp_pkts12 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 3
  %vport_id = getelementptr inbounds %struct.qed_start_vport_params, ptr %params, i32 0, i32 4
  %vport_id14 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 9
  %max_buffers_per_cqe = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 6
  %mtu = getelementptr inbounds %struct.qed_start_vport_params, ptr %params, i32 0, i32 5
  %mtu15 = getelementptr inbounds %struct.qed_sp_vport_start_params, ptr %start, i32 0, i32 10
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %name58 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool60.not = icmp eq ptr %name58, null
  %spec.select107 = select i1 %tobool60.not, ptr @.str.4, ptr %name58
  %2 = getelementptr inbounds i8, ptr %start, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0114 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %start) #10
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0114
  %4 = ptrtoint ptr %gro_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gro_enable, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %6 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %start, align 4
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 2, !range !259
  %9 = ptrtoint ptr %remove_inner_vlan4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %remove_inner_vlan4, align 4
  %10 = ptrtoint ptr %only_untagged to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %only_untagged, align 1
  %11 = ptrtoint ptr %drop_ttl0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drop_ttl0, align 1, !range !259
  %13 = ptrtoint ptr %drop_ttl06 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %drop_ttl06, align 4
  %opaque_fid = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0114, i32 17, i32 10
  %14 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opaque_fid, align 4
  %16 = ptrtoint ptr %opaque_fid8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %opaque_fid8, align 4
  %concrete_fid = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0114, i32 17, i32 9
  %17 = ptrtoint ptr %concrete_fid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %concrete_fid, align 8
  %19 = ptrtoint ptr %concrete_fid10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %concrete_fid10, align 4
  %20 = ptrtoint ptr %handle_ptp_pkts to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %handle_ptp_pkts, align 1, !range !259
  %22 = ptrtoint ptr %handle_ptp_pkts12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %handle_ptp_pkts12, align 2
  %23 = ptrtoint ptr %vport_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vport_id, align 2
  %25 = ptrtoint ptr %vport_id14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %vport_id14, align 2
  %26 = ptrtoint ptr %max_buffers_per_cqe to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %max_buffers_per_cqe, align 1
  %27 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mtu, align 2
  %29 = ptrtoint ptr %mtu15 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mtu15, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @qed_vf_pf_vport_start(ptr noundef %arrayidx, i8 noundef zeroext %24, i16 noundef zeroext %28, i8 noundef zeroext %8, i32 noundef %cond, i8 noundef zeroext 16, i8 noundef zeroext 1) #10
  br label %qed_sp_vport_start.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = call i32 @qed_sp_eth_vport_start(ptr noundef %arrayidx, ptr noundef nonnull %start) #10
  br label %qed_sp_vport_start.exit

qed_sp_vport_start.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call4.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool16.not, label %if.end, label %do.end

do.end:                                           ; preds = %qed_sp_vport_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef 2325, ptr noundef nonnull %spec.select107) #15
  br label %cleanup

if.end:                                           ; preds = %qed_sp_vport_start.exit
  %call25 = tail call i32 @qed_hw_start_fastpath(ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body46, label %do.end31

do.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, i32 noundef 2331, ptr noundef nonnull %spec.select107) #15
  br label %cleanup

do.body46:                                        ; preds = %if.end
  %34 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp48 = icmp eq i8 %35, 0
  br i1 %cmp48, label %land.rhs, label %do.body46.for.inc_crit_edge

do.body46.for.inc_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs:                                         ; preds = %do.body46
  %36 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cdev, align 8
  %and = and i32 %37, 65568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %land.rhs.for.inc_crit_edge, label %do.end56, !prof !261

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end56:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %conv68 = zext i8 %24 to i32
  %conv70 = zext i16 %28 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.74, i32 noundef 2337, ptr noundef nonnull %spec.select107, i32 noundef %conv68, i32 noundef %conv70) #15
  br label %for.inc

cleanup:                                          ; preds = %do.end31, %do.end
  %retval.1 = phi i32 [ %call25, %do.end31 ], [ %retval.0.i, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %start) #10
  br label %cleanup79

for.inc:                                          ; preds = %do.end56, %land.rhs.for.inc_crit_edge, %do.body46.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %start) #10
  %inc = add nuw nsw i32 %i.0114, 1
  %38 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %39 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %clear_stats = getelementptr inbounds %struct.qed_start_vport_params, ptr %params, i32 0, i32 6
  %40 = ptrtoint ptr %clear_stats to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %clear_stats, align 2, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool76.not = icmp eq i8 %41, 0
  br i1 %tobool76.not, label %for.end.cleanup79_crit_edge, label %if.then77

for.end.cleanup79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.then77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qed_reset_vport_stats(ptr noundef %cdev)
  br label %cleanup79

cleanup79:                                        ; preds = %if.then77, %for.end.cleanup79_crit_edge, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 0, %if.then77 ], [ 0, %for.end.cleanup79_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_stop_vport(ptr noundef %cdev, i8 noundef zeroext %vport_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22.not = icmp eq i8 %1, 0
  br i1 %cmp22.not, label %entry.cleanup9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup9_crit_edge

for.cond.cleanup9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023
  %opaque_fid = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023, i32 17, i32 10
  %4 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opaque_fid, align 4
  %call = tail call i32 @qed_sp_vport_stop(ptr noundef %arrayidx, i16 noundef zeroext %5, i8 noundef zeroext %vport_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool3.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool3.not, ptr @.str.4, ptr %name
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef 2357, ptr noundef nonnull %spec.select) #15
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %for.cond.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_update_vport(ptr noundef %cdev, ptr nocapture noundef %params) #0 align 64 {
entry:
  %sp_params = alloca %struct.qed_sp_vport_update_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %sp_params) #10
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.cleanup72_crit_edge, label %if.end

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end:                                           ; preds = %entry
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv, 560
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %2) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup72_crit_edge, label %if.end4

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end4:                                          ; preds = %if.end
  %3 = call ptr @memset(ptr %sp_params, i32 0, i32 72)
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %params, align 4
  %vport_id5 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 1
  %6 = ptrtoint ptr %vport_id5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %vport_id5, align 2
  %update_vport_active_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %update_vport_active_flg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %update_vport_active_flg, align 1
  %update_vport_active_rx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 2
  %9 = ptrtoint ptr %update_vport_active_rx_flg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %update_vport_active_rx_flg, align 1
  %update_vport_active_tx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 4
  %10 = ptrtoint ptr %update_vport_active_tx_flg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %update_vport_active_tx_flg, align 1
  %vport_active_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %vport_active_flg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vport_active_flg, align 2
  %vport_active_rx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 3
  %13 = ptrtoint ptr %vport_active_rx_flg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %vport_active_rx_flg, align 4
  %vport_active_tx_flg = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 5
  %14 = ptrtoint ptr %vport_active_tx_flg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %vport_active_tx_flg, align 2
  %update_tx_switching_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %update_tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %update_tx_switching_flg, align 1
  %update_tx_switching_flg8 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 13
  %17 = ptrtoint ptr %update_tx_switching_flg8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %update_tx_switching_flg8, align 4
  %tx_switching_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 4
  %18 = ptrtoint ptr %tx_switching_flg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_switching_flg, align 4
  %tx_switching_flg9 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 14
  %20 = ptrtoint ptr %tx_switching_flg9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tx_switching_flg9, align 1
  %accept_any_vlan = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 6
  %21 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %accept_any_vlan, align 2
  %accept_any_vlan10 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 19
  %23 = ptrtoint ptr %accept_any_vlan10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %accept_any_vlan10, align 2
  %update_accept_any_vlan_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 5
  %24 = ptrtoint ptr %update_accept_any_vlan_flg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %update_accept_any_vlan_flg, align 1
  %update_accept_any_vlan_flg11 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 18
  %26 = ptrtoint ptr %update_accept_any_vlan_flg11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %update_accept_any_vlan_flg11, align 1
  %update_rss_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 7
  %27 = ptrtoint ptr %update_rss_flg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %update_rss_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not = icmp eq i8 %28, 0
  br i1 %tobool12.not, label %if.end4.if.end19_crit_edge, label %if.then13

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %if.end4
  %rss_params = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 8
  %29 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %call1, align 4
  %rss_enable.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 1
  %30 = ptrtoint ptr %rss_enable.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %rss_enable.i, align 1
  %update_rss_capabilities.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 3
  %31 = ptrtoint ptr %update_rss_capabilities.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %update_rss_capabilities.i, align 1
  %update_rss_ind_table.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 4
  %32 = ptrtoint ptr %update_rss_ind_table.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %update_rss_ind_table.i, align 4
  %update_rss_key.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 5
  %33 = ptrtoint ptr %update_rss_key.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %update_rss_key.i, align 1
  %rss_caps.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %rss_caps.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rss_caps.i, align 4
  %rss_caps1.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 6
  %36 = ptrtoint ptr %rss_caps1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %rss_caps1.i, align 2
  %rss_key.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 9
  %rss_key2.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %params, i32 0, i32 8, i32 1
  %37 = call ptr @memcpy(ptr %rss_key.i, ptr %rss_key2.i, i32 40)
  %38 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp.i = icmp eq i8 %39, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %rss_ind_table.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 8
  %40 = call ptr @memcpy(ptr %rss_ind_table.i, ptr %rss_params, i32 512)
  %rss_table_size_log.i = getelementptr inbounds %struct.qed_rss_params, ptr %call1, i32 0, i32 7
  %41 = ptrtoint ptr %rss_table_size_log.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 7, ptr %rss_table_size_log.i, align 1
  br label %if.end19

if.end.i:                                         ; preds = %if.then13
  %arrayidx.i = getelementptr %struct.qed_rss_params, ptr %call1, i32 1
  %42 = call ptr @memcpy(ptr %arrayidx.i, ptr %call1, i32 560)
  %hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %conv22.i = zext i8 %39 to i32
  br label %for.body.i

for.cond24.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp27123.not.i = icmp eq i8 %39, 0
  br i1 %cmp27123.not.i, label %for.cond24.preheader.i.if.end19_crit_edge, label %for.cond30.preheader.i.preheader

for.cond24.preheader.i.if.end19_crit_edge:        ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.cond30.preheader.i.preheader:                 ; preds = %for.cond24.preheader.i
  %43 = udiv i8 -128, %39
  %div33.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %39)
  %cmp34117.i = icmp ult i8 %39, 65
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div33.i, i32 2) #10
  br label %for.cond30.preheader.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.0116.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr [128 x ptr], ptr %rss_params, i32 0, i32 %i.0116.i
  %44 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx12.i, align 4
  %p_owner.i = getelementptr inbounds %struct.qed_queue_cid, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %p_owner.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p_owner.i, align 4
  %cmp14.i = icmp eq ptr %47, %hwfns.i
  %rss.arrayidx.i = select i1 %cmp14.i, ptr %call1, ptr %arrayidx.i
  %div.i = udiv i32 %i.0116.i, %conv22.i
  %arrayidx23.i = getelementptr %struct.qed_rss_params, ptr %rss.arrayidx.i, i32 0, i32 8, i32 %div.i
  %48 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %arrayidx23.i, align 4
  %inc.i = add nuw nsw i32 %i.0116.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.cond24.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond30.preheader.i:                           ; preds = %if.end70.i.for.cond30.preheader.i_crit_edge, %for.cond30.preheader.i.preheader
  %fn.0124.i = phi i32 [ %inc74.i, %if.end70.i.for.cond30.preheader.i_crit_edge ], [ 0, %for.cond30.preheader.i.preheader ]
  br i1 %cmp34117.i, label %for.body36.lr.ph.i, label %for.cond30.preheader.i.for.end49.i_crit_edge

for.cond30.preheader.i.for.end49.i_crit_edge:     ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49.i

for.body36.lr.ph.i:                               ; preds = %for.cond30.preheader.i
  %rss_ind_table38.i = getelementptr %struct.qed_rss_params, ptr %call1, i32 %fn.0124.i, i32 8
  %49 = ptrtoint ptr %rss_ind_table38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rss_ind_table38.i, align 4
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.inc47.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %i.1118.i = phi i32 [ 1, %for.body36.lr.ph.i ], [ %inc48.i, %for.inc47.i.for.body36.i_crit_edge ]
  %arrayidx39.i = getelementptr %struct.qed_rss_params, ptr %call1, i32 %fn.0124.i, i32 8, i32 %i.1118.i
  %51 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx39.i, align 4
  %cmp43.not.i = icmp eq ptr %52, %50
  br i1 %cmp43.not.i, label %for.inc47.i, label %for.body36.i.for.end49.i_crit_edge

for.body36.i.for.end49.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49.i

for.inc47.i:                                      ; preds = %for.body36.i
  %inc48.i = add nuw nsw i32 %i.1118.i, 1
  %exitcond126.not.i = icmp eq i32 %inc48.i, %umax.i
  br i1 %exitcond126.not.i, label %for.inc47.i.for.end49.i_crit_edge, label %for.inc47.i.for.body36.i_crit_edge

for.inc47.i.for.body36.i_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36.i

for.inc47.i.for.end49.i_crit_edge:                ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end49.i

for.end49.i:                                      ; preds = %for.inc47.i.for.end49.i_crit_edge, %for.body36.i.for.end49.i_crit_edge, %for.cond30.preheader.i.for.end49.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 1, %for.cond30.preheader.i.for.end49.i_crit_edge ], [ %umax.i, %for.inc47.i.for.end49.i_crit_edge ], [ %i.1118.i, %for.body36.i.for.end49.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa.i, i32 %div33.i)
  %cmp53.i = icmp eq i32 %i.1.lcssa.i, %div33.i
  br i1 %cmp53.i, label %do.body.i, label %if.end70.i

do.body.i:                                        ; preds = %for.end49.i
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %53 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp57.i = icmp eq i8 %54, 0
  br i1 %cmp57.i, label %land.rhs.i, label %do.body.i.if.then16_crit_edge

do.body.i.if.then16_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

land.rhs.i:                                       ; preds = %do.body.i
  %55 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cdev, align 8
  %and.i = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.then16_crit_edge, label %do.end.i, !prof !261

land.rhs.i.if.then16_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef 2418, ptr noundef nonnull %name.i) #15
  br label %if.then16

if.end70.i:                                       ; preds = %for.end49.i
  %rss_table_size_log72.i = getelementptr %struct.qed_rss_params, ptr %call1, i32 %fn.0124.i, i32 7
  %57 = ptrtoint ptr %rss_table_size_log72.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %rss_table_size_log72.i, align 1
  %inc74.i = add nuw nsw i32 %fn.0124.i, 1
  %exitcond.not = icmp eq i32 %inc74.i, %conv22.i
  br i1 %exitcond.not, label %if.end70.i.if.end19_crit_edge, label %if.end70.i.for.cond30.preheader.i_crit_edge

if.end70.i.for.cond30.preheader.i_crit_edge:      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.preheader.i

if.end70.i.if.end19_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %do.end.i, %land.rhs.i.if.then16_crit_edge, %do.body.i.if.then16_crit_edge
  %58 = ptrtoint ptr %update_rss_flg to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %update_rss_flg, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end70.i.if.end19_crit_edge, %for.cond24.preheader.i.if.end19_crit_edge, %if.then.i, %if.end4.if.end19_crit_edge
  %59 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp115.not = icmp eq i8 %60, 0
  br i1 %cmp115.not, label %if.end19.out_crit_edge, label %for.body.lr.ph

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %if.end19
  %rss_params27 = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %sp_params, i32 0, i32 21
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %name53 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool55.not = icmp eq ptr %name53, null
  %spec.select109 = select i1 %tobool55.not, ptr @.str.4, ptr %name53
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0116
  %61 = ptrtoint ptr %update_rss_flg to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %update_rss_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool24.not = icmp eq i8 %62, 0
  br i1 %tobool24.not, label %for.body.if.end28_crit_edge, label %if.then25

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26 = getelementptr %struct.qed_rss_params, ptr %call1, i32 %i.0116
  %63 = ptrtoint ptr %rss_params27 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx26, ptr %rss_params27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %for.body.if.end28_crit_edge
  %opaque_fid = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.0116, i32 17, i32 10
  %64 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %opaque_fid, align 4
  %66 = ptrtoint ptr %sp_params to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %sp_params, align 4
  %call30 = call i32 @qed_sp_vport_update(ptr noundef %arrayidx, ptr noundef nonnull %sp_params, i32 noundef 2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body41, label %cleanup

do.body41:                                        ; preds = %if.end28
  %67 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp43 = icmp eq i8 %68, 0
  br i1 %cmp43, label %land.rhs, label %do.body41.for.inc_crit_edge

do.body41.for.inc_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs:                                         ; preds = %do.body41
  %69 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cdev, align 8
  %and = and i32 %70, 65568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %land.rhs.for.inc_crit_edge, label %do.end51, !prof !261

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end51:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %params, align 4
  %conv63 = zext i8 %72 to i32
  %73 = ptrtoint ptr %vport_active_flg to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vport_active_flg, align 2
  %conv65 = zext i8 %74 to i32
  %75 = ptrtoint ptr %update_vport_active_flg to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %update_vport_active_flg, align 1
  %conv67 = zext i8 %76 to i32
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef 2478, ptr noundef nonnull %spec.select109, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv67) #15
  br label %for.inc

cleanup:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef 2471, ptr noundef nonnull %spec.select109) #15
  br label %out

for.inc:                                          ; preds = %do.end51, %land.rhs.for.inc_crit_edge, %do.body41.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0116, 1
  %77 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_hwfns, align 4
  %conv21 = zext i8 %78 to i32
  %cmp = icmp ult i32 %inc, %conv21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %cleanup, %if.end19.out_crit_edge
  %rc.1 = phi i32 [ %call30, %cleanup ], [ 0, %if.end19.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  call void @vfree(ptr noundef nonnull %call1) #10
  br label %cleanup72

cleanup72:                                        ; preds = %out, %if.end.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -19, %entry.cleanup72_crit_edge ], [ -12, %if.end.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %sp_params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_start_rxq(ptr noundef %cdev, i8 noundef zeroext %rss_num, ptr nocapture noundef %p_params, i16 noundef zeroext %bd_max_bytes, i32 noundef %bd_chain_phys_addr, i32 noundef %cqe_pbl_addr, i16 noundef zeroext %cqe_pbl_size, ptr noundef %ret_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rss_num to i32
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %rem71 = urem i8 %rss_num, %1
  %rem.zext = zext i8 %rem71 to i32
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext
  %queue_id = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 1
  %2 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_id, align 2
  %div.rhs.trunc = zext i8 %1 to i16
  %div72 = udiv i16 %3, %div.rhs.trunc
  store i16 %div72, ptr %queue_id, align 2
  %4 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p_params, align 4
  %stats_id = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 2
  %6 = ptrtoint ptr %stats_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %stats_id, align 4
  %opaque_fid = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext, i32 17, i32 10
  %7 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opaque_fid, align 4
  %call.i.i = tail call ptr @qed_eth_queue_to_cid(ptr noundef %arrayidx, i16 noundef zeroext %8, ptr noundef %p_params, i1 noundef zeroext true, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 39
  %11 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %regview.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext, i32 12
  %13 = ptrtoint ptr %regview.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regview.i.i, align 4
  %iro_arr.i.i = getelementptr inbounds %struct.qed_dev, ptr %10, i32 0, i32 31
  %15 = ptrtoint ptr %iro_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iro_arr.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.iro, ptr %16, i32 30
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %queue_id.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %queue_id.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %queue_id.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %m1.i.i = getelementptr %struct.iro, ptr %16, i32 30, i32 1
  %21 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %m1.i.i, align 4
  %conv4.i.i = zext i16 %22 to i32
  %mul.i.i = mul nuw i32 %conv4.i.i, %conv.i.i
  %add.i.i = add i32 %18, 69632
  %add5.i.i = add i32 %add.i.i, %mul.i.i
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add5.i.i
  %23 = ptrtoint ptr %ret_params to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i.i, ptr %ret_params, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !264
  %call.i27.i = tail call i32 @qed_eth_rxq_start_ramrod(ptr noundef %arrayidx, ptr noundef nonnull %call.i.i, i16 noundef zeroext %bd_max_bytes, i32 noundef %bd_chain_phys_addr, i32 noundef %cqe_pbl_addr, i16 noundef zeroext %cqe_pbl_size) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @qed_vf_pf_rxq_start(ptr noundef %arrayidx, ptr noundef nonnull %call.i.i, i16 noundef zeroext %bd_max_bytes, i32 noundef %bd_chain_phys_addr, i32 noundef %cqe_pbl_addr, i16 noundef zeroext %cqe_pbl_size, ptr noundef %ret_params) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then2.i
  %rc.0.i = phi i32 [ %call5.i, %if.else.i ], [ %call.i27.i, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool7.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool7.not.i, label %do.body16, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @qed_eth_queue_cid_release(ptr noundef %arrayidx, ptr noundef nonnull %call.i.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then8.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %rc.0.i, %if.then8.i ], [ -12, %entry.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %24 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %queue_id, align 2
  %conv12 = zext i16 %25 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 2511, ptr noundef nonnull %spec.select, i32 noundef %conv12) #15
  br label %cleanup

do.body16:                                        ; preds = %if.end6.i
  %p_handle.i = getelementptr inbounds %struct.qed_rxq_start_ret_params, ptr %ret_params, i32 0, i32 1
  %26 = ptrtoint ptr %p_handle.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %p_handle.i, align 4
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %27 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp = icmp eq i8 %28, 0
  br i1 %cmp, label %land.rhs, label %do.body16.cleanup_crit_edge

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %do.body16
  %29 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cdev, align 8
  %and = and i32 %30, 65568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.rhs.cleanup_crit_edge, label %do.end25, !prof !261

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name27 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool29.not = icmp eq ptr %name27, null
  %spec.select67 = select i1 %tobool29.not, ptr @.str.4, ptr %name27
  %31 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %queue_id, align 2
  %conv37 = zext i16 %32 to i32
  %33 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %p_params, align 4
  %conv40 = zext i8 %34 to i32
  %p_sb = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 3
  %35 = ptrtoint ptr %p_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_sb, align 4
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %igu_sb_id, align 4
  %conv41 = zext i16 %38 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef 2518, ptr noundef nonnull %spec.select67, i32 noundef %conv37, i32 noundef %conv, i32 noundef %conv40, i32 noundef %conv41) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %land.rhs.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %do.body16.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_stop_rxq(ptr noundef %cdev, i8 noundef zeroext %rss_id, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %2 = urem i8 %rss_id, %1
  %rem = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem
  %call = tail call i32 @qed_eth_rx_queue_stop(ptr noundef %arrayidx, ptr noundef %handle, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %rss_id to i32
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool3.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool3.not, ptr @.str.4, ptr %name
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 2533, ptr noundef nonnull %spec.select, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_start_txq(ptr noundef %cdev, i8 noundef zeroext %rss_num, ptr nocapture noundef %p_params, i32 noundef %pbl_addr, i16 noundef zeroext %pbl_size, ptr noundef %ret_params) #0 align 64 {
entry:
  %p_ent.i.i.i = alloca ptr, align 4
  %init_data.i.i.i = alloca %struct.qed_sp_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rss_num to i32
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %rem72 = urem i8 %rss_num, %1
  %rem.zext = zext i8 %rem72 to i32
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext
  %queue_id = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 1
  %2 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_id, align 2
  %div.rhs.trunc = zext i8 %1 to i16
  %div73 = udiv i16 %3, %div.rhs.trunc
  store i16 %div73, ptr %queue_id, align 2
  %4 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p_params, align 4
  %stats_id = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 2
  %6 = ptrtoint ptr %stats_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %stats_id, align 4
  %opaque_fid = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext, i32 17, i32 10
  %7 = ptrtoint ptr %opaque_fid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %opaque_fid, align 4
  %tc = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 5
  %9 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tc, align 1
  %call.i.i = tail call ptr @qed_eth_queue_to_cid(ptr noundef %arrayidx, i16 noundef zeroext %8, ptr noundef %p_params, i1 noundef zeroext false, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 8
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i25.i = tail call zeroext i16 @qed_get_cm_pq_idx_mcos(ptr noundef %arrayidx, i8 noundef zeroext %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i.i.i) #10
  %15 = ptrtoint ptr %p_ent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %p_ent.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i.i.i) #10
  %16 = getelementptr inbounds i8, ptr %init_data.i.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 12)
  %cid.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cid.i.i.i, align 4
  %20 = ptrtoint ptr %init_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %init_data.i.i.i, align 4
  %opaque_fid.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %opaque_fid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %opaque_fid.i.i.i, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %16, align 4
  %comp_mode.i.i.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %comp_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %comp_mode.i.i.i, align 4
  %call.i.i.i = call i32 @qed_sp_init_request(ptr noundef %arrayidx, ptr noundef nonnull %p_ent.i.i.i, i8 noundef zeroext 6, i8 noundef zeroext 4, ptr noundef nonnull %init_data.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %qed_eth_txq_start_ramrod.exit.i.i, label %qed_eth_txq_start_ramrod.exit.thread.i.i

qed_eth_txq_start_ramrod.exit.thread.i.i:         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i.i.i) #10
  br label %if.then8.i

qed_eth_txq_start_ramrod.exit.i.i:                ; preds = %if.then2.i
  %25 = ptrtoint ptr %p_ent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_ent.i.i.i, align 4
  %ramrod.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3
  %abs.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %abs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %abs.i.i.i, align 2
  %vport_id3.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %vport_id3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %vport_id3.i.i.i, align 1
  %sb_igu_id.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %sb_igu_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sb_igu_id.i.i.i, align 4
  %32 = call i16 @llvm.bswap.i16(i16 %31) #10
  %33 = ptrtoint ptr %ramrod.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ramrod.i.i.i, align 4
  %sb_idx.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %sb_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sb_idx.i.i.i, align 2
  %sb_index.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %sb_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %sb_index.i.i.i, align 2
  %stats_id.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %stats_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %stats_id.i.i.i, align 2
  %stats_counter_id.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 0, i32 5
  %39 = ptrtoint ptr %stats_counter_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %stats_counter_id.i.i.i, align 1
  %queue_id.i.i.i = getelementptr inbounds %struct.qed_queue_cid, ptr %call.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %queue_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %queue_id.i.i.i, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #10
  %queue_zone_id.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %queue_zone_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %queue_zone_id.i.i.i, align 4
  %44 = ptrtoint ptr %queue_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %queue_id.i.i.i, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45) #10
  %same_as_last_id.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %same_as_last_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %same_as_last_id.i.i.i, align 4
  %48 = call i16 @llvm.bswap.i16(i16 %pbl_size) #10
  %pbl_size8.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %pbl_size8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %pbl_size8.i.i.i, align 4
  %pbl_base_addr.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 1, i32 5
  %hi.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6, i32 2
  %50 = ptrtoint ptr %hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %hi.i.i.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %pbl_addr) #10
  %52 = ptrtoint ptr %pbl_base_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %pbl_base_addr.i.i.i, align 4
  %53 = call i16 @llvm.bswap.i16(i16 %call.i25.i) #10
  %qm_pq_id.i.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %26, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6
  %54 = ptrtoint ptr %qm_pq_id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %qm_pq_id.i.i.i, align 2
  %call11.i.i.i = call i32 @qed_spq_post(ptr noundef %arrayidx, ptr noundef %26, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.thread29.i, label %qed_eth_txq_start_ramrod.exit.i.i.if.then8.i_crit_edge

qed_eth_txq_start_ramrod.exit.i.i.if.then8.i_crit_edge: ; preds = %qed_eth_txq_start_ramrod.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end6.thread29.i:                               ; preds = %qed_eth_txq_start_ramrod.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %doorbells.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem.zext, i32 13
  %55 = ptrtoint ptr %doorbells.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %doorbells.i.i, align 8
  %57 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cid.i.i.i, align 4
  %mul.i.i.i = shl i32 %58, 2
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %mul.i.i.i
  %59 = ptrtoint ptr %ret_params to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i.i, ptr %ret_params, align 4
  br label %do.body16

if.end6.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @qed_vf_pf_txq_start(ptr noundef %arrayidx, ptr noundef nonnull %call.i.i, i32 noundef %pbl_addr, i16 noundef zeroext %pbl_size, ptr noundef %ret_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.do.body16_crit_edge, label %if.end6.i.if.then8.i_crit_edge

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

if.end6.i.do.body16_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then8.i:                                       ; preds = %if.end6.i.if.then8.i_crit_edge, %qed_eth_txq_start_ramrod.exit.i.i.if.then8.i_crit_edge, %qed_eth_txq_start_ramrod.exit.thread.i.i
  %rc.028.i = phi i32 [ %call5.i, %if.end6.i.if.then8.i_crit_edge ], [ %call.i.i.i, %qed_eth_txq_start_ramrod.exit.thread.i.i ], [ %call11.i.i.i, %qed_eth_txq_start_ramrod.exit.i.i.if.then8.i_crit_edge ]
  call void @qed_eth_queue_cid_release(ptr noundef %arrayidx, ptr noundef nonnull %call.i.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then8.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %rc.028.i, %if.then8.i ], [ -22, %entry.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %60 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %queue_id, align 2
  %conv12 = zext i16 %61 to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 2561, ptr noundef nonnull %spec.select, i32 noundef %conv12) #15
  br label %cleanup

do.body16:                                        ; preds = %if.end6.i.do.body16_crit_edge, %if.end6.thread29.i
  %p_handle.i = getelementptr inbounds %struct.qed_txq_start_ret_params, ptr %ret_params, i32 0, i32 1
  %62 = ptrtoint ptr %p_handle.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i, ptr %p_handle.i, align 4
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %63 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp = icmp eq i8 %64, 0
  br i1 %cmp, label %land.rhs, label %do.body16.cleanup_crit_edge

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %do.body16
  %65 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cdev, align 8
  %and = and i32 %66, 65568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.rhs.cleanup_crit_edge, label %do.end25, !prof !261

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name27 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool29.not = icmp eq ptr %name27, null
  %spec.select68 = select i1 %tobool29.not, ptr @.str.4, ptr %name27
  %67 = ptrtoint ptr %queue_id to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %queue_id, align 2
  %conv37 = zext i16 %68 to i32
  %69 = ptrtoint ptr %p_params to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %p_params, align 4
  %conv40 = zext i8 %70 to i32
  %p_sb = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %p_params, i32 0, i32 3
  %71 = ptrtoint ptr %p_sb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %p_sb, align 4
  %igu_sb_id = getelementptr inbounds %struct.qed_sb_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %igu_sb_id to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %igu_sb_id, align 4
  %conv41 = zext i16 %74 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef 2568, ptr noundef nonnull %spec.select68, i32 noundef %conv37, i32 noundef %conv, i32 noundef %conv40, i32 noundef %conv41) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %land.rhs.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %do.body16.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_stop_txq(ptr noundef %cdev, i8 noundef zeroext %rss_id, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %2 = urem i8 %rss_id, %1
  %rem = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %rem
  %call = tail call i32 @qed_eth_tx_queue_stop(ptr noundef %arrayidx, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %rss_id to i32
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool3.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool3.not, ptr @.str.4, ptr %name
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 2597, ptr noundef nonnull %spec.select, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_configure_filter_rx_mode(ptr noundef %cdev, i32 noundef %type) #0 align 64 {
entry:
  %s_params.i.i = alloca %struct.qed_sp_vport_update_params, align 4
  %vport_update_params.i = alloca %struct.qed_sp_vport_update_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %switch.selectcmp = icmp eq i32 %type, 1
  %switch.select = select i1 %switch.selectcmp, i32 58, i32 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.selectcmp26 = icmp eq i32 %type, 2
  %switch.select27 = select i1 %switch.selectcmp26, i32 62, i32 %switch.select
  %accept_flags.sroa.8.0.insert.insert = mul nuw nsw i32 %switch.select27, 257
  %accept_flags.sroa.0.0.insert.insert = or i32 %accept_flags.sroa.8.0.insert.insert, 16842752
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %vport_update_params.i) #10
  %accept_flags1.i = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %vport_update_params.i, i32 0, i32 22
  %0 = call ptr @memset(ptr %vport_update_params.i, i32 0, i32 72)
  %1 = ptrtoint ptr %accept_flags1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %accept_flags.sroa.0.0.insert.insert, ptr %accept_flags1.i, align 4
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp22.not.i = icmp eq i8 %3, 0
  br i1 %cmp22.not.i, label %entry.qed_filter_accept_cmd.exit_crit_edge, label %for.body.lr.ph.i

entry.qed_filter_accept_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_filter_accept_cmd.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %accept_flags.i.i = getelementptr inbounds %struct.qed_sp_vport_update_params, ptr %s_params.i.i, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023.i
  %opaque_fid.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023.i, i32 17, i32 10
  %4 = ptrtoint ptr %opaque_fid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opaque_fid.i, align 4
  %6 = ptrtoint ptr %vport_update_params.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vport_update_params.i, align 4
  %7 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %s_params.i.i) #10
  %9 = call ptr @memset(ptr %s_params.i.i, i32 0, i32 72)
  %10 = ptrtoint ptr %accept_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %accept_flags.sroa.0.0.insert.insert, ptr %accept_flags.i.i, align 4
  %call.i.i = call i32 @qed_vf_pf_vport_update(ptr noundef %arrayidx.i, ptr noundef nonnull %s_params.i.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %s_params.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.qed_filter_accept_cmd.exit_crit_edge

if.then.i.qed_filter_accept_cmd.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_filter_accept_cmd.exit

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %call8.i = call i32 @qed_sp_vport_update(ptr noundef %arrayidx.i, ptr noundef nonnull %vport_update_params.i, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.body19.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef 822, ptr noundef nonnull %name.i, i32 noundef %call8.i) #15
  br label %qed_filter_accept_cmd.exit

do.body19.i:                                      ; preds = %if.end7.i
  %dp_level.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023.i, i32 7
  %11 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp21.i = icmp eq i8 %12, 0
  br i1 %cmp21.i, label %land.rhs.i, label %do.body19.i.for.inc.i_crit_edge

do.body19.i.for.inc.i_crit_edge:                  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.rhs.i:                                       ; preds = %do.body19.i
  %dp_module.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023.i, i32 6
  %13 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %land.rhs.i.for.inc.i_crit_edge, label %do.end29.i, !prof !261

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end29.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %name31.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.023.i, i32 8
  %tobool33.not.i = icmp eq ptr %name31.i, null
  %spec.select1.i = select i1 %tobool33.not.i, ptr @.str.4, ptr %name31.i
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, i32 noundef 829, ptr noundef nonnull %spec.select1.i, i32 noundef %switch.select27, i32 noundef %switch.select27) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end29.i, %land.rhs.i.for.inc.i_crit_edge, %do.body19.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %15 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_hwfns.i, align 4
  %conv.i = zext i8 %16 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.qed_filter_accept_cmd.exit_crit_edge

for.inc.i.qed_filter_accept_cmd.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_filter_accept_cmd.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

qed_filter_accept_cmd.exit:                       ; preds = %for.inc.i.qed_filter_accept_cmd.exit_crit_edge, %do.end.i, %if.then.i.qed_filter_accept_cmd.exit_crit_edge, %entry.qed_filter_accept_cmd.exit_crit_edge
  %retval.2.i = phi i32 [ %call8.i, %do.end.i ], [ 0, %entry.qed_filter_accept_cmd.exit_crit_edge ], [ %call.i.i, %if.then.i.qed_filter_accept_cmd.exit_crit_edge ], [ 0, %for.inc.i.qed_filter_accept_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %vport_update_params.i) #10
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_configure_filter_ucast(ptr noundef %cdev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %ucast = alloca %struct.qed_filter_ucast, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ucast) #10
  %vlan_valid = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vlan_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %mac_valid = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %mac_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %do.body, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.body:                                          ; preds = %land.lhs.true
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ult i8 %5, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !260

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef 2702, ptr noundef nonnull %spec.select) #15
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %6 = call ptr @memset(ptr %ucast, i32 0, i32 28)
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %8, label %do.body17 [
    i32 0, label %if.end12.sw.epilog_crit_edge
    i32 1, label %sw.bb13
    i32 2, label %sw.bb15
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ucast to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ucast, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %ucast to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %ucast, align 4
  br label %sw.epilog

do.body17:                                        ; preds = %if.end12
  %dp_level18 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %12 = ptrtoint ptr %dp_level18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp20 = icmp ult i8 %13, 3
  br i1 %cmp20, label %do.end31, label %do.body17.sw.epilog_crit_edge, !prof !260

do.body17.sw.epilog_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end31:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %name33 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool35.not = icmp eq ptr %name33, null
  %spec.select91 = select i1 %tobool35.not, ptr @.str.4, ptr %name33
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, i32 noundef 2719, ptr noundef nonnull %spec.select91, i32 noundef %8) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %do.body17.sw.epilog_crit_edge, %sw.bb15, %sw.bb13, %if.end12.sw.epilog_crit_edge
  %14 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vlan_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool49.not = icmp eq i8 %15, 0
  br i1 %tobool49.not, label %sw.epilog.if.else_crit_edge, label %land.lhs.true50

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true50:                                  ; preds = %sw.epilog
  %mac_valid51 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 3
  %16 = ptrtoint ptr %mac_valid51 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac_valid51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool53.not = icmp eq i8 %17, 0
  br i1 %tobool53.not, label %land.lhs.true50.if.else_crit_edge, label %if.then54

land.lhs.true50.if.else_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then54:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  %type55 = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 1
  %18 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type55, align 4
  %mac = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 6
  %mac57 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 4
  %19 = ptrtoint ptr %mac57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mac57, align 4
  %21 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 6, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 4
  %vlan = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 2
  %25 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan, align 2
  %vlan59 = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 8
  %27 = ptrtoint ptr %vlan59 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vlan59, align 4
  br label %if.end73

if.else:                                          ; preds = %land.lhs.true50.if.else_crit_edge, %sw.epilog.if.else_crit_edge
  %mac_valid60 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 3
  %28 = ptrtoint ptr %mac_valid60 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mac_valid60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool61.not = icmp eq i8 %29, 0
  %type69 = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 1
  br i1 %tobool61.not, label %if.else68, label %if.then62

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %type69, align 4
  %mac64 = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 6
  %mac66 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 4
  %31 = ptrtoint ptr %mac66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac66, align 4
  %33 = ptrtoint ptr %mac64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mac64, align 4
  %add.ptr.i92 = getelementptr %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i92, align 2
  %add.ptr1.i93 = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 6, i32 4
  %36 = ptrtoint ptr %add.ptr1.i93 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr1.i93, align 4
  br label %if.end73

if.else68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type69, align 4
  %vlan70 = getelementptr inbounds %struct.qed_filter_ucast_params, ptr %params, i32 0, i32 2
  %38 = ptrtoint ptr %vlan70 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vlan70, align 2
  %vlan71 = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 8
  %40 = ptrtoint ptr %vlan71 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %vlan71, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.then62, %if.then54
  %is_rx_filter = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 2
  %41 = ptrtoint ptr %is_rx_filter to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %is_rx_filter, align 4
  %is_tx_filter = getelementptr inbounds %struct.qed_filter_ucast, ptr %ucast, i32 0, i32 3
  %42 = ptrtoint ptr %is_tx_filter to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %is_tx_filter, align 1
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %43 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp7.not.i = icmp eq i8 %44, 0
  br i1 %cmp7.not.i, label %if.end73.cleanup_crit_edge, label %for.body.lr.ph.i

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end73
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.08.i
  %45 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @qed_vf_pf_filter_ucast(ptr noundef %arrayidx.i, ptr noundef nonnull %ucast) #10
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %opaque_fid2.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.08.i, i32 17, i32 10
  %47 = ptrtoint ptr %opaque_fid2.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %opaque_fid2.i, align 4
  %call3.i = call i32 @qed_sp_eth_filter_ucast(ptr noundef %arrayidx.i, i16 noundef zeroext %48, ptr noundef nonnull %ucast, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.not.i, label %cleanup.i.for.inc.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %cleanup.thread.i
  %rc.15.i = phi i32 [ %call.i, %cleanup.thread.i ], [ 0, %cleanup.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %49 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_hwfns.i, align 4
  %conv.i = zext i8 %50 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ %rc.15.i, %for.inc.i.cleanup_crit_edge ], [ %call3.i, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ucast) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_configure_filter_mcast(ptr noundef %cdev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %bins.i.i = alloca [8 x i32], align 4
  %p_ent.i.i = alloca ptr, align 4
  %init_data.i.i = alloca %struct.qed_sp_init_data, align 4
  %abs_vport_id.i.i = alloca i8, align 1
  %mcast = alloca %struct.qed_filter_mcast, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %mcast) #10
  %0 = call ptr @memset(ptr %mcast, i32 0, i32 392)
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %2, label %do.body [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mcast to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %mcast, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.sw.epilog_crit_edge, !prof !260

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef 2756, ptr noundef nonnull %spec.select, i32 noundef %2) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %sw.bb1, %entry.sw.epilog_crit_edge
  %num = getelementptr inbounds %struct.qed_filter_mcast_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num, align 4
  %num_mc_addrs = getelementptr inbounds %struct.qed_filter_mcast, ptr %mcast, i32 0, i32 3
  %9 = ptrtoint ptr %num_mc_addrs to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %num_mc_addrs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1431.not = icmp eq i8 %8, 0
  br i1 %cmp1431.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_filter_mcast, ptr %mcast, i32 0, i32 4, i32 %i.032
  %arrayidx18 = getelementptr %struct.qed_filter_mcast_params, ptr %params, i32 0, i32 2, i32 %i.032
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx18, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 2
  %inc = add nuw nsw i32 %i.032, 1
  %16 = ptrtoint ptr %num_mc_addrs to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %num_mc_addrs, align 2
  %conv13 = zext i8 %.pr to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.pr)
  %phi.cmp = icmp ugt i8 %.pr, 64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %sw.epilog.for.end_crit_edge
  %.lcssa = phi i1 [ false, %sw.epilog.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %17 = ptrtoint ptr %mcast to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mcast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %switch.i = icmp ugt i32 %18, 1
  %or.cond = select i1 %switch.i, i1 true, i1 %.lcssa
  br i1 %or.cond, label %for.end.qed_filter_mcast_cmd.exit_crit_edge, label %for.cond.preheader.i

for.end.qed_filter_mcast_cmd.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_filter_mcast_cmd.exit

for.cond.preheader.i:                             ; preds = %for.end
  %num_hwfns.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %19 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp62.not.i = icmp eq i8 %20, 0
  br i1 %cmp62.not.i, label %for.cond.preheader.i.qed_filter_mcast_cmd.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qed_filter_mcast_cmd.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_filter_mcast_cmd.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %b_is_vf.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %21 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 1
  %22 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 2
  %23 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 3
  %24 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 4
  %25 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 5
  %26 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 6
  %27 = getelementptr inbounds [8 x i32], ptr %bins.i.i, i32 0, i32 7
  %vport_to_remove_from.i.i = getelementptr inbounds %struct.qed_filter_mcast, ptr %mcast, i32 0, i32 2
  %vport_to_add_to.i.i = getelementptr inbounds %struct.qed_filter_mcast, ptr %mcast, i32 0, i32 1
  %28 = getelementptr inbounds i8, ptr %init_data.i.i, i32 4
  %comp_mode7.i.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i.i, i32 0, i32 2
  %p_comp_data8.i.i = getelementptr inbounds %struct.qed_sp_init_data, ptr %init_data.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %rc.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %rc.1.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.04.i
  %29 = ptrtoint ptr %b_is_vf.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b_is_vf.i, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_vf_pf_filter_mcast(ptr noundef %arrayidx.i, ptr noundef nonnull %mcast) #10
  br label %cleanup.i

if.end9.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bins.i.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_ent.i.i) #10
  %31 = ptrtoint ptr %p_ent.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %p_ent.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abs_vport_id.i.i) #10
  %32 = ptrtoint ptr %abs_vport_id.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %abs_vport_id.i.i, align 1
  %33 = ptrtoint ptr %mcast to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mcast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  %35 = ptrtoint ptr %vport_to_add_to.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %vport_to_add_to.i.i.val = load i8, ptr %vport_to_add_to.i.i, align 4
  %36 = ptrtoint ptr %vport_to_remove_from.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %vport_to_remove_from.i.i.val = load i8, ptr %vport_to_remove_from.i.i, align 1
  %.sink.i.i = select i1 %cmp.i.i, i8 %vport_to_add_to.i.i.val, i8 %vport_to_remove_from.i.i.val
  %call1.i.i = call i32 @qed_fw_vport(ptr noundef %arrayidx.i, i8 noundef zeroext %.sink.i.i, ptr noundef nonnull %abs_vport_id.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end9.i.qed_sp_eth_filter_mcast.exit.i_crit_edge

if.end9.i.qed_sp_eth_filter_mcast.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_sp_eth_filter_mcast.exit.i

if.end3.i.i:                                      ; preds = %if.end9.i
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %28, align 4
  %call4.i.i = call i32 @qed_spq_get_cid(ptr noundef %arrayidx.i) #10
  %38 = ptrtoint ptr %init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call4.i.i, ptr %init_data.i.i, align 4
  %opaque_fid5.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.04.i, i32 17, i32 10
  %39 = ptrtoint ptr %opaque_fid5.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %opaque_fid5.i.i, align 4
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %28, align 4
  %42 = ptrtoint ptr %comp_mode7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %comp_mode7.i.i, align 4
  %43 = ptrtoint ptr %p_comp_data8.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %p_comp_data8.i.i, align 4
  %call9.i.i = call i32 @qed_sp_init_request(ptr noundef %arrayidx.i, ptr noundef nonnull %p_ent.i.i, i8 noundef zeroext 2, i8 noundef zeroext 4, ptr noundef nonnull %init_data.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end19.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.04.i, i32 8
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef 1495, ptr noundef nonnull %name.i.i, i32 noundef %call9.i.i) #15
  br label %qed_sp_eth_filter_mcast.exit.i

if.end19.i.i:                                     ; preds = %if.end3.i.i
  %44 = ptrtoint ptr %p_ent.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p_ent.i.i, align 4
  %ramrod.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %45, i32 0, i32 3
  %update_approx_mcast_flg.i.i = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, ptr %ramrod.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %update_approx_mcast_flg.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %update_approx_mcast_flg.i.i, align 1
  %approx_mcast.i.i = getelementptr inbounds %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 5
  %47 = call ptr @memset(ptr %approx_mcast.i.i, i32 0, i32 32)
  %48 = call ptr @memset(ptr %bins.i.i, i32 0, i32 32)
  %49 = ptrtoint ptr %mcast to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mcast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp23.i.i = icmp eq i32 %50, 0
  br i1 %cmp23.i.i, label %for.cond.preheader.i.i, label %if.end19.i.i.if.end42.i.i_crit_edge

if.end19.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i.i

for.cond.preheader.i.i:                           ; preds = %if.end19.i.i
  %51 = ptrtoint ptr %num_mc_addrs to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_mc_addrs, align 2
  %conv.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp252.not.i.i = icmp eq i8 %52, 0
  br i1 %cmp252.not.i.i, label %for.cond.preheader.i.i.for.cond31.preheader.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.cond31.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond31.preheader.i.i

for.cond31.preheader.i.i:                         ; preds = %for.body.i.i.for.cond31.preheader.i.i_crit_edge, %for.cond.preheader.i.i.for.cond31.preheader.i.i_crit_edge
  %53 = ptrtoint ptr %bins.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bins.i.i, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = ptrtoint ptr %approx_mcast.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %approx_mcast.i.i, align 4
  %57 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %21, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #10
  %arrayidx38.1.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1, i32 6, i32 2
  %60 = ptrtoint ptr %arrayidx38.1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx38.1.i.i, align 4
  %61 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %22, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #10
  %arrayidx38.2.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %arrayidx38.2.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx38.2.i.i, align 4
  %65 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %23, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #10
  %arrayidx38.3.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 3
  %68 = ptrtoint ptr %arrayidx38.3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx38.3.i.i, align 4
  %69 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %24, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #10
  %arrayidx38.4.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4
  %72 = ptrtoint ptr %arrayidx38.4.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx38.4.i.i, align 4
  %73 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %25, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #10
  %arrayidx38.5.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 4, i32 1
  %76 = ptrtoint ptr %arrayidx38.5.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx38.5.i.i, align 4
  %77 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %26, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #10
  %arrayidx38.6.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 5
  %80 = ptrtoint ptr %arrayidx38.6.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx38.6.i.i, align 4
  %81 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %27, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82) #10
  %arrayidx38.7.i.i = getelementptr %struct.qed_spq_entry, ptr %45, i32 0, i32 3, i32 0, i32 0, i32 2, i32 2, i32 6, i32 2
  %84 = ptrtoint ptr %arrayidx38.7.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx38.7.i.i, align 4
  br label %if.end42.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.qed_filter_mcast, ptr %mcast, i32 0, i32 4, i32 %i.03.i.i
  %call28.i.i = call zeroext i8 @qed_mcast_bin_from_mac(ptr noundef %arrayidx.i.i) #10
  %conv29.i.i = zext i8 %call28.i.i to i32
  %rem.i.i = and i32 %conv29.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div1.i.i = lshr i32 %conv29.i.i, 5
  %arrayidx30.i.i = getelementptr [8 x i32], ptr %bins.i.i, i32 0, i32 %div1.i.i
  %85 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx30.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %86
  store i32 %or.i.i, ptr %arrayidx30.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.cond31.preheader.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.cond31.preheader.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond31.preheader.i.i

if.end42.i.i:                                     ; preds = %for.cond31.preheader.i.i, %if.end19.i.i.if.end42.i.i_crit_edge
  %87 = ptrtoint ptr %abs_vport_id.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %abs_vport_id.i.i, align 1
  %89 = ptrtoint ptr %ramrod.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %ramrod.i.i, align 4
  %90 = ptrtoint ptr %p_ent.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %p_ent.i.i, align 4
  %call44.i.i = call i32 @qed_spq_post(ptr noundef %arrayidx.i, ptr noundef %91, ptr noundef null) #10
  br label %qed_sp_eth_filter_mcast.exit.i

qed_sp_eth_filter_mcast.exit.i:                   ; preds = %if.end42.i.i, %do.end.i.i, %if.end9.i.qed_sp_eth_filter_mcast.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call9.i.i, %do.end.i.i ], [ %call44.i.i, %if.end42.i.i ], [ %call1.i.i, %if.end9.i.qed_sp_eth_filter_mcast.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abs_vport_id.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_ent.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bins.i.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %qed_sp_eth_filter_mcast.exit.i, %if.then8.i
  %rc.1.i = phi i32 [ %rc.03.i, %if.then8.i ], [ %retval.0.i.i, %qed_sp_eth_filter_mcast.exit.i ]
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %92 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_hwfns.i, align 4
  %conv5.i = zext i8 %93 to i32
  %cmp6.i = icmp ult i32 %inc.i, %conv5.i
  br i1 %cmp6.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.qed_filter_mcast_cmd.exit_crit_edge

cleanup.i.qed_filter_mcast_cmd.exit_crit_edge:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qed_filter_mcast_cmd.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

qed_filter_mcast_cmd.exit:                        ; preds = %cleanup.i.qed_filter_mcast_cmd.exit_crit_edge, %for.cond.preheader.i.qed_filter_mcast_cmd.exit_crit_edge, %for.end.qed_filter_mcast_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %for.end.qed_filter_mcast_cmd.exit_crit_edge ], [ 0, %for.cond.preheader.i.qed_filter_mcast_cmd.exit_crit_edge ], [ %rc.1.i, %cleanup.i.qed_filter_mcast_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %mcast) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fastpath_stop(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qed_hw_stop_fastpath(ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.4, ptr %name
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef 2580, ptr noundef nonnull %spec.select) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_fp_cqe_completion(ptr noundef %dev, i8 noundef zeroext %rss_id, ptr noundef %cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  %2 = urem i8 %rss_id, %1
  %rem = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.qed_dev, ptr %dev, i32 0, i32 33, i32 %rem
  %call = tail call i32 @qed_eth_cqe_completion(ptr noundef %arrayidx, ptr noundef %cqe) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_tunn_configure(ptr noundef %cdev, ptr nocapture noundef readonly %tunn_params) #0 align 64 {
entry:
  %tunn_info = alloca %struct.qed_tunnel_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tunn_info) #10
  %0 = call ptr @memset(ptr %tunn_info, i32 0, i32 52)
  %update_vxlan_port = getelementptr inbounds %struct.qed_tunn_params, ptr %tunn_params, i32 0, i32 1
  %1 = ptrtoint ptr %update_vxlan_port to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %update_vxlan_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vxlan_port = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 5
  %3 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %vxlan_port, align 4
  %4 = ptrtoint ptr %tunn_params to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tunn_params, align 2
  %port = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %port, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %update_geneve_port = getelementptr inbounds %struct.qed_tunn_params, ptr %tunn_params, i32 0, i32 3
  %7 = ptrtoint ptr %update_geneve_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %update_geneve_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %geneve_port = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 6
  %9 = ptrtoint ptr %geneve_port to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %geneve_port, align 4
  %geneve_port6 = getelementptr inbounds %struct.qed_tunn_params, ptr %tunn_params, i32 0, i32 2
  %10 = ptrtoint ptr %geneve_port6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %geneve_port6, align 2
  %port8 = getelementptr inbounds %struct.qed_tunnel_info, ptr %tunn_info, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %port8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %port8, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %13 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp86.not = icmp eq i8 %14, 0
  br i1 %cmp86.not, label %if.end9.cleanup53_crit_edge, label %for.body.lr.ph

if.end9.cleanup53_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %if.end9
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc51.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.087
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %if.then13, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %for.body
  %call = call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #10
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.then13.cleanup53_crit_edge, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13.cleanup53_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end17:                                         ; preds = %if.then13.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %p_ptt.0 = phi ptr [ %call, %if.then13.if.end17_crit_edge ], [ null, %for.body.if.end17_crit_edge ]
  %call18 = call i32 @qed_sp_pf_update_tunn_cfg(ptr noundef %arrayidx, ptr noundef %p_ptt.0, ptr noundef nonnull %tunn_info, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end17
  %19 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %if.then23, label %if.then20.cleanup53_crit_edge

if.then20.cleanup53_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef %p_ptt.0) #10
  br label %cleanup53

if.end25:                                         ; preds = %if.end17
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 8
  %p_iov_info = getelementptr inbounds %struct.qed_dev, ptr %22, i32 0, i32 37
  %23 = ptrtoint ptr %p_iov_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_iov_info, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %if.end25.if.end44_crit_edge, label %if.then28

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then28:                                        ; preds = %if.end25
  %port32 = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 5, i32 1
  %25 = ptrtoint ptr %port32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %port32, align 2
  %port34 = getelementptr inbounds %struct.qed_dev, ptr %16, i32 0, i32 38, i32 6, i32 1
  %27 = ptrtoint ptr %port34 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port34, align 2
  %call35 = call zeroext i16 @qed_iov_get_next_active_vf(ptr noundef %arrayidx, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %call35)
  %cmp3883 = icmp ult i16 %call35, 192
  br i1 %cmp3883, label %if.then28.for.body40_crit_edge, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then28.for.body40_crit_edge:                   ; preds = %if.then28
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %if.then28.for.body40_crit_edge
  %j.0.in84 = phi i16 [ %call42, %for.body40.for.body40_crit_edge ], [ %call35, %if.then28.for.body40_crit_edge ]
  %j.0 = zext i16 %j.0.in84 to i32
  call void @qed_iov_bulletin_set_udp_ports(ptr noundef %arrayidx, i32 noundef %j.0, i16 noundef zeroext %26, i16 noundef zeroext %28) #10
  %add = add nuw nsw i16 %j.0.in84, 1
  %call42 = call zeroext i16 @qed_iov_get_next_active_vf(ptr noundef %arrayidx, i16 noundef zeroext %add) #10
  %cmp38 = icmp ult i16 %call42, 192
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.body40.for.end_crit_edge

for.body40.for.end_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

for.end:                                          ; preds = %for.body40.for.end_crit_edge, %if.then28.for.end_crit_edge
  call void @qed_schedule_iov(ptr noundef %arrayidx, i32 noundef 2) #10
  br label %if.end44

if.end44:                                         ; preds = %for.end, %if.end25.if.end44_crit_edge
  %29 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool46.not = icmp eq i8 %30, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.for.inc51_crit_edge

if.end44.for.inc51_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc51

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef %p_ptt.0) #10
  br label %for.inc51

for.inc51:                                        ; preds = %if.then47, %if.end44.for.inc51_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %31 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %32 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc51.for.body_crit_edge, label %for.inc51.cleanup53_crit_edge

for.inc51.cleanup53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup53:                                        ; preds = %for.inc51.cleanup53_crit_edge, %if.then23, %if.then20.cleanup53_crit_edge, %if.then13.cleanup53_crit_edge, %if.end9.cleanup53_crit_edge
  %retval.2 = phi i32 [ %call18, %if.then20.cleanup53_crit_edge ], [ %call18, %if.then23 ], [ 0, %if.end9.cleanup53_crit_edge ], [ 0, %for.inc51.cleanup53_crit_edge ], [ -11, %if.then13.cleanup53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tunn_info) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_ntuple_arfs_filter_config(ptr noundef %cdev, ptr noundef %cookie, ptr nocapture noundef %params) #0 align 64 {
entry:
  %cb = alloca %struct.qed_spq_comp_cb, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb) #10
  %0 = getelementptr inbounds %struct.qed_spq_comp_cb, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qed_arfs_sp_response_handler, ptr %cb, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cookie, ptr %0, align 4
  %b_is_vf = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %vf_id = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 5
  %5 = ptrtoint ptr %vf_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vf_id, align 2
  %conv = zext i8 %6 to i32
  %call = tail call zeroext i1 @qed_iov_is_valid_vfid(ptr noundef %hwfns, i32 noundef %conv, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %call, label %if.end17, label %do.body

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp ult i8 %8, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !260

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.4, ptr %name
  %9 = ptrtoint ptr %vf_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vf_id, align 2
  %conv13 = zext i8 %10 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef 2810, ptr noundef nonnull %spec.select, i32 noundef %conv13) #15
  br label %cleanup

if.end17:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %vf_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vf_id, align 2
  %add = add i8 %12, 1
  %vport_id = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 4
  %13 = ptrtoint ptr %vport_id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add, ptr %vport_id, align 1
  %qid = getelementptr inbounds %struct.qed_ntuple_filter_params, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %qid to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %qid, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %entry.if.end21_crit_edge
  %call22 = call i32 @qed_configure_rfs_ntuple_filter(ptr noundef %hwfns, ptr noundef nonnull %cb, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %dp_level55 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %15 = ptrtoint ptr %dp_level55 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dp_level55, align 8
  br i1 %tobool23.not, label %do.body54, label %do.body25

do.body25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp28 = icmp ult i8 %16, 3
  br i1 %cmp28, label %do.end39, label %do.body25.cleanup_crit_edge, !prof !260

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end39:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %name41 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool43.not = icmp eq ptr %name41, null
  %spec.select106 = select i1 %tobool43.not, ptr @.str.4, ptr %name41
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.124, i32 noundef 2821, ptr noundef nonnull %spec.select106) #15
  br label %cleanup

do.body54:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp57 = icmp eq i8 %16, 0
  br i1 %cmp57, label %land.rhs, label %do.body54.cleanup_crit_edge

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %do.body54
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %17 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_module, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %land.rhs.cleanup_crit_edge, label %do.end69, !prof !261

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end69:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name71 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool73.not = icmp eq ptr %name71, null
  %spec.select107 = select i1 %tobool73.not, ptr @.str.4, ptr %name71
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.124, i32 noundef 2824, ptr noundef nonnull %spec.select107) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %land.rhs.cleanup_crit_edge, %do.body54.cleanup_crit_edge, %do.end39, %do.body25.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %do.body54.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %do.end69 ], [ %call22, %do.body25.cleanup_crit_edge ], [ %call22, %do.end39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_configure_arfs_searcher(ptr noundef %cdev, i32 noundef %mode) #0 align 64 {
entry:
  %arfs_config_params = alloca %struct.qed_arfs_config_params, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arfs_config_params) #10
  %0 = getelementptr inbounds %struct.qed_arfs_config_params, ptr %arfs_config_params, i32 0, i32 4
  %1 = ptrtoint ptr %arfs_config_params to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16843009, ptr %arfs_config_params, align 8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %0, align 4
  %p_arfs_ptt = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 65
  %3 = ptrtoint ptr %p_arfs_ptt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_arfs_ptt, align 8
  call void @qed_arfs_mode_configure(ptr noundef %hwfns, ptr noundef %4, ptr noundef nonnull %arfs_config_params)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arfs_config_params) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_get_coalesce(ptr noundef %cdev, ptr noundef %coal, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_owner = getelementptr inbounds %struct.qed_queue_cid, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %p_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_owner, align 4
  %call = tail call i32 @qed_get_queue_coalesce(ptr noundef %1, ptr noundef %coal, ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %do.body.if.end13_crit_edge

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.rhs:                                         ; preds = %do.body
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cdev, align 8
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.if.end13_crit_edge, label %do.end, !prof !261

land.rhs.if.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.4, ptr %name
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.131, i32 noundef 2839, ptr noundef nonnull %spec.select) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end, %land.rhs.if.end13_crit_edge, %do.body.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qed_req_bulletin_update_mac(ptr noundef %cdev, ptr noundef %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 39
  %0 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_is_vf, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup5_crit_edge, label %for.cond.preheader

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup5

for.cond.preheader:                               ; preds = %entry
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp13.not = icmp eq i8 %3, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup5_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup5_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup5

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.014, 1
  %4 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup5_crit_edge

for.cond.cleanup5_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup5

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.014
  %call = tail call i32 @qed_vf_pf_bulletin_update_mac(ptr noundef %arrayidx, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup5_crit_edge

for.body.cleanup5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup5

cleanup5:                                         ; preds = %for.body.cleanup5_crit_edge, %for.cond.cleanup5_crit_edge, %for.cond.preheader.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup5_crit_edge ], [ 0, %for.cond.preheader.cleanup5_crit_edge ], [ %call, %for.body.cleanup5_crit_edge ], [ 0, %for.cond.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_num_cids(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_num_vlan_filters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_num_mac_filters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_get_port_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_fill_dev_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_start_iov_wq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qed_vf_check_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_hw_start_fastpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_vport_start(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_rxq_start(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_txq_start(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_get_cm_pq_idx_mcos(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_filter_ucast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_vf_pf_filter_mcast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_hw_stop_fastpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_eth_cqe_completion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_pf_update_tunn_cfg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qed_iov_get_next_active_vf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_iov_bulletin_set_udp_ports(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_schedule_iov(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qed_arfs_sp_response_handler(ptr nocapture noundef readonly %p_hwfn, ptr noundef %cookie, ptr nocapture noundef readnone %data, i8 noundef zeroext %fw_return_code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %protocol_ops = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %protocol_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol_ops, align 8
  %ops_cookie = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 57
  %4 = ptrtoint ptr %ops_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops_cookie, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void %7(ptr noundef %5, ptr noundef %cookie, i8 noundef zeroext %fw_return_code) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qed_iov_is_valid_vfid(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_vf_pf_bulletin_update_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !{ptr @qed_l2_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 97, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 318, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qed_eth_queue_to_cid._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @qed_eth_queue_to_cid._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 850, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qed_eth_rxq_start_ramrod._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @qed_eth_rxq_start_ramrod._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 888, i32 3}
!17 = !{ptr @qed_eth_rxq_start_ramrod._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_eth_rxq_start_ramrod._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1375, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qed_sp_eth_filter_ucast._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @qed_sp_eth_filter_ucast._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1383, i32 3}
!27 = !{ptr @qed_sp_eth_filter_ucast._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @qed_sp_eth_filter_ucast._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1387, i32 2}
!31 = !{ptr @qed_sp_eth_filter_ucast._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qed_sp_eth_filter_ucast._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.24, !30, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.25, !30, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1400, i32 2}
!42 = !{ptr @qed_sp_eth_filter_ucast._entry.26, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qed_sp_eth_filter_ucast._entry_ptr.28, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1936, i32 4}
!46 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qed_reset_vport_stats._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @qed_reset_vport_stats._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1961, i32 3}
!51 = !{ptr @qed_reset_vport_stats._entry.31, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @qed_reset_vport_stats._entry_ptr.33, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1994, i32 3}
!55 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qed_arfs_mode_configure._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qed_arfs_mode_configure._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2003, i32 3}
!62 = !{ptr @qed_arfs_mode_configure._entry.38, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qed_arfs_mode_configure._entry_ptr.40, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2069, i32 2}
!66 = !{ptr @.str.42, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @qed_configure_rfs_ntuple_filter._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @qed_configure_rfs_ntuple_filter._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2095, i32 3}
!73 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @qed_get_rxq_coalesce._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @qed_get_rxq_coalesce._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2129, i32 3}
!78 = !{ptr @qed_get_txq_coalesce._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qed_get_txq_coalesce._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2159, i32 4}
!82 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qed_get_queue_coalesce._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qed_get_queue_coalesce._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__ksymtab_qed_get_eth_ops, !86, !"__ksymtab_qed_get_eth_ops", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2905, i32 1}
!87 = !{ptr @__ksymtab_qed_put_eth_ops, !88, !"__ksymtab_qed_put_eth_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2911, i32 1}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 266, i32 2}
!91 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @_qed_eth_queue_to_cid._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @_qed_eth_queue_to_cid._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 138, i32 3}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qed_eth_queue_qid_usage_add._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qed_eth_queue_qid_usage_add._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 484, i32 2}
!101 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @qed_sp_vport_update_rss._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @qed_sp_vport_update_rss._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 504, i32 2}
!106 = !{ptr @qed_sp_vport_update_rss._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @qed_sp_vport_update_rss._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 508, i32 3}
!110 = !{ptr @qed_sp_vport_update_rss._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @qed_sp_vport_update_rss._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 573, i32 3}
!114 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qed_sp_update_accept_mode._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @qed_sp_update_accept_mode._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 600, i32 3}
!119 = !{ptr @qed_sp_update_accept_mode._entry.64, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @qed_sp_update_accept_mode._entry_ptr.66, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1343, i32 4}
!123 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qed_filter_ucast_common._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @qed_filter_ucast_common._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1882, i32 5}
!128 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @_qed_get_vport_stats._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @_qed_get_vport_stats._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @_qed_get_vport_stats._entry.71, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1888, i32 4}
!133 = !{ptr @_qed_get_vport_stats._entry_ptr.72, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @qed_eth_ops_pass, !135, !"qed_eth_ops_pass", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2869, i32 33}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2325, i32 4}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @qed_start_vport._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @qed_start_vport._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2331, i32 4}
!143 = !{ptr @qed_start_vport._entry.75, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @qed_start_vport._entry_ptr.77, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2335, i32 3}
!147 = !{ptr @qed_start_vport._entry.78, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qed_start_vport._entry_ptr.80, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2357, i32 4}
!151 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @qed_stop_vport._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @qed_stop_vport._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2471, i32 4}
!156 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @qed_update_vport._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @qed_update_vport._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2475, i32 3}
!161 = !{ptr @qed_update_vport._entry.85, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @qed_update_vport._entry_ptr.87, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2417, i32 4}
!165 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @qed_update_vport_rss._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @qed_update_vport_rss._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2511, i32 3}
!170 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @qed_start_rxq._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @qed_start_rxq._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2515, i32 2}
!175 = !{ptr @qed_start_rxq._entry.92, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @qed_start_rxq._entry_ptr.94, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2533, i32 3}
!179 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qed_stop_rxq._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qed_stop_rxq._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2561, i32 3}
!184 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @qed_start_txq._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @qed_start_txq._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2565, i32 2}
!189 = !{ptr @qed_start_txq._entry.99, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @qed_start_txq._entry_ptr.101, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2597, i32 3}
!193 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @qed_stop_txq._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @qed_stop_txq._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 822, i32 4}
!198 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @qed_filter_accept_cmd._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @qed_filter_accept_cmd._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.107, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 826, i32 3}
!203 = !{ptr @qed_filter_accept_cmd._entry.106, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @qed_filter_accept_cmd._entry_ptr.108, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 831, i32 4}
!207 = !{ptr @qed_filter_accept_cmd._entry.109, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @qed_filter_accept_cmd._entry_ptr.111, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2701, i32 3}
!211 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @qed_configure_filter_ucast._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @qed_configure_filter_ucast._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2718, i32 3}
!216 = !{ptr @qed_configure_filter_ucast._entry.114, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @qed_configure_filter_ucast._entry_ptr.116, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.117, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2755, i32 3}
!220 = !{ptr @.str.118, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @qed_configure_filter_mcast._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @qed_configure_filter_mcast._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 1495, i32 3}
!225 = !{ptr @.str.120, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @qed_sp_eth_filter_mcast._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @qed_sp_eth_filter_mcast._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.121, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2580, i32 3}
!230 = !{ptr @.str.122, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @qed_fastpath_stop._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @qed_fastpath_stop._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.123, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2809, i32 4}
!235 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @qed_ntuple_arfs_filter_config._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @qed_ntuple_arfs_filter_config._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.126, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2820, i32 3}
!240 = !{ptr @qed_ntuple_arfs_filter_config._entry.125, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @qed_ntuple_arfs_filter_config._entry_ptr.127, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.129, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2823, i32 3}
!244 = !{ptr @qed_ntuple_arfs_filter_config._entry.128, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @qed_ntuple_arfs_filter_config._entry_ptr.130, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.131, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/qlogic/qed/qed_l2.c", i32 2838, i32 3}
!248 = !{ptr @qed_get_coalesce._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @qed_get_coalesce._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 1, !"min_enum_size", i32 4}
!252 = !{i32 8, !"branch-target-enforcement", i32 0}
!253 = !{i32 8, !"sign-return-address", i32 0}
!254 = !{i32 8, !"sign-return-address-all", i32 0}
!255 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!256 = !{i32 7, !"uwtable", i32 1}
!257 = !{i32 7, !"frame-pointer", i32 2}
!258 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!259 = !{i8 0, i8 2}
!260 = !{!"branch_weights", i32 1, i32 2000}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{!"auto-init"}
!263 = !{i64 2156813714}
!264 = !{i64 6304903}
