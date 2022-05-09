; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bnx2x = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i32, %struct.mutex, ptr, i32, %struct.pfvf_acquire_resp_tlv, ptr, i32, %union.pf_vf_bulletin, %struct.pf_vf_bulletin_content, i16, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i16, i16, i32, [8 x %struct.attn_route], ptr, i32, i16, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, ptr, i32, i16, i16, ptr, %struct.atomic_t, i16, i16, i32, i32, i32, i8, i8, i8, ptr, i8, i32, %struct.delayed_work, %struct.delayed_work, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, i32, i16, i16, i32, %struct.link_params, %struct.link_vars, i32, %struct.bnx2x_link_report_data, i8, %struct.mdio_if_info, %struct.bnx2x_common, %struct.bnx2x_port, %struct.cmng_init, [4 x i32], i32, i32, i16, i8, i8, i8, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, i32, %struct.mutex, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, [32 x %struct.hw_context], ptr, i32, i8, ptr, i32, ptr, ptr, i32, %struct.cnic_eth_dev, %union.host_hc_status_block, i32, ptr, ptr, ptr, ptr, i16, i16, [6 x i8], %struct.mutex, %struct.bnx2x_vlan_mac_obj, i8, i32, %struct.spinlock, %struct.mutex, i32, %struct.semaphore, %struct.dmae_command, i32, i16, %struct.bnx2x_eth_stats, %struct.host_func_stats, %struct.bnx2x_eth_stats_old, %struct.bnx2x_net_stats_old, %struct.bnx2x_fw_port_stats_old, i8, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, i16, i32, i8, %struct.bnx2x_config_dcbx_params, %struct.bnx2x_dcbx_port_params, i32, %struct.bnx2x_credit_pool_obj, %struct.bnx2x_credit_pool_obj, %struct.bnx2x_rx_mode_obj, %struct.bnx2x_mcast_obj, %struct.bnx2x_rss_config_obj, %struct.bnx2x_func_sp_obj, i32, i32, i32, %struct.dcbx_features, i32, %struct.dcbx_features, i32, i32, i32, i32, i8, [8 x i8], i32, i32, [6 x i8], ptr, %struct.ptp_clock_info, %struct.work_struct, %struct.cyclecounter, %struct.timecounter, i8, ptr, i32, i8, i16, i16, %struct.bnx2x_link_report_data, %struct.list_head, i16, i16, i8, [2 x i16], i32, i32, i32, i32, i32 }
%struct.pfvf_acquire_resp_tlv = type { %struct.pfvf_tlv, %struct.pf_vf_pfdev_info, %struct.pf_vf_resc }
%struct.pfvf_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.channel_tlv = type { i16, i16 }
%struct.pf_vf_pfdev_info = type { i32, i32, [32 x i8], i16, i8, i8 }
%struct.pf_vf_resc = type { [16 x %struct.hw_sb_info], [16 x i8], i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], [2 x i8] }
%struct.hw_sb_info = type { i8, i8 }
%union.pf_vf_bulletin = type { %struct.pf_vf_bulletin_content, [464 x i8] }
%struct.pf_vf_bulletin_content = type { i32, i16, i16, i64, [6 x i8], [2 x i8], i16, [6 x i8], i16, [6 x i8], i32, [4 x i8] }
%struct.attn_route = type { [5 x i32] }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.link_params = type { i8, i8, [6 x i8], [2 x i16], [2 x i16], [2 x i16], i32, i32, [2 x i32], i32, i32, i32, i32, [3 x %struct.bnx2x_phy], i8, i8, i32, i16, i32, ptr, i16, i16, i32, i32 }
%struct.bnx2x_phy = type { i32, i8, i8, i16, [4 x i16], [4 x i16], i32, i32, i32, i32, i16, i16, i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.link_vars = type { i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i8, i8, i16, i32, i8, i8, i16 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.bnx2x_common = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bnx2x_port = type { i32, [2 x i32], [2 x i32], [2 x i32], i32, %struct.mutex, i32, %struct.nig_stats }
%struct.nig_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.124, %union.anon.127 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, i32 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.cmng_init = type { %struct.cmng_struct_per_port, %struct.cmng_vnic }
%struct.cmng_struct_per_port = type { %struct.rate_shaping_vars_per_port, %struct.fairness_vars_per_port, %struct.safc_struct_per_port, %struct.cmng_flags_per_port }
%struct.rate_shaping_vars_per_port = type { i32, i32 }
%struct.fairness_vars_per_port = type { i32, i32, i32, i32 }
%struct.safc_struct_per_port = type { i16, i8, i8, [4 x i8], [16 x i16] }
%struct.cmng_flags_per_port = type { i32, i32 }
%struct.cmng_vnic = type { [4 x %struct.rate_shaping_vars_per_vn], [4 x %struct.fairness_vars_per_vn] }
%struct.rate_shaping_vars_per_vn = type { %struct.rate_shaping_counter }
%struct.rate_shaping_counter = type { i32, i16, i16 }
%struct.fairness_vars_per_vn = type { [4 x i32], i32, i32 }
%struct.hw_context = type { ptr, i32, i32 }
%struct.cnic_eth_dev = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [6 x i8], i32, [8 x %struct.cnic_irq], ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], ptr }
%struct.cnic_irq = type { i32, ptr, i32, i32, i32 }
%union.host_hc_status_block = type { ptr }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj, %struct.list_head, i8, i8, i32, %struct.bnx2x_exe_queue_obj, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_raw_obj = type { i8, i8, i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.bnx2x_exe_queue_obj = type { %struct.list_head, %struct.list_head, %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dmae_command = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.bnx2x_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.139, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_func_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_eth_stats_old = type { i32, i32 }
%struct.bnx2x_net_stats_old = type { i32 }
%struct.bnx2x_fw_port_stats_old = type { i32, i32, i32, i32 }
%struct.bnx2x_config_dcbx_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i32, [4 x %struct.bnx2x_admin_priority_app_table], i32 }
%struct.bnx2x_admin_priority_app_table = type { i32, i32, i32, i32 }
%struct.bnx2x_dcbx_port_params = type { %struct.bnx2x_dcbx_pfc_params, %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_app_params }
%struct.bnx2x_dcbx_pfc_params = type { i32, i32 }
%struct.bnx2x_dcbx_pg_params = type { i32, i8, [3 x %struct.bnx2x_dcbx_cos_params] }
%struct.bnx2x_dcbx_cos_params = type { i32, i32, i8, i8 }
%struct.bnx2x_dcbx_app_params = type { i32, [3 x i32] }
%struct.bnx2x_credit_pool_obj = type { %struct.atomic_t, i32, [4 x i64], i32, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_rx_mode_obj = type { ptr, ptr }
%struct.bnx2x_mcast_obj = type { %struct.bnx2x_raw_obj, %union.anon.142, %struct.list_head, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { [4 x i64], i32 }
%struct.bnx2x_rss_config_obj = type { %struct.bnx2x_raw_obj, i8, [128 x i8], i8, i8, ptr }
%struct.bnx2x_func_sp_obj = type { i32, i32, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.dcbx_features = type { %struct.dcbx_ets_feature, %struct.dcbx_pfc_feature, %struct.dcbx_app_priority_feature }
%struct.dcbx_ets_feature = type { i32, [2 x i32], [1 x i32] }
%struct.dcbx_pfc_feature = type { i8, i8, i8, i8 }
%struct.dcbx_app_priority_feature = type { i8, i8, i8, i8, [16 x %struct.dcbx_app_priority_entry] }
%struct.dcbx_app_priority_entry = type { i16, i8, i8 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.bnx2x_link_report_data = type { i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bnx2x_vf_mbx_msg = type { %union.vfpf_tlvs, %union.pfvf_tlvs }
%union.vfpf_tlvs = type { %struct.vfpf_init_tlv, [856 x i8] }
%struct.vfpf_init_tlv = type { %struct.vfpf_first_tlv, [16 x i64], i64, i64, i16, i32, [2 x i32] }
%struct.vfpf_first_tlv = type { %struct.channel_tlv, i32 }
%union.pfvf_tlvs = type { %struct.pfvf_acquire_resp_tlv, [904 x i8] }
%struct.vfpf_acquire_tlv = type { %struct.vfpf_first_tlv, %struct.vf_pf_vfdev_info, %struct.vf_pf_resc_request, i64 }
%struct.vf_pf_vfdev_info = type { i8, i8, i8, i8 }
%struct.vf_pf_resc_request = type { i8, i8, i8, i8, i8, i8 }
%struct.vfpf_fp_hsi_resp_tlv = type { %struct.channel_tlv, i8, [3 x i8] }
%struct.vfpf_port_phys_id_resp_tlv = type { %struct.channel_tlv, [6 x i8], [2 x i8] }
%struct.vfpf_release_tlv = type { %struct.vfpf_first_tlv, i16, [2 x i8] }
%struct.bnx2x_fastpath = type { ptr, %struct.napi_struct, %union.host_hc_status_block, ptr, ptr, i32, i32, i32, i32, i32, i8, [3 x ptr], ptr, ptr, ptr, i32, ptr, i32, ptr, i32, [16 x i64], i32, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, ptr, ptr, [24 x i8], %struct.bnx2x_alloc_pool }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bnx2x_alloc_pool = type { ptr, i32 }
%struct.vfpf_q_op_tlv = type { %struct.vfpf_first_tlv, i8, [3 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.vfpf_close_tlv = type { %struct.vfpf_first_tlv, i16, [2 x i8] }
%struct.vfpf_set_q_filters_tlv = type { %struct.vfpf_first_tlv, i32, i8, i8, i8, i8, [32 x %struct.vfpf_q_mac_vlan_filter], [32 x [6 x i8]], i32 }
%struct.vfpf_q_mac_vlan_filter = type { i32, [6 x i8], i16 }
%struct.vfpf_setup_q_tlv = type { %struct.vfpf_first_tlv, %struct.vf_pf_rxq_params, %struct.vf_pf_txq_params, i8, i8, [2 x i8] }
%struct.vf_pf_rxq_params = type { i64, i64, i64, i64, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.vf_pf_txq_params = type { i64, i8, i8, i16, i32, i16, i8, i8 }
%struct.bnx2x_fp_txdata = type { ptr, ptr, i32, i32, %union.db_prod, i16, i16, i16, i16, i32, ptr, i32, ptr, i32 }
%union.db_prod = type { i32 }
%struct.vfpf_rss_tlv = type { %struct.vfpf_first_tlv, i32, i8, i8, i8, i8, [128 x i8], [10 x i32] }
%struct.bnx2x_config_rss_params = type { ptr, i32, i32, i8, [128 x i8], [10 x i32], i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.vf_pf_event_data = type { i8, i8, i16, i32, i32 }
%struct.bnx2x_vfdb = type { ptr, ptr, [32 x %struct.hw_dma], %struct.bnx2x_sriov, %struct.hw_dma, [64 x %struct.bnx2x_vf_mbx], %struct.hw_dma, %struct.hw_dma, [2 x i32], i16, i16, %struct.mutex, i64, %struct.mutex }
%struct.bnx2x_sriov = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i8 }
%struct.bnx2x_vf_mbx = type { ptr, i32, i32, i32, %struct.vfpf_first_tlv }
%struct.hw_dma = type { ptr, i32, i32 }
%struct.bnx2x_queue_update_tpa_params = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16 }
%struct.bnx2x_vf_queue_construct_params = type { %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_setup_params }
%struct.bnx2x_queue_state_params = type { ptr, i32, i32, %union.anon.118 }
%union.anon.118 = type { %struct.bnx2x_queue_setup_params }
%struct.bnx2x_queue_setup_params = type { %struct.bnx2x_general_setup_params, %struct.bnx2x_txq_setup_params, %struct.bnx2x_rxq_setup_params, %struct.rxq_pause_params, i32 }
%struct.bnx2x_general_setup_params = type { i8, i8, i16, i8, i8 }
%struct.bnx2x_txq_setup_params = type { i32, i8, i8, i8, i16, i8, i16 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.rxq_pause_params = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.119 = type { i32, i16, i8, i8 }
%struct.anon.120 = type { i32, i16, i8, i8 }
%struct.bnx2x_virtf = type { i16, i8, i8, i8, i8, i8, i32, i16, i32, %struct.vf_pf_resc_request, i8, i8, ptr, i8, i8, i8, i32, i32, i32, i32, [6 x %struct.bnx2x_vf_bar], i32, i32, %struct.bnx2x_mcast_obj, %struct.bnx2x_rss_config_obj, %struct.mutex, i32, i8, %struct.bnx2x_credit_pool_obj, %struct.bnx2x_credit_pool_obj }
%struct.bnx2x_vf_bar = type { i64, i32 }
%struct.bnx2x_vf_queue = type { ptr, %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj, i32, %struct.bnx2x_queue_sp_obj, i32, i16, i16, i8, i8 }
%struct.bnx2x_queue_sp_obj = type { [3 x i32], i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_vf_mac_vlan_filters = type { i32, [0 x %struct.bnx2x_vf_mac_vlan_filter] }
%struct.bnx2x_vf_mac_vlan_filter = type { i32, i8, i8, ptr, i16 }
%struct.vfpf_tpa_tlv = type { %struct.vfpf_first_tlv, %struct.vf_pf_tpa_client_info }
%struct.vf_pf_tpa_client_info = type { [16 x i64], i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16 }
%struct.bnx2x_slowpath = type { %union.anon.130, %union.anon.131, %union.anon.132, %union.anon.133, %struct.eth_rss_update_ramrod_data, %union.anon.134, %union.anon.135, %union.anon.136, [8 x %struct.dmae_command], i32, %union.mac_stats, %struct.nig_stats, %struct.host_port_stats, %struct.host_func_stats, i32, [4 x i32], %union.drv_info_to_mcp }
%union.anon.130 = type { %struct.mac_configuration_cmd }
%struct.mac_configuration_cmd = type { %struct.mac_configuration_hdr, [64 x %struct.mac_configuration_entry] }
%struct.mac_configuration_hdr = type { i8, i8, i16, i32 }
%struct.mac_configuration_entry = type { i16, i16, i16, i16, i8, i8, i16, i32 }
%union.anon.131 = type { %struct.eth_classify_rules_ramrod_data }
%struct.eth_classify_rules_ramrod_data = type { %struct.eth_classify_header, [16 x %union.eth_classify_rule_cmd] }
%struct.eth_classify_header = type { i8, i8, i16, i32 }
%union.eth_classify_rule_cmd = type { %struct.eth_classify_vlan_cmd }
%struct.eth_classify_vlan_cmd = type { %struct.eth_classify_cmd_header, i32, i32, i16, i16 }
%struct.eth_classify_cmd_header = type { i8, i8, i8, i8 }
%union.anon.132 = type { %struct.eth_filter_rules_ramrod_data }
%struct.eth_filter_rules_ramrod_data = type { %struct.eth_classify_header, [16 x %struct.eth_filter_rules_cmd] }
%struct.eth_filter_rules_cmd = type { i8, i8, i8, i8, i16, i16, %struct.regpair }
%struct.regpair = type { i32, i32 }
%union.anon.133 = type { %struct.mac_configuration_cmd }
%struct.eth_rss_update_ramrod_data = type { i8, i8, i16, i8, i8, i16, [128 x i8], [10 x i32], i32, i32 }
%union.anon.134 = type { %struct.client_init_ramrod_data }
%struct.client_init_ramrod_data = type { %struct.client_init_general_data, %struct.client_init_rx_data, %struct.client_init_tx_data }
%struct.client_init_general_data = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, [3 x i8] }
%struct.client_init_rx_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, %struct.regpair, %struct.regpair, %struct.regpair, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, [3 x i8], i32 }
%struct.client_init_tx_data = type { i8, i8, i8, i8, i8, i8, i16, %struct.regpair, i16, i8, i8, i8, i8, i8, i8 }
%union.anon.135 = type { %struct.function_start_data }
%struct.function_start_data = type { i8, i8, i16, i16, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, [4 x i8], %struct.c2s_pri_trans_table_entry }
%struct.c2s_pri_trans_table_entry = type { [8 x i8] }
%union.anon.136 = type { %struct.function_update_data }
%struct.function_update_data = type { i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32 }
%union.mac_stats = type { %struct.mstat_stats }
%struct.mstat_stats = type { %struct.anon.137, %struct.anon.138 }
%struct.anon.137 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.138 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_port_stats = type { i32, [2 x %struct.mac_stx], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_stx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.drv_info_to_mcp = type { %struct.iscsi_stats_info }
%struct.iscsi_stats_info = type { [12 x i8], [8 x i8], [8 x i8], i32, [64 x i8], [64 x i8], [64 x i8], [16 x i8], i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bnx2x_vfpf_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]attempting to acquire resources\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vfpf_acquire\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry_ptr = internal global ptr @bnx2x_vfpf_acquire._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]resources acquired\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry_ptr.6 = internal global ptr @bnx2x_vfpf_acquire._entry.4, section ".printk_index", align 4
@bnx2x_vfpf_acquire._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015[%s:%d(%s)]PF unwilling to fulfill resource request. Try PF recommended amount\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry_ptr.9 = internal global ptr @bnx2x_vfpf_acquire._entry.7, section ".printk_index", align 4
@bnx2x_vfpf_acquire._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\013[%s:%d(%s)]Old hypervisor - doesn't support current fastpath HSI version; Need to downgrade VF driver [or upgrade hypervisor]\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry_ptr.12 = internal global ptr @bnx2x_vfpf_acquire._entry.10, section ".printk_index", align 4
@bnx2x_vfpf_acquire._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013[%s:%d(%s)]Failed to get the requested amount of resources: %d. Breaking...\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry_ptr.15 = internal global ptr @bnx2x_vfpf_acquire._entry.13, section ".printk_index", align 4
@bnx2x_vfpf_acquire._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[%s:%d(%s)]Old hypervisor - need to downgrade VF's driver\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_acquire._entry_ptr.18 = internal global ptr @bnx2x_vfpf_acquire._entry.16, section ".printk_index", align 4
@bnx2x_vfpf_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015[%s:%d(%s)]vf released\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vfpf_release\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_release._entry_ptr = internal global ptr @bnx2x_vfpf_release._entry, section ".printk_index", align 4
@bnx2x_vfpf_release._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013[%s:%d(%s)]PF failed our release request - are we out of sync? Response status: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_release._entry_ptr.23 = internal global ptr @bnx2x_vfpf_release._entry.21, section ".printk_index", align 4
@bnx2x_vfpf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]INIT VF failed: %d. Breaking...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2x_vfpf_init\00", [16 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_init._entry_ptr = internal global ptr @bnx2x_vfpf_init._entry, section ".printk_index", align 4
@bnx2x_vfpf_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]INIT VF Succeeded\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_init._entry_ptr.28 = internal global ptr @bnx2x_vfpf_init._entry.26, section ".printk_index", align 4
@bnx2x_vfpf_close_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]Sending CLOSE failed. rc was: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_vfpf_close_vf\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_close_vf._entry_ptr = internal global ptr @bnx2x_vfpf_close_vf._entry, section ".printk_index", align 4
@bnx2x_vfpf_close_vf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Sending CLOSE failed: pf response was %d\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_close_vf._entry_ptr.33 = internal global ptr @bnx2x_vfpf_close_vf._entry.31, section ".printk_index", align 4
@bnx2x_vfpf_setup_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013[%s:%d(%s)]Sending SETUP_Q message for queue[%d] failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vfpf_setup_q\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_setup_q._entry_ptr = internal global ptr @bnx2x_vfpf_setup_q._entry, section ".printk_index", align 4
@bnx2x_vfpf_setup_q._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[%s:%d(%s)]Status of SETUP_Q for queue[%d] is %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_setup_q._entry_ptr.38 = internal global ptr @bnx2x_vfpf_setup_q._entry.36, section ".printk_index", align 4
@bnx2x_vfpf_config_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[%s:%d(%s)]failed to send message to pf. rc was %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vfpf_config_mac\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_config_mac._entry_ptr = internal global ptr @bnx2x_vfpf_config_mac._entry, section ".printk_index", align 4
@bnx2x_vfpf_config_mac._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]vfpf SET MAC failed. Check bulletin board for new posts\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_config_mac._entry_ptr.43 = internal global ptr @bnx2x_vfpf_config_mac._entry.41, section ".printk_index", align 4
@bnx2x_vfpf_config_mac._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]vfpf SET MAC failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_config_mac._entry_ptr.46 = internal global ptr @bnx2x_vfpf_config_mac._entry.44, section ".printk_index", align 4
@bnx2x_vfpf_config_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015[%s:%d(%s)]rss flags %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vfpf_config_rss\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_config_rss._entry_ptr = internal global ptr @bnx2x_vfpf_config_rss._entry, section ".printk_index", align 4
@bnx2x_vfpf_config_rss._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.48, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_config_rss._entry_ptr.50 = internal global ptr @bnx2x_vfpf_config_rss._entry.49, section ".printk_index", align 4
@bnx2x_vfpf_config_rss._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.48, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015[%s:%d(%s)]Failed to send rss message to PF over VF-PF channel [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_config_rss._entry_ptr.53 = internal global ptr @bnx2x_vfpf_config_rss._entry.51, section ".printk_index", align 4
@bnx2x_vfpf_set_mcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]state is %x, returning\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_vfpf_set_mcast\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_set_mcast._entry_ptr = internal global ptr @bnx2x_vfpf_set_mcast._entry, section ".printk_index", align 4
@bnx2x_vfpf_set_mcast._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]dev->flags = %x\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_set_mcast._entry_ptr.58 = internal global ptr @bnx2x_vfpf_set_mcast._entry.56, section ".printk_index", align 4
@bnx2x_vfpf_set_mcast._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]VF supports not more than %d multicast MAC addresses\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_set_mcast._entry_ptr.61 = internal global ptr @bnx2x_vfpf_set_mcast._entry.59, section ".printk_index", align 4
@bnx2x_vfpf_set_mcast._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Adding mcast MAC: %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_set_mcast._entry_ptr.64 = internal global ptr @bnx2x_vfpf_set_mcast._entry.62, section ".printk_index", align 4
@bnx2x_vfpf_set_mcast._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]Sending a message failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_set_mcast._entry_ptr.67 = internal global ptr @bnx2x_vfpf_set_mcast._entry.65, section ".printk_index", align 4
@bnx2x_vfpf_set_mcast._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.2, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]Set Rx mode/multicast failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_set_mcast._entry_ptr.70 = internal global ptr @bnx2x_vfpf_set_mcast._entry.68, section ".printk_index", align 4
@bnx2x_vfpf_update_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]HV does not support vlan filtering\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_vfpf_update_vlan\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_update_vlan._entry_ptr = internal global ptr @bnx2x_vfpf_update_vlan._entry, section ".printk_index", align 4
@bnx2x_vfpf_update_vlan._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013[%s:%d(%s)]Hypervisor will decline the request, avoiding\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_update_vlan._entry_ptr.75 = internal global ptr @bnx2x_vfpf_update_vlan._entry.73, section ".printk_index", align 4
@bnx2x_vfpf_update_vlan._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.72, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_update_vlan._entry_ptr.77 = internal global ptr @bnx2x_vfpf_update_vlan._entry.76, section ".printk_index", align 4
@bnx2x_vfpf_update_vlan._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.72, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]vfpf %s VLAN %d failed\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_update_vlan._entry_ptr.80 = internal global ptr @bnx2x_vfpf_update_vlan._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"del\00", [28 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_storm_rx_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]Rx mode is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_vfpf_storm_rx_mode\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_storm_rx_mode._entry_ptr = internal global ptr @bnx2x_vfpf_storm_rx_mode._entry, section ".printk_index", align 4
@bnx2x_vfpf_storm_rx_mode._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.84, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_storm_rx_mode._entry_ptr.86 = internal global ptr @bnx2x_vfpf_storm_rx_mode._entry.85, section ".printk_index", align 4
@bnx2x_vfpf_storm_rx_mode._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.2, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Set Rx mode failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_storm_rx_mode._entry_ptr.89 = internal global ptr @bnx2x_vfpf_storm_rx_mode._entry.87, section ".printk_index", align 4
@bnx2x_vf_mbx_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 2196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\015[%s:%d(%s)]vf pf event received: vfid %d, address_hi %x, address lo %x\00", [55 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vf_mbx_schedule\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_schedule._entry_ptr = internal global ptr @bnx2x_vf_mbx_schedule._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_schedule._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 2203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]Illegal vf_id %d max allowed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_schedule._entry_ptr.94 = internal global ptr @bnx2x_vf_mbx_schedule._entry.92, section ".printk_index", align 4
@bnx2x_vf_mbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 2248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]Handling vf pf event vfid %d, address: [%x:%x], resp_offset 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bnx2x_vf_mbx\00", [19 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx._entry_ptr = internal global ptr @bnx2x_vf_mbx._entry, section ".printk_index", align 4
@bnx2x_vf_mbx._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 2257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]Failed to copy request VF %d\0A\00", [53 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx._entry_ptr.99 = internal global ptr @bnx2x_vf_mbx._entry.97, section ".printk_index", align 4
@bnx2x_vfpf_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]preparing to send %d tlv over vf pf channel\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2x_vfpf_prep\00", [16 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_prep._entry_ptr = internal global ptr @bnx2x_vfpf_prep._entry, section ".printk_index", align 4
@bnx2x_get_vf_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[%s:%d(%s)]Invalid ME register value: 0x%08x\0A. Is pf driver up?\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2x_get_vf_id\00", [16 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_id._entry_ptr = internal global ptr @bnx2x_get_vf_id._entry, section ".printk_index", align 4
@bnx2x_get_vf_id._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[%s:%d(%s)]Invalid ME register value: 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_id._entry_ptr.106 = internal global ptr @bnx2x_get_vf_id._entry.104, section ".printk_index", align 4
@bnx2x_get_vf_id._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]valid ME register value: 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_id._entry_ptr.109 = internal global ptr @bnx2x_get_vf_id._entry.107, section ".printk_index", align 4
@bnx2x_dp_tlv_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]TLV number %d: type %d, length %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2x_dp_tlv_list\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_dp_tlv_list._entry_ptr = internal global ptr @bnx2x_dp_tlv_list._entry, section ".printk_index", align 4
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"corrupt tlvs\00", [19 x i8] zeroinitializer }, align 32
@bnx2x_dp_tlv_list._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_dp_tlv_list._entry_ptr.114 = internal global ptr @bnx2x_dp_tlv_list._entry.113, section ".printk_index", align 4
@bnx2x_send_msg2pf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[%s:%d(%s)]done was non zero before message to pf was sent\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2x_send_msg2pf\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_send_msg2pf._entry_ptr = internal global ptr @bnx2x_send_msg2pf._entry, section ".printk_index", align 4
@bnx2x_send_msg2pf._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]detecting channel down. Aborting message\0A\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_send_msg2pf._entry_ptr.119 = internal global ptr @bnx2x_send_msg2pf._entry.117, section ".printk_index", align 4
@bnx2x_send_msg2pf._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c.\00", [28 x i8] zeroinitializer }, align 32
@bnx2x_send_msg2pf._entry_ptr.122 = internal global ptr @bnx2x_send_msg2pf._entry.120, section ".printk_index", align 4
@bnx2x_send_msg2pf._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[%s:%d(%s)]PF response has timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_send_msg2pf._entry_ptr.125 = internal global ptr @bnx2x_send_msg2pf._entry.123, section ".printk_index", align 4
@bnx2x_send_msg2pf._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Got a response from PF\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_send_msg2pf._entry_ptr.128 = internal global ptr @bnx2x_send_msg2pf._entry.126, section ".printk_index", align 4
@bnx2x_search_tlv_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Found TLV with length 0\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_search_tlv_list\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_search_tlv_list._entry_ptr = internal global ptr @bnx2x_search_tlv_list._entry, section ".printk_index", align 4
@bnx2x_search_tlv_list._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]TLV list does not contain %d TLV\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_search_tlv_list._entry_ptr.133 = internal global ptr @bnx2x_search_tlv_list._entry.131, section ".printk_index", align 4
@bnx2x_vfpf_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]done sending [%d] tlv over vf pf channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_vfpf_finalize\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_finalize._entry_ptr = internal global ptr @bnx2x_vfpf_finalize._entry, section ".printk_index", align 4
@bnx2x_vfpf_teardown_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Sending TEARDOWN for queue %d failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_vfpf_teardown_queue\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_teardown_queue._entry_ptr = internal global ptr @bnx2x_vfpf_teardown_queue._entry, section ".printk_index", align 4
@bnx2x_vfpf_teardown_queue._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]TEARDOWN for queue %d failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_vfpf_teardown_queue._entry_ptr.140 = internal global ptr @bnx2x_vfpf_teardown_queue._entry.138, section ".printk_index", align 4
@bnx2x_copy32_vf_dmae._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[%s:%d(%s)]Chip revision does not support VFs\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_copy32_vf_dmae\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_copy32_vf_dmae._entry_ptr = internal global ptr @bnx2x_copy32_vf_dmae._entry, section ".printk_index", align 4
@bnx2x_copy32_vf_dmae._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]DMAE is not ready, can not copy\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_copy32_vf_dmae._entry_ptr.145 = internal global ptr @bnx2x_copy32_vf_dmae._entry.143, section ".printk_index", align 4
@bnx2x_vf_mbx_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 2115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]VF 0x%x lost, not handling the request\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_vf_mbx_request\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_request._entry_ptr = internal global ptr @bnx2x_vf_mbx_request._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_request._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.2, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013[%s:%d(%s)]unknown TLV. type %d length %d vf->state was %d. first 20 bytes of mailbox buffer:\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_request._entry_ptr.150 = internal global ptr @bnx2x_vf_mbx_request._entry.148, section ".printk_index", align 4
@bnx2x_vf_mbx_request._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.2, i32 2171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%x \00", [26 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_request._entry_ptr.153 = internal global ptr @bnx2x_vf_mbx_request._entry.151, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\015[%s:%d(%s)]VF[%d] ACQUIRE: vfdev_info- vf_id %d, vf_os %d resources- n_rxq-%d, n_txq-%d, n_sbs-%d, n_macs-%d, n_vlans-%d, n_mcs-%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_vf_mbx_acquire\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire._entry_ptr = internal global ptr @bnx2x_vf_mbx_acquire._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\015[%s:%d(%s)]VF [%d] - Can't support acquire request due to doorbell mismatch. Please update VM driver\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire._entry_ptr.158 = internal global ptr @bnx2x_vf_mbx_acquire._entry.156, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\015[%s:%d(%s)]VF [%d] - Can't support acquire request since VF requests a FW version which is too new [%02x > %02x]\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire._entry_ptr.161 = internal global ptr @bnx2x_vf_mbx_acquire._entry.159, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]VF[%d] supports long bulletin boards\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire._entry_ptr.164 = internal global ptr @bnx2x_vf_mbx_acquire._entry.162, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]VF[%d] supports vlan filtering\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire._entry_ptr.167 = internal global ptr @bnx2x_vf_mbx_acquire._entry.165, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [192 x i8], [32 x i8] } { [192 x i8] c"\015[%s:%d(%s)]VF[%d] ACQUIRE_RESPONSE: pfdev_info- chip_num=0x%x, db_size=%d, idx_per_sb=%d, pf_cap=0x%x\0Aresources- n_rxq-%d, n_txq-%d, n_sbs-%d, n_macs-%d, n_vlans-%d, n_mcs-%d, fw_ver: '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_vf_mbx_acquire_resp\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire_resp._entry_ptr = internal global ptr @bnx2x_vf_mbx_acquire_resp._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire_resp._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01chw_qids- [ \00", [18 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire_resp._entry_ptr.172 = internal global ptr @bnx2x_vf_mbx_acquire_resp._entry.170, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire_resp._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%d \00", [26 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire_resp._entry_ptr.175 = internal global ptr @bnx2x_vf_mbx_acquire_resp._entry.173, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire_resp._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c], sb_info- [ \00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire_resp._entry_ptr.178 = internal global ptr @bnx2x_vf_mbx_acquire_resp._entry.176, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire_resp._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.169, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c%d:%d \00", [23 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire_resp._entry_ptr.181 = internal global ptr @bnx2x_vf_mbx_acquire_resp._entry.179, section ".printk_index", align 4
@bnx2x_vf_mbx_acquire_resp._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.169, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c]\0A\00", [27 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_acquire_resp._entry_ptr.184 = internal global ptr @bnx2x_vf_mbx_acquire_resp._entry.182, section ".printk_index", align 4
@bnx2x_vf_mbx_resp_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]mailbox vf address hi 0x%x, lo 0x%x, offset 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_vf_mbx_resp_send_msg\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_resp_send_msg._entry_ptr = internal global ptr @bnx2x_vf_mbx_resp_send_msg._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_resp_send_msg._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.186, ptr @.str.2, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[%s:%d(%s)]Failed to copy response body to VF %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_resp_send_msg._entry_ptr.189 = internal global ptr @bnx2x_vf_mbx_resp_send_msg._entry.187, section ".printk_index", align 4
@bnx2x_vf_mbx_resp_send_msg._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.186, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[%s:%d(%s)]Failed to copy response status to VF %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_resp_send_msg._entry_ptr.192 = internal global ptr @bnx2x_vf_mbx_resp_send_msg._entry.190, section ".printk_index", align 4
@bnx2x_vf_mbx_setup_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]vf_qid %d invalid, max queue count is %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_vf_mbx_setup_q\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_setup_q._entry_ptr = internal global ptr @bnx2x_vf_mbx_setup_q._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_set_q_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]VF[%d] Q_FILTERS: queue[%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_vf_mbx_set_q_filters\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_set_q_filters._entry_ptr = internal global ptr @bnx2x_vf_mbx_set_q_filters._entry, section ".printk_index", align 4
@bnx2x_filters_validate_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013[%s:%d(%s)]VF[%d] requested the addition of multiple macs after set_vf_mac ndo was called [%d filters]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_filters_validate_mac\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_filters_validate_mac._entry_ptr = internal global ptr @bnx2x_filters_validate_mac._entry, section ".printk_index", align 4
@bnx2x_filters_validate_mac._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.2, i32 1875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013[%s:%d(%s)]VF[%d] requested the addition of a mac address not matching the one configured by set_vf_mac ndo\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_filters_validate_mac._entry_ptr.201 = internal global ptr @bnx2x_filters_validate_mac._entry.199, section ".printk_index", align 4
@bnx2x_filters_validate_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 1900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013[%s:%d(%s)]VF[%d] attempted to configure vlan but one was already set by Hypervisor. Aborting request\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnx2x_filters_validate_vlan\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_filters_validate_vlan._entry_ptr = internal global ptr @bnx2x_filters_validate_vlan._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_dp_q_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.2, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015[%s:%d(%s)]RX-MASK=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_vf_mbx_dp_q_filters\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_dp_q_filters._entry_ptr = internal global ptr @bnx2x_vf_mbx_dp_q_filters._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_dp_q_filters._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.205, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]MULTICAST=%pM\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_dp_q_filters._entry_ptr.208 = internal global ptr @bnx2x_vf_mbx_dp_q_filters._entry.206, section ".printk_index", align 4
@bnx2x_vf_mbx_dp_q_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]MAC-VLAN[%d] -- flags=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_vf_mbx_dp_q_filter\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_dp_q_filter._entry_ptr = internal global ptr @bnx2x_vf_mbx_dp_q_filter._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_dp_q_filter._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.2, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c, vlan=%d\00", [20 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_dp_q_filter._entry_ptr.213 = internal global ptr @bnx2x_vf_mbx_dp_q_filter._entry.211, section ".printk_index", align 4
@bnx2x_vf_mbx_dp_q_filter._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.210, ptr @.str.2, i32 1704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c, MAC=%pM\00", [20 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_dp_q_filter._entry_ptr.216 = internal global ptr @bnx2x_vf_mbx_dp_q_filter._entry.214, section ".printk_index", align 4
@bnx2x_vf_mbx_dp_q_filter._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.210, ptr @.str.2, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_dp_q_filter._entry_ptr.219 = internal global ptr @bnx2x_vf_mbx_dp_q_filter._entry.217, section ".printk_index", align 4
@bnx2x_vf_mbx_qfilters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]QFILTERS[%d:%d] error: rc %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vf_mbx_qfilters\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_qfilters._entry_ptr = internal global ptr @bnx2x_vf_mbx_qfilters._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_teardown_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.2, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]VF[%d] Q_TEARDOWN: vf_qid=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_vf_mbx_teardown_q\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_teardown_q._entry_ptr = internal global ptr @bnx2x_vf_mbx_teardown_q._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_close_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.2, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]VF[%d] VF_CLOSE\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vf_mbx_close_vf\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_close_vf._entry_ptr = internal global ptr @bnx2x_vf_mbx_close_vf._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_release_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]VF[%d] VF_RELEASE\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_vf_mbx_release_vf\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_release_vf._entry_ptr = internal global ptr @bnx2x_vf_mbx_release_vf._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_update_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.2, i32 1988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013[%s:%d(%s)]failing rss configuration of vf %d due to size mismatch\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_vf_mbx_update_rss\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_update_rss._entry_ptr = internal global ptr @bnx2x_vf_mbx_update_rss._entry, section ".printk_index", align 4
@bnx2x_vf_mbx_update_rss._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.2, i32 2029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[%s:%d(%s)]about to hit a FW assert. aborting...\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_mbx_update_rss._entry_ptr.232 = internal global ptr @bnx2x_vf_mbx_update_rss._entry.230, section ".printk_index", align 4
@bnx2x_validate_tpa_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 2049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013[%s:%d(%s)]TPA update: max_sges received %d, max is %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_validate_tpa_params\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_validate_tpa_params._entry_ptr = internal global ptr @bnx2x_validate_tpa_params._entry, section ".printk_index", align 4
@bnx2x_validate_tpa_params._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.234, ptr @.str.2, i32 2056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[%s:%d(%s)]TPA update: max_tpa_queues received %d, max is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_validate_tpa_params._entry_ptr.237 = internal global ptr @bnx2x_validate_tpa_params._entry.235, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.238 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.239 = internal global [11 x i64] [i64 9, i64 16, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 16, i64 18]
@__sancov_gen_cov_switch_values.240 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 274, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 294, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 299, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 330, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 332, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 355, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 427, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 430, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 474, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 480, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 523, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 526, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 669, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 673, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 759, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 765, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 787, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 838, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 846, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 855, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 874, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 883, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 887, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 895, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 913, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 918, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 936, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 957, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 974, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 979, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1000, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1031, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1034, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2194, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2202, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2245, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2256, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 45, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 207, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 212, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 216, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 100, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 113, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 119, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 148, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 158, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 183, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 187, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 190, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 79, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 87, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 62, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 705, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 712, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1081, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1086, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2114, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2166, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2170, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1403, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1417, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1432, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1446, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1454, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1311, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1326, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1328, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1329, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1331, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1334, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1149, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1170, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1192, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1526, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1931, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1861, i32 5 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1874, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1899, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1719, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1723, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1700, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1702, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1704, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1705, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1831, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1949, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1961, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1972, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 1987, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2029, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2047, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.895 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.896 = private constant [52 x i8] c"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.896, i32 2054, i32 3 }
@llvm.compiler.used = appending global [310 x ptr] [ptr @bnx2x_copy32_vf_dmae._entry, ptr @bnx2x_copy32_vf_dmae._entry.143, ptr @bnx2x_copy32_vf_dmae._entry_ptr, ptr @bnx2x_copy32_vf_dmae._entry_ptr.145, ptr @bnx2x_dp_tlv_list._entry, ptr @bnx2x_dp_tlv_list._entry.113, ptr @bnx2x_dp_tlv_list._entry_ptr, ptr @bnx2x_dp_tlv_list._entry_ptr.114, ptr @bnx2x_filters_validate_mac._entry, ptr @bnx2x_filters_validate_mac._entry.199, ptr @bnx2x_filters_validate_mac._entry_ptr, ptr @bnx2x_filters_validate_mac._entry_ptr.201, ptr @bnx2x_filters_validate_vlan._entry, ptr @bnx2x_filters_validate_vlan._entry_ptr, ptr @bnx2x_get_vf_id._entry, ptr @bnx2x_get_vf_id._entry.104, ptr @bnx2x_get_vf_id._entry.107, ptr @bnx2x_get_vf_id._entry_ptr, ptr @bnx2x_get_vf_id._entry_ptr.106, ptr @bnx2x_get_vf_id._entry_ptr.109, ptr @bnx2x_search_tlv_list._entry, ptr @bnx2x_search_tlv_list._entry.131, ptr @bnx2x_search_tlv_list._entry_ptr, ptr @bnx2x_search_tlv_list._entry_ptr.133, ptr @bnx2x_send_msg2pf._entry, ptr @bnx2x_send_msg2pf._entry.117, ptr @bnx2x_send_msg2pf._entry.120, ptr @bnx2x_send_msg2pf._entry.123, ptr @bnx2x_send_msg2pf._entry.126, ptr @bnx2x_send_msg2pf._entry_ptr, ptr @bnx2x_send_msg2pf._entry_ptr.119, ptr @bnx2x_send_msg2pf._entry_ptr.122, ptr @bnx2x_send_msg2pf._entry_ptr.125, ptr @bnx2x_send_msg2pf._entry_ptr.128, ptr @bnx2x_validate_tpa_params._entry, ptr @bnx2x_validate_tpa_params._entry.235, ptr @bnx2x_validate_tpa_params._entry_ptr, ptr @bnx2x_validate_tpa_params._entry_ptr.237, ptr @bnx2x_vf_mbx._entry, ptr @bnx2x_vf_mbx._entry.97, ptr @bnx2x_vf_mbx._entry_ptr, ptr @bnx2x_vf_mbx._entry_ptr.99, ptr @bnx2x_vf_mbx_acquire._entry, ptr @bnx2x_vf_mbx_acquire._entry.156, ptr @bnx2x_vf_mbx_acquire._entry.159, ptr @bnx2x_vf_mbx_acquire._entry.162, ptr @bnx2x_vf_mbx_acquire._entry.165, ptr @bnx2x_vf_mbx_acquire._entry_ptr, ptr @bnx2x_vf_mbx_acquire._entry_ptr.158, ptr @bnx2x_vf_mbx_acquire._entry_ptr.161, ptr @bnx2x_vf_mbx_acquire._entry_ptr.164, ptr @bnx2x_vf_mbx_acquire._entry_ptr.167, ptr @bnx2x_vf_mbx_acquire_resp._entry, ptr @bnx2x_vf_mbx_acquire_resp._entry.170, ptr @bnx2x_vf_mbx_acquire_resp._entry.173, ptr @bnx2x_vf_mbx_acquire_resp._entry.176, ptr @bnx2x_vf_mbx_acquire_resp._entry.179, ptr @bnx2x_vf_mbx_acquire_resp._entry.182, ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr, ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.172, ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.175, ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.178, ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.181, ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.184, ptr @bnx2x_vf_mbx_close_vf._entry, ptr @bnx2x_vf_mbx_close_vf._entry_ptr, ptr @bnx2x_vf_mbx_dp_q_filter._entry, ptr @bnx2x_vf_mbx_dp_q_filter._entry.211, ptr @bnx2x_vf_mbx_dp_q_filter._entry.214, ptr @bnx2x_vf_mbx_dp_q_filter._entry.217, ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr, ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr.213, ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr.216, ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr.219, ptr @bnx2x_vf_mbx_dp_q_filters._entry, ptr @bnx2x_vf_mbx_dp_q_filters._entry.206, ptr @bnx2x_vf_mbx_dp_q_filters._entry_ptr, ptr @bnx2x_vf_mbx_dp_q_filters._entry_ptr.208, ptr @bnx2x_vf_mbx_qfilters._entry, ptr @bnx2x_vf_mbx_qfilters._entry_ptr, ptr @bnx2x_vf_mbx_release_vf._entry, ptr @bnx2x_vf_mbx_release_vf._entry_ptr, ptr @bnx2x_vf_mbx_request._entry, ptr @bnx2x_vf_mbx_request._entry.148, ptr @bnx2x_vf_mbx_request._entry.151, ptr @bnx2x_vf_mbx_request._entry_ptr, ptr @bnx2x_vf_mbx_request._entry_ptr.150, ptr @bnx2x_vf_mbx_request._entry_ptr.153, ptr @bnx2x_vf_mbx_resp_send_msg._entry, ptr @bnx2x_vf_mbx_resp_send_msg._entry.187, ptr @bnx2x_vf_mbx_resp_send_msg._entry.190, ptr @bnx2x_vf_mbx_resp_send_msg._entry_ptr, ptr @bnx2x_vf_mbx_resp_send_msg._entry_ptr.189, ptr @bnx2x_vf_mbx_resp_send_msg._entry_ptr.192, ptr @bnx2x_vf_mbx_schedule._entry, ptr @bnx2x_vf_mbx_schedule._entry.92, ptr @bnx2x_vf_mbx_schedule._entry_ptr, ptr @bnx2x_vf_mbx_schedule._entry_ptr.94, ptr @bnx2x_vf_mbx_set_q_filters._entry, ptr @bnx2x_vf_mbx_set_q_filters._entry_ptr, ptr @bnx2x_vf_mbx_setup_q._entry, ptr @bnx2x_vf_mbx_setup_q._entry_ptr, ptr @bnx2x_vf_mbx_teardown_q._entry, ptr @bnx2x_vf_mbx_teardown_q._entry_ptr, ptr @bnx2x_vf_mbx_update_rss._entry, ptr @bnx2x_vf_mbx_update_rss._entry.230, ptr @bnx2x_vf_mbx_update_rss._entry_ptr, ptr @bnx2x_vf_mbx_update_rss._entry_ptr.232, ptr @bnx2x_vfpf_acquire._entry, ptr @bnx2x_vfpf_acquire._entry.10, ptr @bnx2x_vfpf_acquire._entry.13, ptr @bnx2x_vfpf_acquire._entry.16, ptr @bnx2x_vfpf_acquire._entry.4, ptr @bnx2x_vfpf_acquire._entry.7, ptr @bnx2x_vfpf_acquire._entry_ptr, ptr @bnx2x_vfpf_acquire._entry_ptr.12, ptr @bnx2x_vfpf_acquire._entry_ptr.15, ptr @bnx2x_vfpf_acquire._entry_ptr.18, ptr @bnx2x_vfpf_acquire._entry_ptr.6, ptr @bnx2x_vfpf_acquire._entry_ptr.9, ptr @bnx2x_vfpf_close_vf._entry, ptr @bnx2x_vfpf_close_vf._entry.31, ptr @bnx2x_vfpf_close_vf._entry_ptr, ptr @bnx2x_vfpf_close_vf._entry_ptr.33, ptr @bnx2x_vfpf_config_mac._entry, ptr @bnx2x_vfpf_config_mac._entry.41, ptr @bnx2x_vfpf_config_mac._entry.44, ptr @bnx2x_vfpf_config_mac._entry_ptr, ptr @bnx2x_vfpf_config_mac._entry_ptr.43, ptr @bnx2x_vfpf_config_mac._entry_ptr.46, ptr @bnx2x_vfpf_config_rss._entry, ptr @bnx2x_vfpf_config_rss._entry.49, ptr @bnx2x_vfpf_config_rss._entry.51, ptr @bnx2x_vfpf_config_rss._entry_ptr, ptr @bnx2x_vfpf_config_rss._entry_ptr.50, ptr @bnx2x_vfpf_config_rss._entry_ptr.53, ptr @bnx2x_vfpf_finalize._entry, ptr @bnx2x_vfpf_finalize._entry_ptr, ptr @bnx2x_vfpf_init._entry, ptr @bnx2x_vfpf_init._entry.26, ptr @bnx2x_vfpf_init._entry_ptr, ptr @bnx2x_vfpf_init._entry_ptr.28, ptr @bnx2x_vfpf_prep._entry, ptr @bnx2x_vfpf_prep._entry_ptr, ptr @bnx2x_vfpf_release._entry, ptr @bnx2x_vfpf_release._entry.21, ptr @bnx2x_vfpf_release._entry_ptr, ptr @bnx2x_vfpf_release._entry_ptr.23, ptr @bnx2x_vfpf_set_mcast._entry, ptr @bnx2x_vfpf_set_mcast._entry.56, ptr @bnx2x_vfpf_set_mcast._entry.59, ptr @bnx2x_vfpf_set_mcast._entry.62, ptr @bnx2x_vfpf_set_mcast._entry.65, ptr @bnx2x_vfpf_set_mcast._entry.68, ptr @bnx2x_vfpf_set_mcast._entry_ptr, ptr @bnx2x_vfpf_set_mcast._entry_ptr.58, ptr @bnx2x_vfpf_set_mcast._entry_ptr.61, ptr @bnx2x_vfpf_set_mcast._entry_ptr.64, ptr @bnx2x_vfpf_set_mcast._entry_ptr.67, ptr @bnx2x_vfpf_set_mcast._entry_ptr.70, ptr @bnx2x_vfpf_setup_q._entry, ptr @bnx2x_vfpf_setup_q._entry.36, ptr @bnx2x_vfpf_setup_q._entry_ptr, ptr @bnx2x_vfpf_setup_q._entry_ptr.38, ptr @bnx2x_vfpf_storm_rx_mode._entry, ptr @bnx2x_vfpf_storm_rx_mode._entry.85, ptr @bnx2x_vfpf_storm_rx_mode._entry.87, ptr @bnx2x_vfpf_storm_rx_mode._entry_ptr, ptr @bnx2x_vfpf_storm_rx_mode._entry_ptr.86, ptr @bnx2x_vfpf_storm_rx_mode._entry_ptr.89, ptr @bnx2x_vfpf_teardown_queue._entry, ptr @bnx2x_vfpf_teardown_queue._entry.138, ptr @bnx2x_vfpf_teardown_queue._entry_ptr, ptr @bnx2x_vfpf_teardown_queue._entry_ptr.140, ptr @bnx2x_vfpf_update_vlan._entry, ptr @bnx2x_vfpf_update_vlan._entry.73, ptr @bnx2x_vfpf_update_vlan._entry.76, ptr @bnx2x_vfpf_update_vlan._entry.78, ptr @bnx2x_vfpf_update_vlan._entry_ptr, ptr @bnx2x_vfpf_update_vlan._entry_ptr.75, ptr @bnx2x_vfpf_update_vlan._entry_ptr.77, ptr @bnx2x_vfpf_update_vlan._entry_ptr.80, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.236], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_acquire._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_acquire._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_acquire._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_acquire._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_acquire._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_release._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_close_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_close_vf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_setup_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_setup_q._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_config_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_config_mac._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_config_mac._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_config_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_config_rss._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_config_rss._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_set_mcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_set_mcast._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_set_mcast._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_set_mcast._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_set_mcast._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_set_mcast._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_update_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_update_vlan._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_update_vlan._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_update_vlan._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_storm_rx_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_storm_rx_mode._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_storm_rx_mode._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_schedule._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_get_vf_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_get_vf_id._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_get_vf_id._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dp_tlv_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_dp_tlv_list._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_send_msg2pf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_send_msg2pf._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_send_msg2pf._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_send_msg2pf._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_send_msg2pf._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_search_tlv_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_search_tlv_list._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_teardown_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfpf_teardown_queue._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_copy32_vf_dmae._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_copy32_vf_dmae._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_request._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_request._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire_resp._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire_resp._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire_resp._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire_resp._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_acquire_resp._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_resp_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_resp_send_msg._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_resp_send_msg._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_setup_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_set_q_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_filters_validate_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_filters_validate_mac._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_filters_validate_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_dp_q_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_dp_q_filters._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_dp_q_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_dp_q_filter._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_dp_q_filter._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_dp_q_filter._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_qfilters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_teardown_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_close_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_release_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_update_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mbx_update_rss._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_validate_tpa_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_validate_tpa_params._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext %tlvtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i16 %tlvtype, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %0)
  %1 = icmp ult i16 %0, 19
  ret i1 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_acquire(ptr noundef %bp, i8 noundef zeroext %tx_count, i8 noundef zeroext %rx_count) local_unnamed_addr #1 align 64 {
entry:
  %vf_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %resp3 = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf_id) #8
  %2 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vf_id, align 4, !annotation !411
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %3 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 1) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %7 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf2pf_mbox, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 2048)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %call = call fastcc i32 @bnx2x_get_vf_id(ptr noundef %bp, ptr noundef nonnull %vf_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %bnx2x_vfpf_prep.exit.out_crit_edge

bnx2x_vfpf_prep.exit.out_crit_edge:               ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %bnx2x_vfpf_prep.exit
  %13 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vf_id, align 4
  %conv = trunc i32 %14 to i8
  %vfdev_info = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vfdev_info to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %vfdev_info, align 8
  %vf_os = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %vf_os to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %vf_os, align 1
  %fp_hsi_ver = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %fp_hsi_ver to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %fp_hsi_ver, align 2
  %resc_request = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %resc_request to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %rx_count, ptr %resc_request, align 4
  %num_txqs = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %num_txqs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %tx_count, ptr %num_txqs, align 1
  %igu_sb_cnt = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 100
  %20 = ptrtoint ptr %igu_sb_cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %igu_sb_cnt, align 2
  %num_sbs = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %num_sbs to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %num_sbs, align 2
  %num_mac_filters = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %num_mac_filters, align 1
  %num_mc_filters = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %num_mc_filters to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %num_mc_filters, align 1
  %num_vlan_filters = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %num_vlan_filters, align 4
  %pf2vf_bulletin_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 15
  %26 = ptrtoint ptr %pf2vf_bulletin_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pf2vf_bulletin_mapping, align 8
  %conv12 = zext i32 %27 to i64
  %bulletin_addr = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %bulletin_addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv12, ptr %bulletin_addr, align 8
  %29 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 17, ptr %add.ptr.i, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i, i32 0, i32 1
  %32 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 4, ptr %length2.i, align 2
  %caps = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %1, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %caps, align 1
  %35 = or i8 %34, 3
  store i8 %35, ptr %caps, align 1
  %36 = load i16, ptr %length2.i.i, align 2
  %add = add i16 %36, 4
  %conv.i475 = zext i16 %add to i32
  %add.ptr.i476 = getelementptr i8, ptr %1, i32 %conv.i475
  %37 = ptrtoint ptr %add.ptr.i476 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 12, ptr %add.ptr.i476, align 2
  %length2.i477 = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i476, i32 0, i32 1
  %38 = ptrtoint ptr %length2.i477 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 8, ptr %length2.i477, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %acquire_resp = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13
  %status46 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 0, i32 1
  %num_txqs118 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 3
  %num_rxqs137 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 2
  %num_sbs156 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 4
  %num_mac_filters175 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 5
  %num_vlan_filters194 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 6
  %num_mc_filters213 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 7
  br label %do.body

do.body:                                          ; preds = %do.end114, %if.end
  %attempts.0529 = phi i32 [ 0, %if.end ], [ %inc, %do.end114 ]
  %39 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %40, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body.do.end39_crit_edge, label %do.end, !prof !412

do.body.do.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %tobool34.not = icmp eq ptr %42, null
  %spec.select = select i1 %tobool34.not, ptr @.str.3, ptr %42
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 274, ptr noundef nonnull %spec.select) #11
  br label %do.end39

do.end39:                                         ; preds = %do.end, %do.body.do.end39_crit_edge
  %43 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call40 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.end39.out_crit_edge

do.end39.out_crit_edge:                           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end43:                                         ; preds = %do.end39
  %45 = call ptr @memcpy(ptr %acquire_resp, ptr %resp3, i32 120)
  %inc = add nuw nsw i32 %attempts.0529, 1
  %46 = ptrtoint ptr %status46 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %status46, align 4
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %if.end43.if.else230_crit_edge [
    i8 1, label %do.body50
    i8 4, label %land.lhs.true
  ]

if.end43.if.else230_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else230

do.body50:                                        ; preds = %if.end43
  %49 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i, align 8
  %and52 = and i32 %50, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body50.if.end277_crit_edge, label %do.end63, !prof !412

do.body50.if.end277_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

do.end63:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %tobool66.not = icmp eq ptr %52, null
  %spec.select471 = select i1 %tobool66.not, ptr @.str.3, ptr %52
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 294, ptr noundef nonnull %spec.select471) #11
  br label %if.end277

land.lhs.true:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attempts.0529)
  %exitcond.not = icmp eq i32 %attempts.0529, 2
  br i1 %exitcond.not, label %land.lhs.true.if.else230_crit_edge, label %do.body87

land.lhs.true.if.else230_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else230

do.body87:                                        ; preds = %land.lhs.true
  %53 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i, align 8
  %and89 = and i32 %54, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body87.do.end114_crit_edge, label %do.end100, !prof !412

do.body87.do.end114_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114

do.end100:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %tobool103.not = icmp eq ptr %56, null
  %spec.select472 = select i1 %tobool103.not, ptr @.str.3, ptr %56
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 300, ptr noundef nonnull %spec.select472) #11
  br label %do.end114

do.end114:                                        ; preds = %do.end100, %do.body87.do.end114_crit_edge
  %57 = ptrtoint ptr %num_txqs to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_txqs, align 1
  %59 = ptrtoint ptr %num_txqs118 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_txqs118, align 1
  %61 = tail call i8 @llvm.umin.i8(i8 %58, i8 %60)
  %62 = ptrtoint ptr %num_txqs to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %num_txqs, align 1
  %63 = ptrtoint ptr %resc_request to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %resc_request, align 4
  %65 = ptrtoint ptr %num_rxqs137 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_rxqs137, align 4
  %67 = tail call i8 @llvm.umin.i8(i8 %64, i8 %66)
  %68 = ptrtoint ptr %resc_request to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %resc_request, align 4
  %69 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_sbs, align 2
  %71 = ptrtoint ptr %num_sbs156 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_sbs156, align 2
  %73 = tail call i8 @llvm.umin.i8(i8 %70, i8 %72)
  %74 = ptrtoint ptr %num_sbs to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %num_sbs, align 2
  %75 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_mac_filters, align 1
  %77 = ptrtoint ptr %num_mac_filters175 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_mac_filters175, align 1
  %79 = tail call i8 @llvm.umin.i8(i8 %76, i8 %78)
  %80 = ptrtoint ptr %num_mac_filters to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %num_mac_filters, align 1
  %81 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_vlan_filters, align 4
  %83 = ptrtoint ptr %num_vlan_filters194 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num_vlan_filters194, align 4
  %85 = tail call i8 @llvm.umin.i8(i8 %82, i8 %84)
  %86 = ptrtoint ptr %num_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %num_vlan_filters, align 4
  %87 = ptrtoint ptr %num_mc_filters to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num_mc_filters, align 1
  %89 = ptrtoint ptr %num_mc_filters213 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num_mc_filters213, align 1
  %91 = tail call i8 @llvm.umin.i8(i8 %88, i8 %90)
  %92 = ptrtoint ptr %num_mc_filters to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %num_mc_filters, align 1
  %93 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vf2pf_mbox, align 4
  %resp229 = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %94, i32 0, i32 1
  %95 = call ptr @memset(ptr %resp229, i32 0, i32 1024)
  br label %do.body

if.else230:                                       ; preds = %land.lhs.true.if.else230_crit_edge, %if.end43.if.else230_crit_edge
  %call231 = tail call fastcc ptr @bnx2x_search_tlv_list(ptr noundef %bp, ptr noundef %resp3, i32 noundef 19)
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %if.else230.do.end257_crit_edge, label %land.lhs.true233

if.else230.do.end257_crit_edge:                   ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end257

land.lhs.true233:                                 ; preds = %if.else230
  %is_supported = getelementptr inbounds %struct.vfpf_fp_hsi_resp_tlv, ptr %call231, i32 0, i32 1
  %96 = ptrtoint ptr %is_supported to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_supported, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool234.not = icmp eq i8 %97, 0
  br i1 %tobool234.not, label %do.end239, label %land.lhs.true233.do.end257_crit_edge

land.lhs.true233.do.end257_crit_edge:             ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end257

do.end239:                                        ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %tobool242.not = icmp eq ptr %99, null
  %spec.select473 = select i1 %tobool242.not, ptr @.str.3, ptr %99
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 330, ptr noundef nonnull %spec.select473) #11
  br label %out

do.end257:                                        ; preds = %land.lhs.true233.do.end257_crit_edge, %if.else230.do.end257_crit_edge
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %tobool260.not = icmp eq ptr %101, null
  %spec.select474 = select i1 %tobool260.not, ptr @.str.3, ptr %101
  %102 = ptrtoint ptr %status46 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %status46, align 4
  %conv271 = zext i8 %103 to i32
  %call272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 333, ptr noundef nonnull %spec.select474, i32 noundef %conv271) #11
  br label %out

if.end277:                                        ; preds = %do.end63, %do.body50.if.end277_crit_edge
  %104 = ptrtoint ptr %resp3 to i32
  call void @__asan_load2_noabort(i32 %104)
  %.pr = load i16, ptr %resp3, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %if.end277
  %105 = phi i16 [ %.pr, %if.end277 ], [ %111, %if.end9.i.do.body.i_crit_edge ]
  %tlvs_list.addr.0.i = phi ptr [ %resp3, %if.end277 ], [ %add.ptr.i484, %if.end9.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %105)
  %cmp.i = icmp eq i16 %105, 17
  br i1 %cmp.i, label %bnx2x_search_tlv_list.exit, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %length.i = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0.i, i32 0, i32 1
  %106 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not.i479 = icmp eq i16 %107, 0
  br i1 %tobool.not.i479, label %do.end.i483, label %if.end9.i

do.end.i483:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %tobool5.not.i = icmp eq ptr %109, null
  %spec.select.i481 = select i1 %tobool5.not.i, ptr @.str.3, ptr %109
  %call.i482 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 79, ptr noundef nonnull %spec.select.i481) #11
  br label %if.end284

if.end9.i:                                        ; preds = %if.end.i
  %conv11.i = zext i16 %107 to i32
  %add.ptr.i484 = getelementptr i8, ptr %tlvs_list.addr.0.i, i32 %conv11.i
  %110 = ptrtoint ptr %add.ptr.i484 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %add.ptr.i484, align 2
  %cmp15.not.i = icmp eq i16 %111, 12
  br i1 %cmp15.not.i, label %do.body18.i, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body18.i:                                      ; preds = %if.end9.i
  %112 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %msg_enable.i, align 8
  %and.i486 = and i32 %113, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i486)
  %tobool19.not.i = icmp eq i32 %and.i486, 0
  br i1 %tobool19.not.i, label %do.body18.i.if.end284_crit_edge, label %do.end25.i, !prof !412

do.body18.i.if.end284_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

do.end25.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %tobool28.not.i = icmp eq ptr %115, null
  %spec.select53.i = select i1 %tobool28.not.i, ptr @.str.3, ptr %115
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef 87, ptr noundef nonnull %spec.select53.i, i32 noundef 17) #11
  br label %if.end284

bnx2x_search_tlv_list.exit:                       ; preds = %do.body.i
  %tobool279.not = icmp eq ptr %tlvs_list.addr.0.i, null
  br i1 %tobool279.not, label %bnx2x_search_tlv_list.exit.if.end284_crit_edge, label %if.then280

bnx2x_search_tlv_list.exit.if.end284_crit_edge:   ; preds = %bnx2x_search_tlv_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

if.then280:                                       ; preds = %bnx2x_search_tlv_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  %phys_port_id = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 198
  %id = getelementptr inbounds %struct.vfpf_port_phys_id_resp_tlv, ptr %tlvs_list.addr.0.i, i32 0, i32 1
  %116 = call ptr @memcpy(ptr %phys_port_id, ptr %id, i32 6)
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags, align 4
  %or283 = or i32 %118, 16777216
  store i32 %or283, ptr %flags, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then280, %bnx2x_search_tlv_list.exit.if.end284_crit_edge, %do.end25.i, %do.body18.i.if.end284_crit_edge, %do.end.i483
  %119 = ptrtoint ptr %resp3 to i32
  call void @__asan_load2_noabort(i32 %119)
  %.pr534 = load i16, ptr %resp3, align 2
  br label %do.body.i490

do.body.i490:                                     ; preds = %if.end9.i502.do.body.i490_crit_edge, %if.end284
  %120 = phi i16 [ %126, %if.end9.i502.do.body.i490_crit_edge ], [ %.pr534, %if.end284 ]
  %tlvs_list.addr.0.i487 = phi ptr [ %add.ptr.i500, %if.end9.i502.do.body.i490_crit_edge ], [ %resp3, %if.end284 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %120)
  %cmp.i489 = icmp eq i16 %120, 19
  br i1 %cmp.i489, label %do.body.i490.bnx2x_search_tlv_list.exit513_crit_edge, label %if.end.i493

do.body.i490.bnx2x_search_tlv_list.exit513_crit_edge: ; preds = %do.body.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_search_tlv_list.exit513

if.end.i493:                                      ; preds = %do.body.i490
  %length.i491 = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0.i487, i32 0, i32 1
  %121 = ptrtoint ptr %length.i491 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %length.i491, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool.not.i492 = icmp eq i16 %122, 0
  br i1 %tobool.not.i492, label %do.end.i498, label %if.end9.i502

do.end.i498:                                      ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  %tobool5.not.i495 = icmp eq ptr %124, null
  %spec.select.i496 = select i1 %tobool5.not.i495, ptr @.str.3, ptr %124
  %call.i497 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 79, ptr noundef nonnull %spec.select.i496) #11
  br label %bnx2x_search_tlv_list.exit513

if.end9.i502:                                     ; preds = %if.end.i493
  %conv11.i499 = zext i16 %122 to i32
  %add.ptr.i500 = getelementptr i8, ptr %tlvs_list.addr.0.i487, i32 %conv11.i499
  %125 = ptrtoint ptr %add.ptr.i500 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %add.ptr.i500, align 2
  %cmp15.not.i501 = icmp eq i16 %126, 12
  br i1 %cmp15.not.i501, label %do.body18.i506, label %if.end9.i502.do.body.i490_crit_edge

if.end9.i502.do.body.i490_crit_edge:              ; preds = %if.end9.i502
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i490

do.body18.i506:                                   ; preds = %if.end9.i502
  %127 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %msg_enable.i, align 8
  %and.i504 = and i32 %128, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i504)
  %tobool19.not.i505 = icmp eq i32 %and.i504, 0
  br i1 %tobool19.not.i505, label %do.body18.i506.bnx2x_search_tlv_list.exit513_crit_edge, label %do.end25.i511, !prof !412

do.body18.i506.bnx2x_search_tlv_list.exit513_crit_edge: ; preds = %do.body18.i506
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_search_tlv_list.exit513

do.end25.i511:                                    ; preds = %do.body18.i506
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  %tobool28.not.i508 = icmp eq ptr %130, null
  %spec.select53.i509 = select i1 %tobool28.not.i508, ptr @.str.3, ptr %130
  %call36.i510 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef 87, ptr noundef nonnull %spec.select53.i509, i32 noundef 19) #11
  br label %bnx2x_search_tlv_list.exit513

bnx2x_search_tlv_list.exit513:                    ; preds = %do.end25.i511, %do.body18.i506.bnx2x_search_tlv_list.exit513_crit_edge, %do.end.i498, %do.body.i490.bnx2x_search_tlv_list.exit513_crit_edge
  %pfdev_info = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 1
  %131 = ptrtoint ptr %pfdev_info to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pfdev_info, align 4
  %and310 = and i32 %132, 65535
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %133 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %common, align 8
  %or311 = or i32 %134, %and310
  store i32 %or311, ptr %common, align 8
  %chip_id314 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 66, i32 11
  %135 = ptrtoint ptr %chip_id314 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or311, ptr %chip_id314, align 4
  %db_size = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 1, i32 3
  %136 = ptrtoint ptr %db_size to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %db_size, align 4
  %db_size317 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 6
  %138 = ptrtoint ptr %db_size317 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %db_size317, align 8
  %int_block = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 8
  %139 = ptrtoint ptr %int_block to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %int_block, align 8
  %chip_port_mode = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 9
  %140 = ptrtoint ptr %chip_port_mode to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %chip_port_mode, align 1
  %igu_dsb_id = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 98
  %141 = ptrtoint ptr %igu_dsb_id to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -1, ptr %igu_dsb_id, align 8
  %mf_ov = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 78
  %142 = ptrtoint ptr %mf_ov to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %mf_ov, align 8
  %mf_mode = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 79
  %143 = ptrtoint ptr %mf_mode to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %mf_mode, align 2
  %flash_size = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 1
  %144 = ptrtoint ptr %flash_size to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %flash_size, align 4
  %flags321 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %145 = ptrtoint ptr %flags321 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags321, align 4
  %or322 = or i32 %146, 57352
  store i32 %or322, ptr %flags321, align 4
  %resc324 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2
  %147 = ptrtoint ptr %num_sbs156 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %num_sbs156, align 2
  %149 = ptrtoint ptr %igu_sb_cnt to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %igu_sb_cnt, align 2
  %150 = ptrtoint ptr %resc324 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %resc324, align 4
  %igu_base_sb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 99
  %152 = ptrtoint ptr %igu_base_sb to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %igu_base_sb, align 1
  %153 = ptrtoint ptr %num_vlan_filters194 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %num_vlan_filters194, align 4
  %conv332 = zext i8 %154 to i16
  %vlan_credit = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 213
  %155 = ptrtoint ptr %vlan_credit to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv332, ptr %vlan_credit, align 2
  %fw_ver = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 169
  %fw_ver336 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 1, i32 2
  %call338 = tail call i32 @strlcpy(ptr noundef %fw_ver, ptr noundef %fw_ver336, i32 noundef 32) #8
  %current_mac_addr = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 9
  %156 = ptrtoint ptr %current_mac_addr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %current_mac_addr, align 4
  %158 = and i32 %157, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.i.not.i = icmp eq i32 %158, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %bnx2x_search_tlv_list.exit513.out_crit_edge

bnx2x_search_tlv_list.exit513.out_crit_edge:      ; preds = %bnx2x_search_tlv_list.exit513
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

is_valid_ether_addr.exit:                         ; preds = %bnx2x_search_tlv_list.exit513
  %add.ptr.i.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 2, i32 9, i32 4
  %159 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %160 to i32
  %or.i.i = or i32 %157, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.out_crit_edge, label %if.then343

is_valid_ether_addr.exit.out_crit_edge:           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then343:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  tail call void @dev_addr_mod(ptr noundef %162, i32 noundef 0, ptr noundef %current_mac_addr, i32 noundef 6) #8
  br label %out

out:                                              ; preds = %if.then343, %is_valid_ether_addr.exit.out_crit_edge, %bnx2x_search_tlv_list.exit513.out_crit_edge, %do.end257, %do.end239, %do.end39.out_crit_edge, %bnx2x_vfpf_prep.exit.out_crit_edge
  %rc.1 = phi i32 [ 0, %if.then343 ], [ 0, %is_valid_ether_addr.exit.out_crit_edge ], [ -11, %bnx2x_vfpf_prep.exit.out_crit_edge ], [ -11, %do.end257 ], [ -11, %do.end239 ], [ 0, %bnx2x_search_tlv_list.exit513.out_crit_edge ], [ %call40, %do.end39.out_crit_edge ]
  %163 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %msg_enable.i, align 8
  %and.i515 = and i32 %164, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i515)
  %tobool.not.i516 = icmp eq i32 %and.i515, 0
  br i1 %tobool.not.i516, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i522, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i522:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i517 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %165 = ptrtoint ptr %dev.i517 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i517, align 4
  %tobool4.not.i518 = icmp eq ptr %166, null
  %spec.select.i519 = select i1 %tobool4.not.i518, ptr @.str.3, ptr %166
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %1, align 4
  %conv.i520 = zext i16 %168 to i32
  %call.i521 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i519, i32 noundef %conv.i520) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i522, %out.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf_id) #8
  ret i32 %rc.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_get_vf_id(ptr nocapture noundef readonly %bp, ptr nocapture noundef writeonly %vf_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %doorbells = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 5
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %tout.0 = phi i32 [ 10, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %doorbells, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !413
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  %4 = and i32 %3, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %do.body38, label %if.end

if.end:                                           ; preds = %do.body
  tail call void @msleep(i32 noundef 100) #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool7.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 208, ptr noundef nonnull %spec.select, i32 noundef %3) #11
  %dec = add nsw i32 %tout.0, -1
  %cmp.not = icmp eq i32 %tout.0, 0
  br i1 %cmp.not, label %do.end23, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool26.not = icmp eq ptr %9, null
  %spec.select82 = select i1 %tobool26.not, ptr @.str.3, ptr %9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103, i32 noundef 212, ptr noundef nonnull %spec.select82, i32 noundef %3) #11
  br label %cleanup

do.body38:                                        ; preds = %do.body
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and39 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.do.end60_crit_edge, label %do.end46, !prof !412

do.body38.do.end60_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

do.end46:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %tobool49.not = icmp eq ptr %13, null
  %spec.select83 = select i1 %tobool49.not, ptr @.str.3, ptr %13
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef 216, ptr noundef nonnull %spec.select83, i32 noundef %3) #11
  br label %do.end60

do.end60:                                         ; preds = %do.end46, %do.body38.do.end60_crit_edge
  %and61 = lshr i32 %3, 9
  %shr = and i32 %and61, 63
  %14 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %vf_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %do.end23
  %retval.0 = phi i32 [ -22, %do.end23 ], [ 0, %do.end60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_dp_tlv_list(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %tlvs_list) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %do.end11.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %do.end11.while.cond_crit_edge ]
  %tlvs_list.addr.0 = phi ptr [ %tlvs_list, %entry ], [ %add.ptr, %do.end11.while.cond_crit_edge ]
  %0 = ptrtoint ptr %tlvs_list.addr.0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tlvs_list.addr.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp.not = icmp eq i16 %1, 12
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and45 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %cmp.not, label %do.body43, label %do.body

do.body:                                          ; preds = %while.cond
  br i1 %tobool46.not, label %do.body.do.end11_crit_edge, label %do.end, !prof !412

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %5
  %conv8 = zext i16 %1 to i32
  %length = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 2
  %conv9 = zext i16 %7 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 101, ptr noundef nonnull %spec.select, i32 noundef %i.0, i32 noundef %conv8, i32 noundef %conv9) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %length12 = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0, i32 0, i32 1
  %8 = ptrtoint ptr %length12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length12, align 2
  %conv13 = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %tlvs_list.addr.0, i32 %conv13
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 51
  br i1 %exitcond, label %do.end28, label %do.end11.while.cond_crit_edge

do.end11.while.cond_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end28:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.112) #8
  br label %cleanup

do.body43:                                        ; preds = %while.cond
  br i1 %tobool46.not, label %do.body43.cleanup_crit_edge, label %do.end56, !prof !412

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end56:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool59.not = icmp eq ptr %11, null
  %spec.select93 = select i1 %tobool59.not, ptr @.str.3, ptr %11
  %length69 = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0, i32 0, i32 1
  %12 = ptrtoint ptr %length69 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length69, align 2
  %conv70 = zext i16 %13 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 120, ptr noundef nonnull %spec.select93, i32 noundef %i.0, i32 noundef 12, i32 noundef %conv70) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.body43.cleanup_crit_edge, %do.end28
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr nocapture noundef %done, i32 noundef %msg_mapping) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 30208
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end26, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool2.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 148, ptr noundef nonnull %spec.select) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 149, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end26:                                         ; preds = %entry
  %call27 = tail call i32 @bnx2x_sample_bulletin(ptr noundef %bp) #8
  %valid_bitmap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %valid_bitmap, align 8
  %and = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool28.not = icmp eq i64 %and, 0
  br i1 %tobool28.not, label %do.body58, label %do.body30

do.body30:                                        ; preds = %if.end26
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and31 = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.end56_crit_edge, label %do.end42, !prof !412

do.body30.do.end56_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

do.end42:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev44, align 4
  %tobool45.not = icmp eq ptr %11, null
  %spec.select171 = select i1 %tobool45.not, ptr @.str.3, ptr %11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116, i32 noundef 158, ptr noundef nonnull %spec.select171) #11
  br label %do.end56

do.end56:                                         ; preds = %do.end42, %do.body30.do.end56_crit_edge
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %done, align 1
  br label %cleanup

do.body58:                                        ; preds = %if.end26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %msg_mapping)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %msg_addr_hi = getelementptr i8, ptr %1, i32 30212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msg_addr_hi, i32 0) #8, !srcloc !416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %trigger = getelementptr i8, ptr %1, i32 30216
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %trigger, i8 1) #8, !srcloc !419
  %msg_enable79 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  br label %land.rhs

land.rhs:                                         ; preds = %do.end96.land.rhs_crit_edge, %do.body58
  %tout.0175 = phi i32 [ 100, %do.body58 ], [ %sub, %do.end96.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool75.not = icmp eq i8 %15, 0
  br i1 %tobool75.not, label %while.body, label %land.rhs.do.body117_crit_edge

land.rhs.do.body117_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

while.body:                                       ; preds = %land.rhs
  tail call void @msleep(i32 noundef 100) #8
  %sub = add nsw i32 %tout.0175, -1
  %16 = ptrtoint ptr %msg_enable79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable79, align 8
  %and80 = and i32 %17, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %while.body.do.end96_crit_edge, label %do.end91, !prof !412

while.body.do.end96_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

do.end91:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #11
  br label %do.end96

do.end96:                                         ; preds = %do.end91, %while.body.do.end96_crit_edge
  %cmp.not = icmp eq i32 %tout.0175, 0
  br i1 %cmp.not, label %while.end, label %do.end96.land.rhs_crit_edge

do.end96.land.rhs_crit_edge:                      ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %do.end96
  %18 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool97.not = icmp eq i8 %.pr, 0
  br i1 %tobool97.not, label %do.end102, label %while.end.do.body117_crit_edge

while.end.do.body117_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

do.end102:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev104 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %19 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev104, align 4
  %tobool105.not = icmp eq ptr %20, null
  %spec.select172 = select i1 %tobool105.not, ptr @.str.3, ptr %20
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.116, i32 noundef 187, ptr noundef nonnull %spec.select172) #11
  br label %cleanup

do.body117:                                       ; preds = %while.end.do.body117_crit_edge, %land.rhs.do.body117_crit_edge
  %21 = ptrtoint ptr %msg_enable79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable79, align 8
  %and119 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %do.body117.cleanup_crit_edge, label %do.end130, !prof !412

do.body117.cleanup_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end130:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %dev132 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %23 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev132, align 4
  %tobool133.not = icmp eq ptr %24, null
  %spec.select173 = select i1 %tobool133.not, ptr @.str.3, ptr %24
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.116, i32 noundef 190, ptr noundef nonnull %spec.select173) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end130, %do.body117.cleanup_crit_edge, %do.end102, %do.end56, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end56 ], [ -11, %do.end102 ], [ 0, %do.end130 ], [ 0, %do.body117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bnx2x_search_tlv_list(ptr nocapture noundef readonly %bp, ptr noundef readonly %tlvs_list, i32 noundef %req_tlv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %entry
  %tlvs_list.addr.0 = phi ptr [ %tlvs_list, %entry ], [ %add.ptr, %if.end9.do.body_crit_edge ]
  %0 = ptrtoint ptr %tlvs_list.addr.0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tlvs_list.addr.0, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %req_tlv)
  %cmp = icmp eq i32 %conv, %req_tlv
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.body
  %length = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 79, ptr noundef nonnull %spec.select) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv11 = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %tlvs_list.addr.0, i32 %conv11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr, align 2
  %cmp15.not = icmp eq i16 %7, 12
  br i1 %cmp15.not, label %do.body18, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body18:                                        ; preds = %if.end9
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body18.cleanup_crit_edge, label %do.end25, !prof !412

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27, align 4
  %tobool28.not = icmp eq ptr %11, null
  %spec.select53 = select i1 %tobool28.not, ptr @.str.3, ptr %11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef 87, ptr noundef nonnull %spec.select53, i32 noundef %req_tlv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end25 ], [ null, %do.body18.cleanup_crit_edge ], [ %tlvs_list.addr.0, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_release(ptr noundef %bp) local_unnamed_addr #1 align 64 {
entry:
  %vf_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf_id) #8
  %2 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vf_id, align 4, !annotation !411
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %3 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 9) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %7 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vf2pf_mbox, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 2048)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 9, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 12, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %call = call fastcc i32 @bnx2x_get_vf_id(ptr noundef %bp, ptr noundef nonnull %vf_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %bnx2x_vfpf_prep.exit.out_crit_edge

bnx2x_vfpf_prep.exit.out_crit_edge:               ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %bnx2x_vfpf_prep.exit
  %13 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vf_id, align 4
  %conv = trunc i32 %14 to i16
  %vf_id4 = getelementptr inbounds %struct.vfpf_release_tlv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %vf_id4 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %vf_id4, align 4
  %16 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i, i32 0, i32 1
  %19 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %20 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call6 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp = icmp eq i8 %23, 1
  br i1 %cmp, label %do.body, label %do.end29

do.body:                                          ; preds = %if.end9
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %25, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body.out_crit_edge, label %do.end, !prof !412

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %tobool20.not = icmp eq ptr %27, null
  %spec.select = select i1 %tobool20.not, ptr @.str.3, ptr %27
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 427, ptr noundef nonnull %spec.select) #11
  br label %out

do.end29:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev31, align 4
  %tobool32.not = icmp eq ptr %29, null
  %spec.select70 = select i1 %tobool32.not, ptr @.str.3, ptr %29
  %conv42 = zext i8 %23 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 431, ptr noundef nonnull %spec.select70, i32 noundef %conv42) #11
  br label %out

out:                                              ; preds = %do.end29, %do.end, %do.body.out_crit_edge, %if.end.out_crit_edge, %bnx2x_vfpf_prep.exit.out_crit_edge
  %rc.0 = phi i32 [ %call6, %if.end.out_crit_edge ], [ 0, %do.end ], [ 0, %do.body.out_crit_edge ], [ -11, %do.end29 ], [ -11, %bnx2x_vfpf_prep.exit.out_crit_edge ]
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 8
  %and.i72 = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i79, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i79:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i74 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %32 = ptrtoint ptr %dev.i74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i74, align 4
  %tobool4.not.i75 = icmp eq ptr %33, null
  %spec.select.i76 = select i1 %tobool4.not.i75, ptr @.str.3, ptr %33
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 4
  %conv.i77 = zext i16 %35 to i32
  %call.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i76, i32 noundef %conv.i77) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i79, %out.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf_id) #8
  ret i32 %rc.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_init(ptr noundef %bp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %2 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 2) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %6 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf2pf_mbox, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 2048)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 168, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %num_ethernet_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %12 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ethernet_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp86.not = icmp eq i32 %13, 0
  br i1 %cmp86.not, label %bnx2x_vfpf_prep.exit.for.end_crit_edge, label %bnx2x_vfpf_prep.exit.for.body_crit_edge

bnx2x_vfpf_prep.exit.for.body_crit_edge:          ; preds = %bnx2x_vfpf_prep.exit
  br label %for.body

bnx2x_vfpf_prep.exit.for.end_crit_edge:           ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %bnx2x_vfpf_prep.exit.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %bnx2x_vfpf_prep.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 8
  %status_blk_mapping = getelementptr %struct.bnx2x_fastpath, ptr %15, i32 %i.087, i32 8
  %16 = ptrtoint ptr %status_blk_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status_blk_mapping, align 8
  %conv = zext i32 %17 to i64
  %arrayidx4 = getelementptr %struct.vfpf_init_tlv, ptr %1, i32 0, i32 1, i32 %i.087
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %arrayidx4, align 8
  %inc = add nuw i32 %i.087, 1
  %19 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ethernet_queues, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %bnx2x_vfpf_prep.exit.for.end_crit_edge
  %fw_stats_data_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 115
  %21 = ptrtoint ptr %fw_stats_data_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_stats_data_mapping, align 4
  %add = add i32 %22, 128
  %conv5 = zext i32 %add to i64
  %stats_addr = getelementptr inbounds %struct.vfpf_init_tlv, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %stats_addr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv5, ptr %stats_addr, align 8
  %stats_stride = getelementptr inbounds %struct.vfpf_init_tlv, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %stats_stride to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 152, ptr %stats_stride, align 8
  %25 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %26 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i, i32 0, i32 1
  %28 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %29 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %for.end
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp10.not = icmp eq i8 %32, 1
  br i1 %cmp10.not, label %do.body23, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %tobool14.not = icmp eq ptr %34, null
  %spec.select = select i1 %tobool14.not, ptr @.str.3, ptr %34
  %conv18 = zext i8 %32 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 475, ptr noundef nonnull %spec.select, i32 noundef %conv18) #11
  br label %out

do.body23:                                        ; preds = %if.end
  %35 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %36, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body23.out_crit_edge, label %do.end30, !prof !412

do.body23.out_crit_edge:                          ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end30:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %37 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev32, align 4
  %tobool33.not = icmp eq ptr %38, null
  %spec.select75 = select i1 %tobool33.not, ptr @.str.3, ptr %38
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 480, ptr noundef nonnull %spec.select75) #11
  br label %out

out:                                              ; preds = %do.end30, %do.body23.out_crit_edge, %do.end, %for.end.out_crit_edge
  %rc.0 = phi i32 [ %call, %for.end.out_crit_edge ], [ -11, %do.end ], [ 0, %do.end30 ], [ 0, %do.body23.out_crit_edge ]
  %39 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i, align 8
  %and.i77 = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i84, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i84:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i79 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %41 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i79, align 4
  %tobool4.not.i80 = icmp eq ptr %42, null
  %spec.select.i81 = select i1 %tobool4.not.i80, ptr @.str.3, ptr %42
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 4
  %conv.i82 = zext i16 %44 to i32
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i81, i32 noundef %conv.i82) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i84, %out.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vfpf_close_vf(ptr noundef %bp) local_unnamed_addr #1 align 64 {
entry:
  %vf_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf_id) #8
  %2 = ptrtoint ptr %vf_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vf_id, align 4, !annotation !411
  %call = call fastcc i32 @bnx2x_get_vf_id(ptr noundef %bp, ptr noundef nonnull %vf_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.free_irq_crit_edge

entry.free_irq_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_irq

for.cond.preheader:                               ; preds = %entry
  %num_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %3 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp108 = icmp sgt i32 %4, 0
  br i1 %cmp108, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %num_cnic_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %vf2pf_mutex.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  %msg_enable.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %vf2pf_mbox_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi i32 [ %4, %for.body.lr.ph ], [ %40, %for.inc.for.body_crit_edge ]
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %num_cnic_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cnic_queues, align 4
  %sub = sub i32 %5, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0109, i32 %sub)
  %cmp6 = icmp eq i32 %i.0109, %sub
  br i1 %cmp6, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %10 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vf2pf_mbox, align 4
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i.i, i32 noundef 0) #8
  %12 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.bnx2x_vfpf_prep.exit.i_crit_edge, label %do.end.i.i, !prof !412

if.else.bnx2x_vfpf_prep.exit.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit.i

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %15, null
  %spec.select.i.i = select i1 %tobool4.not.i.i, ptr @.str.3, ptr %15
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i.i, i32 noundef 7) #11
  br label %bnx2x_vfpf_prep.exit.i

bnx2x_vfpf_prep.exit.i:                           ; preds = %do.end.i.i, %if.else.bnx2x_vfpf_prep.exit.i_crit_edge
  %16 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vf2pf_mbox, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 2048)
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 7, ptr %11, align 2
  %length2.i.i.i = getelementptr inbounds %struct.channel_tlv, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %length2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 12, ptr %length2.i.i.i, align 2
  %resp_msg_offset.i.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %resp_msg_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1024, ptr %resp_msg_offset.i.i, align 4
  %conv.i = trunc i32 %i.0109 to i8
  %vf_qid.i = getelementptr inbounds %struct.vfpf_q_op_tlv, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %vf_qid.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %vf_qid.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 12, ptr %add.ptr.i.i, align 2
  %length2.i.i = getelementptr i8, ptr %11, i32 14
  %24 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8, ptr %length2.i.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %11) #8
  %status.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %11, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %vf2pf_mbox_mapping.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vf2pf_mbox_mapping.i, align 8
  %call.i = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status.i, i32 noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %bnx2x_vfpf_prep.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %tobool6.not.i = icmp eq ptr %28, null
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.3, ptr %28
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 706, ptr noundef nonnull %spec.select.i, i32 noundef %i.0109, i32 noundef %call.i) #11
  br label %out.i

if.end.i:                                         ; preds = %bnx2x_vfpf_prep.exit.i
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp.not.i = icmp eq i8 %30, 1
  br i1 %cmp.not.i, label %if.end.i.out.i_crit_edge, label %do.end19.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  %tobool22.not.i = icmp eq ptr %32, null
  %spec.select1.i = select i1 %tobool22.not.i, ptr @.str.3, ptr %32
  %conv32.i = zext i8 %30 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef 713, ptr noundef nonnull %spec.select1.i, i32 noundef %i.0109, i32 noundef %conv32.i) #11
  br label %out.i

out.i:                                            ; preds = %do.end19.i, %if.end.i.out.i_crit_edge, %do.end.i
  %33 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable.i.i, align 8
  %and.i3.i = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %out.i.bnx2x_vfpf_teardown_queue.exit_crit_edge, label %do.end.i10.i, !prof !412

out.i.bnx2x_vfpf_teardown_queue.exit_crit_edge:   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_teardown_queue.exit

do.end.i10.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %tobool4.not.i6.i = icmp eq ptr %36, null
  %spec.select.i7.i = select i1 %tobool4.not.i6.i, ptr @.str.3, ptr %36
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %11, align 4
  %conv.i8.i = zext i16 %38 to i32
  %call.i9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i7.i, i32 noundef %conv.i8.i) #11
  br label %bnx2x_vfpf_teardown_queue.exit

bnx2x_vfpf_teardown_queue.exit:                   ; preds = %do.end.i10.i, %out.i.bnx2x_vfpf_teardown_queue.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i.i) #8
  br label %for.inc

for.inc:                                          ; preds = %bnx2x_vfpf_teardown_queue.exit, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %39 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_queues, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 86
  %43 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr, align 64
  %45 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bp, align 8
  %index = getelementptr inbounds %struct.bnx2x_fastpath, ptr %46, i32 0, i32 23
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %index, align 2
  %call10 = tail call i32 @bnx2x_vfpf_config_mac(ptr noundef %bp, ptr noundef %44, i8 noundef zeroext %48, i1 noundef zeroext false)
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %49 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %50, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i90 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i90, label %for.end.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i94, !prof !412

for.end.bnx2x_vfpf_prep.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i94:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %tobool4.not.i = icmp eq ptr %52, null
  %spec.select.i92 = select i1 %tobool4.not.i, ptr @.str.3, ptr %52
  %call.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i92, i32 noundef 8) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i94, %for.end.bnx2x_vfpf_prep.exit_crit_edge
  %53 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vf2pf_mbox, align 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 2048)
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 8, ptr %1, align 2
  %length2.i.i96 = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %length2.i.i96 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 12, ptr %length2.i.i96, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %59 = ptrtoint ptr %vf_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vf_id, align 4
  %conv = trunc i32 %60 to i16
  %vf_id11 = getelementptr inbounds %struct.vfpf_close_tlv, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %vf_id11 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv, ptr %vf_id11, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr i8, ptr %1, i32 14
  %63 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %64 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call13 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else23, label %do.end

do.end:                                           ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %tobool18.not = icmp eq ptr %67, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %67
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 523, ptr noundef nonnull %spec.select, i32 noundef %call13) #11
  br label %if.end51

if.else23:                                        ; preds = %bnx2x_vfpf_prep.exit
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp27.not = icmp eq i8 %69, 1
  br i1 %cmp27.not, label %if.else23.if.end51_crit_edge, label %do.end33

if.else23.if.end51_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end33:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %tobool36.not = icmp eq ptr %71, null
  %spec.select89 = select i1 %tobool36.not, ptr @.str.3, ptr %71
  %conv46 = zext i8 %69 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 527, ptr noundef nonnull %spec.select89, i32 noundef %conv46) #11
  br label %if.end51

if.end51:                                         ; preds = %do.end33, %if.else23.if.end51_crit_edge, %do.end
  %72 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_enable.i, align 8
  %and.i99 = and i32 %73, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %if.end51.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i106, !prof !412

if.end51.bnx2x_vfpf_finalize.exit_crit_edge:      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i106:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %tobool4.not.i102 = icmp eq ptr %75, null
  %spec.select.i103 = select i1 %tobool4.not.i102, ptr @.str.3, ptr %75
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %1, align 4
  %conv.i104 = zext i16 %77 to i32
  %call.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i103, i32 noundef %conv.i104) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i106, %if.end51.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  br label %free_irq

free_irq:                                         ; preds = %bnx2x_vfpf_finalize.exit, %entry.free_irq_crit_edge
  tail call void @bnx2x_netif_stop(ptr noundef %bp, i32 noundef 0) #8
  %num_ethernet_queues.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %78 = ptrtoint ptr %num_ethernet_queues.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_ethernet_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp4.not.i = icmp eq i32 %79, 0
  br i1 %cmp4.not.i, label %free_irq.bnx2x_del_all_napi.exit_crit_edge, label %free_irq.for.body.i_crit_edge

free_irq.for.body.i_crit_edge:                    ; preds = %free_irq
  br label %for.body.i

free_irq.bnx2x_del_all_napi.exit_crit_edge:       ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_del_all_napi.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %free_irq.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %free_irq.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bp, align 8
  %napi.i = getelementptr %struct.bnx2x_fastpath, ptr %81, i32 %i.05.i, i32 1
  tail call void @__netif_napi_del(ptr noundef %napi.i) #8
  %inc.i = add nuw i32 %i.05.i, 1
  %82 = ptrtoint ptr %num_ethernet_queues.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_ethernet_queues.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %83
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bnx2x_del_all_napi.exit_crit_edge

for.body.i.bnx2x_del_all_napi.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_del_all_napi.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

bnx2x_del_all_napi.exit:                          ; preds = %for.body.i.bnx2x_del_all_napi.exit_crit_edge, %free_irq.bnx2x_del_all_napi.exit_crit_edge
  tail call void @synchronize_net() #8
  tail call void @bnx2x_free_irq(ptr noundef %bp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf_id) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_config_mac(ptr noundef %bp, ptr nocapture noundef readonly %addr, i8 noundef zeroext %vf_qid, i1 noundef zeroext %set) local_unnamed_addr #1 align 64 {
entry:
  %bulletin = alloca %struct.pf_vf_bulletin_content, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bulletin) #8
  %pf2vf_bulletin = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 14
  %2 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf2vf_bulletin, align 4
  %4 = call ptr @memcpy(ptr %bulletin, ptr %3, i32 48)
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 4) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %9 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vf2pf_mbox, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 2048)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 596, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %flags = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags, align 4
  %vf_qid4 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %vf_qid4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %vf_qid, ptr %vf_qid4, align 4
  %n_mac_vlan_filters = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %n_mac_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %n_mac_vlan_filters, align 1
  %filters = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 6
  %spec.select = select i1 %set, i32 257, i32 1
  %18 = ptrtoint ptr %filters to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %filters, align 4
  %call = tail call i32 @bnx2x_sample_bulletin(ptr noundef %bp) #8
  %mac = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 6, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %mac, ptr %addr, i32 6)
  %20 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i, i32 0, i32 1
  %23 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %24 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call12 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %bnx2x_vfpf_prep.exit
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp149 = icmp eq i8 %27, 2
  br i1 %cmp149, label %do.body26.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body26.lr.ph:                                  ; preds = %while.cond.preheader
  %dev35 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %mac49 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %bulletin, i32 0, i32 4
  br label %do.body26

do.end:                                           ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %tobool16.not = icmp eq ptr %29, null
  %spec.select133 = select i1 %tobool16.not, ptr @.str.3, ptr %29
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 759, ptr noundef nonnull %spec.select133, i32 noundef %call12) #11
  br label %out

do.body26:                                        ; preds = %if.then54.do.body26_crit_edge, %do.body26.lr.ph
  %rc.0150 = phi i32 [ 0, %do.body26.lr.ph ], [ %call63, %if.then54.do.body26_crit_edge ]
  %30 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.body26.do.end47_crit_edge, label %do.end33, !prof !412

do.body26.do.end47_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev35, align 4
  %tobool36.not = icmp eq ptr %33, null
  %spec.select134 = select i1 %tobool36.not, ptr @.str.3, ptr %33
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef 766, ptr noundef nonnull %spec.select134) #11
  br label %do.end47

do.end47:                                         ; preds = %do.end33, %do.body26.do.end47_crit_edge
  %34 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev35, align 4
  call void @dev_addr_mod(ptr noundef %35, i32 noundef 0, ptr noundef %mac49, i32 noundef 6) #8
  %call51 = call i32 @bnx2x_sample_bulletin(ptr noundef %bp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp52 = icmp eq i32 %call51, 1
  br i1 %cmp52, label %if.then54, label %while.endthread-pre-split

if.then54:                                        ; preds = %do.end47
  %36 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev35, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr, align 64
  %40 = call ptr @memcpy(ptr %mac, ptr %39, i32 6)
  %41 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call63 = call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %42)
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status, align 2
  %cmp = icmp eq i8 %44, 2
  br i1 %cmp, label %if.then54.do.body26_crit_edge, label %if.then54.while.end_crit_edge

if.then54.while.end_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then54.do.body26_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

while.endthread-pre-split:                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %45)
  %.pr = load i8, ptr %status, align 2
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.then54.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %rc.0148 = phi i32 [ %rc.0150, %while.endthread-pre-split ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ %call63, %if.then54.while.end_crit_edge ]
  %46 = phi i8 [ %.pr, %while.endthread-pre-split ], [ %27, %while.cond.preheader.while.end_crit_edge ], [ %44, %if.then54.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp68.not = icmp eq i8 %46, 1
  br i1 %cmp68.not, label %while.end.out_crit_edge, label %do.end74

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end74:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev76 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %47 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev76, align 4
  %tobool77.not = icmp eq ptr %48, null
  %spec.select135 = select i1 %tobool77.not, ptr @.str.3, ptr %48
  %conv87 = zext i8 %46 to i32
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40, i32 noundef 787, ptr noundef nonnull %spec.select135, i32 noundef %conv87) #11
  br label %out

out:                                              ; preds = %do.end74, %while.end.out_crit_edge, %do.end
  %rc.1 = phi i32 [ %call12, %do.end ], [ -22, %do.end74 ], [ %rc.0148, %while.end.out_crit_edge ]
  %49 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i, align 8
  %and.i137 = and i32 %50, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool.not.i138 = icmp eq i32 %and.i137, 0
  br i1 %tobool.not.i138, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i144, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i144:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i139 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %51 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i139, align 4
  %tobool4.not.i140 = icmp eq ptr %52, null
  %spec.select.i141 = select i1 %tobool4.not.i140, ptr @.str.3, ptr %52
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %1, align 4
  %conv.i142 = zext i16 %54 to i32
  %call.i143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i141, i32 noundef %conv.i142) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i144, %out.bnx2x_vfpf_finalize.exit_crit_edge
  call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bulletin) #8
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_netif_stop(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_free_irq(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_setup_q(ptr noundef %bp, ptr nocapture noundef readonly %fp, i1 noundef zeroext %is_leading) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %index = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 23
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 2
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 3) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %8 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf2pf_mbox, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 2048)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 96, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %mode = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 9
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %15, label %bnx2x_vfpf_prep.exit.if.end_crit_edge [
    i32 0, label %bnx2x_vfpf_prep.exit.if.end15_crit_edge
    i32 2, label %if.then11
  ]

bnx2x_vfpf_prep.exit.if.end15_crit_edge:          ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

bnx2x_vfpf_prep.exit.if.end_crit_edge:            ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11:                                        ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then11, %bnx2x_vfpf_prep.exit.if.end_crit_edge
  %flags.0 = phi i16 [ 7, %if.then11 ], [ 3, %bnx2x_vfpf_prep.exit.if.end_crit_edge ]
  br label %if.end15

if.end15:                                         ; preds = %if.end, %bnx2x_vfpf_prep.exit.if.end15_crit_edge
  %tpa_agg_size.0 = phi i16 [ -32768, %if.end ], [ 0, %bnx2x_vfpf_prep.exit.if.end15_crit_edge ]
  %flags.1 = phi i16 [ %flags.0, %if.end ], [ 0, %bnx2x_vfpf_prep.exit.if.end15_crit_edge ]
  %17 = or i16 %flags.1, 1024
  %spec.select = select i1 %is_leading, i16 %17, i16 %flags.1
  %18 = or i16 %spec.select, 88
  %vf_qid = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %vf_qid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %3, ptr %vf_qid, align 8
  %param_valid = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %param_valid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %param_valid, align 1
  %rx_comp_mapping = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 17
  %21 = ptrtoint ptr %rx_comp_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_comp_mapping, align 4
  %conv30 = zext i32 %22 to i64
  %rxq = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %rxq to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv30, ptr %rxq, align 8
  %24 = load i32, ptr %rx_comp_mapping, align 4
  %add = add i32 %24, 4096
  %conv32 = zext i32 %add to i64
  %rcq_np_addr = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %rcq_np_addr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv32, ptr %rcq_np_addr, align 8
  %rx_desc_mapping = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 15
  %26 = ptrtoint ptr %rx_desc_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_desc_mapping, align 4
  %conv34 = zext i32 %27 to i64
  %rxq_addr = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %rxq_addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv34, ptr %rxq_addr, align 8
  %rx_sge_mapping = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 19
  %29 = ptrtoint ptr %rx_sge_mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_sge_mapping, align 4
  %conv36 = zext i32 %30 to i64
  %sge_addr = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %sge_addr to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv36, ptr %sge_addr, align 8
  %vf_sb = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %vf_sb to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %3, ptr %vf_sb, align 8
  %sb_index = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %sb_index to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %sb_index, align 1
  %rx_ticks = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 90
  %34 = ptrtoint ptr %rx_ticks to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_ticks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool41.not = icmp eq i16 %35, 0
  br i1 %tobool41.not, label %if.end15.cond.end_crit_edge, label %cond.true

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = zext i16 %35 to i32
  %div = udiv i32 1000000, %conv40
  %phi.cast = trunc i32 %div to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end15.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ 0, %if.end15.cond.end_crit_edge ]
  %hc_rate = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %hc_rate to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %cond, ptr %hc_rate, align 2
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 20
  %39 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mtu, align 4
  %conv46 = trunc i32 %40 to i16
  %mtu48 = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %mtu48 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv46, ptr %mtu48, align 4
  %rx_buf_size = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 6
  %42 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_buf_size, align 8
  %conv49 = trunc i32 %43 to i16
  %buf_sz = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %buf_sz to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv49, ptr %buf_sz, align 2
  %sge_buf_sz = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 11
  %45 = ptrtoint ptr %sge_buf_sz to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 4096, ptr %sge_buf_sz, align 4
  %tpa_agg_sz = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 12
  %46 = ptrtoint ptr %tpa_agg_sz to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %tpa_agg_size.0, ptr %tpa_agg_sz, align 2
  %47 = load ptr, ptr %dev, align 4
  %mtu54 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %mtu54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mtu54, align 4
  %sub = add i32 %49, 4095
  %shr = lshr i32 %sub, 12
  %conv56 = trunc i32 %shr to i8
  %max_sge_pkt = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 13
  %50 = ptrtoint ptr %max_sge_pkt to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv56, ptr %max_sge_pkt, align 8
  %flags69 = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 9
  %51 = ptrtoint ptr %flags69 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %18, ptr %flags69, align 8
  %drop_flags = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 14
  %52 = ptrtoint ptr %drop_flags to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %drop_flags, align 1
  %cache_line_log = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 15
  %53 = ptrtoint ptr %cache_line_log to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %cache_line_log, align 2
  %stat_id = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 1, i32 10
  %54 = ptrtoint ptr %stat_id to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %stat_id, align 2
  %txdata_ptr = getelementptr inbounds %struct.bnx2x_fastpath, ptr %fp, i32 0, i32 11
  %55 = ptrtoint ptr %txdata_ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %txdata_ptr, align 4
  %tx_desc_mapping = getelementptr inbounds %struct.bnx2x_fp_txdata, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %tx_desc_mapping to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_desc_mapping, align 4
  %conv73 = zext i32 %58 to i64
  %txq = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %txq to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv73, ptr %txq, align 8
  %vf_sb75 = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %vf_sb75 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %3, ptr %vf_sb75, align 8
  %sb_index77 = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %sb_index77 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 5, ptr %sb_index77, align 1
  %tx_ticks = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 86
  %62 = ptrtoint ptr %tx_ticks to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tx_ticks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool79.not = icmp eq i16 %63, 0
  br i1 %tobool79.not, label %cond.end.cond.end85_crit_edge, label %cond.true80

cond.end.cond.end85_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end85

cond.true80:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv78 = zext i16 %63 to i32
  %div83 = udiv i32 1000000, %conv78
  %phi.cast211 = trunc i32 %div83 to i16
  br label %cond.end85

cond.end85:                                       ; preds = %cond.true80, %cond.end.cond.end85_crit_edge
  %cond86 = phi i16 [ %phi.cast211, %cond.true80 ], [ 0, %cond.end.cond.end85_crit_edge ]
  %hc_rate89 = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %hc_rate89 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %cond86, ptr %hc_rate89, align 2
  %conv90 = zext i16 %18 to i32
  %flags92 = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 2, i32 4
  %65 = ptrtoint ptr %flags92 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv90, ptr %flags92, align 4
  %traffic_type = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %1, i32 0, i32 2, i32 6
  %66 = ptrtoint ptr %traffic_type to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %traffic_type, align 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr i8, ptr %1, i32 98
  %68 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %69 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool95.not = icmp eq i32 %call, 0
  br i1 %tobool95.not, label %cond.end85.if.end109_crit_edge, label %do.end

cond.end85.if.end109_crit_edge:                   ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

do.end:                                           ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %tobool99.not = icmp eq ptr %72, null
  %spec.select212 = select i1 %tobool99.not, ptr @.str.3, ptr %72
  %conv105 = zext i8 %3 to i32
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 670, ptr noundef nonnull %spec.select212, i32 noundef %conv105) #11
  br label %if.end109

if.end109:                                        ; preds = %do.end, %cond.end85.if.end109_crit_edge
  %73 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp113.not = icmp eq i8 %74, 1
  br i1 %cmp113.not, label %if.end109.if.end137_crit_edge, label %do.end119

if.end109.if.end137_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end119:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %tobool122.not = icmp eq ptr %76, null
  %spec.select213 = select i1 %tobool122.not, ptr @.str.3, ptr %76
  %conv130 = zext i8 %3 to i32
  %conv133 = zext i8 %74 to i32
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef 674, ptr noundef nonnull %spec.select213, i32 noundef %conv130, i32 noundef %conv133) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end119, %if.end109.if.end137_crit_edge
  %rc.0 = phi i32 [ -22, %do.end119 ], [ %call, %if.end109.if.end137_crit_edge ]
  %77 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable.i, align 8
  %and.i215 = and i32 %78, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216 = icmp eq i32 %and.i215, 0
  br i1 %tobool.not.i216, label %if.end137.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i222, !prof !412

if.end137.bnx2x_vfpf_finalize.exit_crit_edge:     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i222:                                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %tobool4.not.i218 = icmp eq ptr %80, null
  %spec.select.i219 = select i1 %tobool4.not.i218, ptr @.str.3, ptr %80
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %1, align 4
  %conv.i220 = zext i16 %82 to i32
  %call.i221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i219, i32 noundef %conv.i220) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i222, %if.end137.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_sample_bulletin(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_config_rss(ptr noundef %bp, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %2 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 16) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %6 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vf2pf_mbox, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 2048)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 16, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 184, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 184
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr i8, ptr %1, i32 186
  %13 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8, ptr %length2.i, align 2
  %ind_table = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 6
  %ind_table5 = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %params, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %ind_table, ptr %ind_table5, i32 128)
  %rss_key = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 7
  %rss_key8 = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %params, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %rss_key, ptr %rss_key8, i32 40)
  %ind_table_size = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %ind_table_size to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %ind_table_size, align 1
  %rss_key_size = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %rss_key_size to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %rss_key_size, align 2
  %rss_result_mask = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %params, i32 0, i32 3
  %18 = ptrtoint ptr %rss_result_mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rss_result_mask, align 4
  %rss_result_mask10 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %rss_result_mask10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %rss_result_mask10, align 4
  %rss_flags = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %params, i32 0, i32 2
  %21 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rss_flags, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %bnx2x_vfpf_prep.exit.if.end_crit_edge, label %if.then

bnx2x_vfpf_prep.exit.if.end_crit_edge:            ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags11 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %rss_flags11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rss_flags11, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %rss_flags11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %bnx2x_vfpf_prep.exit.if.end_crit_edge
  %25 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rss_flags, align 4
  %and13 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end18_crit_edge, label %if.then15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags16 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %rss_flags16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rss_flags16, align 4
  %or17 = or i32 %28, 2
  store i32 %or17, ptr %rss_flags16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %29 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rss_flags, align 4
  %and20 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags23 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %rss_flags23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rss_flags23, align 4
  %or24 = or i32 %32, 4
  store i32 %or24, ptr %rss_flags23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %33 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rss_flags, align 4
  %and27 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags30 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %rss_flags30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rss_flags30, align 4
  %or31 = or i32 %36, 8
  store i32 %or31, ptr %rss_flags30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %37 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rss_flags, align 4
  %and34 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags37 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %rss_flags37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rss_flags37, align 4
  %or38 = or i32 %40, 16
  store i32 %or38, ptr %rss_flags37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %41 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rss_flags, align 4
  %and41 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags44 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %rss_flags44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rss_flags44, align 4
  %or45 = or i32 %44, 32
  store i32 %or45, ptr %rss_flags44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %45 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rss_flags, align 4
  %and48 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end53_crit_edge, label %if.then50

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags51 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %rss_flags51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rss_flags51, align 4
  %or52 = or i32 %48, 64
  store i32 %or52, ptr %rss_flags51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46.if.end53_crit_edge
  %49 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rss_flags, align 4
  %and55 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end60_crit_edge, label %if.then57

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags58 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %rss_flags58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rss_flags58, align 4
  %or59 = or i32 %52, 128
  store i32 %or59, ptr %rss_flags58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge
  %53 = ptrtoint ptr %rss_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rss_flags, align 4
  %and62 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.do.body_crit_edge, label %if.then64

if.end60.do.body_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %rss_flags65 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %rss_flags65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rss_flags65, align 4
  %or66 = or i32 %56, 256
  store i32 %or66, ptr %rss_flags65, align 4
  br label %do.body

do.body:                                          ; preds = %if.then64, %if.end60.do.body_crit_edge
  %57 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable.i, align 8
  %and68 = and i32 %58, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body.do.end80_crit_edge, label %do.end, !prof !412

do.body.do.end80_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end80

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %tobool74.not = icmp eq ptr %60, null
  %spec.select = select i1 %tobool74.not, ptr @.str.3, ptr %60
  %rss_flags77 = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %rss_flags77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rss_flags77, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 838, ptr noundef nonnull %spec.select, i32 noundef %62) #11
  br label %do.end80

do.end80:                                         ; preds = %do.end, %do.body.do.end80_crit_edge
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %63 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call81 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end101, label %do.end87

do.end87:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %65 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev89, align 4
  %tobool90.not = icmp eq ptr %66, null
  %spec.select190 = select i1 %tobool90.not, ptr @.str.3, ptr %66
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.48, i32 noundef 846, ptr noundef nonnull %spec.select190, i32 noundef %call81) #11
  br label %out

if.end101:                                        ; preds = %do.end80
  %67 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp.not = icmp eq i8 %68, 1
  br i1 %cmp.not, label %if.end101.out_crit_edge, label %do.body106

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body106:                                       ; preds = %if.end101
  %69 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable.i, align 8
  %and108 = and i32 %70, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body106.out_crit_edge, label %do.end119, !prof !412

do.body106.out_crit_edge:                         ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end119:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %dev121 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %71 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev121, align 4
  %tobool122.not = icmp eq ptr %72, null
  %spec.select191 = select i1 %tobool122.not, ptr @.str.3, ptr %72
  %conv132 = zext i8 %68 to i32
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef 857, ptr noundef nonnull %spec.select191, i32 noundef %conv132) #11
  br label %out

out:                                              ; preds = %do.end119, %do.body106.out_crit_edge, %if.end101.out_crit_edge, %do.end87
  %73 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable.i, align 8
  %and.i193 = and i32 %74, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool.not.i194 = icmp eq i32 %and.i193, 0
  br i1 %tobool.not.i194, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i200, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i200:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i195 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %75 = ptrtoint ptr %dev.i195 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i195, align 4
  %tobool4.not.i196 = icmp eq ptr %76, null
  %spec.select.i197 = select i1 %tobool4.not.i196, ptr @.str.3, ptr %76
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %1, align 4
  %conv.i198 = zext i16 %78 to i32
  %call.i199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i197, i32 noundef %conv.i198) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i200, %out.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  ret i32 %call81
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_set_mcast(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %vf2pf_mbox = getelementptr i8, ptr %dev, i32 2428
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %state = getelementptr i8, ptr %dev, i32 4824
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %3)
  %cmp.not = icmp eq i16 %3, 12288
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 3432
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !412

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr i8, ptr %dev, i32 3132
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  %tobool10.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %7
  %conv13 = zext i16 %3 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 874, ptr noundef nonnull %spec.select, i32 noundef %conv13) #11
  br label %cleanup

if.end17:                                         ; preds = %entry
  %vf2pf_mutex.i = getelementptr i8, ptr %dev, i32 2336
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr i8, ptr %dev, i32 3432
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

if.end17.bnx2x_vfpf_prep.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %dev, i32 3132
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 4) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %if.end17.bnx2x_vfpf_prep.exit_crit_edge
  %12 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vf2pf_mbox, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 2048)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 596, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %18 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i, align 8
  %and20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %bnx2x_vfpf_prep.exit.do.end45_crit_edge, label %do.end31, !prof !412

bnx2x_vfpf_prep.exit.do.end45_crit_edge:          ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

do.end31:                                         ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr i8, ptr %dev, i32 3132
  %20 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev33, align 4
  %tobool34.not = icmp eq ptr %21, null
  %spec.select232 = select i1 %tobool34.not, ptr @.str.3, ptr %21
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef 883, ptr noundef nonnull %spec.select232, i32 noundef %23) #11
  br label %do.end45

do.end45:                                         ; preds = %do.end31, %bnx2x_vfpf_prep.exit.do.end45_crit_edge
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp46 = icmp sgt i32 %25, 32
  br i1 %cmp46, label %do.body49, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end45
  %26 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0248 = load ptr, ptr %mc, align 4
  %cmp83.not249 = icmp eq ptr %ha.0248, %mc
  br i1 %cmp83.not249, label %for.cond.preheader.for.end_crit_edge, label %do.body87.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body87.lr.ph:                                  ; preds = %for.cond.preheader
  %dev102 = getelementptr i8, ptr %dev, i32 3132
  br label %do.body87

do.body49:                                        ; preds = %do.end45
  %27 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable.i, align 8
  %and51 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body49.out_crit_edge, label %do.end62, !prof !412

do.body49.out_crit_edge:                          ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end62:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr i8, ptr %dev, i32 3132
  %29 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev64, align 4
  %tobool65.not = icmp eq ptr %30, null
  %spec.select233 = select i1 %tobool65.not, ptr @.str.3, ptr %30
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.55, i32 noundef 889, ptr noundef nonnull %spec.select233, i32 noundef 32) #11
  br label %out

do.body87:                                        ; preds = %do.end115.do.body87_crit_edge, %do.body87.lr.ph
  %ha.0251 = phi ptr [ %ha.0248, %do.body87.lr.ph ], [ %ha.0, %do.end115.do.body87_crit_edge ]
  %i.0250 = phi i32 [ 0, %do.body87.lr.ph ], [ %inc, %do.end115.do.body87_crit_edge ]
  %31 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i, align 8
  %and89 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body87.do.end115_crit_edge, label %do.end100, !prof !412

do.body87.do.end115_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

do.end100:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev102, align 4
  %tobool103.not = icmp eq ptr %34, null
  %spec.select234 = select i1 %tobool103.not, ptr @.str.3, ptr %34
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0251, i32 0, i32 2
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.55, i32 noundef 896, ptr noundef nonnull %spec.select234, ptr noundef %addr) #11
  br label %do.end115

do.end115:                                        ; preds = %do.end100, %do.body87.do.end115_crit_edge
  %arrayidx = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 7, i32 %i.0250
  %addr117 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0251, i32 0, i32 2
  %35 = call ptr @memcpy(ptr %arrayidx, ptr %addr117, i32 6)
  %inc = add i32 %i.0250, 1
  %36 = ptrtoint ptr %ha.0251 to i32
  call void @__asan_load4_noabort(i32 %36)
  %ha.0 = load ptr, ptr %ha.0251, align 4
  %cmp83.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp83.not, label %for.end.loopexit, label %do.end115.do.body87_crit_edge

do.end115.do.body87_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

for.end.loopexit:                                 ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = trunc i32 %inc to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %n_multicast = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %n_multicast to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %i.0.lcssa, ptr %n_multicast, align 2
  %flags125 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags125, align 4
  %or = or i32 %39, 2
  store i32 %or, ptr %flags125, align 4
  %vf_qid = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %vf_qid to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %vf_qid, align 4
  %41 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %42 to i32
  %add.ptr.i237 = getelementptr i8, ptr %1, i32 %conv.i
  %43 = ptrtoint ptr %add.ptr.i237 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 12, ptr %add.ptr.i237, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i237, i32 0, i32 1
  %44 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %add.ptr.i, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr i8, ptr %dev, i32 2432
  %45 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call127 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %add.ptr.i, ptr noundef %status, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end147, label %do.end133

do.end133:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev135 = getelementptr i8, ptr %dev, i32 3132
  %47 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev135, align 4
  %tobool136.not = icmp eq ptr %48, null
  %spec.select235 = select i1 %tobool136.not, ptr @.str.3, ptr %48
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.55, i32 noundef 913, ptr noundef nonnull %spec.select235, i32 noundef %call127) #11
  br label %out

if.end147:                                        ; preds = %for.end
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp151.not = icmp eq i8 %50, 1
  br i1 %cmp151.not, label %if.end147.out_crit_edge, label %do.end157

if.end147.out_crit_edge:                          ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end157:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %dev159 = getelementptr i8, ptr %dev, i32 3132
  %51 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev159, align 4
  %tobool160.not = icmp eq ptr %52, null
  %spec.select236 = select i1 %tobool160.not, ptr @.str.3, ptr %52
  %conv170 = zext i8 %50 to i32
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.55, i32 noundef 919, ptr noundef nonnull %spec.select236, i32 noundef %conv170) #11
  br label %out

out:                                              ; preds = %do.end157, %if.end147.out_crit_edge, %do.end133, %do.end62, %do.body49.out_crit_edge
  %rc.0 = phi i32 [ %call127, %do.end133 ], [ -22, %do.end157 ], [ 0, %if.end147.out_crit_edge ], [ -22, %do.end62 ], [ -22, %do.body49.out_crit_edge ]
  %53 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i, align 8
  %and.i239 = and i32 %54, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i239)
  %tobool.not.i240 = icmp eq i32 %and.i239, 0
  br i1 %tobool.not.i240, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i246, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i246:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i241 = getelementptr i8, ptr %dev, i32 3132
  %55 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i241, align 4
  %tobool4.not.i242 = icmp eq ptr %56, null
  %spec.select.i243 = select i1 %tobool4.not.i242, ptr @.str.3, ptr %56
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %conv.i244 = zext i16 %58 to i32
  %call.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i243, i32 noundef %conv.i244) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i246, %out.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  br label %cleanup

cleanup:                                          ; preds = %bnx2x_vfpf_finalize.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bnx2x_vfpf_finalize.exit ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_update_vlan(ptr noundef %bp, i16 noundef zeroext %vid, i8 noundef zeroext %vf_qid, i1 noundef zeroext %add) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %pf_cap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 13, i32 1, i32 1
  %2 = ptrtoint ptr %pf_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pf_cap, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !412

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 936, ptr noundef nonnull %spec.select) #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

if.end14.bnx2x_vfpf_prep.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 4) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %if.end14.bnx2x_vfpf_prep.exit_crit_edge
  %12 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vf2pf_mbox, align 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 2048)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %1, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 596, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %flags = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %flags, align 4
  %vf_qid15 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %vf_qid15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %vf_qid, ptr %vf_qid15, align 4
  %n_mac_vlan_filters = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %n_mac_vlan_filters to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %n_mac_vlan_filters, align 1
  %filters = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 6
  %spec.select135 = select i1 %add, i32 258, i32 2
  %21 = ptrtoint ptr %filters to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select135, ptr %filters, align 4
  %call23 = tail call i32 @bnx2x_sample_bulletin(ptr noundef %bp) #8
  %valid_bitmap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 3
  %22 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %valid_bitmap, align 8
  %and24 = and i64 %23, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %if.end44, label %do.end30

do.end30:                                         ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %24 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev32, align 4
  %tobool33.not = icmp eq ptr %25, null
  %spec.select136 = select i1 %tobool33.not, ptr @.str.3, ptr %25
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef 957, ptr noundef nonnull %spec.select136) #11
  br label %out

if.end44:                                         ; preds = %bnx2x_vfpf_prep.exit
  %vlan_tag = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %1, i32 0, i32 6, i32 0, i32 2
  %26 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %vid, ptr %vlan_tag, align 2
  %27 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %1)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %31 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call48 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end68, label %do.end54

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %33 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev56, align 4
  %tobool57.not = icmp eq ptr %34, null
  %spec.select137 = select i1 %tobool57.not, ptr @.str.3, ptr %34
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.72, i32 noundef 974, ptr noundef nonnull %spec.select137, i32 noundef %call48) #11
  br label %out

if.end68:                                         ; preds = %if.end44
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.not = icmp eq i8 %36, 1
  br i1 %cmp.not, label %if.end68.out_crit_edge, label %do.end76

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %37 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev78, align 4
  %tobool79.not = icmp eq ptr %38, null
  %spec.select138 = select i1 %tobool79.not, ptr @.str.3, ptr %38
  %cond89 = select i1 %add, ptr @.str.81, ptr @.str.82
  %conv90 = zext i16 %vid to i32
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.72, i32 noundef 980, ptr noundef nonnull %spec.select138, ptr noundef nonnull %cond89, i32 noundef %conv90) #11
  br label %out

out:                                              ; preds = %do.end76, %if.end68.out_crit_edge, %do.end54, %do.end30
  %rc.0 = phi i32 [ -22, %do.end30 ], [ %call48, %do.end54 ], [ -22, %do.end76 ], [ 0, %if.end68.out_crit_edge ]
  %39 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i, align 8
  %and.i140 = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool.not.i141, label %out.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i147, !prof !412

out.bnx2x_vfpf_finalize.exit_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i147:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i142 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %41 = ptrtoint ptr %dev.i142 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i142, align 4
  %tobool4.not.i143 = icmp eq ptr %42, null
  %spec.select.i144 = select i1 %tobool4.not.i143, ptr @.str.3, ptr %42
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 4
  %conv.i145 = zext i16 %44 to i32
  %call.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i144, i32 noundef %conv.i145) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i147, %out.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  br label %cleanup

cleanup:                                          ; preds = %bnx2x_vfpf_finalize.exit, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bnx2x_vfpf_finalize.exit ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vfpf_storm_rx_mode(ptr noundef %bp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_mode = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 97
  %0 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mode, align 4
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %2 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf2pf_mbox, align 4
  %vf2pf_mutex.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %vf2pf_mutex.i, i32 noundef 0) #8
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bnx2x_vfpf_prep.exit_crit_edge, label %do.end.i, !prof !412

entry.bnx2x_vfpf_prep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_prep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 46, ptr noundef nonnull %spec.select.i, i32 noundef 4) #11
  br label %bnx2x_vfpf_prep.exit

bnx2x_vfpf_prep.exit:                             ; preds = %do.end.i, %entry.bnx2x_vfpf_prep.exit_crit_edge
  %8 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vf2pf_mbox, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 2048)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %3, align 2
  %length2.i.i = getelementptr inbounds %struct.channel_tlv, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 596, ptr %length2.i.i, align 2
  %resp_msg_offset.i = getelementptr inbounds %struct.vfpf_first_tlv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %resp_msg_offset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1024, ptr %resp_msg_offset.i, align 4
  %14 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable.i, align 8
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %bnx2x_vfpf_prep.exit.do.end10_crit_edge, label %do.end, !prof !412

bnx2x_vfpf_prep.exit.do.end10_crit_edge:          ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %bnx2x_vfpf_prep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool7.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool7.not, ptr @.str.3, ptr %17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef 1000, ptr noundef nonnull %spec.select, i32 noundef %1) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %bnx2x_vfpf_prep.exit.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp16 = icmp eq i32 %1, 3
  %spec.store.select = select i1 %cmp16, i32 51, i32 19
  %spec.store.select.sink = select i1 %cmp, i32 0, i32 %spec.store.select
  %18 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.sink, ptr %18, align 4
  %accept_any_vlan = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 214
  %20 = ptrtoint ptr %accept_any_vlan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %accept_any_vlan, align 8, !range !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %do.end10.if.end26_crit_edge, label %if.then23

do.end10.if.end26_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 4
  %or25 = or i32 %23, 32
  store i32 %or25, ptr %18, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %do.end10.if.end26_crit_edge
  %flags = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or27 = or i32 %25, 4
  store i32 %or27, ptr %flags, align 4
  %vf_qid = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %vf_qid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %vf_qid, align 4
  %27 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %length2.i.i, align 2
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12, ptr %add.ptr.i, align 2
  %length2.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %length2.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %length2.i, align 2
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %3)
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %31 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %call29 = tail call fastcc i32 @bnx2x_send_msg2pf(ptr noundef %bp, ptr noundef %status, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end26.if.end49_crit_edge, label %do.end35

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %33 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev37, align 4
  %tobool38.not = icmp eq ptr %34, null
  %spec.select114 = select i1 %tobool38.not, ptr @.str.3, ptr %34
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.84, i32 noundef 1031, ptr noundef nonnull %spec.select114, i32 noundef %call29) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end35, %if.end26.if.end49_crit_edge
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp52.not = icmp eq i8 %36, 1
  br i1 %cmp52.not, label %if.end49.if.end75_crit_edge, label %do.end58

if.end49.if.end75_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %dev60 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %37 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev60, align 4
  %tobool61.not = icmp eq ptr %38, null
  %spec.select115 = select i1 %tobool61.not, ptr @.str.3, ptr %38
  %conv71 = zext i8 %36 to i32
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.84, i32 noundef 1034, ptr noundef nonnull %spec.select115, i32 noundef %conv71) #11
  br label %if.end75

if.end75:                                         ; preds = %do.end58, %if.end49.if.end75_crit_edge
  %rc.0 = phi i32 [ -22, %do.end58 ], [ %call29, %if.end49.if.end75_crit_edge ]
  %39 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i, align 8
  %and.i117 = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %if.end75.bnx2x_vfpf_finalize.exit_crit_edge, label %do.end.i124, !prof !412

if.end75.bnx2x_vfpf_finalize.exit_crit_edge:      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vfpf_finalize.exit

do.end.i124:                                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i119 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %41 = ptrtoint ptr %dev.i119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i119, align 4
  %tobool4.not.i120 = icmp eq ptr %42, null
  %spec.select.i121 = select i1 %tobool4.not.i120, ptr @.str.3, ptr %42
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %3, align 4
  %conv.i122 = zext i16 %44 to i32
  %call.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 63, ptr noundef nonnull %spec.select.i121, i32 noundef %conv.i122) #11
  br label %bnx2x_vfpf_finalize.exit

bnx2x_vfpf_finalize.exit:                         ; preds = %do.end.i124, %if.end75.bnx2x_vfpf_finalize.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vf2pf_mutex.i) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_enable_mbx(ptr noundef %bp, i8 noundef zeroext %abs_vfid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bnx2x_vf_flr_clnup_epilog(ptr noundef %bp, i8 noundef zeroext %abs_vfid) #8
  %iro_arr.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 21
  %0 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx.i = getelementptr %struct.iro, ptr %1, i32 159
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %abs_vfid to i32
  %m1.i = getelementptr %struct.iro, ptr %1, i32 159, i32 1
  %4 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %m1.i, align 4
  %conv3.i = zext i16 %5 to i32
  %mul.i = mul nuw nsw i32 %conv3.i, %conv.i
  %add.i = add i32 %3, 4259840
  %add4.i = add i32 %add.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  tail call void @arm_heavy_mb() #8
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %6 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add4.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !419
  %8 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx.i9 = getelementptr %struct.iro, ptr %9, i32 160
  %10 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i9, align 4
  %m1.i11 = getelementptr %struct.iro, ptr %9, i32 160, i32 1
  %12 = ptrtoint ptr %m1.i11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %m1.i11, align 4
  %conv3.i12 = zext i16 %13 to i32
  %mul.i13 = mul nuw nsw i32 %conv3.i12, %conv.i
  %add.i14 = add i32 %11, 4259840
  %add4.i15 = add i32 %add.i14, %mul.i13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regview.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %15, i32 %add4.i15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i17, i8 1) #8, !srcloc !419
  tail call void @bnx2x_vf_enable_access(ptr noundef %bp, i8 noundef zeroext %abs_vfid) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_flr_clnup_epilog(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vf_enable_access(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_mbx_schedule(ptr noundef %bp, ptr nocapture noundef readonly %vfpf_event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !412

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %4 = ptrtoint ptr %vfpf_event to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vfpf_event, align 4
  %conv = zext i8 %5 to i32
  %msg_addr_hi = getelementptr inbounds %struct.vf_pf_event_data, ptr %vfpf_event, i32 0, i32 4
  %6 = ptrtoint ptr %msg_addr_hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_addr_hi, align 4
  %msg_addr_lo = getelementptr inbounds %struct.vf_pf_event_data, ptr %vfpf_event, i32 0, i32 3
  %8 = ptrtoint ptr %msg_addr_lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_addr_lo, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 2196, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %7, i32 noundef %9) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %10 = ptrtoint ptr %vfpf_event to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vfpf_event, align 4
  %conv9 = zext i8 %11 to i32
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %12 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vfdb, align 8
  %sriov = getelementptr inbounds %struct.bnx2x_vfdb, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sriov, align 8
  %sub = sub i32 %conv9, %15
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %13, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nr_virtfn, align 2
  %conv12 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv12)
  %cmp = icmp ugt i32 %sub, %conv12
  br i1 %cmp, label %do.end18, label %if.end38

do.end18:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %18 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev20, align 4
  %tobool21.not = icmp eq ptr %19, null
  %spec.select79 = select i1 %tobool21.not, ptr @.str.3, ptr %19
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef 2203, ptr noundef nonnull %spec.select79, i32 noundef %conv9, i32 noundef %conv12) #11
  br label %cleanup

if.end38:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = zext i8 %11 to i16
  %call41 = tail call i32 @bnx2x_vf_idx_by_abs_fid(ptr noundef %bp, i16 noundef zeroext %conv40) #8
  %20 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfdb, align 8
  %event_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %21, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #8
  %msg_addr_hi44 = getelementptr inbounds %struct.vf_pf_event_data, ptr %vfpf_event, i32 0, i32 4
  %22 = ptrtoint ptr %msg_addr_hi44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_addr_hi44, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vfdb, align 8
  %idxprom = and i32 %call41, 255
  %vf_addr_hi = getelementptr %struct.bnx2x_vfdb, ptr %26, i32 0, i32 5, i32 %idxprom, i32 3
  %27 = ptrtoint ptr %vf_addr_hi to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %vf_addr_hi, align 4
  %msg_addr_lo46 = getelementptr inbounds %struct.vf_pf_event_data, ptr %vfpf_event, i32 0, i32 3
  %28 = ptrtoint ptr %msg_addr_lo46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_addr_lo46, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vfdb, align 8
  %vf_addr_lo = getelementptr %struct.bnx2x_vfdb, ptr %32, i32 0, i32 5, i32 %idxprom, i32 2
  %33 = ptrtoint ptr %vf_addr_lo to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %vf_addr_lo, align 8
  %sh_prom = zext i32 %idxprom to i64
  %shl = shl nuw i64 1, %sh_prom
  %34 = load ptr, ptr %vfdb, align 8
  %event_occur = getelementptr inbounds %struct.bnx2x_vfdb, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %event_occur to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %event_occur, align 8
  %or = or i64 %36, %shl
  store i64 %or, ptr %event_occur, align 8
  %37 = load ptr, ptr %vfdb, align 8
  %event_mutex54 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %37, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %event_mutex54) #8
  tail call void @bnx2x_schedule_iov_task(ptr noundef %bp, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_idx_by_abs_fid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_schedule_iov_task(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_mbx(ptr noundef %bp) local_unnamed_addr #1 align 64 {
entry:
  %vf_op_params.i.i = alloca %struct.bnx2x_queue_update_tpa_params, align 4
  %rss.i.i = alloca %struct.bnx2x_config_rss_params, align 4
  %qctor.i.i = alloca %struct.bnx2x_vf_queue_construct_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb1 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end:                                           ; preds = %entry
  %event_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %event_mutex, i32 noundef 0) #8
  %event_occur = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %event_occur to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %event_occur, align 8
  store i64 0, ptr %event_occur, align 8
  tail call void @mutex_unlock(ptr noundef %event_mutex) #8
  %4 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdb1, align 8
  %nr_virtfn116 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %nr_virtfn116 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nr_virtfn116, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp117.not = icmp eq i16 %7, 0
  br i1 %cmp117.not, label %if.end.cleanup65_crit_edge, label %for.body.lr.ph

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

for.body.lr.ph:                                   ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 4
  %12 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 5
  %13 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 6
  %14 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 7
  %15 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 9
  %16 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 10
  %17 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 11
  %18 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, ptr %vf_op_params.i.i, i32 0, i32 12
  %common.i.i357.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %19 = getelementptr inbounds i8, ptr %rss.i.i, i32 140
  %ind_table.i.i = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %rss.i.i, i32 0, i32 4
  %rss_key.i.i = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %rss.i.i, i32 0, i32 5
  %rss_result_mask16.i.i = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %rss.i.i, i32 0, i32 3
  %rss_flags.i.i = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %rss.i.i, i32 0, i32 2
  %ramrod_flags.i.i = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %rss.i.i, i32 0, i32 1
  %prep_qsetup.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1
  %params.i.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor.i.i, i32 0, i32 3
  %flags.i177.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 4
  %txq_params27.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 1
  %hc_rate30.i.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor.i.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %sb_cq_index.i.i = getelementptr inbounds %struct.anon.119, ptr %params.i.i, i32 0, i32 3
  %mf_mode.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 79
  %sb_cq_index44.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 1, i32 2
  %traffic_type47.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 1, i32 4
  %rxq_params56.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2
  %rx.i.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor.i.i, i32 0, i32 3, i32 0, i32 1
  %hc_rate62.i.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %sb_cq_index66.i.i = getelementptr inbounds %struct.anon.120, ptr %rx.i.i, i32 0, i32 3
  %mtu77.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 0, i32 2
  %drop_flags80.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 4
  %sge_map.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 1
  %rcq_map.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 2
  %rcq_np_map.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 3
  %buf_sz91.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 5
  %tpa_agg_sz93.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 8
  %max_sges_pkt.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 10
  %sge_buf_sz96.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 9
  %cache_line_log98.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 14
  %sb_cq_index101.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 15
  %mcast_engine_id.i.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor.i.i, i32 0, i32 1, i32 2, i32 13
  %db_size.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 6
  %flags.i.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %phys_port_id.i.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 198
  %iro_arr.i383.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 21
  %regview.i391.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %5, %for.body.lr.ph ], [ %1063, %for.inc.for.body_crit_edge ]
  %conv119 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %vf_idx.0118 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %for.body.cond.end_crit_edge, label %land.lhs.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %tobool11.not = icmp eq ptr %22, null
  %arrayidx15 = getelementptr %struct.bnx2x_virtf, ptr %22, i32 %conv119
  %spec.select = select i1 %tobool11.not, ptr null, ptr %arrayidx15
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %for.body.cond.end_crit_edge
  %cond = phi ptr [ null, %for.body.cond.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %sh_prom = zext i8 %vf_idx.0118 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %cond.end.for.inc_crit_edge, label %do.body

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %cond.end
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 8
  %and20 = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body.do.end35_crit_edge, label %do.end, !prof !412

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %tobool26.not = icmp eq ptr %26, null
  %spec.select109 = select i1 %tobool26.not, ptr @.str.3, ptr %26
  %vf_addr_hi = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 3
  %27 = ptrtoint ptr %vf_addr_hi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vf_addr_hi, align 4
  %vf_addr_lo = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 2
  %29 = ptrtoint ptr %vf_addr_lo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vf_addr_lo, align 4
  %resp_msg_offset = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 4, i32 1
  %31 = ptrtoint ptr %resp_msg_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resp_msg_offset, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 2248, ptr noundef nonnull %spec.select109, i32 noundef %conv119, i32 noundef %28, i32 noundef %30, i32 noundef %32) #11
  br label %do.end35

do.end35:                                         ; preds = %do.end, %do.body.do.end35_crit_edge
  %msg_mapping = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 1
  %33 = ptrtoint ptr %msg_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_mapping, align 4
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 14
  %35 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %abs_vfid, align 1
  %vf_addr_hi36 = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 3
  %37 = ptrtoint ptr %vf_addr_hi36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vf_addr_hi36, align 4
  %vf_addr_lo37 = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 2
  %39 = ptrtoint ptr %vf_addr_lo37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vf_addr_lo37, align 4
  %call38 = call fastcc i32 @bnx2x_copy32_vf_dmae(ptr noundef %bp, i8 noundef zeroext 1, i32 noundef %34, i8 noundef zeroext %36, i32 noundef %38, i32 noundef %40, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end61, label %cleanup

if.end61:                                         ; preds = %do.end35
  %first_tlv62 = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %42, align 8
  %45 = ptrtoint ptr %first_tlv62 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %first_tlv62, align 4
  %resp = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %42, i32 0, i32 1
  %46 = call ptr @memset(ptr %resp, i32 0, i32 1024)
  %state.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 2
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %48)
  %cmp.i = icmp eq i8 %48, 4
  br i1 %cmp.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.end61
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %50, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end10.i_crit_edge, label %do.end.i, !prof !412

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %tobool6.not.i = icmp eq ptr %52, null
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.3, ptr %52
  %53 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %abs_vfid, align 1
  %conv8.i = zext i8 %54 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, i32 noundef 2115, ptr noundef nonnull %spec.select.i, i32 noundef %conv8.i) #11
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %do.body.i.do.end10.i_crit_edge
  %55 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %abs_vfid, align 1
  %57 = ptrtoint ptr %iro_arr.i383.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iro_arr.i383.i, align 4
  %arrayidx.i.i = getelementptr %struct.iro, ptr %58, i32 159
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i8 %56 to i32
  %m1.i.i = getelementptr %struct.iro, ptr %58, i32 159, i32 1
  %61 = ptrtoint ptr %m1.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %m1.i.i, align 4
  %conv3.i.i = zext i16 %62 to i32
  %mul.i.i = mul nuw nsw i32 %conv3.i.i, %conv.i.i
  %add.i.i = add i32 %60, 4259840
  %add4.i.i = add i32 %add.i.i, %mul.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %regview.i391.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regview.i391.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %add4.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #8, !srcloc !419
  br label %for.inc

if.end13.i:                                       ; preds = %if.end61
  %65 = ptrtoint ptr %first_tlv62 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %first_tlv62, align 4
  %67 = add i16 %66, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %67)
  %68 = icmp ult i16 %67, 19
  br i1 %68, label %if.then15.i, label %do.end35.i

if.then15.i:                                      ; preds = %if.end13.i
  %conv19.i = zext i16 %66 to i32
  call void @bnx2x_lock_vf_pf_channel(ptr noundef %bp, ptr noundef %cond, i32 noundef %conv19.i) #8
  %69 = ptrtoint ptr %first_tlv62 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %first_tlv62, align 4
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.239)
  switch i16 %70, label %if.then15.i.if.end80.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb24.i
    i16 3, label %sw.bb25.i
    i16 4, label %sw.bb26.i
    i16 7, label %sw.bb27.i
    i16 8, label %sw.bb28.i
    i16 9, label %sw.bb29.i
    i16 16, label %sw.bb30.i
    i16 18, label %sw.bb31.i
  ]

if.then15.i.if.end80.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

sw.bb.i:                                          ; preds = %if.then15.i
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx, align 4
  %74 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable, align 8
  %and.i.i = and i32 %75, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.do.end21.i.i_crit_edge, label %do.end.i.i, !prof !412

sw.bb.i.do.end21.i.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  %tobool4.not.i.i = icmp eq ptr %77, null
  %spec.select.i.i = select i1 %tobool4.not.i.i, ptr @.str.3, ptr %77
  %78 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %abs_vfid, align 1
  %conv.i154.i = zext i8 %79 to i32
  %vfdev_info.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 1
  %80 = ptrtoint ptr %vfdev_info.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vfdev_info.i.i, align 8
  %conv6.i.i = zext i8 %81 to i32
  %vf_os.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %vf_os.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vf_os.i.i, align 1
  %conv8.i.i = zext i8 %83 to i32
  %resc_request.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2
  %84 = ptrtoint ptr %resc_request.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %resc_request.i.i, align 4
  %conv9.i.i = zext i8 %85 to i32
  %num_txqs.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %num_txqs.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_txqs.i.i, align 1
  %conv11.i.i = zext i8 %87 to i32
  %num_sbs.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %num_sbs.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %num_sbs.i.i, align 2
  %conv13.i.i = zext i8 %89 to i32
  %num_mac_filters.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2, i32 3
  %90 = ptrtoint ptr %num_mac_filters.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_mac_filters.i.i, align 1
  %conv15.i.i = zext i8 %91 to i32
  %num_vlan_filters.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %num_vlan_filters.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_vlan_filters.i.i, align 4
  %conv17.i.i = zext i8 %93 to i32
  %num_mc_filters.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2, i32 5
  %94 = ptrtoint ptr %num_mc_filters.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_mc_filters.i.i, align 1
  %conv19.i.i = zext i8 %95 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.155, i32 noundef 1409, ptr noundef nonnull %spec.select.i.i, i32 noundef %conv.i154.i, i32 noundef %conv6.i.i, i32 noundef %conv8.i.i, i32 noundef %conv9.i.i, i32 noundef %conv11.i.i, i32 noundef %conv13.i.i, i32 noundef %conv15.i.i, i32 noundef %conv17.i.i, i32 noundef %conv19.i.i) #11
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %do.end.i.i, %sw.bb.i.do.end21.i.i_crit_edge
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load2_noabort(i32 %98)
  %.pr.i.i.i = load i16, ptr %97, align 2
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end9.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.end21.i.i
  %99 = phi i16 [ %105, %if.end9.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %.pr.i.i.i, %do.end21.i.i ]
  %tlvs_list.addr.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.end9.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %97, %do.end21.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %99)
  %cmp.i.i.i.i = icmp eq i16 %99, 17
  br i1 %cmp.i.i.i.i, label %bnx2x_search_tlv_list.exit.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  %length.i.i.i.i = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0.i.i.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %length.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool.not.i.i.i.i = icmp eq i16 %101, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %if.end9.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  %tobool5.not.i.i.i.i = icmp eq ptr %103, null
  %spec.select.i.i.i.i = select i1 %tobool5.not.i.i.i.i, ptr @.str.3, ptr %103
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 79, ptr noundef nonnull %spec.select.i.i.i.i) #11
  br label %if.end.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %conv11.i.i.i.i = zext i16 %101 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tlvs_list.addr.0.i.i.i.i, i32 %conv11.i.i.i.i
  %104 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %cmp15.not.i.i.i.i = icmp eq i16 %105, 12
  br i1 %cmp15.not.i.i.i.i, label %do.body18.i.i.i.i, label %if.end9.i.i.i.i.do.body.i.i.i.i_crit_edge

if.end9.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

do.body18.i.i.i.i:                                ; preds = %if.end9.i.i.i.i
  %106 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_enable, align 8
  %and.i.i.i.i = and i32 %107, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool19.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool19.not.i.i.i.i, label %do.body18.i.i.i.i.if.end.i.i.i_crit_edge, label %do.end25.i.i.i.i, !prof !412

do.body18.i.i.i.i.if.end.i.i.i_crit_edge:         ; preds = %do.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end25.i.i.i.i:                                 ; preds = %do.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %tobool28.not.i.i.i.i = icmp eq ptr %109, null
  %spec.select53.i.i.i.i = select i1 %tobool28.not.i.i.i.i, ptr @.str.3, ptr %109
  %call36.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef 87, ptr noundef nonnull %spec.select53.i.i.i.i, i32 noundef 17) #11
  br label %if.end.i.i.i

bnx2x_search_tlv_list.exit.i.i.i:                 ; preds = %do.body.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %tlvs_list.addr.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %bnx2x_search_tlv_list.exit.i.i.i.if.end.i.i.i_crit_edge, label %bnx2x_search_tlv_list.exit.i.i.i.if.end55.i.i_crit_edge

bnx2x_search_tlv_list.exit.i.i.i.if.end55.i.i_crit_edge: ; preds = %bnx2x_search_tlv_list.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

bnx2x_search_tlv_list.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %bnx2x_search_tlv_list.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %bnx2x_search_tlv_list.exit.i.i.i.if.end.i.i.i_crit_edge, %do.end25.i.i.i.i, %do.body18.i.i.i.i.if.end.i.i.i_crit_edge, %do.end.i.i.i.i
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx, align 4
  %bulletin_addr.i.i.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %bulletin_addr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %bulletin_addr.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool.not.i1.i.i.i = icmp eq i64 %113, 0
  br i1 %tobool.not.i1.i.i.i, label %if.end.i.i.i.if.end55.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i
  %num_mc_filters.i.i.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %111, i32 0, i32 2, i32 5
  %114 = ptrtoint ptr %num_mc_filters.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num_mc_filters.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %115)
  %cmp.i2.i.i.i = icmp eq i8 %115, 32
  br i1 %cmp.i2.i.i.i, label %lor.lhs.false.i.i.i.i.if.end55.i.i_crit_edge, label %bnx2x_vf_mbx_is_windows_vm.exit.i.i.i

lor.lhs.false.i.i.i.i.if.end55.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

bnx2x_vf_mbx_is_windows_vm.exit.i.i.i:            ; preds = %lor.lhs.false.i.i.i.i
  %vf_os.i.i.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %111, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %vf_os.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %vf_os.i.i.i.i, align 1
  %118 = and i8 %117, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %118)
  %cmp4.i.i.i.i = icmp eq i8 %118, 32
  br i1 %cmp4.i.i.i.i, label %bnx2x_vf_mbx_is_windows_vm.exit.i.i.i.if.end55.i.i_crit_edge, label %do.body25.i.i

bnx2x_vf_mbx_is_windows_vm.exit.i.i.i.if.end55.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_is_windows_vm.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

do.body25.i.i:                                    ; preds = %bnx2x_vf_mbx_is_windows_vm.exit.i.i.i
  %119 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %msg_enable, align 8
  %and27.i.i = and i32 %120, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %do.body25.i.i.out.thread.i.i_crit_edge, label %do.end38.i.i, !prof !412

do.body25.i.i.out.thread.i.i_crit_edge:           ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i.i

do.end38.i.i:                                     ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %tobool41.not.i.i = icmp eq ptr %122, null
  %spec.select264.i.i = select i1 %tobool41.not.i.i, ptr @.str.3, ptr %122
  %123 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %abs_vfid, align 1
  %conv50.i.i = zext i8 %124 to i32
  %call51.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.155, i32 noundef 1419, ptr noundef nonnull %spec.select264.i.i, i32 noundef %conv50.i.i) #11
  br label %out.thread.i.i

if.end55.i.i:                                     ; preds = %bnx2x_vf_mbx_is_windows_vm.exit.i.i.i.if.end55.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end55.i.i_crit_edge, %if.end.i.i.i.if.end55.i.i_crit_edge, %bnx2x_search_tlv_list.exit.i.i.i.if.end55.i.i_crit_edge
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx, align 4
  %bulletin_addr.i.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %bulletin_addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %bulletin_addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %128)
  %tobool.not.i268.i.i = icmp eq i64 %128, 0
  br i1 %tobool.not.i268.i.i, label %if.end55.i.i.if.then59.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end55.i.i.if.then59.i.i_crit_edge:             ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end55.i.i
  %num_mc_filters.i.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %126, i32 0, i32 2, i32 5
  %129 = ptrtoint ptr %num_mc_filters.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %num_mc_filters.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %130)
  %cmp.i.i.i = icmp eq i8 %130, 32
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then59.i.i_crit_edge, label %bnx2x_vf_mbx_is_windows_vm.exit.i.i

lor.lhs.false.i.i.i.if.then59.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i.i

bnx2x_vf_mbx_is_windows_vm.exit.i.i:              ; preds = %lor.lhs.false.i.i.i
  %vf_os.i.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %126, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %vf_os.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %vf_os.i.i.i, align 1
  %133 = and i8 %132, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %133)
  %cmp4.i.i.i = icmp eq i8 %133, 32
  br i1 %cmp4.i.i.i, label %bnx2x_vf_mbx_is_windows_vm.exit.i.i.if.then59.i.i_crit_edge, label %if.else.i.i

bnx2x_vf_mbx_is_windows_vm.exit.i.i.if.then59.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_is_windows_vm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59.i.i

if.then59.i.i:                                    ; preds = %bnx2x_vf_mbx_is_windows_vm.exit.i.i.if.then59.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then59.i.i_crit_edge, %if.end55.i.i.if.then59.i.i_crit_edge
  %fp_hsi_ver.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 1, i32 2
  %134 = ptrtoint ptr %fp_hsi_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %fp_hsi_ver.i.i, align 2
  br label %if.end75.i.i

if.else.i.i:                                      ; preds = %bnx2x_vf_mbx_is_windows_vm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %fp_hsi_ver62.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 1, i32 2
  %136 = ptrtoint ptr %fp_hsi_ver62.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %fp_hsi_ver62.i.i, align 2
  %138 = call i8 @llvm.umax.i8(i8 %137, i8 2) #8
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.else.i.i, %if.then59.i.i
  %.sink.i.i = phi i8 [ %138, %if.else.i.i ], [ %135, %if.then59.i.i ]
  %fp_hsi74.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 27
  %139 = ptrtoint ptr %fp_hsi74.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %.sink.i.i, ptr %fp_hsi74.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.sink.i.i)
  %cmp78.i.i = icmp ugt i8 %.sink.i.i, 2
  br i1 %cmp78.i.i, label %do.body81.i.i, label %if.end114.i.i

do.body81.i.i:                                    ; preds = %if.end75.i.i
  %140 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %msg_enable, align 8
  %and83.i.i = and i32 %141, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i.i)
  %tobool84.not.i.i = icmp eq i32 %and83.i.i, 0
  br i1 %tobool84.not.i.i, label %do.body81.i.i.out.thread.i.i_crit_edge, label %do.end94.i.i, !prof !412

do.body81.i.i.out.thread.i.i_crit_edge:           ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i.i

do.end94.i.i:                                     ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  %tobool97.not.i.i = icmp eq ptr %143, null
  %spec.select265.i.i = select i1 %tobool97.not.i.i, ptr @.str.3, ptr %143
  %144 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %abs_vfid, align 1
  %conv106.i.i = zext i8 %145 to i32
  %fp_hsi_ver108.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 1, i32 2
  %146 = ptrtoint ptr %fp_hsi_ver108.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %fp_hsi_ver108.i.i, align 2
  %conv109.i.i = zext i8 %147 to i32
  %call110.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.155, i32 noundef 1435, ptr noundef nonnull %spec.select265.i.i, i32 noundef %conv106.i.i, i32 noundef %conv109.i.i, i32 noundef 2) #11
  br label %out.thread.i.i

if.end114.i.i:                                    ; preds = %if.end75.i.i
  %resc_request115.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 2
  %call116.i.i = call i32 @bnx2x_vf_acquire(ptr noundef %bp, ptr noundef %cond, ptr noundef %resc_request115.i.i) #8
  %bulletin_addr.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 3
  %148 = ptrtoint ptr %bulletin_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %bulletin_addr.i.i, align 8
  %conv117.i.i = trunc i64 %149 to i32
  %bulletin_map.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 8
  %150 = ptrtoint ptr %bulletin_map.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv117.i.i, ptr %bulletin_map.i.i, align 8
  %caps.i.i = getelementptr inbounds %struct.vfpf_acquire_tlv, ptr %73, i32 0, i32 1, i32 3
  %151 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %caps.i.i, align 1
  %153 = and i8 %152, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool121.not.i.i = icmp eq i8 %153, 0
  br i1 %tobool121.not.i.i, label %if.else155.i.i, label %do.body123.i.i

do.body123.i.i:                                   ; preds = %if.end114.i.i
  %154 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %msg_enable, align 8
  %and125.i.i = and i32 %155, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i.i)
  %tobool126.not.i.i = icmp eq i32 %and125.i.i, 0
  br i1 %tobool126.not.i.i, label %do.body123.i.i.do.end152.i.i_crit_edge, label %do.end136.i.i, !prof !412

do.body123.i.i.do.end152.i.i_crit_edge:           ; preds = %do.body123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end152.i.i

do.end136.i.i:                                    ; preds = %do.body123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  %tobool139.not.i.i = icmp eq ptr %157, null
  %spec.select266.i.i = select i1 %tobool139.not.i.i, ptr @.str.3, ptr %157
  %158 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %abs_vfid, align 1
  %conv148.i.i = zext i8 %159 to i32
  %call149.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.155, i32 noundef 1447, ptr noundef nonnull %spec.select266.i.i, i32 noundef %conv148.i.i) #11
  br label %do.end152.i.i

do.end152.i.i:                                    ; preds = %do.end136.i.i, %do.body123.i.i.do.end152.i.i_crit_edge
  %160 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %cond, align 8
  %162 = or i16 %161, 2
  br label %if.end160.i.i

if.else155.i.i:                                   ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %cond, align 8
  %165 = and i16 %164, -3
  br label %if.end160.i.i

if.end160.i.i:                                    ; preds = %if.else155.i.i, %do.end152.i.i
  %storemerge.i.i = phi i16 [ %165, %if.else155.i.i ], [ %162, %do.end152.i.i ]
  %166 = ptrtoint ptr %cond to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %storemerge.i.i, ptr %cond, align 8
  %167 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %caps.i.i, align 1
  %169 = and i8 %168, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool165.not.i.i = icmp eq i8 %169, 0
  br i1 %tobool165.not.i.i, label %if.else201.i.i, label %do.body167.i.i

do.body167.i.i:                                   ; preds = %if.end160.i.i
  %170 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %msg_enable, align 8
  %and169.i.i = and i32 %171, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.i.i)
  %tobool170.not.i.i = icmp eq i32 %and169.i.i, 0
  br i1 %tobool170.not.i.i, label %do.body167.i.i.do.end196.i.i_crit_edge, label %do.end180.i.i, !prof !412

do.body167.i.i.do.end196.i.i_crit_edge:           ; preds = %do.body167.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end196.i.i

do.end180.i.i:                                    ; preds = %do.body167.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 4
  %tobool183.not.i.i = icmp eq ptr %173, null
  %spec.select267.i.i = select i1 %tobool183.not.i.i, ptr @.str.3, ptr %173
  %174 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %abs_vfid, align 1
  %conv192.i.i = zext i8 %175 to i32
  %call193.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.155, i32 noundef 1455, ptr noundef nonnull %spec.select267.i.i, i32 noundef %conv192.i.i) #11
  br label %do.end196.i.i

do.end196.i.i:                                    ; preds = %do.end180.i.i, %do.body167.i.i.do.end196.i.i_crit_edge
  %176 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %cond, align 8
  %178 = or i16 %177, 4
  br label %out.i.i

if.else201.i.i:                                   ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %179 = and i16 %storemerge.i.i, -5
  br label %out.i.i

out.i.i:                                          ; preds = %if.else201.i.i, %do.end196.i.i
  %storemerge309.i.i = phi i16 [ %178, %do.end196.i.i ], [ %179, %if.else201.i.i ]
  %180 = ptrtoint ptr %cond to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %storemerge309.i.i, ptr %cond, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call116.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %call116.i.i, -12
  %spec.select308.i.i = select i1 %switch.selectcmp.i.i.i.i, i32 4, i32 2
  br label %out.thread.i.i

out.thread.i.i:                                   ; preds = %out.i.i, %do.end94.i.i, %do.body81.i.i.out.thread.i.i_crit_edge, %do.end38.i.i, %do.body25.i.i.out.thread.i.i_crit_edge
  %rc.0304.i.i = phi i32 [ %call116.i.i, %out.i.i ], [ -22, %do.body81.i.i.out.thread.i.i_crit_edge ], [ -22, %do.end94.i.i ], [ -95, %do.body25.i.i.out.thread.i.i_crit_edge ], [ -95, %do.end38.i.i ]
  %181 = phi i32 [ %spec.select308.i.i, %out.i.i ], [ 2, %do.body81.i.i.out.thread.i.i_crit_edge ], [ 2, %do.end94.i.i ], [ 2, %do.body25.i.i.out.thread.i.i_crit_edge ], [ 2, %do.end38.i.i ]
  %182 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx, align 4
  %resp1.i305.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1
  %resc2.i306.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0304.i.i)
  %switch.selectcmp2.i.i.i.i = icmp eq i32 %rc.0304.i.i, 0
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i32 1, i32 %181
  %184 = call ptr @memset(ptr %resp1.i305.i.i, i32 0, i32 120)
  %185 = ptrtoint ptr %common.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %common.i.i357.i, align 8
  %pfdev_info.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 1
  %187 = ptrtoint ptr %pfdev_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %pfdev_info.i.i.i, align 4
  %188 = ptrtoint ptr %db_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %db_size.i.i.i, align 8
  %db_size4.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 1, i32 3
  %190 = ptrtoint ptr %db_size4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %db_size4.i.i.i, align 4
  %indices_per_sb.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 1, i32 4
  %191 = ptrtoint ptr %indices_per_sb.i.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 8, ptr %indices_per_sb.i.i.i, align 2
  %pf_cap.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 1, i32 1
  %192 = ptrtoint ptr %pf_cap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 29, ptr %pf_cap.i.i.i, align 4
  %fw_ver.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 1, i32 2
  call void @bnx2x_fill_fw_str(ptr noundef %bp, ptr noundef %fw_ver.i.i.i, i32 noundef 32) #8
  %193 = zext i32 %switch.select3.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %switch.select3.i.i.i.i, label %out.thread.i.i.do.body.i.i.i_crit_edge [
    i32 4, label %out.thread.i.i.if.then.i.i.i_crit_edge
    i32 1, label %out.thread.i.i.if.then.i.i.i_crit_edge153
  ]

out.thread.i.i.if.then.i.i.i_crit_edge153:        ; preds = %out.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

out.thread.i.i.if.then.i.i.i_crit_edge:           ; preds = %out.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

out.thread.i.i.do.body.i.i.i_crit_edge:           ; preds = %out.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

if.then.i.i.i:                                    ; preds = %out.thread.i.i.if.then.i.i.i_crit_edge, %out.thread.i.i.if.then.i.i.i_crit_edge153
  %alloc_resc.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9
  %194 = ptrtoint ptr %alloc_resc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %alloc_resc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i270.i.i = icmp eq i8 %195, 0
  br i1 %tobool.not.i270.i.i, label %cond.false.i.i.i, label %if.then.i.i.i.cond.end.i.i.i_crit_edge

if.then.i.i.i.cond.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i.i.i = call zeroext i8 @bnx2x_vf_max_queue_cnt(ptr noundef %bp, ptr noundef %cond) #8
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %if.then.i.i.i.cond.end.i.i.i_crit_edge
  %cond.in.i.i.i = phi i8 [ %call14.i.i.i, %cond.false.i.i.i ], [ %195, %if.then.i.i.i.cond.end.i.i.i_crit_edge ]
  %num_rxqs17.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 2
  %196 = ptrtoint ptr %num_rxqs17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %cond.in.i.i.i, ptr %num_rxqs17.i.i.i, align 1
  %num_txqs.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9, i32 1
  %197 = ptrtoint ptr %num_txqs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %num_txqs.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool20.not.i.i.i = icmp eq i8 %198, 0
  br i1 %tobool20.not.i.i.i, label %cond.false22.i.i.i, label %cond.end.i.i.i.cond.end25.i.i.i_crit_edge

cond.end.i.i.i.cond.end25.i.i.i_crit_edge:        ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end25.i.i.i

cond.false22.i.i.i:                               ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i.i.i = call zeroext i8 @bnx2x_vf_max_queue_cnt(ptr noundef %bp, ptr noundef %cond) #8
  br label %cond.end25.i.i.i

cond.end25.i.i.i:                                 ; preds = %cond.false22.i.i.i, %cond.end.i.i.i.cond.end25.i.i.i_crit_edge
  %cond26.in.i.i.i = phi i8 [ %call23.i.i.i, %cond.false22.i.i.i ], [ %198, %cond.end.i.i.i.cond.end25.i.i.i_crit_edge ]
  %num_txqs28.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 3
  %199 = ptrtoint ptr %num_txqs28.i.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %cond26.in.i.i.i, ptr %num_txqs28.i.i.i, align 1
  %num_sbs.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9, i32 2
  %200 = ptrtoint ptr %num_sbs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %num_sbs.i.i.i, align 2
  %num_sbs30.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 4
  %202 = ptrtoint ptr %num_sbs30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %num_sbs30.i.i.i, align 1
  %num_mac_filters.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9, i32 3
  %203 = ptrtoint ptr %num_mac_filters.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %num_mac_filters.i.i.i, align 1
  %num_mac_filters32.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 5
  %205 = ptrtoint ptr %num_mac_filters32.i.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %num_mac_filters32.i.i.i, align 1
  %num_vlan_filters.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9, i32 4
  %206 = ptrtoint ptr %num_vlan_filters.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %num_vlan_filters.i.i.i, align 4
  %num_vlan_filters34.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 6
  %208 = ptrtoint ptr %num_vlan_filters34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %num_vlan_filters34.i.i.i, align 1
  %num_mc_filters.i271.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 7
  %209 = ptrtoint ptr %num_mc_filters.i271.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %num_mc_filters.i271.i.i, align 1
  br i1 %switch.selectcmp2.i.i.i.i, label %if.then38.i.i.i, label %cond.end25.i.i.i.do.body.i.i.i_crit_edge

cond.end25.i.i.i.do.body.i.i.i_crit_edge:         ; preds = %cond.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

if.then38.i.i.i:                                  ; preds = %cond.end25.i.i.i
  %210 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %vfdb1, align 8
  %bulletin_dma.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %211, i32 0, i32 6
  %212 = ptrtoint ptr %bulletin_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bulletin_dma.i.i.i, align 8
  %index.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %214 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %index.i.i.i, align 8
  %conv39.i.i.i = zext i8 %215 to i32
  %216 = ptrtoint ptr %alloc_resc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %alloc_resc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %cmp43375.not.i.i.i = icmp eq i8 %217, 0
  br i1 %cmp43375.not.i.i.i, label %if.then38.i.i.i.for.cond48.preheader.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then38.i.i.i.for.cond48.preheader.i.i.i_crit_edge: ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond48.preheader.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then38.i.i.i
  %vfqs.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 12
  %igu_base_id.i.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 11
  br label %for.body.i.i.i

for.cond48.preheader.i.i.i:                       ; preds = %for.body.i.i.i.for.cond48.preheader.i.i.i_crit_edge, %if.then38.i.i.i.for.cond48.preheader.i.i.i_crit_edge
  %218 = ptrtoint ptr %num_sbs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %num_sbs.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %cmp52378.not.i.i.i = icmp eq i8 %219, 0
  br i1 %cmp52378.not.i.i.i, label %for.cond48.preheader.i.i.i.for.end64.i.i.i_crit_edge, label %for.body54.lr.ph.i.i.i

for.cond48.preheader.i.i.i.for.end64.i.i.i_crit_edge: ; preds = %for.cond48.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64.i.i.i

for.body54.lr.ph.i.i.i:                           ; preds = %for.cond48.preheader.i.i.i
  %igu_base_id.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 11
  br label %for.body54.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0376.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %220 = ptrtoint ptr %vfqs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %vfqs.i.i.i.i, align 4
  %222 = ptrtoint ptr %igu_base_id.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %igu_base_id.i.i.i.i.i, align 1
  %index.i.i.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %221, i32 %i.0376.i.i.i, i32 7
  %224 = ptrtoint ptr %index.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %index.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = trunc i16 %225 to i8
  %add.i.i.i.i.i = add i8 %223, %conv1.i.i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 1, i32 %i.0376.i.i.i
  %226 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %add.i.i.i.i.i, ptr %arrayidx.i.i.i, align 1
  %inc.i.i.i = add nuw nsw i32 %i.0376.i.i.i, 1
  %227 = ptrtoint ptr %alloc_resc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %alloc_resc.i.i.i, align 4
  %conv42.i.i.i = zext i8 %228 to i32
  %cmp43.i.i.i = icmp ult i32 %inc.i.i.i, %conv42.i.i.i
  br i1 %cmp43.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.cond48.preheader.i.i.i_crit_edge

for.body.i.i.i.for.cond48.preheader.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond48.preheader.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body54.i.i.i:                                 ; preds = %for.body54.i.i.i.for.body54.i.i.i_crit_edge, %for.body54.lr.ph.i.i.i
  %i.1379.i.i.i = phi i32 [ 0, %for.body54.lr.ph.i.i.i ], [ %inc63.i.i.i, %for.body54.i.i.i.for.body54.i.i.i_crit_edge ]
  %229 = ptrtoint ptr %igu_base_id.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %igu_base_id.i.i.i.i, align 1
  %conv1.i.i.i.i = trunc i32 %i.1379.i.i.i to i8
  %add.i.i.i.i = add i8 %230, %conv1.i.i.i.i
  %arrayidx57.i.i.i = getelementptr [16 x %struct.hw_sb_info], ptr %resc2.i306.i.i, i32 0, i32 %i.1379.i.i.i
  %231 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %add.i.i.i.i, ptr %arrayidx57.i.i.i, align 1
  %232 = load i8, ptr %igu_base_id.i.i.i.i, align 1
  %add.i.i347.i.i.i = add i8 %232, %conv1.i.i.i.i
  %sb_qid.i.i.i = getelementptr [16 x %struct.hw_sb_info], ptr %resc2.i306.i.i, i32 0, i32 %i.1379.i.i.i, i32 1
  %233 = ptrtoint ptr %sb_qid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %add.i.i347.i.i.i, ptr %sb_qid.i.i.i, align 1
  %inc63.i.i.i = add nuw nsw i32 %i.1379.i.i.i, 1
  %234 = ptrtoint ptr %num_sbs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %num_sbs.i.i.i, align 2
  %conv51.i.i.i = zext i8 %235 to i32
  %cmp52.i.i.i = icmp ult i32 %inc63.i.i.i, %conv51.i.i.i
  br i1 %cmp52.i.i.i, label %for.body54.i.i.i.for.body54.i.i.i_crit_edge, label %for.body54.i.i.i.for.end64.i.i.i_crit_edge

for.body54.i.i.i.for.end64.i.i.i_crit_edge:       ; preds = %for.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64.i.i.i

for.body54.i.i.i.for.body54.i.i.i_crit_edge:      ; preds = %for.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.i.i.i

for.end64.i.i.i:                                  ; preds = %for.body54.i.i.i.for.end64.i.i.i_crit_edge, %for.cond48.preheader.i.i.i.for.end64.i.i.i_crit_edge
  %valid_bitmap.i.i.i = getelementptr %struct.pf_vf_bulletin_content, ptr %213, i32 %conv39.i.i.i, i32 3
  %236 = ptrtoint ptr %valid_bitmap.i.i.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %valid_bitmap.i.i.i, align 8
  %and.i.i.i = and i64 %237, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool65.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool65.not.i.i.i, label %for.end64.i.i.i.do.body.i.i.i_crit_edge, label %if.then66.i.i.i

for.end64.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %for.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

if.then66.i.i.i:                                  ; preds = %for.end64.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %current_mac_addr.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 9
  %mac.i.i.i = getelementptr %struct.pf_vf_bulletin_content, ptr %213, i32 %conv39.i.i.i, i32 4
  %238 = call ptr @memcpy(ptr %current_mac_addr.i.i.i, ptr %mac.i.i.i, i32 6)
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then66.i.i.i, %for.end64.i.i.i.do.body.i.i.i_crit_edge, %cond.end25.i.i.i.do.body.i.i.i_crit_edge, %out.thread.i.i.do.body.i.i.i_crit_edge
  %239 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %msg_enable, align 8
  %and71.i.i.i = and i32 %240, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i.i)
  %tobool72.not.i.i.i = icmp eq i32 %and71.i.i.i, 0
  br i1 %tobool72.not.i.i.i, label %do.body.i.i.i.do.body114.i.i.i_crit_edge, label %do.end.i.i.i, !prof !412

do.body.i.i.i.do.body114.i.i.i_crit_edge:         ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body114.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  %tobool77.not.i.i.i = icmp eq ptr %242, null
  %spec.select.i.i.i = select i1 %tobool77.not.i.i.i, ptr @.str.3, ptr %242
  %243 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %abs_vfid, align 1
  %conv84.i.i.i = zext i8 %244 to i32
  %245 = ptrtoint ptr %pfdev_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %pfdev_info.i.i.i, align 4
  %247 = ptrtoint ptr %db_size4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %db_size4.i.i.i, align 4
  %conv89.i.i.i = zext i16 %248 to i32
  %249 = ptrtoint ptr %indices_per_sb.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %indices_per_sb.i.i.i, align 2
  %conv92.i.i.i = zext i8 %250 to i32
  %251 = ptrtoint ptr %pf_cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %pf_cap.i.i.i, align 4
  %num_rxqs95.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 2
  %253 = ptrtoint ptr %num_rxqs95.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %num_rxqs95.i.i.i, align 1
  %conv96.i.i.i = zext i8 %254 to i32
  %num_txqs97.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 3
  %255 = ptrtoint ptr %num_txqs97.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %num_txqs97.i.i.i, align 1
  %conv98.i.i.i = zext i8 %256 to i32
  %num_sbs99.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 4
  %257 = ptrtoint ptr %num_sbs99.i.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %num_sbs99.i.i.i, align 1
  %conv100.i.i.i = zext i8 %258 to i32
  %num_mac_filters101.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 5
  %259 = ptrtoint ptr %num_mac_filters101.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %num_mac_filters101.i.i.i, align 1
  %conv102.i.i.i = zext i8 %260 to i32
  %num_vlan_filters103.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 6
  %261 = ptrtoint ptr %num_vlan_filters103.i.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %num_vlan_filters103.i.i.i, align 1
  %conv104.i.i.i = zext i8 %262 to i32
  %num_mc_filters105.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 7
  %263 = ptrtoint ptr %num_mc_filters105.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %num_mc_filters105.i.i.i, align 1
  %conv106.i.i.i = zext i8 %264 to i32
  %call110.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef 1324, ptr noundef nonnull %spec.select.i.i.i, i32 noundef %conv84.i.i.i, i32 noundef %246, i32 noundef %conv89.i.i.i, i32 noundef %conv92.i.i.i, i32 noundef %252, i32 noundef %conv96.i.i.i, i32 noundef %conv98.i.i.i, i32 noundef %conv100.i.i.i, i32 noundef %conv102.i.i.i, i32 noundef %conv104.i.i.i, i32 noundef %conv106.i.i.i, ptr noundef %fw_ver.i.i.i) #11
  br label %do.body114.i.i.i

do.body114.i.i.i:                                 ; preds = %do.end.i.i.i, %do.body.i.i.i.do.body114.i.i.i_crit_edge
  %265 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %msg_enable, align 8
  %and116.i.i.i = and i32 %266, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i.i.i)
  %tobool117.not.i.i.i = icmp eq i32 %and116.i.i.i, 0
  br i1 %tobool117.not.i.i.i, label %do.body114.i.i.i.do.end132.i.i.i_crit_edge, label %do.end127.i.i.i, !prof !412

do.body114.i.i.i.do.end132.i.i.i_crit_edge:       ; preds = %do.body114.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132.i.i.i

do.end127.i.i.i:                                  ; preds = %do.body114.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call129.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #11
  br label %do.end132.i.i.i

do.end132.i.i.i:                                  ; preds = %do.end127.i.i.i, %do.body114.i.i.i.do.end132.i.i.i_crit_edge
  %alloc_resc134.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9
  %267 = ptrtoint ptr %alloc_resc134.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %alloc_resc134.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %cmp137381.not.i.i.i = icmp eq i8 %268, 0
  br i1 %cmp137381.not.i.i.i, label %do.end132.i.i.i.do.body165.i.i.i_crit_edge, label %do.end132.i.i.i.do.body140.i.i.i_crit_edge

do.end132.i.i.i.do.body140.i.i.i_crit_edge:       ; preds = %do.end132.i.i.i
  br label %do.body140.i.i.i

do.end132.i.i.i.do.body165.i.i.i_crit_edge:       ; preds = %do.end132.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body165.i.i.i

do.body140.i.i.i:                                 ; preds = %for.inc162.i.i.i.do.body140.i.i.i_crit_edge, %do.end132.i.i.i.do.body140.i.i.i_crit_edge
  %i.2382.i.i.i = phi i32 [ %inc163.i.i.i, %for.inc162.i.i.i.do.body140.i.i.i_crit_edge ], [ 0, %do.end132.i.i.i.do.body140.i.i.i_crit_edge ]
  %269 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %msg_enable, align 8
  %and142.i.i.i = and i32 %270, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i.i.i)
  %tobool143.not.i.i.i = icmp eq i32 %and142.i.i.i, 0
  br i1 %tobool143.not.i.i.i, label %do.body140.i.i.i.for.inc162.i.i.i_crit_edge, label %do.end153.i.i.i, !prof !412

do.body140.i.i.i.for.inc162.i.i.i_crit_edge:      ; preds = %do.body140.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc162.i.i.i

do.end153.i.i.i:                                  ; preds = %do.body140.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx156.i.i.i = getelementptr %struct.bnx2x_vf_mbx_msg, ptr %183, i32 0, i32 1, i32 0, i32 2, i32 1, i32 %i.2382.i.i.i
  %271 = ptrtoint ptr %arrayidx156.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx156.i.i.i, align 1
  %conv157.i.i.i = zext i8 %272 to i32
  %call158.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %conv157.i.i.i) #11
  br label %for.inc162.i.i.i

for.inc162.i.i.i:                                 ; preds = %do.end153.i.i.i, %do.body140.i.i.i.for.inc162.i.i.i_crit_edge
  %inc163.i.i.i = add nuw nsw i32 %i.2382.i.i.i, 1
  %273 = ptrtoint ptr %alloc_resc134.i.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %alloc_resc134.i.i.i, align 4
  %conv136.i.i.i = zext i8 %274 to i32
  %cmp137.i.i.i = icmp ult i32 %inc163.i.i.i, %conv136.i.i.i
  br i1 %cmp137.i.i.i, label %for.inc162.i.i.i.do.body140.i.i.i_crit_edge, label %for.inc162.i.i.i.do.body165.i.i.i_crit_edge

for.inc162.i.i.i.do.body165.i.i.i_crit_edge:      ; preds = %for.inc162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body165.i.i.i

for.inc162.i.i.i.do.body140.i.i.i_crit_edge:      ; preds = %for.inc162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body140.i.i.i

do.body165.i.i.i:                                 ; preds = %for.inc162.i.i.i.do.body165.i.i.i_crit_edge, %do.end132.i.i.i.do.body165.i.i.i_crit_edge
  %275 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %msg_enable, align 8
  %and167.i.i.i = and i32 %276, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i.i.i)
  %tobool168.not.i.i.i = icmp eq i32 %and167.i.i.i, 0
  br i1 %tobool168.not.i.i.i, label %do.body165.i.i.i.do.end183.i.i.i_crit_edge, label %do.end178.i.i.i, !prof !412

do.body165.i.i.i.do.end183.i.i.i_crit_edge:       ; preds = %do.body165.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end183.i.i.i

do.end178.i.i.i:                                  ; preds = %do.body165.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call180.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177) #11
  br label %do.end183.i.i.i

do.end183.i.i.i:                                  ; preds = %do.end178.i.i.i, %do.body165.i.i.i.do.end183.i.i.i_crit_edge
  %num_sbs186.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9, i32 2
  %277 = ptrtoint ptr %num_sbs186.i.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %num_sbs186.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %cmp188385.not.i.i.i = icmp eq i8 %278, 0
  br i1 %cmp188385.not.i.i.i, label %do.end183.i.i.i.do.body221.i.i.i_crit_edge, label %do.end183.i.i.i.do.body191.i.i.i_crit_edge

do.end183.i.i.i.do.body191.i.i.i_crit_edge:       ; preds = %do.end183.i.i.i
  br label %do.body191.i.i.i

do.end183.i.i.i.do.body221.i.i.i_crit_edge:       ; preds = %do.end183.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body221.i.i.i

do.body191.i.i.i:                                 ; preds = %for.inc218.i.i.i.do.body191.i.i.i_crit_edge, %do.end183.i.i.i.do.body191.i.i.i_crit_edge
  %i.3386.i.i.i = phi i32 [ %inc219.i.i.i, %for.inc218.i.i.i.do.body191.i.i.i_crit_edge ], [ 0, %do.end183.i.i.i.do.body191.i.i.i_crit_edge ]
  %279 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %msg_enable, align 8
  %and193.i.i.i = and i32 %280, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193.i.i.i)
  %tobool194.not.i.i.i = icmp eq i32 %and193.i.i.i, 0
  br i1 %tobool194.not.i.i.i, label %do.body191.i.i.i.for.inc218.i.i.i_crit_edge, label %do.end204.i.i.i, !prof !412

do.body191.i.i.i.for.inc218.i.i.i_crit_edge:      ; preds = %do.body191.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc218.i.i.i

do.end204.i.i.i:                                  ; preds = %do.body191.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx207.i.i.i = getelementptr [16 x %struct.hw_sb_info], ptr %resc2.i306.i.i, i32 0, i32 %i.3386.i.i.i
  %281 = ptrtoint ptr %arrayidx207.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx207.i.i.i, align 1
  %conv209.i.i.i = zext i8 %282 to i32
  %sb_qid212.i.i.i = getelementptr [16 x %struct.hw_sb_info], ptr %resc2.i306.i.i, i32 0, i32 %i.3386.i.i.i, i32 1
  %283 = ptrtoint ptr %sb_qid212.i.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %sb_qid212.i.i.i, align 1
  %conv213.i.i.i = zext i8 %284 to i32
  %call214.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %conv209.i.i.i, i32 noundef %conv213.i.i.i) #11
  br label %for.inc218.i.i.i

for.inc218.i.i.i:                                 ; preds = %do.end204.i.i.i, %do.body191.i.i.i.for.inc218.i.i.i_crit_edge
  %inc219.i.i.i = add nuw nsw i32 %i.3386.i.i.i, 1
  %285 = ptrtoint ptr %num_sbs186.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %num_sbs186.i.i.i, align 2
  %conv187.i.i.i = zext i8 %286 to i32
  %cmp188.i.i.i = icmp ult i32 %inc219.i.i.i, %conv187.i.i.i
  br i1 %cmp188.i.i.i, label %for.inc218.i.i.i.do.body191.i.i.i_crit_edge, label %for.inc218.i.i.i.do.body221.i.i.i_crit_edge

for.inc218.i.i.i.do.body221.i.i.i_crit_edge:      ; preds = %for.inc218.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body221.i.i.i

for.inc218.i.i.i.do.body191.i.i.i_crit_edge:      ; preds = %for.inc218.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body191.i.i.i

do.body221.i.i.i:                                 ; preds = %for.inc218.i.i.i.do.body221.i.i.i_crit_edge, %do.end183.i.i.i.do.body221.i.i.i_crit_edge
  %287 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %msg_enable, align 8
  %and223.i.i.i = and i32 %288, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i.i.i)
  %tobool224.not.i.i.i = icmp eq i32 %and223.i.i.i, 0
  br i1 %tobool224.not.i.i.i, label %do.body221.i.i.i.do.end239.i.i.i_crit_edge, label %do.end234.i.i.i, !prof !412

do.body221.i.i.i.do.end239.i.i.i_crit_edge:       ; preds = %do.body221.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end239.i.i.i

do.end234.i.i.i:                                  ; preds = %do.body221.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call236.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183) #11
  br label %do.end239.i.i.i

do.end239.i.i.i:                                  ; preds = %do.end234.i.i.i, %do.body221.i.i.i.do.end239.i.i.i_crit_edge
  %289 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %arrayidx, align 4
  %resp241.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %resp241.i.i.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 1, ptr %resp241.i.i.i, align 2
  %length2.i.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %290, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %292 = ptrtoint ptr %length2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 120, ptr %length2.i.i.i.i, align 2
  %293 = load ptr, ptr %arrayidx, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load2_noabort(i32 %294)
  %.pr.i272.i.i = load i16, ptr %293, align 2
  br label %do.body.i.i275.i.i

do.body.i.i275.i.i:                               ; preds = %if.end9.i.i287.i.i.do.body.i.i275.i.i_crit_edge, %do.end239.i.i.i
  %295 = phi i16 [ %301, %if.end9.i.i287.i.i.do.body.i.i275.i.i_crit_edge ], [ %.pr.i272.i.i, %do.end239.i.i.i ]
  %tlvs_list.addr.0.i.i273.i.i = phi ptr [ %add.ptr.i.i285.i.i, %if.end9.i.i287.i.i.do.body.i.i275.i.i_crit_edge ], [ %293, %do.end239.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %295)
  %cmp.i.i274.i.i = icmp eq i16 %295, 17
  br i1 %cmp.i.i274.i.i, label %bnx2x_search_tlv_list.exit.i296.i.i, label %if.end.i.i278.i.i

if.end.i.i278.i.i:                                ; preds = %do.body.i.i275.i.i
  %length.i.i276.i.i = getelementptr inbounds %struct.channel_tlv, ptr %tlvs_list.addr.0.i.i273.i.i, i32 0, i32 1
  %296 = ptrtoint ptr %length.i.i276.i.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %length.i.i276.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool.not.i.i277.i.i = icmp eq i16 %297, 0
  br i1 %tobool.not.i.i277.i.i, label %do.end.i.i283.i.i, label %if.end9.i.i287.i.i

do.end.i.i283.i.i:                                ; preds = %if.end.i.i278.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %298 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev, align 4
  %tobool5.not.i.i280.i.i = icmp eq ptr %299, null
  %spec.select.i.i281.i.i = select i1 %tobool5.not.i.i280.i.i, ptr @.str.3, ptr %299
  %call.i.i282.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 79, ptr noundef nonnull %spec.select.i.i281.i.i) #11
  br label %bnx2x_vf_mbx_acquire.exit.i

if.end9.i.i287.i.i:                               ; preds = %if.end.i.i278.i.i
  %conv11.i.i284.i.i = zext i16 %297 to i32
  %add.ptr.i.i285.i.i = getelementptr i8, ptr %tlvs_list.addr.0.i.i273.i.i, i32 %conv11.i.i284.i.i
  %300 = ptrtoint ptr %add.ptr.i.i285.i.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %add.ptr.i.i285.i.i, align 2
  %cmp15.not.i.i286.i.i = icmp eq i16 %301, 12
  br i1 %cmp15.not.i.i286.i.i, label %do.body18.i.i290.i.i, label %if.end9.i.i287.i.i.do.body.i.i275.i.i_crit_edge

if.end9.i.i287.i.i.do.body.i.i275.i.i_crit_edge:  ; preds = %if.end9.i.i287.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i275.i.i

do.body18.i.i290.i.i:                             ; preds = %if.end9.i.i287.i.i
  %302 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %msg_enable, align 8
  %and.i.i288.i.i = and i32 %303, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i288.i.i)
  %tobool19.not.i.i289.i.i = icmp eq i32 %and.i.i288.i.i, 0
  br i1 %tobool19.not.i.i289.i.i, label %do.body18.i.i290.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge, label %do.end25.i.i295.i.i, !prof !412

do.body18.i.i290.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge: ; preds = %do.body18.i.i290.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_acquire.exit.i

do.end25.i.i295.i.i:                              ; preds = %do.body18.i.i290.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %304 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev, align 4
  %tobool28.not.i.i292.i.i = icmp eq ptr %305, null
  %spec.select53.i.i293.i.i = select i1 %tobool28.not.i.i292.i.i, ptr @.str.3, ptr %305
  %call36.i.i294.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.130, i32 noundef 87, ptr noundef nonnull %spec.select53.i.i293.i.i, i32 noundef 17) #11
  br label %bnx2x_vf_mbx_acquire.exit.i

bnx2x_search_tlv_list.exit.i296.i.i:              ; preds = %do.body.i.i275.i.i
  %tobool244.not.i.i.i = icmp eq ptr %tlvs_list.addr.0.i.i273.i.i, null
  br i1 %tobool244.not.i.i.i, label %bnx2x_search_tlv_list.exit.i296.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge, label %if.then245.i.i.i

bnx2x_search_tlv_list.exit.i296.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge: ; preds = %bnx2x_search_tlv_list.exit.i296.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_acquire.exit.i

if.then245.i.i.i:                                 ; preds = %bnx2x_search_tlv_list.exit.i296.i.i
  %306 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i348.i.i.i = and i32 %307, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348.i.i.i)
  %tobool.not.i349.i.i.i = icmp eq i32 %and.i348.i.i.i, 0
  br i1 %tobool.not.i349.i.i.i, label %if.then245.i.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge, label %if.end.i353.i.i.i

if.then245.i.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge: ; preds = %if.then245.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_acquire.exit.i

if.end.i353.i.i.i:                                ; preds = %if.then245.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i.i.i = getelementptr %struct.bnx2x_vf_mbx_msg, ptr %293, i32 0, i32 1, i32 1
  %308 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 17, ptr %add.ptr.i.i.i.i.i, align 2
  %length2.i.i.i.i.i = getelementptr %struct.bnx2x_vf_mbx_msg, ptr %293, i32 0, i32 1, i32 1, i32 2
  %309 = ptrtoint ptr %length2.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 12, ptr %length2.i.i.i.i.i, align 2
  %id.i.i.i.i = getelementptr %struct.bnx2x_vf_mbx_msg, ptr %293, i32 0, i32 1, i32 1, i32 4
  %310 = call ptr @memcpy(ptr %id.i.i.i.i, ptr %phys_port_id.i.i.i.i, i32 6)
  br label %bnx2x_vf_mbx_acquire.exit.i

bnx2x_vf_mbx_acquire.exit.i:                      ; preds = %if.end.i353.i.i.i, %if.then245.i.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge, %bnx2x_search_tlv_list.exit.i296.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge, %do.end25.i.i295.i.i, %do.body18.i.i290.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge, %do.end.i.i283.i.i
  %length.1.i.i.i = phi i16 [ 120, %bnx2x_search_tlv_list.exit.i296.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge ], [ 120, %if.then245.i.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge ], [ 132, %if.end.i353.i.i.i ], [ 120, %do.end.i.i283.i.i ], [ 120, %do.end25.i.i295.i.i ], [ 120, %do.body18.i.i290.i.i.bnx2x_vf_mbx_acquire.exit.i_crit_edge ]
  %311 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx, align 4
  %resp250.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %312, i32 0, i32 1
  %conv.i.i354.i.i.i = zext i16 %length.1.i.i.i to i32
  %add.ptr.i.i355.i.i.i = getelementptr i8, ptr %resp250.i.i.i, i32 %conv.i.i354.i.i.i
  %313 = ptrtoint ptr %add.ptr.i.i355.i.i.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 19, ptr %add.ptr.i.i355.i.i.i, align 2
  %length2.i.i356.i.i.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i355.i.i.i, i32 0, i32 1
  %314 = ptrtoint ptr %length2.i.i356.i.i.i to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 8, ptr %length2.i.i356.i.i.i, align 2
  %fp_hsi1.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 27
  %315 = ptrtoint ptr %fp_hsi1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %fp_hsi1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %316)
  %cmp.i359.i.i.i = icmp ult i8 %316, 3
  %conv4.i.i.i.i = zext i1 %cmp.i359.i.i.i to i8
  %is_supported.i.i.i.i = getelementptr inbounds %struct.vfpf_fp_hsi_resp_tlv, ptr %add.ptr.i.i355.i.i.i, i32 0, i32 1
  %317 = ptrtoint ptr %is_supported.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv4.i.i.i.i, ptr %is_supported.i.i.i.i, align 2
  %add.i360.i.i.i = add nuw nsw i16 %length.1.i.i.i, 8
  %318 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx, align 4
  %resp252.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %319, i32 0, i32 1
  %conv.i361.i.i.i = zext i16 %add.i360.i.i.i to i32
  %add.ptr.i362.i.i.i = getelementptr i8, ptr %resp252.i.i.i, i32 %conv.i361.i.i.i
  %320 = ptrtoint ptr %add.ptr.i362.i.i.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 12, ptr %add.ptr.i362.i.i.i, align 2
  %length2.i363.i.i.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i362.i.i.i, i32 0, i32 1
  %321 = ptrtoint ptr %length2.i363.i.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 8, ptr %length2.i363.i.i.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %rc.0304.i.i) #8
  br label %for.inc

sw.bb24.i:                                        ; preds = %if.then15.i
  %322 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx, align 4
  %stats_addr.i.i = getelementptr inbounds %struct.vfpf_init_tlv, ptr %323, i32 0, i32 3
  %324 = ptrtoint ptr %stats_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %stats_addr.i.i, align 8
  %conv.i155.i = trunc i64 %325 to i32
  %fw_stat_map.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 6
  %326 = ptrtoint ptr %fw_stat_map.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %conv.i155.i, ptr %fw_stat_map.i.i, align 8
  %stats_stride.i.i = getelementptr inbounds %struct.vfpf_init_tlv, ptr %323, i32 0, i32 4
  %327 = ptrtoint ptr %stats_stride.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %stats_stride.i.i, align 8
  %stats_stride1.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 7
  %329 = ptrtoint ptr %stats_stride1.i.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %328, ptr %stats_stride1.i.i, align 4
  %sb_addr.i.i = getelementptr inbounds %struct.vfpf_init_tlv, ptr %323, i32 0, i32 1
  %call.i156.i = call i32 @bnx2x_vf_init(ptr noundef %bp, ptr noundef %cond, ptr noundef %sb_addr.i.i) #8
  %flags.i.i = getelementptr inbounds %struct.vfpf_init_tlv, ptr %323, i32 0, i32 5
  %330 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %flags.i.i, align 4
  %and.i157.i = and i32 %331, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157.i)
  %tobool.not.i158.i = icmp eq i32 %and.i157.i, 0
  br i1 %tobool.not.i158.i, label %sw.bb24.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb24.i.if.end.i.i_crit_edge:                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %cond, align 8
  %334 = or i16 %333, 1
  store i16 %334, ptr %cond, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb24.i.if.end.i.i_crit_edge
  %335 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %cond, align 8
  %337 = and i16 %336, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %337)
  %tobool7.not.i.i = icmp eq i16 %337, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.bnx2x_vf_mbx_init_vf.exit.i_crit_edge, label %if.then8.i.i

if.end.i.i.bnx2x_vf_mbx_init_vf.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_init_vf.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %338 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %index.i.i, align 8
  %conv9.i159.i = zext i8 %339 to i32
  %call10.i.i = call i32 @bnx2x_iov_link_update_vf(ptr noundef %bp, i32 noundef %conv9.i159.i) #8
  br label %bnx2x_vf_mbx_init_vf.exit.i

bnx2x_vf_mbx_init_vf.exit.i:                      ; preds = %if.then8.i.i, %if.end.i.i.bnx2x_vf_mbx_init_vf.exit.i_crit_edge
  %340 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %vfdb1, align 8
  %index.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %342 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %index.i.i.i.i, align 8
  %idxprom.i.i.i.i = zext i8 %343 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.bnx2x_vfdb, ptr %341, i32 0, i32 5, i32 %idxprom.i.i.i.i
  %first_tlv.i.i.i.i = getelementptr %struct.bnx2x_vfdb, ptr %341, i32 0, i32 5, i32 %idxprom.i.i.i.i, i32 4
  %344 = ptrtoint ptr %first_tlv.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %first_tlv.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %345)
  %cmp.i.i.i160.i = icmp eq i16 %345, 1
  %conv3.i.i.i.i = select i1 %cmp.i.i.i160.i, i16 120, i16 8
  %346 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %resp.i.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %resp.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 %345, ptr %resp.i.i.i.i, align 2
  %length2.i.i.i.i161.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %347, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %349 = ptrtoint ptr %length2.i.i.i.i161.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %conv3.i.i.i.i, ptr %length2.i.i.i.i161.i, align 2
  %350 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %resp5.i.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %350, i32 0, i32 1
  %conv.i.i.i.i.i = zext i16 %conv3.i.i.i.i to i32
  %add.ptr.i.i.i.i162.i = getelementptr i8, ptr %resp5.i.i.i.i, i32 %conv.i.i.i.i.i
  %351 = ptrtoint ptr %add.ptr.i.i.i.i162.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 12, ptr %add.ptr.i.i.i.i162.i, align 2
  %length2.i12.i.i.i.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i162.i, i32 0, i32 1
  %352 = ptrtoint ptr %length2.i12.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 8, ptr %length2.i12.i.i.i.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %call.i156.i) #8
  br label %for.inc

sw.bb25.i:                                        ; preds = %if.then15.i
  %353 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %qctor.i.i) #8
  %355 = call ptr @memset(ptr %qctor.i.i, i32 255, i32 172)
  %vf_qid.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 3
  %356 = ptrtoint ptr %vf_qid.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %vf_qid.i.i, align 8
  %alloc_resc.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9
  %358 = ptrtoint ptr %alloc_resc.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %alloc_resc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %357, i8 %359)
  %cmp.not.i.i = icmp ult i8 %357, %359
  br i1 %cmp.not.i.i, label %if.end.i170.i, label %do.end.i169.i

do.end.i169.i:                                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #10
  %360 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %dev, align 4
  %tobool.not.i164.i = icmp eq ptr %361, null
  %spec.select.i165.i = select i1 %tobool.not.i164.i, ptr @.str.3, ptr %361
  %conv6.i166.i = zext i8 %357 to i32
  %conv9.i167.i = zext i8 %359 to i32
  %call.i168.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.194, i32 noundef 1527, ptr noundef nonnull %spec.select.i165.i, i32 noundef %conv6.i166.i, i32 noundef %conv9.i167.i) #11
  br label %bnx2x_vf_mbx_setup_q.exit.i

if.end.i170.i:                                    ; preds = %sw.bb25.i
  %param_valid.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 4
  %362 = ptrtoint ptr %param_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %param_valid.i.i, align 1
  %364 = and i8 %363, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %tobool13.not.i.i = icmp eq i8 %364, 0
  br i1 %tobool13.not.i.i, label %if.end.i170.i.bnx2x_vf_mbx_setup_q.exit.i_crit_edge, label %if.then14.i.i

if.end.i170.i.bnx2x_vf_mbx_setup_q.exit.i_crit_edge: ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_setup_q.exit.i

if.then14.i.i:                                    ; preds = %if.end.i170.i
  %vfqs.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 12
  %365 = ptrtoint ptr %vfqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %vfqs.i.i.i, align 4
  %idxprom.i.i.i = zext i8 %357 to i32
  %arrayidx.i.i171.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i
  %index.i172.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 7
  %367 = ptrtoint ptr %index.i172.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %index.i172.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %368)
  %cmp18.i.i = icmp eq i16 %368, 0
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.then14.i.i.if.end21.i.i_crit_edge

if.then14.i.i.if.end21.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then20.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %igu_base_id.i.i.i173.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 11
  %369 = ptrtoint ptr %igu_base_id.i.i.i173.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %igu_base_id.i.i.i173.i, align 1
  %371 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %abs_vfid, align 1
  %add.i.i.i = add i8 %372, 8
  %mac_obj.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 1
  %cid.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 6
  %373 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %cid.i.i.i, align 4
  %375 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %vfdb1, align 8
  %sp_dma.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %376, i32 0, i32 7
  %377 = ptrtoint ptr %sp_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %sp_dma.i.i.i, align 4
  %index.i.i176.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %379 = ptrtoint ptr %index.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %index.i.i176.i, align 8
  %conv2.i.i.i = zext i8 %380 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv2.i.i.i, 1624
  %add.ptr.i.i.i = getelementptr i8, ptr %378, i32 %mul.i.i.i
  %mapping.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %376, i32 0, i32 7, i32 1
  %381 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %mapping.i.i.i, align 4
  %add9.i.i.i = add i32 %mul.i.i.i, %382
  %filter_state.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 21
  %vf_macs_pool.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 29
  call void @bnx2x_init_mac_obj(ptr noundef %bp, ptr noundef %mac_obj.i.i.i, i8 noundef zeroext %370, i32 noundef %374, i8 noundef zeroext %add.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %add9.i.i.i, i32 noundef 0, ptr noundef %filter_state.i.i.i, i32 noundef 2, ptr noundef %vf_macs_pool.i.i.i) #8
  %vlan_obj.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 2
  %383 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %cid.i.i.i, align 4
  %385 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %vfdb1, align 8
  %sp_dma13.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %386, i32 0, i32 7
  %387 = ptrtoint ptr %sp_dma13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %sp_dma13.i.i.i, align 4
  %389 = ptrtoint ptr %index.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %index.i.i176.i, align 8
  %conv16.i.i.i = zext i8 %390 to i32
  %mul17.i.i.i = mul nuw nsw i32 %conv16.i.i.i, 1624
  %add.ptr18.i.i.i = getelementptr i8, ptr %388, i32 264
  %add.ptr19.i.i.i = getelementptr i8, ptr %add.ptr18.i.i.i, i32 %mul17.i.i.i
  %mapping22.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %386, i32 0, i32 7, i32 1
  %391 = ptrtoint ptr %mapping22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %mapping22.i.i.i, align 4
  %add26.i.i.i = add i32 %392, 264
  %add27.i.i.i = add i32 %add26.i.i.i, %mul17.i.i.i
  %vf_vlans_pool.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 28
  call void @bnx2x_init_vlan_obj(ptr noundef %bp, ptr noundef %vlan_obj.i.i.i, i8 noundef zeroext %370, i32 noundef %384, i8 noundef zeroext %add.i.i.i, ptr noundef %add.ptr19.i.i.i, i32 noundef %add27.i.i.i, i32 noundef 1, ptr noundef %filter_state.i.i.i, i32 noundef 2, ptr noundef %vf_vlans_pool.i.i.i) #8
  %vlan_mac_obj.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 3
  %393 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %cid.i.i.i, align 4
  %395 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %vfdb1, align 8
  %sp_dma31.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %396, i32 0, i32 7
  %397 = ptrtoint ptr %sp_dma31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %sp_dma31.i.i.i, align 4
  %399 = ptrtoint ptr %index.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %index.i.i176.i, align 8
  %conv34.i.i.i = zext i8 %400 to i32
  %mul35.i.i.i = mul nuw nsw i32 %conv34.i.i.i, 1624
  %add.ptr36.i.i.i = getelementptr i8, ptr %398, i32 528
  %add.ptr37.i.i.i = getelementptr i8, ptr %add.ptr36.i.i.i, i32 %mul35.i.i.i
  %mapping40.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %396, i32 0, i32 7, i32 1
  %401 = ptrtoint ptr %mapping40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %mapping40.i.i.i, align 4
  %add44.i.i.i = add i32 %402, 528
  %add45.i.i.i = add i32 %add44.i.i.i, %mul35.i.i.i
  call void @bnx2x_init_vlan_mac_obj(ptr noundef %bp, ptr noundef %vlan_mac_obj.i.i.i, i8 noundef zeroext %370, i32 noundef %394, i8 noundef zeroext %add.i.i.i, ptr noundef %add.ptr37.i.i.i, i32 noundef %add45.i.i.i, i32 noundef 2, ptr noundef %filter_state.i.i.i, i32 noundef 2, ptr noundef %vf_macs_pool.i.i.i, ptr noundef %vf_vlans_pool.i.i.i) #8
  %mcast_obj.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 23
  %403 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %cid.i.i.i, align 4
  %405 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %vfdb1, align 8
  %sp_dma51.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %406, i32 0, i32 7
  %407 = ptrtoint ptr %sp_dma51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %sp_dma51.i.i.i, align 4
  %409 = ptrtoint ptr %index.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %index.i.i176.i, align 8
  %conv54.i.i.i = zext i8 %410 to i32
  %mul55.i.i.i = mul nuw nsw i32 %conv54.i.i.i, 1624
  %add.ptr56.i.i.i = getelementptr i8, ptr %408, i32 1056
  %add.ptr57.i.i.i = getelementptr i8, ptr %add.ptr56.i.i.i, i32 %mul55.i.i.i
  %mapping60.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %406, i32 0, i32 7, i32 1
  %411 = ptrtoint ptr %mapping60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %mapping60.i.i.i, align 4
  %add64.i.i.i = add i32 %412, 1056
  %add65.i.i.i = add i32 %add64.i.i.i, %mul55.i.i.i
  call void @bnx2x_init_mcast_obj(ptr noundef %bp, ptr noundef %mcast_obj.i.i.i, i8 noundef zeroext %370, i32 noundef %404, i8 noundef zeroext %add.i.i.i, i8 noundef zeroext %add.i.i.i, ptr noundef %add.ptr57.i.i.i, i32 noundef %add65.i.i.i, i32 noundef 9, ptr noundef %filter_state.i.i.i, i32 noundef 2) #8
  %rss_conf_obj.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 24
  %413 = ptrtoint ptr %cid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %cid.i.i.i, align 4
  %415 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %vfdb1, align 8
  %sp_dma69.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %416, i32 0, i32 7
  %417 = ptrtoint ptr %sp_dma69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %sp_dma69.i.i.i, align 4
  %419 = ptrtoint ptr %index.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %index.i.i176.i, align 8
  %conv72.i.i.i = zext i8 %420 to i32
  %mul73.i.i.i = mul nuw nsw i32 %conv72.i.i.i, 1624
  %add.ptr74.i.i.i = getelementptr i8, ptr %418, i32 1440
  %add.ptr75.i.i.i = getelementptr i8, ptr %add.ptr74.i.i.i, i32 %mul73.i.i.i
  %mapping78.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %416, i32 0, i32 7, i32 1
  %421 = ptrtoint ptr %mapping78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %mapping78.i.i.i, align 4
  %add82.i.i.i = add i32 %422, 1440
  %add83.i.i.i = add i32 %add82.i.i.i, %mul73.i.i.i
  call void @bnx2x_init_rss_config_obj(ptr noundef %bp, ptr noundef %rss_conf_obj.i.i.i, i8 noundef zeroext %370, i32 noundef %414, i8 noundef zeroext %add.i.i.i, i8 noundef zeroext %add.i.i.i, ptr noundef %add.ptr75.i.i.i, i32 noundef %add83.i.i.i, i32 noundef 11, ptr noundef %filter_state.i.i.i, i32 noundef 2) #8
  %conv85.i.i.i = zext i8 %370 to i32
  %leading_rss.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 22
  %423 = ptrtoint ptr %leading_rss.i.i.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %conv85.i.i.i, ptr %leading_rss.i.i.i, align 4
  %is_leading.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 9
  %424 = ptrtoint ptr %is_leading.i.i.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 1, ptr %is_leading.i.i.i, align 4
  %sp_initialized.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 10
  %425 = ptrtoint ptr %sp_initialized.i.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 1, ptr %sp_initialized.i.i.i, align 1
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then20.i.i, %if.then14.i.i.if.end21.i.i_crit_edge
  %426 = call ptr @memset(ptr %qctor.i.i, i32 0, i32 168)
  %427 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 32, ptr %flags.i177.i, align 4
  %428 = ptrtoint ptr %param_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %param_valid.i.i, align 1
  %430 = and i8 %429, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %tobool25.not.i.i = icmp eq i8 %430, 0
  br i1 %tobool25.not.i.i, label %if.end21.i.i.if.end50.i.i_crit_edge, label %if.then26.i.i

if.end21.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  %txq.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 2
  %vf_sb.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 2, i32 1
  %431 = ptrtoint ptr %vf_sb.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %vf_sb.i.i, align 8
  %conv28.i.i = zext i8 %432 to i16
  %sb_idx.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 8
  %433 = ptrtoint ptr %sb_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %conv28.i.i, ptr %sb_idx.i.i, align 2
  %hc_rate.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 2, i32 3
  %434 = ptrtoint ptr %hc_rate.i.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %hc_rate.i.i, align 2
  %436 = ptrtoint ptr %hc_rate30.i.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %435, ptr %hc_rate30.i.i, align 4
  %sb_index.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 2, i32 2
  %437 = ptrtoint ptr %sb_index.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %sb_index.i.i, align 1
  %439 = ptrtoint ptr %sb_cq_index.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %438, ptr %sb_cq_index.i.i, align 1
  %flags34.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 2, i32 4
  %440 = ptrtoint ptr %flags34.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %flags34.i.i, align 4
  %and.i.i178.i = and i32 %441, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i178.i)
  %tobool.not.i.i179.i = icmp eq i32 %and.i.i178.i, 0
  br i1 %tobool.not.i.i179.i, label %if.then26.i.i.if.end.i.i181.i_crit_edge, label %if.then.i.i180.i

if.then26.i.i.if.end.i.i181.i_crit_edge:          ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i181.i

if.then.i.i180.i:                                 ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %442 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %params.i.i, align 4
  %or.i.i.i.i = or i32 %443, 1
  store i32 %or.i.i.i.i, ptr %params.i.i, align 4
  br label %if.end.i.i181.i

if.end.i.i181.i:                                  ; preds = %if.then.i.i180.i, %if.then26.i.i.if.end.i.i181.i_crit_edge
  %and1.i.i.i = and i32 %441, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i181.i.if.end4.i.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i181.i.if.end4.i.i.i_crit_edge:          ; preds = %if.end.i.i181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i181.i
  call void @__sanitizer_cov_trace_pc() #10
  %444 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %params.i.i, align 4
  %or.i53.i.i.i = or i32 %445, 2
  store i32 %or.i53.i.i.i, ptr %params.i.i, align 4
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i181.i.if.end4.i.i.i_crit_edge
  %and5.i.i.i = and i32 %441, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.if.end8.i.i.i_crit_edge, label %if.then7.i.i.i

if.end4.i.i.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %446 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %params.i.i, align 4
  %or.i54.i.i.i = or i32 %447, 4
  store i32 %or.i54.i.i.i, ptr %params.i.i, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then7.i.i.i, %if.end4.i.i.i.if.end8.i.i.i_crit_edge
  %and9.i.i.i = and i32 %441, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end8.i.i.i.if.end12.i.i.i_crit_edge, label %if.then11.i.i.i

if.end8.i.i.i.if.end12.i.i.i_crit_edge:           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %448 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %params.i.i, align 4
  %or.i55.i.i.i = or i32 %449, 8
  store i32 %or.i55.i.i.i, ptr %params.i.i, align 4
  br label %if.end12.i.i.i

if.end12.i.i.i:                                   ; preds = %if.then11.i.i.i, %if.end8.i.i.i.if.end12.i.i.i_crit_edge
  %and13.i.i.i = and i32 %441, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %and13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.end12.i.i.i.if.end16.i.i.i_crit_edge, label %if.then15.i.i.i

if.end12.i.i.i.if.end16.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i.i

if.then15.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %450 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %params.i.i, align 4
  %or.i56.i.i.i = or i32 %451, 128
  store i32 %or.i56.i.i.i, ptr %params.i.i, align 4
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then15.i.i.i, %if.end12.i.i.i.if.end16.i.i.i_crit_edge
  %and17.i.i.i = and i32 %441, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.end16.i.i.i.if.end20.i.i.i_crit_edge, label %if.then19.i.i.i

if.end16.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i.i

if.then19.i.i.i:                                  ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %452 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %params.i.i, align 4
  %or.i57.i.i.i = or i32 %453, 256
  store i32 %or.i57.i.i.i, ptr %params.i.i, align 4
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.then19.i.i.i, %if.end16.i.i.i.if.end20.i.i.i_crit_edge
  %and21.i.i.i = and i32 %441, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %and21.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %if.end20.i.i.i.if.end24.i.i.i_crit_edge, label %if.then23.i.i.i

if.end20.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %454 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %params.i.i, align 4
  %or.i58.i.i.i = or i32 %455, 512
  store i32 %or.i58.i.i.i, ptr %params.i.i, align 4
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then23.i.i.i, %if.end20.i.i.i.if.end24.i.i.i_crit_edge
  %and25.i.i.i = and i32 %441, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end24.i.i.i.if.end28.i.i.i_crit_edge, label %if.then27.i.i.i

if.end24.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i

if.then27.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %456 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %params.i.i, align 4
  %or.i59.i.i.i = or i32 %457, 2048
  store i32 %or.i59.i.i.i, ptr %params.i.i, align 4
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then27.i.i.i, %if.end24.i.i.i.if.end28.i.i.i_crit_edge
  %and29.i.i.i = and i32 %441, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and29.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.end28.i.i.i.if.end32.i.i.i_crit_edge, label %if.then31.i.i.i

if.end28.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i.i.i

if.then31.i.i.i:                                  ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %458 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %params.i.i, align 4
  %or.i60.i.i.i = or i32 %459, 8192
  store i32 %or.i60.i.i.i, ptr %params.i.i, align 4
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then31.i.i.i, %if.end28.i.i.i.if.end32.i.i.i_crit_edge
  %460 = ptrtoint ptr %mf_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %mf_mode.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %461)
  %cmp.i.i182.i = icmp eq i8 %461, 1
  br i1 %cmp.i.i182.i, label %if.then34.i.i.i, label %if.end32.i.i.i.bnx2x_vf_mbx_set_q_flags.exit.i.i_crit_edge

if.end32.i.i.i.bnx2x_vf_mbx_set_q_flags.exit.i.i_crit_edge: ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_flags.exit.i.i

if.then34.i.i.i:                                  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %462 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %params.i.i, align 4
  %or.i61.i.i.i = or i32 %463, 64
  store i32 %or.i61.i.i.i, ptr %params.i.i, align 4
  br label %bnx2x_vf_mbx_set_q_flags.exit.i.i

bnx2x_vf_mbx_set_q_flags.exit.i.i:                ; preds = %if.then34.i.i.i, %if.end32.i.i.i.bnx2x_vf_mbx_set_q_flags.exit.i.i_crit_edge
  %464 = ptrtoint ptr %flags34.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %flags34.i.i, align 4
  %and.i216.i.i = and i32 %465, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216.i.i)
  %tobool.not.i217.i.i = icmp eq i32 %and.i216.i.i, 0
  br i1 %tobool.not.i217.i.i, label %bnx2x_vf_mbx_set_q_flags.exit.i.i.if.end.i222.i.i_crit_edge, label %if.then.i219.i.i

bnx2x_vf_mbx_set_q_flags.exit.i.i.if.end.i222.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_set_q_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i222.i.i

if.then.i219.i.i:                                 ; preds = %bnx2x_vf_mbx_set_q_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %466 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %flags.i177.i, align 4
  %or.i.i218.i.i = or i32 %467, 1
  store i32 %or.i.i218.i.i, ptr %flags.i177.i, align 4
  br label %if.end.i222.i.i

if.end.i222.i.i:                                  ; preds = %if.then.i219.i.i, %bnx2x_vf_mbx_set_q_flags.exit.i.i.if.end.i222.i.i_crit_edge
  %and1.i220.i.i = and i32 %465, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i220.i.i)
  %tobool2.not.i221.i.i = icmp eq i32 %and1.i220.i.i, 0
  br i1 %tobool2.not.i221.i.i, label %if.end.i222.i.i.if.end4.i227.i.i_crit_edge, label %if.then3.i224.i.i

if.end.i222.i.i.if.end4.i227.i.i_crit_edge:       ; preds = %if.end.i222.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i227.i.i

if.then3.i224.i.i:                                ; preds = %if.end.i222.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %468 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %flags.i177.i, align 4
  %or.i53.i223.i.i = or i32 %469, 2
  store i32 %or.i53.i223.i.i, ptr %flags.i177.i, align 4
  br label %if.end4.i227.i.i

if.end4.i227.i.i:                                 ; preds = %if.then3.i224.i.i, %if.end.i222.i.i.if.end4.i227.i.i_crit_edge
  %and5.i225.i.i = and i32 %465, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i225.i.i)
  %tobool6.not.i226.i.i = icmp eq i32 %and5.i225.i.i, 0
  br i1 %tobool6.not.i226.i.i, label %if.end4.i227.i.i.if.end8.i232.i.i_crit_edge, label %if.then7.i229.i.i

if.end4.i227.i.i.if.end8.i232.i.i_crit_edge:      ; preds = %if.end4.i227.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i232.i.i

if.then7.i229.i.i:                                ; preds = %if.end4.i227.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %470 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %flags.i177.i, align 4
  %or.i54.i228.i.i = or i32 %471, 4
  store i32 %or.i54.i228.i.i, ptr %flags.i177.i, align 4
  br label %if.end8.i232.i.i

if.end8.i232.i.i:                                 ; preds = %if.then7.i229.i.i, %if.end4.i227.i.i.if.end8.i232.i.i_crit_edge
  %and9.i230.i.i = and i32 %465, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i230.i.i)
  %tobool10.not.i231.i.i = icmp eq i32 %and9.i230.i.i, 0
  br i1 %tobool10.not.i231.i.i, label %if.end8.i232.i.i.if.end12.i237.i.i_crit_edge, label %if.then11.i234.i.i

if.end8.i232.i.i.if.end12.i237.i.i_crit_edge:     ; preds = %if.end8.i232.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i237.i.i

if.then11.i234.i.i:                               ; preds = %if.end8.i232.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %472 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %flags.i177.i, align 4
  %or.i55.i233.i.i = or i32 %473, 8
  store i32 %or.i55.i233.i.i, ptr %flags.i177.i, align 4
  br label %if.end12.i237.i.i

if.end12.i237.i.i:                                ; preds = %if.then11.i234.i.i, %if.end8.i232.i.i.if.end12.i237.i.i_crit_edge
  %and13.i235.i.i = and i32 %465, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i235.i.i)
  %tobool14.not.i236.i.i = icmp eq i32 %and13.i235.i.i, 0
  br i1 %tobool14.not.i236.i.i, label %if.end12.i237.i.i.if.end16.i242.i.i_crit_edge, label %if.then15.i239.i.i

if.end12.i237.i.i.if.end16.i242.i.i_crit_edge:    ; preds = %if.end12.i237.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i242.i.i

if.then15.i239.i.i:                               ; preds = %if.end12.i237.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %474 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %flags.i177.i, align 4
  %or.i56.i238.i.i = or i32 %475, 128
  store i32 %or.i56.i238.i.i, ptr %flags.i177.i, align 4
  br label %if.end16.i242.i.i

if.end16.i242.i.i:                                ; preds = %if.then15.i239.i.i, %if.end12.i237.i.i.if.end16.i242.i.i_crit_edge
  %and17.i240.i.i = and i32 %465, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i240.i.i)
  %tobool18.not.i241.i.i = icmp eq i32 %and17.i240.i.i, 0
  br i1 %tobool18.not.i241.i.i, label %if.end16.i242.i.i.if.end20.i247.i.i_crit_edge, label %if.then19.i244.i.i

if.end16.i242.i.i.if.end20.i247.i.i_crit_edge:    ; preds = %if.end16.i242.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i247.i.i

if.then19.i244.i.i:                               ; preds = %if.end16.i242.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %476 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %flags.i177.i, align 4
  %or.i57.i243.i.i = or i32 %477, 256
  store i32 %or.i57.i243.i.i, ptr %flags.i177.i, align 4
  br label %if.end20.i247.i.i

if.end20.i247.i.i:                                ; preds = %if.then19.i244.i.i, %if.end16.i242.i.i.if.end20.i247.i.i_crit_edge
  %and21.i245.i.i = and i32 %465, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i245.i.i)
  %tobool22.not.i246.i.i = icmp eq i32 %and21.i245.i.i, 0
  br i1 %tobool22.not.i246.i.i, label %if.end20.i247.i.i.if.end24.i252.i.i_crit_edge, label %if.then23.i249.i.i

if.end20.i247.i.i.if.end24.i252.i.i_crit_edge:    ; preds = %if.end20.i247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i252.i.i

if.then23.i249.i.i:                               ; preds = %if.end20.i247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %478 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %flags.i177.i, align 4
  %or.i58.i248.i.i = or i32 %479, 512
  store i32 %or.i58.i248.i.i, ptr %flags.i177.i, align 4
  br label %if.end24.i252.i.i

if.end24.i252.i.i:                                ; preds = %if.then23.i249.i.i, %if.end20.i247.i.i.if.end24.i252.i.i_crit_edge
  %and25.i250.i.i = and i32 %465, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i250.i.i)
  %tobool26.not.i251.i.i = icmp eq i32 %and25.i250.i.i, 0
  br i1 %tobool26.not.i251.i.i, label %if.end24.i252.i.i.if.end28.i257.i.i_crit_edge, label %if.then27.i254.i.i

if.end24.i252.i.i.if.end28.i257.i.i_crit_edge:    ; preds = %if.end24.i252.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i257.i.i

if.then27.i254.i.i:                               ; preds = %if.end24.i252.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %480 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %flags.i177.i, align 4
  %or.i59.i253.i.i = or i32 %481, 2048
  store i32 %or.i59.i253.i.i, ptr %flags.i177.i, align 4
  br label %if.end28.i257.i.i

if.end28.i257.i.i:                                ; preds = %if.then27.i254.i.i, %if.end24.i252.i.i.if.end28.i257.i.i_crit_edge
  %and29.i255.i.i = and i32 %465, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i255.i.i)
  %tobool30.not.i256.i.i = icmp eq i32 %and29.i255.i.i, 0
  br i1 %tobool30.not.i256.i.i, label %if.end28.i257.i.i.if.end32.i262.i.i_crit_edge, label %if.then31.i259.i.i

if.end28.i257.i.i.if.end32.i262.i.i_crit_edge:    ; preds = %if.end28.i257.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i262.i.i

if.then31.i259.i.i:                               ; preds = %if.end28.i257.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %482 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %flags.i177.i, align 4
  %or.i60.i258.i.i = or i32 %483, 8192
  store i32 %or.i60.i258.i.i, ptr %flags.i177.i, align 4
  br label %if.end32.i262.i.i

if.end32.i262.i.i:                                ; preds = %if.then31.i259.i.i, %if.end28.i257.i.i.if.end32.i262.i.i_crit_edge
  br i1 %cmp.i.i182.i, label %if.then34.i264.i.i, label %if.end32.i262.i.i.bnx2x_vf_mbx_set_q_flags.exit265.i.i_crit_edge

if.end32.i262.i.i.bnx2x_vf_mbx_set_q_flags.exit265.i.i_crit_edge: ; preds = %if.end32.i262.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_flags.exit265.i.i

if.then34.i264.i.i:                               ; preds = %if.end32.i262.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %484 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %flags.i177.i, align 4
  %or.i61.i263.i.i = or i32 %485, 64
  store i32 %or.i61.i263.i.i, ptr %flags.i177.i, align 4
  br label %bnx2x_vf_mbx_set_q_flags.exit265.i.i

bnx2x_vf_mbx_set_q_flags.exit265.i.i:             ; preds = %if.then34.i264.i.i, %if.end32.i262.i.i.bnx2x_vf_mbx_set_q_flags.exit265.i.i_crit_edge
  %486 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_load8_noabort(i32 %486)
  %487 = load i64, ptr %txq.i.i, align 8
  %conv41.i.i = trunc i64 %487 to i32
  %488 = ptrtoint ptr %txq_params27.i.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %conv41.i.i, ptr %txq_params27.i.i, align 4
  %489 = ptrtoint ptr %sb_index.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %sb_index.i.i, align 1
  %491 = ptrtoint ptr %sb_cq_index44.i.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %490, ptr %sb_cq_index44.i.i, align 1
  %traffic_type.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 2, i32 6
  %492 = ptrtoint ptr %traffic_type.i.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %traffic_type.i.i, align 2
  %conv46.i.i = zext i8 %493 to i16
  %494 = ptrtoint ptr %traffic_type47.i.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %conv46.i.i, ptr %traffic_type47.i.i, align 4
  %495 = ptrtoint ptr %index.i172.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %index.i172.i, align 4
  %497 = ptrtoint ptr %sb_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %sb_idx.i.i, align 2
  call void @bnx2x_vfop_qctor_dump_tx(ptr noundef %bp, ptr noundef %cond, ptr noundef %params.i.i, ptr noundef %prep_qsetup.i.i, i16 noundef zeroext %496, i16 noundef zeroext %498) #8
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %bnx2x_vf_mbx_set_q_flags.exit265.i.i, %if.end21.i.i.if.end50.i.i_crit_edge
  %q_type.0.i.i = phi i32 [ 0, %if.end21.i.i.if.end50.i.i_crit_edge ], [ 2, %bnx2x_vf_mbx_set_q_flags.exit265.i.i ]
  %499 = ptrtoint ptr %param_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %param_valid.i.i, align 1
  %501 = and i8 %500, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool54.not.i.i = icmp eq i8 %501, 0
  br i1 %tobool54.not.i.i, label %if.end50.i.i.if.end113.i.i_crit_edge, label %if.then55.i.i

if.end50.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113.i.i

if.then55.i.i:                                    ; preds = %if.end50.i.i
  %or.i214.i.i = or i32 %q_type.0.i.i, 1
  %rxq.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1
  %vf_sb57.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 4
  %502 = ptrtoint ptr %vf_sb57.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %vf_sb57.i.i, align 8
  %conv58.i.i = zext i8 %503 to i16
  %sb_idx59.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %366, i32 %idxprom.i.i.i, i32 8
  %504 = ptrtoint ptr %sb_idx59.i.i to i32
  call void @__asan_store2_noabort(i32 %504)
  store i16 %conv58.i.i, ptr %sb_idx59.i.i, align 2
  %hc_rate61.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 6
  %505 = ptrtoint ptr %hc_rate61.i.i to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %hc_rate61.i.i, align 2
  %507 = ptrtoint ptr %hc_rate62.i.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 %506, ptr %hc_rate62.i.i, align 4
  %sb_index64.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 5
  %508 = ptrtoint ptr %sb_index64.i.i to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %sb_index64.i.i, align 1
  %510 = ptrtoint ptr %sb_cq_index66.i.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 %509, ptr %sb_cq_index66.i.i, align 1
  %flags68.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 9
  %511 = ptrtoint ptr %flags68.i.i to i32
  call void @__asan_load2_noabort(i32 %511)
  %512 = load i16, ptr %flags68.i.i, align 8
  %conv69.i.i = zext i16 %512 to i32
  %and.i266.i.i = and i32 %conv69.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266.i.i)
  %tobool.not.i267.i.i = icmp eq i32 %and.i266.i.i, 0
  br i1 %tobool.not.i267.i.i, label %if.then55.i.i.if.end.i272.i.i_crit_edge, label %if.then.i269.i.i

if.then55.i.i.if.end.i272.i.i_crit_edge:          ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i272.i.i

if.then.i269.i.i:                                 ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %513 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %rx.i.i, align 4
  %or.i.i268.i.i = or i32 %514, 1
  store i32 %or.i.i268.i.i, ptr %rx.i.i, align 4
  br label %if.end.i272.i.i

if.end.i272.i.i:                                  ; preds = %if.then.i269.i.i, %if.then55.i.i.if.end.i272.i.i_crit_edge
  %and1.i270.i.i = and i32 %conv69.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i270.i.i)
  %tobool2.not.i271.i.i = icmp eq i32 %and1.i270.i.i, 0
  br i1 %tobool2.not.i271.i.i, label %if.end.i272.i.i.if.end4.i277.i.i_crit_edge, label %if.then3.i274.i.i

if.end.i272.i.i.if.end4.i277.i.i_crit_edge:       ; preds = %if.end.i272.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i277.i.i

if.then3.i274.i.i:                                ; preds = %if.end.i272.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %515 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %rx.i.i, align 4
  %or.i53.i273.i.i = or i32 %516, 2
  store i32 %or.i53.i273.i.i, ptr %rx.i.i, align 4
  br label %if.end4.i277.i.i

if.end4.i277.i.i:                                 ; preds = %if.then3.i274.i.i, %if.end.i272.i.i.if.end4.i277.i.i_crit_edge
  %and5.i275.i.i = and i32 %conv69.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i275.i.i)
  %tobool6.not.i276.i.i = icmp eq i32 %and5.i275.i.i, 0
  br i1 %tobool6.not.i276.i.i, label %if.end4.i277.i.i.if.end8.i282.i.i_crit_edge, label %if.then7.i279.i.i

if.end4.i277.i.i.if.end8.i282.i.i_crit_edge:      ; preds = %if.end4.i277.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i282.i.i

if.then7.i279.i.i:                                ; preds = %if.end4.i277.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %517 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %rx.i.i, align 4
  %or.i54.i278.i.i = or i32 %518, 4
  store i32 %or.i54.i278.i.i, ptr %rx.i.i, align 4
  br label %if.end8.i282.i.i

if.end8.i282.i.i:                                 ; preds = %if.then7.i279.i.i, %if.end4.i277.i.i.if.end8.i282.i.i_crit_edge
  %and9.i280.i.i = and i32 %conv69.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i280.i.i)
  %tobool10.not.i281.i.i = icmp eq i32 %and9.i280.i.i, 0
  br i1 %tobool10.not.i281.i.i, label %if.end8.i282.i.i.if.end12.i287.i.i_crit_edge, label %if.then11.i284.i.i

if.end8.i282.i.i.if.end12.i287.i.i_crit_edge:     ; preds = %if.end8.i282.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i287.i.i

if.then11.i284.i.i:                               ; preds = %if.end8.i282.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %519 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %rx.i.i, align 4
  %or.i55.i283.i.i = or i32 %520, 8
  store i32 %or.i55.i283.i.i, ptr %rx.i.i, align 4
  br label %if.end12.i287.i.i

if.end12.i287.i.i:                                ; preds = %if.then11.i284.i.i, %if.end8.i282.i.i.if.end12.i287.i.i_crit_edge
  %and13.i285.i.i = and i32 %conv69.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i285.i.i)
  %tobool14.not.i286.i.i = icmp eq i32 %and13.i285.i.i, 0
  br i1 %tobool14.not.i286.i.i, label %if.end12.i287.i.i.if.end16.i292.i.i_crit_edge, label %if.then15.i289.i.i

if.end12.i287.i.i.if.end16.i292.i.i_crit_edge:    ; preds = %if.end12.i287.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i292.i.i

if.then15.i289.i.i:                               ; preds = %if.end12.i287.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %521 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %rx.i.i, align 4
  %or.i56.i288.i.i = or i32 %522, 128
  store i32 %or.i56.i288.i.i, ptr %rx.i.i, align 4
  br label %if.end16.i292.i.i

if.end16.i292.i.i:                                ; preds = %if.then15.i289.i.i, %if.end12.i287.i.i.if.end16.i292.i.i_crit_edge
  %and17.i290.i.i = and i32 %conv69.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i290.i.i)
  %tobool18.not.i291.i.i = icmp eq i32 %and17.i290.i.i, 0
  br i1 %tobool18.not.i291.i.i, label %if.end16.i292.i.i.if.end20.i297.i.i_crit_edge, label %if.then19.i294.i.i

if.end16.i292.i.i.if.end20.i297.i.i_crit_edge:    ; preds = %if.end16.i292.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i297.i.i

if.then19.i294.i.i:                               ; preds = %if.end16.i292.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %523 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %rx.i.i, align 4
  %or.i57.i293.i.i = or i32 %524, 256
  store i32 %or.i57.i293.i.i, ptr %rx.i.i, align 4
  br label %if.end20.i297.i.i

if.end20.i297.i.i:                                ; preds = %if.then19.i294.i.i, %if.end16.i292.i.i.if.end20.i297.i.i_crit_edge
  %and21.i295.i.i = and i32 %conv69.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i295.i.i)
  %tobool22.not.i296.i.i = icmp eq i32 %and21.i295.i.i, 0
  br i1 %tobool22.not.i296.i.i, label %if.end20.i297.i.i.if.end24.i302.i.i_crit_edge, label %if.then23.i299.i.i

if.end20.i297.i.i.if.end24.i302.i.i_crit_edge:    ; preds = %if.end20.i297.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i302.i.i

if.then23.i299.i.i:                               ; preds = %if.end20.i297.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %525 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %rx.i.i, align 4
  %or.i58.i298.i.i = or i32 %526, 512
  store i32 %or.i58.i298.i.i, ptr %rx.i.i, align 4
  br label %if.end24.i302.i.i

if.end24.i302.i.i:                                ; preds = %if.then23.i299.i.i, %if.end20.i297.i.i.if.end24.i302.i.i_crit_edge
  %and25.i300.i.i = and i32 %conv69.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i300.i.i)
  %tobool26.not.i301.i.i = icmp eq i32 %and25.i300.i.i, 0
  br i1 %tobool26.not.i301.i.i, label %if.end24.i302.i.i.if.end28.i307.i.i_crit_edge, label %if.then27.i304.i.i

if.end24.i302.i.i.if.end28.i307.i.i_crit_edge:    ; preds = %if.end24.i302.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i307.i.i

if.then27.i304.i.i:                               ; preds = %if.end24.i302.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %527 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %rx.i.i, align 4
  %or.i59.i303.i.i = or i32 %528, 2048
  store i32 %or.i59.i303.i.i, ptr %rx.i.i, align 4
  br label %if.end28.i307.i.i

if.end28.i307.i.i:                                ; preds = %if.then27.i304.i.i, %if.end24.i302.i.i.if.end28.i307.i.i_crit_edge
  %and29.i305.i.i = and i32 %conv69.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i305.i.i)
  %tobool30.not.i306.i.i = icmp eq i32 %and29.i305.i.i, 0
  br i1 %tobool30.not.i306.i.i, label %if.end28.i307.i.i.if.end32.i312.i.i_crit_edge, label %if.then31.i309.i.i

if.end28.i307.i.i.if.end32.i312.i.i_crit_edge:    ; preds = %if.end28.i307.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i312.i.i

if.then31.i309.i.i:                               ; preds = %if.end28.i307.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %529 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %rx.i.i, align 4
  %or.i60.i308.i.i = or i32 %530, 8192
  store i32 %or.i60.i308.i.i, ptr %rx.i.i, align 4
  br label %if.end32.i312.i.i

if.end32.i312.i.i:                                ; preds = %if.then31.i309.i.i, %if.end28.i307.i.i.if.end32.i312.i.i_crit_edge
  %531 = ptrtoint ptr %mf_mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %mf_mode.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %532)
  %cmp.i311.i.i = icmp eq i8 %532, 1
  br i1 %cmp.i311.i.i, label %if.then34.i314.i.i, label %if.end32.i312.i.i.bnx2x_vf_mbx_set_q_flags.exit315.i.i_crit_edge

if.end32.i312.i.i.bnx2x_vf_mbx_set_q_flags.exit315.i.i_crit_edge: ; preds = %if.end32.i312.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_flags.exit315.i.i

if.then34.i314.i.i:                               ; preds = %if.end32.i312.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %533 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %rx.i.i, align 4
  %or.i61.i313.i.i = or i32 %534, 64
  store i32 %or.i61.i313.i.i, ptr %rx.i.i, align 4
  br label %bnx2x_vf_mbx_set_q_flags.exit315.i.i

bnx2x_vf_mbx_set_q_flags.exit315.i.i:             ; preds = %if.then34.i314.i.i, %if.end32.i312.i.i.bnx2x_vf_mbx_set_q_flags.exit315.i.i_crit_edge
  %535 = ptrtoint ptr %flags68.i.i to i32
  call void @__asan_load2_noabort(i32 %535)
  %536 = load i16, ptr %flags68.i.i, align 8
  %conv74.i.i = zext i16 %536 to i32
  %and.i316.i.i = and i32 %conv74.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i316.i.i)
  %tobool.not.i317.i.i = icmp eq i32 %and.i316.i.i, 0
  br i1 %tobool.not.i317.i.i, label %bnx2x_vf_mbx_set_q_flags.exit315.i.i.if.end.i322.i.i_crit_edge, label %if.then.i319.i.i

bnx2x_vf_mbx_set_q_flags.exit315.i.i.if.end.i322.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_set_q_flags.exit315.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i322.i.i

if.then.i319.i.i:                                 ; preds = %bnx2x_vf_mbx_set_q_flags.exit315.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %537 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %flags.i177.i, align 4
  %or.i.i318.i.i = or i32 %538, 1
  store i32 %or.i.i318.i.i, ptr %flags.i177.i, align 4
  br label %if.end.i322.i.i

if.end.i322.i.i:                                  ; preds = %if.then.i319.i.i, %bnx2x_vf_mbx_set_q_flags.exit315.i.i.if.end.i322.i.i_crit_edge
  %and1.i320.i.i = and i32 %conv74.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i320.i.i)
  %tobool2.not.i321.i.i = icmp eq i32 %and1.i320.i.i, 0
  br i1 %tobool2.not.i321.i.i, label %if.end.i322.i.i.if.end4.i327.i.i_crit_edge, label %if.then3.i324.i.i

if.end.i322.i.i.if.end4.i327.i.i_crit_edge:       ; preds = %if.end.i322.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i327.i.i

if.then3.i324.i.i:                                ; preds = %if.end.i322.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %539 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %flags.i177.i, align 4
  %or.i53.i323.i.i = or i32 %540, 2
  store i32 %or.i53.i323.i.i, ptr %flags.i177.i, align 4
  br label %if.end4.i327.i.i

if.end4.i327.i.i:                                 ; preds = %if.then3.i324.i.i, %if.end.i322.i.i.if.end4.i327.i.i_crit_edge
  %and5.i325.i.i = and i32 %conv74.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i325.i.i)
  %tobool6.not.i326.i.i = icmp eq i32 %and5.i325.i.i, 0
  br i1 %tobool6.not.i326.i.i, label %if.end4.i327.i.i.if.end8.i332.i.i_crit_edge, label %if.then7.i329.i.i

if.end4.i327.i.i.if.end8.i332.i.i_crit_edge:      ; preds = %if.end4.i327.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i332.i.i

if.then7.i329.i.i:                                ; preds = %if.end4.i327.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %541 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %flags.i177.i, align 4
  %or.i54.i328.i.i = or i32 %542, 4
  store i32 %or.i54.i328.i.i, ptr %flags.i177.i, align 4
  br label %if.end8.i332.i.i

if.end8.i332.i.i:                                 ; preds = %if.then7.i329.i.i, %if.end4.i327.i.i.if.end8.i332.i.i_crit_edge
  %and9.i330.i.i = and i32 %conv74.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i330.i.i)
  %tobool10.not.i331.i.i = icmp eq i32 %and9.i330.i.i, 0
  br i1 %tobool10.not.i331.i.i, label %if.end8.i332.i.i.if.end12.i337.i.i_crit_edge, label %if.then11.i334.i.i

if.end8.i332.i.i.if.end12.i337.i.i_crit_edge:     ; preds = %if.end8.i332.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i337.i.i

if.then11.i334.i.i:                               ; preds = %if.end8.i332.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %543 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %flags.i177.i, align 4
  %or.i55.i333.i.i = or i32 %544, 8
  store i32 %or.i55.i333.i.i, ptr %flags.i177.i, align 4
  br label %if.end12.i337.i.i

if.end12.i337.i.i:                                ; preds = %if.then11.i334.i.i, %if.end8.i332.i.i.if.end12.i337.i.i_crit_edge
  %and13.i335.i.i = and i32 %conv74.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i335.i.i)
  %tobool14.not.i336.i.i = icmp eq i32 %and13.i335.i.i, 0
  br i1 %tobool14.not.i336.i.i, label %if.end12.i337.i.i.if.end16.i342.i.i_crit_edge, label %if.then15.i339.i.i

if.end12.i337.i.i.if.end16.i342.i.i_crit_edge:    ; preds = %if.end12.i337.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i342.i.i

if.then15.i339.i.i:                               ; preds = %if.end12.i337.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %545 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %flags.i177.i, align 4
  %or.i56.i338.i.i = or i32 %546, 128
  store i32 %or.i56.i338.i.i, ptr %flags.i177.i, align 4
  br label %if.end16.i342.i.i

if.end16.i342.i.i:                                ; preds = %if.then15.i339.i.i, %if.end12.i337.i.i.if.end16.i342.i.i_crit_edge
  %and17.i340.i.i = and i32 %conv74.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i340.i.i)
  %tobool18.not.i341.i.i = icmp eq i32 %and17.i340.i.i, 0
  br i1 %tobool18.not.i341.i.i, label %if.end16.i342.i.i.if.end20.i347.i.i_crit_edge, label %if.then19.i344.i.i

if.end16.i342.i.i.if.end20.i347.i.i_crit_edge:    ; preds = %if.end16.i342.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i347.i.i

if.then19.i344.i.i:                               ; preds = %if.end16.i342.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %547 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %flags.i177.i, align 4
  %or.i57.i343.i.i = or i32 %548, 256
  store i32 %or.i57.i343.i.i, ptr %flags.i177.i, align 4
  br label %if.end20.i347.i.i

if.end20.i347.i.i:                                ; preds = %if.then19.i344.i.i, %if.end16.i342.i.i.if.end20.i347.i.i_crit_edge
  %and21.i345.i.i = and i32 %conv74.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i345.i.i)
  %tobool22.not.i346.i.i = icmp eq i32 %and21.i345.i.i, 0
  br i1 %tobool22.not.i346.i.i, label %if.end20.i347.i.i.if.end24.i352.i.i_crit_edge, label %if.then23.i349.i.i

if.end20.i347.i.i.if.end24.i352.i.i_crit_edge:    ; preds = %if.end20.i347.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i352.i.i

if.then23.i349.i.i:                               ; preds = %if.end20.i347.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %549 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %flags.i177.i, align 4
  %or.i58.i348.i.i = or i32 %550, 512
  store i32 %or.i58.i348.i.i, ptr %flags.i177.i, align 4
  br label %if.end24.i352.i.i

if.end24.i352.i.i:                                ; preds = %if.then23.i349.i.i, %if.end20.i347.i.i.if.end24.i352.i.i_crit_edge
  %and25.i350.i.i = and i32 %conv74.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i350.i.i)
  %tobool26.not.i351.i.i = icmp eq i32 %and25.i350.i.i, 0
  br i1 %tobool26.not.i351.i.i, label %if.end24.i352.i.i.if.end28.i357.i.i_crit_edge, label %if.then27.i354.i.i

if.end24.i352.i.i.if.end28.i357.i.i_crit_edge:    ; preds = %if.end24.i352.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i357.i.i

if.then27.i354.i.i:                               ; preds = %if.end24.i352.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %551 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %flags.i177.i, align 4
  %or.i59.i353.i.i = or i32 %552, 2048
  store i32 %or.i59.i353.i.i, ptr %flags.i177.i, align 4
  br label %if.end28.i357.i.i

if.end28.i357.i.i:                                ; preds = %if.then27.i354.i.i, %if.end24.i352.i.i.if.end28.i357.i.i_crit_edge
  %and29.i355.i.i = and i32 %conv74.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i355.i.i)
  %tobool30.not.i356.i.i = icmp eq i32 %and29.i355.i.i, 0
  br i1 %tobool30.not.i356.i.i, label %if.end28.i357.i.i.if.end32.i362.i.i_crit_edge, label %if.then31.i359.i.i

if.end28.i357.i.i.if.end32.i362.i.i_crit_edge:    ; preds = %if.end28.i357.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i362.i.i

if.then31.i359.i.i:                               ; preds = %if.end28.i357.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %553 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %flags.i177.i, align 4
  %or.i60.i358.i.i = or i32 %554, 8192
  store i32 %or.i60.i358.i.i, ptr %flags.i177.i, align 4
  br label %if.end32.i362.i.i

if.end32.i362.i.i:                                ; preds = %if.then31.i359.i.i, %if.end28.i357.i.i.if.end32.i362.i.i_crit_edge
  br i1 %cmp.i311.i.i, label %if.then34.i364.i.i, label %if.end32.i362.i.i.bnx2x_vf_mbx_set_q_flags.exit365.i.i_crit_edge

if.end32.i362.i.i.bnx2x_vf_mbx_set_q_flags.exit365.i.i_crit_edge: ; preds = %if.end32.i362.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_flags.exit365.i.i

if.then34.i364.i.i:                               ; preds = %if.end32.i362.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %555 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %flags.i177.i, align 4
  %or.i61.i363.i.i = or i32 %556, 64
  store i32 %or.i61.i363.i.i, ptr %flags.i177.i, align 4
  br label %bnx2x_vf_mbx_set_q_flags.exit365.i.i

bnx2x_vf_mbx_set_q_flags.exit365.i.i:             ; preds = %if.then34.i364.i.i, %if.end32.i362.i.i.bnx2x_vf_mbx_set_q_flags.exit365.i.i_crit_edge
  %mtu.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 7
  %557 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %mtu.i.i, align 4
  %559 = ptrtoint ptr %mtu77.i.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %558, ptr %mtu77.i.i, align 2
  %drop_flags.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 14
  %560 = ptrtoint ptr %drop_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %drop_flags.i.i, align 1
  %conv79.i.i = zext i8 %561 to i16
  %562 = ptrtoint ptr %drop_flags80.i.i to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 %conv79.i.i, ptr %drop_flags80.i.i, align 4
  %rxq_addr.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 2
  %563 = ptrtoint ptr %rxq_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %563)
  %564 = load i64, ptr %rxq_addr.i.i, align 8
  %conv82.i.i = trunc i64 %564 to i32
  %565 = ptrtoint ptr %rxq_params56.i.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %conv82.i.i, ptr %rxq_params56.i.i, align 4
  %sge_addr.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 3
  %566 = ptrtoint ptr %sge_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %566)
  %567 = load i64, ptr %sge_addr.i.i, align 8
  %conv85.i.i = trunc i64 %567 to i32
  %568 = ptrtoint ptr %sge_map.i.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %conv85.i.i, ptr %sge_map.i.i, align 4
  %569 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load8_noabort(i32 %569)
  %570 = load i64, ptr %rxq.i.i, align 8
  %conv87.i.i = trunc i64 %570 to i32
  %571 = ptrtoint ptr %rcq_map.i.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %conv87.i.i, ptr %rcq_map.i.i, align 4
  %rcq_np_addr.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 1
  %572 = ptrtoint ptr %rcq_np_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %572)
  %573 = load i64, ptr %rcq_np_addr.i.i, align 8
  %conv89.i.i = trunc i64 %573 to i32
  %574 = ptrtoint ptr %rcq_np_map.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %conv89.i.i, ptr %rcq_np_map.i.i, align 4
  %buf_sz.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 8
  %575 = ptrtoint ptr %buf_sz.i.i to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %buf_sz.i.i, align 2
  %577 = ptrtoint ptr %buf_sz91.i.i to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 %576, ptr %buf_sz91.i.i, align 2
  %tpa_agg_sz.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 12
  %578 = ptrtoint ptr %tpa_agg_sz.i.i to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %tpa_agg_sz.i.i, align 2
  %580 = ptrtoint ptr %tpa_agg_sz93.i.i to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %579, ptr %tpa_agg_sz93.i.i, align 2
  %max_sge_pkt.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 13
  %581 = ptrtoint ptr %max_sge_pkt.i.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %max_sge_pkt.i.i, align 8
  %583 = ptrtoint ptr %max_sges_pkt.i.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %582, ptr %max_sges_pkt.i.i, align 2
  %sge_buf_sz.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 11
  %584 = ptrtoint ptr %sge_buf_sz.i.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %sge_buf_sz.i.i, align 4
  %586 = ptrtoint ptr %sge_buf_sz96.i.i to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %585, ptr %sge_buf_sz96.i.i, align 4
  %cache_line_log.i.i = getelementptr inbounds %struct.vfpf_setup_q_tlv, ptr %354, i32 0, i32 1, i32 15
  %587 = ptrtoint ptr %cache_line_log.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %cache_line_log.i.i, align 2
  %589 = ptrtoint ptr %cache_line_log98.i.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %588, ptr %cache_line_log98.i.i, align 2
  %590 = ptrtoint ptr %sb_index64.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %sb_index64.i.i, align 1
  %592 = ptrtoint ptr %sb_cq_index101.i.i to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %591, ptr %sb_cq_index101.i.i, align 1
  %593 = ptrtoint ptr %index.i172.i to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %index.i172.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %594)
  %cmp104.i.i = icmp eq i16 %594, 0
  br i1 %cmp104.i.i, label %if.then106.i.i, label %bnx2x_vf_mbx_set_q_flags.exit365.i.i.if.end110.i.i_crit_edge

bnx2x_vf_mbx_set_q_flags.exit365.i.i.if.end110.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_set_q_flags.exit365.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.i.i

if.then106.i.i:                                   ; preds = %bnx2x_vf_mbx_set_q_flags.exit365.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %595 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %abs_vfid, align 1
  %add.i184.i = add i8 %596, 8
  %597 = ptrtoint ptr %mcast_engine_id.i.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %add.i184.i, ptr %mcast_engine_id.i.i, align 1
  %598 = ptrtoint ptr %flags.i177.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %flags.i177.i, align 4
  %or.i215.i.i = or i32 %599, 16384
  store i32 %or.i215.i.i, ptr %flags.i177.i, align 4
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %if.then106.i.i, %bnx2x_vf_mbx_set_q_flags.exit365.i.i.if.end110.i.i_crit_edge
  %600 = ptrtoint ptr %index.i172.i to i32
  call void @__asan_load2_noabort(i32 %600)
  %601 = load i16, ptr %index.i172.i, align 4
  %602 = ptrtoint ptr %sb_idx59.i.i to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %sb_idx59.i.i, align 2
  call void @bnx2x_vfop_qctor_dump_rx(ptr noundef %bp, ptr noundef %cond, ptr noundef %params.i.i, ptr noundef %prep_qsetup.i.i, i16 noundef zeroext %601, i16 noundef zeroext %603) #8
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %if.end110.i.i, %if.end50.i.i.if.end113.i.i_crit_edge
  %q_type.1.i.i = phi i32 [ %q_type.0.i.i, %if.end50.i.i.if.end113.i.i_crit_edge ], [ %or.i214.i.i, %if.end110.i.i ]
  call void @bnx2x_vfop_qctor_prep(ptr noundef %bp, ptr noundef %cond, ptr noundef %arrayidx.i.i171.i, ptr noundef nonnull %qctor.i.i, i32 noundef %q_type.1.i.i) #8
  %604 = ptrtoint ptr %index.i172.i to i32
  call void @__asan_load2_noabort(i32 %604)
  %605 = load i16, ptr %index.i172.i, align 4
  %conv115.i.i = zext i16 %605 to i32
  %call116.i185.i = call i32 @bnx2x_vf_queue_setup(ptr noundef %bp, ptr noundef %cond, i32 noundef %conv115.i.i, ptr noundef nonnull %qctor.i.i) #8
  br label %bnx2x_vf_mbx_setup_q.exit.i

bnx2x_vf_mbx_setup_q.exit.i:                      ; preds = %if.end113.i.i, %if.end.i170.i.bnx2x_vf_mbx_setup_q.exit.i_crit_edge, %do.end.i169.i
  %rc.0.i.i = phi i32 [ -22, %do.end.i169.i ], [ %call116.i185.i, %if.end113.i.i ], [ 0, %if.end.i170.i.bnx2x_vf_mbx_setup_q.exit.i_crit_edge ]
  %606 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %vfdb1, align 8
  %index.i.i366.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %608 = ptrtoint ptr %index.i.i366.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %index.i.i366.i.i, align 8
  %idxprom.i.i.i187.i = zext i8 %609 to i32
  %arrayidx.i.i.i188.i = getelementptr %struct.bnx2x_vfdb, ptr %607, i32 0, i32 5, i32 %idxprom.i.i.i187.i
  %first_tlv.i.i.i189.i = getelementptr %struct.bnx2x_vfdb, ptr %607, i32 0, i32 5, i32 %idxprom.i.i.i187.i, i32 4
  %610 = ptrtoint ptr %first_tlv.i.i.i189.i to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %first_tlv.i.i.i189.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %611)
  %cmp.i.i.i190.i = icmp eq i16 %611, 1
  %conv3.i.i.i191.i = select i1 %cmp.i.i.i190.i, i16 120, i16 8
  %612 = ptrtoint ptr %arrayidx.i.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %arrayidx.i.i.i188.i, align 4
  %resp.i.i.i192.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %613, i32 0, i32 1
  %614 = ptrtoint ptr %resp.i.i.i192.i to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 %611, ptr %resp.i.i.i192.i, align 2
  %length2.i.i.i.i193.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %613, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %615 = ptrtoint ptr %length2.i.i.i.i193.i to i32
  call void @__asan_store2_noabort(i32 %615)
  store i16 %conv3.i.i.i191.i, ptr %length2.i.i.i.i193.i, align 2
  %616 = load ptr, ptr %arrayidx.i.i.i188.i, align 4
  %resp5.i.i.i194.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %616, i32 0, i32 1
  %conv.i.i.i.i195.i = zext i16 %conv3.i.i.i191.i to i32
  %add.ptr.i.i.i.i196.i = getelementptr i8, ptr %resp5.i.i.i194.i, i32 %conv.i.i.i.i195.i
  %617 = ptrtoint ptr %add.ptr.i.i.i.i196.i to i32
  call void @__asan_store2_noabort(i32 %617)
  store i16 12, ptr %add.ptr.i.i.i.i196.i, align 2
  %length2.i12.i.i.i197.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i196.i, i32 0, i32 1
  %618 = ptrtoint ptr %length2.i12.i.i.i197.i to i32
  call void @__asan_store2_noabort(i32 %618)
  store i16 8, ptr %length2.i12.i.i.i197.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %rc.0.i.i) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %qctor.i.i) #8
  br label %for.inc

sw.bb26.i:                                        ; preds = %if.then15.i
  %619 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %arrayidx, align 4
  %621 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %vfdb1, align 8
  %bulletin_dma.i.i199.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %622, i32 0, i32 6
  %623 = ptrtoint ptr %bulletin_dma.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %bulletin_dma.i.i199.i, align 8
  %index.i.i200.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %625 = ptrtoint ptr %index.i.i200.i to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %index.i.i200.i, align 8
  %conv.i.i.i = zext i8 %626 to i32
  %valid_bitmap.i.i201.i = getelementptr %struct.pf_vf_bulletin_content, ptr %624, i32 %conv.i.i.i, i32 3
  %627 = ptrtoint ptr %valid_bitmap.i.i201.i to i32
  call void @__asan_load8_noabort(i32 %627)
  %628 = load i64, ptr %valid_bitmap.i.i201.i, align 8
  %and.i.i202.i = and i64 %628, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i202.i)
  %tobool.not.i.i203.i = icmp eq i64 %and.i.i202.i, 0
  br i1 %tobool.not.i.i203.i, label %sw.bb26.i.if.end.i218.i_crit_edge, label %for.cond.preheader.i.i.i

sw.bb26.i.if.end.i218.i_crit_edge:                ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i218.i

for.cond.preheader.i.i.i:                         ; preds = %sw.bb26.i
  %n_mac_vlan_filters.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 3
  %629 = ptrtoint ptr %n_mac_vlan_filters.i.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %n_mac_vlan_filters.i.i.i, align 1
  %conv1.i.i.i = zext i8 %630 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %630)
  %cmp69.not.i.i.i = icmp eq i8 %630, 0
  br i1 %cmp69.not.i.i.i, label %for.cond.preheader.i.i.i.if.end.i218.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i205.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i205.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i205.i

for.cond.preheader.i.i.i.if.end.i218.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i218.i

for.body.i.i205.i:                                ; preds = %for.inc.i.i.i.for.body.i.i205.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i205.i_crit_edge
  %i.071.i.i.i = phi i32 [ %inc.i.i212.i, %for.inc.i.i.i.for.body.i.i205.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i205.i_crit_edge ]
  %filter.070.i.i.i = phi ptr [ %filter.1.i.i.i, %for.inc.i.i.i.for.body.i.i205.i_crit_edge ], [ null, %for.cond.preheader.i.i.i.for.body.i.i205.i_crit_edge ]
  %arrayidx.i.i204.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 6, i32 %i.071.i.i.i
  %631 = ptrtoint ptr %arrayidx.i.i204.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %arrayidx.i.i204.i, align 4
  %and4.i.i.i = and i32 %632, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %for.body.i.i205.i.for.inc.i.i.i_crit_edge, label %if.end.i.i206.i

for.body.i.i205.i.for.inc.i.i.i_crit_edge:        ; preds = %for.body.i.i205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.end.i.i206.i:                                  ; preds = %for.body.i.i205.i
  %tobool7.not.i.i.i = icmp eq ptr %filter.070.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %if.end.i.i206.i.for.inc.i.i.i_crit_edge, label %do.end.i.i211.i

if.end.i.i206.i.for.inc.i.i.i_crit_edge:          ; preds = %if.end.i.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

do.end.i.i211.i:                                  ; preds = %if.end.i.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  %633 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %dev, align 4
  %tobool10.not.i.i208.i = icmp eq ptr %634, null
  %spec.select.i.i209.i = select i1 %tobool10.not.i.i208.i, ptr @.str.3, ptr %634
  %635 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %abs_vfid, align 1
  %conv12.i.i.i = zext i8 %636 to i32
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198, i32 noundef 1863, ptr noundef nonnull %spec.select.i.i209.i, i32 noundef %conv12.i.i.i, i32 noundef %conv1.i.i.i) #11
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i206.i.for.inc.i.i.i_crit_edge, %for.body.i.i205.i.for.inc.i.i.i_crit_edge
  %filter.1.i.i.i = phi ptr [ %filter.070.i.i.i, %for.body.i.i205.i.for.inc.i.i.i_crit_edge ], [ %arrayidx.i.i204.i, %if.end.i.i206.i.for.inc.i.i.i_crit_edge ]
  %inc.i.i212.i = add nuw nsw i32 %i.071.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i212.i, %conv1.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.inc.i.i.i.for.body.i.i205.i_crit_edge

for.inc.i.i.i.for.body.i.i205.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i205.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i
  %tobool20.not.i.i213.i = icmp eq ptr %filter.1.i.i.i, null
  br i1 %tobool20.not.i.i213.i, label %for.end.i.i.i.if.end.i218.i_crit_edge, label %land.lhs.true.i.i.i

for.end.i.i.i.if.end.i218.i_crit_edge:            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i218.i

land.lhs.true.i.i.i:                              ; preds = %for.end.i.i.i
  %mac.i.i214.i = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, ptr %filter.1.i.i.i, i32 0, i32 1
  %mac22.i.i.i = getelementptr %struct.pf_vf_bulletin_content, ptr %624, i32 %conv.i.i.i, i32 4
  %637 = ptrtoint ptr %mac.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %mac.i.i214.i, align 4
  %639 = ptrtoint ptr %mac22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %mac22.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %640, %638
  %add.ptr.i.i.i215.i = getelementptr %struct.vfpf_q_mac_vlan_filter, ptr %filter.1.i.i.i, i32 0, i32 1, i32 4
  %641 = ptrtoint ptr %add.ptr.i.i.i215.i to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %add.ptr.i.i.i215.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %mac22.i.i.i, i32 4
  %643 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %643)
  %644 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %644, %642
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i216.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i216.i)
  %cmp.i.i.i217.i = icmp eq i32 %or.i.i.i216.i, 0
  br i1 %cmp.i.i.i217.i, label %land.lhs.true.i.i.i.if.end.i218.i_crit_edge, label %do.end29.i.i.i

land.lhs.true.i.i.i.if.end.i218.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i218.i

do.end29.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %645 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %dev, align 4
  %tobool32.not.i.i.i = icmp eq ptr %646, null
  %spec.select66.i.i.i = select i1 %tobool32.not.i.i.i, ptr @.str.3, ptr %646
  %647 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %abs_vfid, align 1
  %conv41.i.i.i = zext i8 %648 to i32
  %call42.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.198, i32 noundef 1875, ptr noundef nonnull %spec.select66.i.i.i, i32 noundef %conv41.i.i.i) #11
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

if.end.i218.i:                                    ; preds = %land.lhs.true.i.i.i.if.end.i218.i_crit_edge, %for.end.i.i.i.if.end.i218.i_crit_edge, %for.cond.preheader.i.i.i.if.end.i218.i_crit_edge, %sw.bb26.i.if.end.i218.i_crit_edge
  %and.i39.i.i = and i64 %628, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i39.i.i)
  %tobool.not.i40.i.i = icmp eq i64 %and.i39.i.i, 0
  br i1 %tobool.not.i40.i.i, label %if.end.i218.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge, label %if.then.i.i219.i

if.end.i218.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge: ; preds = %if.end.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_filters_validate_vlan.exit.i.i

if.then.i.i219.i:                                 ; preds = %if.end.i218.i
  %n_mac_vlan_filters.i.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 3
  %649 = ptrtoint ptr %n_mac_vlan_filters.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %n_mac_vlan_filters.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %650 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %650)
  %cmp1.not.i.i.i.i = icmp eq i8 %650, 0
  br i1 %cmp1.not.i.i.i.i, label %if.then.i.i219.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge, label %if.then.i.i219.i.for.body.i.i.i.i_crit_edge

if.then.i.i219.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.then.i.i219.i
  br label %for.body.i.i.i.i

if.then.i.i219.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge: ; preds = %if.then.i.i219.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_filters_validate_vlan.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i219.i.for.body.i.i.i.i_crit_edge
  %cnt.03.i.i.i.i = phi i32 [ %spec.select.i.i.i222.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.then.i.i219.i.for.body.i.i.i.i_crit_edge ]
  %i.02.i.i.i.i = phi i32 [ %inc6.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.then.i.i219.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i220.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 6, i32 %i.02.i.i.i.i
  %651 = ptrtoint ptr %arrayidx.i.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %arrayidx.i.i.i220.i, align 4
  %and.i.i.i221.i = lshr i32 %652, 1
  %and.lobit.i.i.i.i = and i32 %and.i.i.i221.i, 1
  %spec.select.i.i.i222.i = add i32 %and.lobit.i.i.i.i, %cnt.03.i.i.i.i
  %inc6.i.i.i.i = add nuw nsw i32 %i.02.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc6.i.i.i.i, %conv.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %bnx2x_vf_filters_contain.exit.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

bnx2x_vf_filters_contain.exit.i.i.i:              ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i222.i)
  %tobool1.not.i.i.i = icmp eq i32 %spec.select.i.i.i222.i, 0
  br i1 %tobool1.not.i.i.i, label %bnx2x_vf_filters_contain.exit.i.i.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge, label %bnx2x_filters_validate_vlan.exit.thread.i.i

bnx2x_vf_filters_contain.exit.i.i.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge: ; preds = %bnx2x_vf_filters_contain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_filters_validate_vlan.exit.i.i

bnx2x_filters_validate_vlan.exit.thread.i.i:      ; preds = %bnx2x_vf_filters_contain.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %653 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %dev, align 4
  %tobool4.not.i.i.i = icmp eq ptr %654, null
  %spec.select.i42.i.i = select i1 %tobool4.not.i.i.i, ptr @.str.3, ptr %654
  %655 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %abs_vfid, align 1
  %conv6.i.i.i = zext i8 %656 to i32
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef 1900, ptr noundef nonnull %spec.select.i42.i.i, i32 noundef %conv6.i.i.i) #11
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

bnx2x_filters_validate_vlan.exit.i.i:             ; preds = %bnx2x_vf_filters_contain.exit.i.i.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge, %if.then.i.i219.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge, %if.end.i218.i.bnx2x_filters_validate_vlan.exit.i.i_crit_edge
  %vf_qid.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 2
  %657 = ptrtoint ptr %vf_qid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %vf_qid.i.i.i, align 4
  %alloc_resc.i.i223.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 9
  %659 = ptrtoint ptr %alloc_resc.i.i223.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %alloc_resc.i.i223.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %658, i8 %660)
  %cmp.i.not.i.i = icmp ugt i8 %658, %660
  br i1 %cmp.i.not.i.i, label %bnx2x_filters_validate_vlan.exit.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge, label %do.body.i.i

bnx2x_filters_validate_vlan.exit.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge: ; preds = %bnx2x_filters_validate_vlan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

do.body.i.i:                                      ; preds = %bnx2x_filters_validate_vlan.exit.i.i
  %661 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %msg_enable, align 8
  %and.i225.i = and i32 %662, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225.i)
  %tobool5.not.i.i = icmp eq i32 %and.i225.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.do.end16.i.i_crit_edge, label %do.end.i230.i, !prof !412

do.body.i.i.do.end16.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i.i

do.end.i230.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %663 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %dev, align 4
  %tobool10.not.i.i = icmp eq ptr %664, null
  %spec.select.i227.i = select i1 %tobool10.not.i.i, ptr @.str.3, ptr %664
  %665 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %abs_vfid, align 1
  %conv.i229.i = zext i8 %666 to i32
  %conv12.i.i = zext i8 %658 to i32
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef 1933, ptr noundef nonnull %spec.select.i227.i, i32 noundef %conv.i229.i, i32 noundef %conv12.i.i) #11
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %do.end.i230.i, %do.body.i.i.do.end16.i.i_crit_edge
  %flags.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 1
  %667 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %flags.i.i.i, align 4
  %and.i45.i.i = and i32 %668, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i.i)
  %tobool.not.i46.i.i = icmp eq i32 %and.i45.i.i, 0
  br i1 %tobool.not.i46.i.i, label %do.end16.i.i.if.end.i59.i.i_crit_edge, label %for.cond.preheader.i48.i.i

do.end16.i.i.if.end.i59.i.i_crit_edge:            ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i59.i.i

for.cond.preheader.i48.i.i:                       ; preds = %do.end16.i.i
  %n_mac_vlan_filters.i47.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 3
  %669 = ptrtoint ptr %n_mac_vlan_filters.i47.i.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %n_mac_vlan_filters.i47.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %670)
  %cmp3.not.i.i.i = icmp eq i8 %670, 0
  br i1 %cmp3.not.i.i.i, label %for.cond.preheader.i48.i.i.if.end.i59.i.i_crit_edge, label %for.cond.preheader.i48.i.i.for.body.i51.i.i_crit_edge

for.cond.preheader.i48.i.i.for.body.i51.i.i_crit_edge: ; preds = %for.cond.preheader.i48.i.i
  br label %for.body.i51.i.i

for.cond.preheader.i48.i.i.if.end.i59.i.i_crit_edge: ; preds = %for.cond.preheader.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i59.i.i

for.body.i51.i.i:                                 ; preds = %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.for.body.i51.i.i_crit_edge, %for.cond.preheader.i48.i.i.for.body.i51.i.i_crit_edge
  %i.04.i.i.i = phi i32 [ %inc.i54.i.i, %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.for.body.i51.i.i_crit_edge ], [ 0, %for.cond.preheader.i48.i.i.for.body.i51.i.i_crit_edge ]
  %arrayidx.i49.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 6, i32 %i.04.i.i.i
  %671 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %msg_enable, align 8
  %and.i.i50.i.i = and i32 %672, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50.i.i)
  %tobool.not.i.i.i233.i = icmp eq i32 %and.i.i50.i.i, 0
  br i1 %tobool.not.i.i.i233.i, label %for.body.i51.i.i.do.end6.i.i.i.i_crit_edge, label %do.end.i.i.i235.i, !prof !412

for.body.i51.i.i.do.end6.i.i.i.i_crit_edge:       ; preds = %for.body.i51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i.i.i.i

do.end.i.i.i235.i:                                ; preds = %for.body.i51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %673 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %dev, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %674, null
  %spec.select.i.i52.i.i = select i1 %tobool4.not.i.i.i.i, ptr @.str.3, ptr %674
  %675 = ptrtoint ptr %arrayidx.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %arrayidx.i49.i.i, align 4
  %call.i.i.i234.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, i32 noundef 1700, ptr noundef nonnull %spec.select.i.i52.i.i, i32 noundef %i.04.i.i.i, i32 noundef %676) #11
  br label %do.end6.i.i.i.i

do.end6.i.i.i.i:                                  ; preds = %do.end.i.i.i235.i, %for.body.i51.i.i.do.end6.i.i.i.i_crit_edge
  %677 = ptrtoint ptr %arrayidx.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %arrayidx.i49.i.i, align 4
  %and8.i.i.i.i = and i32 %678, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %and8.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %do.end6.i.i.i.i.if.end28.i.i.i.i_crit_edge, label %do.body11.i.i.i.i

do.end6.i.i.i.i.if.end28.i.i.i.i_crit_edge:       ; preds = %do.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i.i

do.body11.i.i.i.i:                                ; preds = %do.end6.i.i.i.i
  %679 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %msg_enable, align 8
  %and13.i.i.i.i = and i32 %680, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i.i)
  %tobool14.not.i.i.i.i = icmp eq i32 %and13.i.i.i.i, 0
  br i1 %tobool14.not.i.i.i.i, label %do.body11.i.i.i.i.if.end28.i.i.i.i_crit_edge, label %do.end23.i.i.i.i, !prof !412

do.body11.i.i.i.i.if.end28.i.i.i.i_crit_edge:     ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i.i

do.end23.i.i.i.i:                                 ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vlan_tag.i.i.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 6, i32 %i.04.i.i.i, i32 2
  %681 = ptrtoint ptr %vlan_tag.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %681)
  %682 = load i16, ptr %vlan_tag.i.i.i.i, align 2
  %conv.i.i53.i.i = zext i16 %682 to i32
  %call25.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %conv.i.i53.i.i) #11
  br label %if.end28.i.i.i.i

if.end28.i.i.i.i:                                 ; preds = %do.end23.i.i.i.i, %do.body11.i.i.i.i.if.end28.i.i.i.i_crit_edge, %do.end6.i.i.i.i.if.end28.i.i.i.i_crit_edge
  %683 = ptrtoint ptr %arrayidx.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %arrayidx.i49.i.i, align 4
  %and30.i.i.i.i = and i32 %684, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i.i)
  %tobool31.not.i.i.i.i = icmp eq i32 %and30.i.i.i.i, 0
  br i1 %tobool31.not.i.i.i.i, label %if.end28.i.i.i.i.do.body52.i.i.i.i_crit_edge, label %do.body33.i.i.i.i

if.end28.i.i.i.i.do.body52.i.i.i.i_crit_edge:     ; preds = %if.end28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52.i.i.i.i

do.body33.i.i.i.i:                                ; preds = %if.end28.i.i.i.i
  %685 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %msg_enable, align 8
  %and35.i.i.i.i = and i32 %686, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i.i.i)
  %tobool36.not.i.i.i.i = icmp eq i32 %and35.i.i.i.i, 0
  br i1 %tobool36.not.i.i.i.i, label %do.body33.i.i.i.i.do.body52.i.i.i.i_crit_edge, label %do.end45.i.i.i.i, !prof !412

do.body33.i.i.i.i.do.body52.i.i.i.i_crit_edge:    ; preds = %do.body33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body52.i.i.i.i

do.end45.i.i.i.i:                                 ; preds = %do.body33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mac.i.i.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 6, i32 %i.04.i.i.i, i32 1
  %call48.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %mac.i.i.i.i) #11
  br label %do.body52.i.i.i.i

do.body52.i.i.i.i:                                ; preds = %do.end45.i.i.i.i, %do.body33.i.i.i.i.do.body52.i.i.i.i_crit_edge, %if.end28.i.i.i.i.do.body52.i.i.i.i_crit_edge
  %687 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %msg_enable, align 8
  %and54.i.i.i.i = and i32 %688, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i.i.i)
  %tobool55.not.i.i.i.i = icmp eq i32 %and54.i.i.i.i, 0
  br i1 %tobool55.not.i.i.i.i, label %do.body52.i.i.i.i.bnx2x_vf_mbx_dp_q_filter.exit.i.i.i_crit_edge, label %do.end64.i.i.i.i, !prof !412

do.body52.i.i.i.i.bnx2x_vf_mbx_dp_q_filter.exit.i.i.i_crit_edge: ; preds = %do.body52.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i

do.end64.i.i.i.i:                                 ; preds = %do.body52.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call66.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #11
  br label %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i

bnx2x_vf_mbx_dp_q_filter.exit.i.i.i:              ; preds = %do.end64.i.i.i.i, %do.body52.i.i.i.i.bnx2x_vf_mbx_dp_q_filter.exit.i.i.i_crit_edge
  %inc.i54.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %689 = ptrtoint ptr %n_mac_vlan_filters.i47.i.i to i32
  call void @__asan_load1_noabort(i32 %689)
  %690 = load i8, ptr %n_mac_vlan_filters.i47.i.i, align 1
  %conv.i55.i.i = zext i8 %690 to i32
  %cmp.i56.i.i = icmp ult i32 %inc.i54.i.i, %conv.i55.i.i
  br i1 %cmp.i56.i.i, label %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.for.body.i51.i.i_crit_edge, label %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.if.end.i59.i.i_crit_edge

bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.if.end.i59.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i59.i.i

bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.for.body.i51.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i51.i.i

if.end.i59.i.i:                                   ; preds = %bnx2x_vf_mbx_dp_q_filter.exit.i.i.i.if.end.i59.i.i_crit_edge, %for.cond.preheader.i48.i.i.if.end.i59.i.i_crit_edge, %do.end16.i.i.if.end.i59.i.i_crit_edge
  %691 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %flags.i.i.i, align 4
  %and4.i57.i.i = and i32 %692, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i57.i.i)
  %tobool5.not.i58.i.i = icmp eq i32 %and4.i57.i.i, 0
  br i1 %tobool5.not.i58.i.i, label %if.end.i59.i.i.if.end18.i.i.i_crit_edge, label %do.body.i.i236.i

if.end.i59.i.i.if.end18.i.i.i_crit_edge:          ; preds = %if.end.i59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i.i

do.body.i.i236.i:                                 ; preds = %if.end.i59.i.i
  %693 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %msg_enable, align 8
  %and7.i.i.i = and i32 %694, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %do.body.i.i236.i.if.end18.i.i.i_crit_edge, label %do.end.i63.i.i, !prof !412

do.body.i.i236.i.if.end18.i.i.i_crit_edge:        ; preds = %do.body.i.i236.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i.i

do.end.i63.i.i:                                   ; preds = %do.body.i.i236.i
  call void @__sanitizer_cov_trace_pc() #10
  %695 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %dev, align 4
  %tobool13.not.i.i.i = icmp eq ptr %696, null
  %spec.select.i61.i.i = select i1 %tobool13.not.i.i.i, ptr @.str.3, ptr %696
  %rx_mask.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 8
  %697 = ptrtoint ptr %rx_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %rx_mask.i.i.i, align 4
  %call.i62.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 1719, ptr noundef nonnull %spec.select.i61.i.i, i32 noundef %698) #11
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %do.end.i63.i.i, %do.body.i.i236.i.if.end18.i.i.i_crit_edge, %if.end.i59.i.i.if.end18.i.i.i_crit_edge
  %699 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %flags.i.i.i, align 4
  %and20.i.i.i = and i32 %700, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %and20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.end18.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge, label %for.cond23.preheader.i.i.i

if.end18.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_dp_q_filters.exit.i.i

for.cond23.preheader.i.i.i:                       ; preds = %if.end18.i.i.i
  %n_multicast.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 4
  %701 = ptrtoint ptr %n_multicast.i.i.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %702 = load i8, ptr %n_multicast.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %702)
  %cmp257.not.i.i.i = icmp eq i8 %702, 0
  br i1 %cmp257.not.i.i.i, label %for.cond23.preheader.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge, label %for.cond23.preheader.i.i.i.do.body28.i.i.i_crit_edge

for.cond23.preheader.i.i.i.do.body28.i.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  br label %do.body28.i.i.i

for.cond23.preheader.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_dp_q_filters.exit.i.i

do.body28.i.i.i:                                  ; preds = %for.inc58.i.i.i.do.body28.i.i.i_crit_edge, %for.cond23.preheader.i.i.i.do.body28.i.i.i_crit_edge
  %i.18.i.i.i = phi i32 [ %inc59.i.i.i, %for.inc58.i.i.i.do.body28.i.i.i_crit_edge ], [ 0, %for.cond23.preheader.i.i.i.do.body28.i.i.i_crit_edge ]
  %703 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %msg_enable, align 8
  %and30.i.i.i = and i32 %704, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %do.body28.i.i.i.for.inc58.i.i.i_crit_edge, label %do.end41.i.i.i, !prof !412

do.body28.i.i.i.for.inc58.i.i.i_crit_edge:        ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc58.i.i.i

do.end41.i.i.i:                                   ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %705 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %dev, align 4
  %tobool44.not.i.i.i = icmp eq ptr %706, null
  %spec.select1.i.i.i = select i1 %tobool44.not.i.i.i, ptr @.str.3, ptr %706
  %arrayidx52.i.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %620, i32 0, i32 7, i32 %i.18.i.i.i
  %call54.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.205, i32 noundef 1723, ptr noundef nonnull %spec.select1.i.i.i, ptr noundef %arrayidx52.i.i.i) #11
  br label %for.inc58.i.i.i

for.inc58.i.i.i:                                  ; preds = %do.end41.i.i.i, %do.body28.i.i.i.for.inc58.i.i.i_crit_edge
  %inc59.i.i.i = add nuw nsw i32 %i.18.i.i.i, 1
  %707 = ptrtoint ptr %n_multicast.i.i.i to i32
  call void @__asan_load1_noabort(i32 %707)
  %708 = load i8, ptr %n_multicast.i.i.i, align 2
  %conv24.i.i.i = zext i8 %708 to i32
  %cmp25.i.i.i = icmp ult i32 %inc59.i.i.i, %conv24.i.i.i
  br i1 %cmp25.i.i.i, label %for.inc58.i.i.i.do.body28.i.i.i_crit_edge, label %for.inc58.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge

for.inc58.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge: ; preds = %for.inc58.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_dp_q_filters.exit.i.i

for.inc58.i.i.i.do.body28.i.i.i_crit_edge:        ; preds = %for.inc58.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28.i.i.i

bnx2x_vf_mbx_dp_q_filters.exit.i.i:               ; preds = %for.inc58.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge, %for.cond23.preheader.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge, %if.end18.i.i.i.bnx2x_vf_mbx_dp_q_filters.exit.i.i_crit_edge
  %709 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %vfdb1, align 8
  %711 = ptrtoint ptr %index.i.i200.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %index.i.i200.i, align 8
  %idxprom.i.i237.i = zext i8 %712 to i32
  %arrayidx.i66.i.i = getelementptr %struct.bnx2x_vfdb, ptr %710, i32 0, i32 5, i32 %idxprom.i.i237.i
  %713 = ptrtoint ptr %arrayidx.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %arrayidx.i66.i.i, align 8
  %flags.i67.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 1
  %715 = ptrtoint ptr %flags.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %flags.i67.i.i, align 4
  %and.i68.i.i = and i32 %716, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68.i.i)
  %tobool.not.i69.i.i = icmp eq i32 %and.i68.i.i, 0
  br i1 %tobool.not.i69.i.i, label %bnx2x_vf_mbx_dp_q_filters.exit.i.i.if.end37.i.i.i_crit_edge, label %if.then.i71.i.i

bnx2x_vf_mbx_dp_q_filters.exit.i.i.if.end37.i.i.i_crit_edge: ; preds = %bnx2x_vf_mbx_dp_q_filters.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i.i

if.then.i71.i.i:                                  ; preds = %bnx2x_vf_mbx_dp_q_filters.exit.i.i
  %n_mac_vlan_filters.i103.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 3
  %717 = ptrtoint ptr %n_mac_vlan_filters.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %n_mac_vlan_filters.i103.i.i, align 1
  %conv.i104.i.i = zext i8 %718 to i32
  %719 = shl nuw nsw i32 %conv.i104.i.i, 4
  %720 = or i32 %719, 4
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %720, i32 noundef 3520) #12
  %tobool.not.i106.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i106.i.i, label %if.then.i71.i.i.do.end.i99.i.i_crit_edge, label %for.cond.preheader.i107.i.i

if.then.i71.i.i.do.end.i99.i.i_crit_edge:         ; preds = %if.then.i71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

for.cond.preheader.i107.i.i:                      ; preds = %if.then.i71.i.i
  %721 = ptrtoint ptr %n_mac_vlan_filters.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %n_mac_vlan_filters.i103.i.i, align 1
  %conv3.i.i.i = zext i8 %722 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %722)
  %cmp1.not.i.i.i = icmp eq i8 %722, 0
  br i1 %cmp1.not.i.i.i, label %for.cond.preheader.i107.i.i.for.end.i116.i.i_crit_edge, label %for.cond.preheader.i107.i.i.for.body.i111.i.i_crit_edge

for.cond.preheader.i107.i.i.for.body.i111.i.i_crit_edge: ; preds = %for.cond.preheader.i107.i.i
  br label %for.body.i111.i.i

for.cond.preheader.i107.i.i.for.end.i116.i.i_crit_edge: ; preds = %for.cond.preheader.i107.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i116.i.i

for.body.i111.i.i:                                ; preds = %cleanup.i115.i.i.for.body.i111.i.i_crit_edge, %for.cond.preheader.i107.i.i.for.body.i111.i.i_crit_edge
  %j.06.i.i.i = phi i32 [ %j.1.i.i.i, %cleanup.i115.i.i.for.body.i111.i.i_crit_edge ], [ 0, %for.cond.preheader.i107.i.i.for.body.i111.i.i_crit_edge ]
  %i.02.i.i.i = phi i32 [ %inc37.i.i.i, %cleanup.i115.i.i.for.body.i111.i.i_crit_edge ], [ 0, %for.cond.preheader.i107.i.i.for.body.i111.i.i_crit_edge ]
  %arrayidx.i109.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i.i.i
  %723 = ptrtoint ptr %arrayidx.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %arrayidx.i109.i.i, align 4
  %and.i110.i.i = and i32 %724, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i110.i.i)
  %cmp5.not.i.i.i = icmp eq i32 %and.i110.i.i, 3
  br i1 %cmp5.not.i.i.i, label %if.end8.i.i239.i, label %for.body.i111.i.i.cleanup.i115.i.i_crit_edge

for.body.i111.i.i.cleanup.i115.i.i_crit_edge:     ; preds = %for.body.i111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i115.i.i

if.end8.i.i239.i:                                 ; preds = %for.body.i111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i
  %725 = getelementptr inbounds i8, ptr %arrayidx10.i.i.i, i32 4
  %726 = call ptr @memset(ptr %725, i32 0, i32 12)
  %mac.i112.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i.i.i, i32 1
  %mac16.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i, i32 3
  %727 = ptrtoint ptr %mac16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %727)
  store ptr %mac.i112.i.i, ptr %mac16.i.i.i, align 4
  %728 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %728)
  store i32 1, ptr %arrayidx10.i.i.i, align 4
  %vlan_tag.i.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i.i.i, i32 2
  %729 = ptrtoint ptr %vlan_tag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %729)
  %730 = load i16, ptr %vlan_tag.i.i.i, align 2
  %vid.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i, i32 4
  %731 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %731)
  store i16 %730, ptr %vid.i.i.i, align 16
  store i32 3, ptr %arrayidx10.i.i.i, align 4
  %add.i.i238.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i, i32 1
  %and31.i.i.i = lshr i32 %724, 8
  %732 = trunc i32 %and31.i.i.i to i8
  %733 = and i8 %732, 1
  %734 = ptrtoint ptr %add.i.i238.i to i32
  call void @__asan_store1_noabort(i32 %734)
  store i8 %733, ptr %add.i.i238.i, align 8
  %735 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %call9.i.i.i.i.i, align 128
  %inc.i113.i.i = add i32 %736, 1
  store i32 %inc.i113.i.i, ptr %call9.i.i.i.i.i, align 128
  %inc36.i.i.i = add i32 %j.06.i.i.i, 1
  br label %cleanup.i115.i.i

cleanup.i115.i.i:                                 ; preds = %if.end8.i.i239.i, %for.body.i111.i.i.cleanup.i115.i.i_crit_edge
  %j.1.i.i.i = phi i32 [ %inc36.i.i.i, %if.end8.i.i239.i ], [ %j.06.i.i.i, %for.body.i111.i.i.cleanup.i115.i.i_crit_edge ]
  %inc37.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i114.i.i = icmp eq i32 %inc37.i.i.i, %conv3.i.i.i
  br i1 %exitcond.not.i114.i.i, label %cleanup.i115.i.i.for.end.i116.i.i_crit_edge, label %cleanup.i115.i.i.for.body.i111.i.i_crit_edge

cleanup.i115.i.i.for.body.i111.i.i_crit_edge:     ; preds = %cleanup.i115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i111.i.i

cleanup.i115.i.i.for.end.i116.i.i_crit_edge:      ; preds = %cleanup.i115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i116.i.i

for.end.i116.i.i:                                 ; preds = %cleanup.i115.i.i.for.end.i116.i.i_crit_edge, %for.cond.preheader.i107.i.i.for.end.i116.i.i_crit_edge
  %737 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %call9.i.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %738)
  %tobool39.not.i.i.i = icmp eq i32 %738, 0
  br i1 %tobool39.not.i.i.i, label %if.end.i73.thread.i.i, label %if.then5.i.i.i

if.end.i73.thread.i.i:                            ; preds = %for.end.i116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #8
  br label %if.end8.i.i.i.i.i.i

if.then5.i.i.i:                                   ; preds = %for.end.i116.i.i
  %vf_qid.i74.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 2
  %739 = ptrtoint ptr %vf_qid.i74.i.i to i32
  call void @__asan_load1_noabort(i32 %739)
  %740 = load i8, ptr %vf_qid.i74.i.i, align 4
  %conv.i75.i.i = zext i8 %740 to i32
  %call6.i.i.i = call i32 @bnx2x_vf_mac_vlan_config_list(ptr noundef %bp, ptr noundef %cond, ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef %conv.i75.i.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i76.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i76.i.i, label %if.then5.i.i.i.if.end8.i.i.i.i.i.i_crit_edge, label %if.then5.i.i.i.do.end.i99.i.i_crit_edge

if.then5.i.i.i.do.end.i99.i.i_crit_edge:          ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

if.then5.i.i.i.if.end8.i.i.i.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i.i.i.i

if.end8.i.i.i.i.i.i:                              ; preds = %if.then5.i.i.i.if.end8.i.i.i.i.i.i_crit_edge, %if.end.i73.thread.i.i
  %741 = ptrtoint ptr %n_mac_vlan_filters.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %n_mac_vlan_filters.i103.i.i, align 1
  %conv.i.i78.i.i = zext i8 %742 to i32
  %743 = shl nuw nsw i32 %conv.i.i78.i.i, 4
  %744 = or i32 %743, 4
  %call9.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %744, i32 noundef 3520) #12
  %tobool.not.i.i81.i.i = icmp eq ptr %call9.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i81.i.i, label %if.end8.i.i.i.i.i.i.do.end.i99.i.i_crit_edge, label %for.cond.preheader.i.i.i.i

if.end8.i.i.i.i.i.i.do.end.i99.i.i_crit_edge:     ; preds = %if.end8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %if.end8.i.i.i.i.i.i
  %745 = ptrtoint ptr %n_mac_vlan_filters.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %745)
  %746 = load i8, ptr %n_mac_vlan_filters.i103.i.i, align 1
  %conv3.i.i.i240.i = zext i8 %746 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %746)
  %cmp1.not.i.i82.i.i = icmp eq i8 %746, 0
  br i1 %cmp1.not.i.i82.i.i, label %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.body.i.i86.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.body.i.i86.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.body.i.i86.i.i

for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.body.i.i86.i.i:                               ; preds = %cleanup.i.i.i.i.for.body.i.i86.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i86.i.i_crit_edge
  %j.06.i.i.i.i = phi i32 [ %j.1.i.i.i.i, %cleanup.i.i.i.i.for.body.i.i86.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i86.i.i_crit_edge ]
  %i.02.i.i83.i.i = phi i32 [ %inc37.i.i.i.i, %cleanup.i.i.i.i.for.body.i.i86.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i86.i.i_crit_edge ]
  %arrayidx.i.i84.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i.i83.i.i
  %747 = ptrtoint ptr %arrayidx.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %arrayidx.i.i84.i.i, align 4
  %and.i.i85.i.i = and i32 %748, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85.i.i)
  %cmp5.not.i.not.i.i.i = icmp eq i32 %and.i.i85.i.i, 0
  br i1 %cmp5.not.i.not.i.i.i, label %for.body.i.i86.i.i.cleanup.i.i.i.i_crit_edge, label %if.end8.i.i.i.i

for.body.i.i86.i.i.cleanup.i.i.i.i_crit_edge:     ; preds = %for.body.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %for.body.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i.i
  %749 = getelementptr inbounds i8, ptr %arrayidx10.i.i.i.i, i32 4
  %750 = call ptr @memset(ptr %749, i32 0, i32 12)
  %mac.i.i87.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i.i83.i.i, i32 1
  %mac16.i.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i.i, i32 3
  %751 = ptrtoint ptr %mac16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %751)
  store ptr %mac.i.i87.i.i, ptr %mac16.i.i.i.i, align 4
  %752 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store i32 1, ptr %arrayidx10.i.i.i.i, align 4
  %add.i.i.i241.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i.i.i.i, i32 0, i32 1, i32 %j.06.i.i.i.i, i32 1
  %and31.i.i.i.i = lshr i32 %748, 8
  %753 = trunc i32 %and31.i.i.i.i to i8
  %754 = and i8 %753, 1
  %755 = ptrtoint ptr %add.i.i.i241.i to i32
  call void @__asan_store1_noabort(i32 %755)
  store i8 %754, ptr %add.i.i.i241.i, align 8
  %756 = ptrtoint ptr %call9.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %call9.i.i.i.i.i.i, align 128
  %inc.i.i.i.i = add i32 %757, 1
  store i32 %inc.i.i.i.i, ptr %call9.i.i.i.i.i.i, align 128
  %inc36.i.i.i.i = add i32 %j.06.i.i.i.i, 1
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end8.i.i.i.i, %for.body.i.i86.i.i.cleanup.i.i.i.i_crit_edge
  %j.1.i.i.i.i = phi i32 [ %inc36.i.i.i.i, %if.end8.i.i.i.i ], [ %j.06.i.i.i.i, %for.body.i.i86.i.i.cleanup.i.i.i.i_crit_edge ]
  %inc37.i.i.i.i = add nuw nsw i32 %i.02.i.i83.i.i, 1
  %exitcond.not.i.i88.i.i = icmp eq i32 %inc37.i.i.i.i, %conv3.i.i.i240.i
  br i1 %exitcond.not.i.i88.i.i, label %cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.for.body.i.i86.i.i_crit_edge

cleanup.i.i.i.i.for.body.i.i86.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i86.i.i

cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge
  %758 = ptrtoint ptr %call9.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %call9.i.i.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %759)
  %tobool39.not.i.i.i.i = icmp eq i32 %759, 0
  br i1 %tobool39.not.i.i.i.i, label %if.end14.i.thread.i.i, label %if.then16.i.i.i

if.end14.i.thread.i.i:                            ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i.i) #8
  br label %if.end8.i.i.i166.i.i.i

if.then16.i.i.i:                                  ; preds = %for.end.i.i.i.i
  %vf_qid17.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 2
  %760 = ptrtoint ptr %vf_qid17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %vf_qid17.i.i.i, align 4
  %conv18.i.i.i = zext i8 %761 to i32
  %call19.i.i.i = call i32 @bnx2x_vf_mac_vlan_config_list(ptr noundef %bp, ptr noundef %cond, ptr noundef nonnull %call9.i.i.i.i.i.i, i32 noundef %conv18.i.i.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i89.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i89.i.i, label %if.then16.i.i.i.if.end8.i.i.i166.i.i.i_crit_edge, label %if.then16.i.i.i.do.end.i99.i.i_crit_edge

if.then16.i.i.i.do.end.i99.i.i_crit_edge:         ; preds = %if.then16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

if.then16.i.i.i.if.end8.i.i.i166.i.i.i_crit_edge: ; preds = %if.then16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i166.i.i.i

if.end8.i.i.i166.i.i.i:                           ; preds = %if.then16.i.i.i.if.end8.i.i.i166.i.i.i_crit_edge, %if.end14.i.thread.i.i
  %762 = ptrtoint ptr %n_mac_vlan_filters.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %762)
  %763 = load i8, ptr %n_mac_vlan_filters.i103.i.i, align 1
  %conv.i149.i.i.i = zext i8 %763 to i32
  %764 = shl nuw nsw i32 %conv.i149.i.i.i, 4
  %765 = or i32 %764, 4
  %call9.i.i.i165.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %765, i32 noundef 3520) #12
  %tobool.not.i168.i.i.i = icmp eq ptr %call9.i.i.i165.i.i.i, null
  br i1 %tobool.not.i168.i.i.i, label %if.end8.i.i.i166.i.i.i.do.end.i99.i.i_crit_edge, label %for.cond.preheader.i172.i.i.i

if.end8.i.i.i166.i.i.i.do.end.i99.i.i_crit_edge:  ; preds = %if.end8.i.i.i166.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

for.cond.preheader.i172.i.i.i:                    ; preds = %if.end8.i.i.i166.i.i.i
  %766 = ptrtoint ptr %n_mac_vlan_filters.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %n_mac_vlan_filters.i103.i.i, align 1
  %conv3.i170.i.i.i = zext i8 %767 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %767)
  %cmp1.not.i171.i.i.i = icmp eq i8 %767, 0
  br i1 %cmp1.not.i171.i.i.i, label %for.cond.preheader.i172.i.i.i.for.end.i191.i.i.i_crit_edge, label %for.cond.preheader.i172.i.i.i.for.body.i179.i.i.i_crit_edge

for.cond.preheader.i172.i.i.i.for.body.i179.i.i.i_crit_edge: ; preds = %for.cond.preheader.i172.i.i.i
  br label %for.body.i179.i.i.i

for.cond.preheader.i172.i.i.i.for.end.i191.i.i.i_crit_edge: ; preds = %for.cond.preheader.i172.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i191.i.i.i

for.body.i179.i.i.i:                              ; preds = %cleanup.i189.i.i.i.for.body.i179.i.i.i_crit_edge, %for.cond.preheader.i172.i.i.i.for.body.i179.i.i.i_crit_edge
  %j.06.i174.i.i.i = phi i32 [ %j.1.i186.i.i.i, %cleanup.i189.i.i.i.for.body.i179.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i172.i.i.i.for.body.i179.i.i.i_crit_edge ]
  %i.02.i175.i.i.i = phi i32 [ %inc37.i187.i.i.i, %cleanup.i189.i.i.i.for.body.i179.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i172.i.i.i.for.body.i179.i.i.i_crit_edge ]
  %arrayidx.i176.i.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i175.i.i.i
  %768 = ptrtoint ptr %arrayidx.i176.i.i.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %arrayidx.i176.i.i.i, align 4
  %and.i177.i.i.i = and i32 %769, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i177.i.i.i)
  %cmp5.not.i178.not.i.i.i = icmp eq i32 %and.i177.i.i.i, 0
  br i1 %cmp5.not.i178.not.i.i.i, label %for.body.i179.i.i.i.cleanup.i189.i.i.i_crit_edge, label %if.end8.i181.i.i.i

for.body.i179.i.i.i.cleanup.i189.i.i.i_crit_edge: ; preds = %for.body.i179.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i189.i.i.i

if.end8.i181.i.i.i:                               ; preds = %for.body.i179.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i180.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i165.i.i.i, i32 0, i32 1, i32 %j.06.i174.i.i.i
  %770 = getelementptr inbounds i8, ptr %arrayidx10.i180.i.i.i, i32 4
  %771 = call ptr @memset(ptr %770, i32 0, i32 12)
  %vlan_tag.i.i90.i.i = getelementptr %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 6, i32 %i.02.i175.i.i.i, i32 2
  %772 = ptrtoint ptr %vlan_tag.i.i90.i.i to i32
  call void @__asan_load2_noabort(i32 %772)
  %773 = load i16, ptr %vlan_tag.i.i90.i.i, align 2
  %vid.i.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i165.i.i.i, i32 0, i32 1, i32 %j.06.i174.i.i.i, i32 4
  %774 = ptrtoint ptr %vid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %774)
  store i16 %773, ptr %vid.i.i.i.i, align 16
  %775 = ptrtoint ptr %arrayidx10.i180.i.i.i to i32
  call void @__asan_store4_noabort(i32 %775)
  store i32 2, ptr %arrayidx10.i180.i.i.i, align 4
  %add.i182.i.i.i = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %call9.i.i.i165.i.i.i, i32 0, i32 1, i32 %j.06.i174.i.i.i, i32 1
  %and31.i183.i.i.i = lshr i32 %769, 8
  %776 = trunc i32 %and31.i183.i.i.i to i8
  %777 = and i8 %776, 1
  %778 = ptrtoint ptr %add.i182.i.i.i to i32
  call void @__asan_store1_noabort(i32 %778)
  store i8 %777, ptr %add.i182.i.i.i, align 8
  %779 = ptrtoint ptr %call9.i.i.i165.i.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %call9.i.i.i165.i.i.i, align 128
  %inc.i184.i.i.i = add i32 %780, 1
  store i32 %inc.i184.i.i.i, ptr %call9.i.i.i165.i.i.i, align 128
  %inc36.i185.i.i.i = add i32 %j.06.i174.i.i.i, 1
  br label %cleanup.i189.i.i.i

cleanup.i189.i.i.i:                               ; preds = %if.end8.i181.i.i.i, %for.body.i179.i.i.i.cleanup.i189.i.i.i_crit_edge
  %j.1.i186.i.i.i = phi i32 [ %inc36.i185.i.i.i, %if.end8.i181.i.i.i ], [ %j.06.i174.i.i.i, %for.body.i179.i.i.i.cleanup.i189.i.i.i_crit_edge ]
  %inc37.i187.i.i.i = add nuw nsw i32 %i.02.i175.i.i.i, 1
  %exitcond.not.i188.i.i.i = icmp eq i32 %inc37.i187.i.i.i, %conv3.i170.i.i.i
  br i1 %exitcond.not.i188.i.i.i, label %cleanup.i189.i.i.i.for.end.i191.i.i.i_crit_edge, label %cleanup.i189.i.i.i.for.body.i179.i.i.i_crit_edge

cleanup.i189.i.i.i.for.body.i179.i.i.i_crit_edge: ; preds = %cleanup.i189.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i179.i.i.i

cleanup.i189.i.i.i.for.end.i191.i.i.i_crit_edge:  ; preds = %cleanup.i189.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i191.i.i.i

for.end.i191.i.i.i:                               ; preds = %cleanup.i189.i.i.i.for.end.i191.i.i.i_crit_edge, %for.cond.preheader.i172.i.i.i.for.end.i191.i.i.i_crit_edge
  %781 = ptrtoint ptr %call9.i.i.i165.i.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %call9.i.i.i165.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %782)
  %tobool39.not.i190.i.i.i = icmp eq i32 %782, 0
  br i1 %tobool39.not.i190.i.i.i, label %if.end27.i.thread.i.i, label %if.then29.i.i.i

if.end27.i.thread.i.i:                            ; preds = %for.end.i191.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i165.i.i.i) #8
  br label %if.end37.i.i.i

if.then29.i.i.i:                                  ; preds = %for.end.i191.i.i.i
  %vf_qid30.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 2
  %783 = ptrtoint ptr %vf_qid30.i.i.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %vf_qid30.i.i.i, align 4
  %conv31.i.i.i = zext i8 %784 to i32
  %call32.i.i.i = call i32 @bnx2x_vf_mac_vlan_config_list(ptr noundef %bp, ptr noundef %cond, ptr noundef nonnull %call9.i.i.i165.i.i.i, i32 noundef %conv31.i.i.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %if.then29.i.i.i.if.end37.i.i.i_crit_edge, label %if.then29.i.i.i.do.end.i99.i.i_crit_edge

if.then29.i.i.i.do.end.i99.i.i_crit_edge:         ; preds = %if.then29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

if.then29.i.i.i.if.end37.i.i.i_crit_edge:         ; preds = %if.then29.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i.i.i

if.end37.i.i.i:                                   ; preds = %if.then29.i.i.i.if.end37.i.i.i_crit_edge, %if.end27.i.thread.i.i, %bnx2x_vf_mbx_dp_q_filters.exit.i.i.if.end37.i.i.i_crit_edge
  %785 = ptrtoint ptr %flags.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %flags.i67.i.i, align 4
  %and39.i.i.i = and i32 %786, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %and39.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %if.end37.i.i.i.if.end68.i.i.i_crit_edge, label %if.then41.i.i.i

if.end37.i.i.i.if.end68.i.i.i_crit_edge:          ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i.i.i

if.then41.i.i.i:                                  ; preds = %if.end37.i.i.i
  %787 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %vfdb1, align 8
  %bulletin_dma.i91.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %788, i32 0, i32 6
  %789 = ptrtoint ptr %bulletin_dma.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %bulletin_dma.i91.i.i, align 8
  %791 = ptrtoint ptr %index.i.i200.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %index.i.i200.i, align 8
  %conv44.i.i.i = zext i8 %792 to i32
  %rx_mask.i92.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 8
  %793 = ptrtoint ptr %rx_mask.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %rx_mask.i92.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %794)
  %cmp.not.i.i.i = icmp eq i32 %794, 0
  %spec.select215.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 19
  %valid_bitmap.i93.i.i = getelementptr %struct.pf_vf_bulletin_content, ptr %790, i32 %conv44.i.i.i, i32 3
  %795 = ptrtoint ptr %valid_bitmap.i93.i.i to i32
  call void @__asan_load8_noabort(i32 %795)
  %796 = load i64, ptr %valid_bitmap.i93.i.i, align 8
  %and48.i.i.i = and i64 %796, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48.i.i.i)
  %tobool49.not.i.i.i = icmp eq i64 %and48.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %land.lhs.true.i94.i.i, label %if.then41.i.i.i.if.end57.i.i.i_crit_edge

if.then41.i.i.i.if.end57.i.i.i_crit_edge:         ; preds = %if.then41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i.i

land.lhs.true.i94.i.i:                            ; preds = %if.then41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %797 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %797)
  %798 = load i16, ptr %cond, align 8
  %799 = and i16 %798, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %799)
  %tobool52.not.i.i.i = icmp ne i16 %799, 0
  %and54.i.i.i = and i32 %794, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %and54.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool52.not.i.i.i, i1 %tobool55.not.i.i.i, i1 false
  %or.i146.i.i.i = or i32 %spec.select215.i.i.i, 64
  %spec.select216.i.i.i = select i1 %or.cond.i.i.i, i32 %spec.select215.i.i.i, i32 %or.i146.i.i.i
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %land.lhs.true.i94.i.i, %if.then41.i.i.i.if.end57.i.i.i_crit_edge
  %accept.1.i.i.i = phi i32 [ %spec.select215.i.i.i, %if.then41.i.i.i.if.end57.i.i.i_crit_edge ], [ %spec.select216.i.i.i, %land.lhs.true.i94.i.i ]
  %vf_qid58.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 2
  %800 = ptrtoint ptr %vf_qid58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %vf_qid58.i.i.i, align 4
  %conv59.i.i.i = zext i8 %801 to i32
  %call60.i.i.i = call i32 @bnx2x_vf_rxmode(ptr noundef %bp, ptr noundef %cond, i32 noundef %conv59.i.i.i, i32 noundef %accept.1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %call60.i.i.i, 0
  br i1 %tobool61.not.i.i.i, label %if.end57.i.i.i.if.end68.i.i.i_crit_edge, label %if.end57.i.i.i.do.end.i99.i.i_crit_edge

if.end57.i.i.i.do.end.i99.i.i_crit_edge:          ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

if.end57.i.i.i.if.end68.i.i.i_crit_edge:          ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i.i.i

if.end68.i.i.i:                                   ; preds = %if.end57.i.i.i.if.end68.i.i.i_crit_edge, %if.end37.i.i.i.if.end68.i.i.i_crit_edge
  %802 = ptrtoint ptr %flags.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %flags.i67.i.i, align 4
  %and70.i.i.i = and i32 %803, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i.i)
  %tobool71.not.i.i.i = icmp eq i32 %and70.i.i.i, 0
  br i1 %tobool71.not.i.i.i, label %if.end68.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge, label %op_err.i.i.i

if.end68.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge: ; preds = %if.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

op_err.i.i.i:                                     ; preds = %if.end68.i.i.i
  %multicast.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 7
  %n_multicast.i95.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 4
  %804 = ptrtoint ptr %n_multicast.i95.i.i to i32
  call void @__asan_load1_noabort(i32 %804)
  %805 = load i8, ptr %n_multicast.i95.i.i, align 2
  %conv73.i.i.i = zext i8 %805 to i32
  %call74.i.i.i = call i32 @bnx2x_vf_mcast(ptr noundef %bp, ptr noundef %cond, ptr noundef %multicast.i.i.i, i32 noundef %conv73.i.i.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i.i)
  %tobool79.not.i.i.i = icmp eq i32 %call74.i.i.i, 0
  br i1 %tobool79.not.i.i.i, label %op_err.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge, label %op_err.i.i.i.do.end.i99.i.i_crit_edge

op_err.i.i.i.do.end.i99.i.i_crit_edge:            ; preds = %op_err.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i99.i.i

op_err.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge: ; preds = %op_err.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

do.end.i99.i.i:                                   ; preds = %op_err.i.i.i.do.end.i99.i.i_crit_edge, %if.end57.i.i.i.do.end.i99.i.i_crit_edge, %if.then29.i.i.i.do.end.i99.i.i_crit_edge, %if.end8.i.i.i166.i.i.i.do.end.i99.i.i_crit_edge, %if.then16.i.i.i.do.end.i99.i.i_crit_edge, %if.end8.i.i.i.i.i.i.do.end.i99.i.i_crit_edge, %if.then5.i.i.i.do.end.i99.i.i_crit_edge, %if.then.i71.i.i.do.end.i99.i.i_crit_edge
  %rc.4210.i.i.i = phi i32 [ %call74.i.i.i, %op_err.i.i.i.do.end.i99.i.i_crit_edge ], [ %call60.i.i.i, %if.end57.i.i.i.do.end.i99.i.i_crit_edge ], [ -12, %if.end8.i.i.i166.i.i.i.do.end.i99.i.i_crit_edge ], [ -12, %if.end8.i.i.i.i.i.i.do.end.i99.i.i_crit_edge ], [ %call32.i.i.i, %if.then29.i.i.i.do.end.i99.i.i_crit_edge ], [ %call19.i.i.i, %if.then16.i.i.i.do.end.i99.i.i_crit_edge ], [ %call6.i.i.i, %if.then5.i.i.i.do.end.i99.i.i_crit_edge ], [ -12, %if.then.i71.i.i.do.end.i99.i.i_crit_edge ]
  %806 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %dev, align 4
  %tobool82.not.i.i.i = icmp eq ptr %807, null
  %spec.select.i97.i.i = select i1 %tobool82.not.i.i.i, ptr @.str.3, ptr %807
  %808 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %abs_vfid, align 1
  %conv85.i.i242.i = zext i8 %809 to i32
  %vf_qid86.i.i.i = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, ptr %714, i32 0, i32 2
  %810 = ptrtoint ptr %vf_qid86.i.i.i to i32
  call void @__asan_load1_noabort(i32 %810)
  %811 = load i8, ptr %vf_qid86.i.i.i, align 4
  %conv87.i.i.i = zext i8 %811 to i32
  %call88.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.221, i32 noundef 1832, ptr noundef nonnull %spec.select.i97.i.i, i32 noundef %conv85.i.i242.i, i32 noundef %conv87.i.i.i, i32 noundef %rc.4210.i.i.i) #11
  br label %bnx2x_vf_mbx_set_q_filters.exit.i

bnx2x_vf_mbx_set_q_filters.exit.i:                ; preds = %do.end.i99.i.i, %op_err.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge, %if.end68.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge, %bnx2x_filters_validate_vlan.exit.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge, %bnx2x_filters_validate_vlan.exit.thread.i.i, %do.end29.i.i.i, %do.end.i.i211.i
  %rc.0.i243.i = phi i32 [ -1, %bnx2x_filters_validate_vlan.exit.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge ], [ -1, %do.end.i.i211.i ], [ -1, %do.end29.i.i.i ], [ -1, %bnx2x_filters_validate_vlan.exit.thread.i.i ], [ 0, %op_err.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge ], [ %rc.4210.i.i.i, %do.end.i99.i.i ], [ 0, %if.end68.i.i.i.bnx2x_vf_mbx_set_q_filters.exit.i_crit_edge ]
  %812 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %vfdb1, align 8
  %814 = ptrtoint ptr %index.i.i200.i to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %index.i.i200.i, align 8
  %idxprom.i.i.i244.i = zext i8 %815 to i32
  %arrayidx.i.i100.i.i = getelementptr %struct.bnx2x_vfdb, ptr %813, i32 0, i32 5, i32 %idxprom.i.i.i244.i
  %first_tlv.i.i.i245.i = getelementptr %struct.bnx2x_vfdb, ptr %813, i32 0, i32 5, i32 %idxprom.i.i.i244.i, i32 4
  %816 = ptrtoint ptr %first_tlv.i.i.i245.i to i32
  call void @__asan_load2_noabort(i32 %816)
  %817 = load i16, ptr %first_tlv.i.i.i245.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %817)
  %cmp.i.i101.i.i = icmp eq i16 %817, 1
  %conv3.i.i102.i.i = select i1 %cmp.i.i101.i.i, i16 120, i16 8
  %818 = ptrtoint ptr %arrayidx.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %arrayidx.i.i100.i.i, align 4
  %resp.i.i.i246.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %819, i32 0, i32 1
  %820 = ptrtoint ptr %resp.i.i.i246.i to i32
  call void @__asan_store2_noabort(i32 %820)
  store i16 %817, ptr %resp.i.i.i246.i, align 2
  %length2.i.i.i.i247.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %819, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %821 = ptrtoint ptr %length2.i.i.i.i247.i to i32
  call void @__asan_store2_noabort(i32 %821)
  store i16 %conv3.i.i102.i.i, ptr %length2.i.i.i.i247.i, align 2
  %822 = load ptr, ptr %arrayidx.i.i100.i.i, align 4
  %resp5.i.i.i248.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %822, i32 0, i32 1
  %conv.i.i.i.i249.i = zext i16 %conv3.i.i102.i.i to i32
  %add.ptr.i.i.i.i250.i = getelementptr i8, ptr %resp5.i.i.i248.i, i32 %conv.i.i.i.i249.i
  %823 = ptrtoint ptr %add.ptr.i.i.i.i250.i to i32
  call void @__asan_store2_noabort(i32 %823)
  store i16 12, ptr %add.ptr.i.i.i.i250.i, align 2
  %length2.i12.i.i.i251.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i250.i, i32 0, i32 1
  %824 = ptrtoint ptr %length2.i12.i.i.i251.i to i32
  call void @__asan_store2_noabort(i32 %824)
  store i16 8, ptr %length2.i12.i.i.i251.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %rc.0.i243.i) #8
  br label %for.inc

sw.bb27.i:                                        ; preds = %if.then15.i
  %825 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %arrayidx, align 4
  %vf_qid.i252.i = getelementptr inbounds %struct.vfpf_q_op_tlv, ptr %826, i32 0, i32 1
  %827 = ptrtoint ptr %vf_qid.i252.i to i32
  call void @__asan_load1_noabort(i32 %827)
  %828 = load i8, ptr %vf_qid.i252.i, align 8
  %conv.i253.i = zext i8 %828 to i32
  %829 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %msg_enable, align 8
  %and.i255.i = and i32 %830, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i255.i)
  %tobool.not.i256.i = icmp eq i32 %and.i255.i, 0
  br i1 %tobool.not.i256.i, label %sw.bb27.i.bnx2x_vf_mbx_teardown_q.exit.i_crit_edge, label %do.end.i263.i, !prof !412

sw.bb27.i.bnx2x_vf_mbx_teardown_q.exit.i_crit_edge: ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_teardown_q.exit.i

do.end.i263.i:                                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  %831 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %dev, align 4
  %tobool4.not.i258.i = icmp eq ptr %832, null
  %spec.select.i259.i = select i1 %tobool4.not.i258.i, ptr @.str.3, ptr %832
  %833 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %abs_vfid, align 1
  %conv6.i261.i = zext i8 %834 to i32
  %call.i262.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223, i32 noundef 1950, ptr noundef nonnull %spec.select.i259.i, i32 noundef %conv6.i261.i, i32 noundef %conv.i253.i) #11
  br label %bnx2x_vf_mbx_teardown_q.exit.i

bnx2x_vf_mbx_teardown_q.exit.i:                   ; preds = %do.end.i263.i, %sw.bb27.i.bnx2x_vf_mbx_teardown_q.exit.i_crit_edge
  %call9.i.i = call i32 @bnx2x_vf_queue_teardown(ptr noundef %bp, ptr noundef %cond, i32 noundef %conv.i253.i) #8
  %835 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %vfdb1, align 8
  %index.i.i.i265.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %837 = ptrtoint ptr %index.i.i.i265.i to i32
  call void @__asan_load1_noabort(i32 %837)
  %838 = load i8, ptr %index.i.i.i265.i, align 8
  %idxprom.i.i.i266.i = zext i8 %838 to i32
  %arrayidx.i.i.i267.i = getelementptr %struct.bnx2x_vfdb, ptr %836, i32 0, i32 5, i32 %idxprom.i.i.i266.i
  %first_tlv.i.i.i268.i = getelementptr %struct.bnx2x_vfdb, ptr %836, i32 0, i32 5, i32 %idxprom.i.i.i266.i, i32 4
  %839 = ptrtoint ptr %first_tlv.i.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %839)
  %840 = load i16, ptr %first_tlv.i.i.i268.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %840)
  %cmp.i.i.i269.i = icmp eq i16 %840, 1
  %conv3.i.i.i270.i = select i1 %cmp.i.i.i269.i, i16 120, i16 8
  %841 = ptrtoint ptr %arrayidx.i.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %arrayidx.i.i.i267.i, align 4
  %resp.i.i.i271.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %842, i32 0, i32 1
  %843 = ptrtoint ptr %resp.i.i.i271.i to i32
  call void @__asan_store2_noabort(i32 %843)
  store i16 %840, ptr %resp.i.i.i271.i, align 2
  %length2.i.i.i.i272.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %842, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %844 = ptrtoint ptr %length2.i.i.i.i272.i to i32
  call void @__asan_store2_noabort(i32 %844)
  store i16 %conv3.i.i.i270.i, ptr %length2.i.i.i.i272.i, align 2
  %845 = load ptr, ptr %arrayidx.i.i.i267.i, align 4
  %resp5.i.i.i273.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %845, i32 0, i32 1
  %conv.i.i.i.i274.i = zext i16 %conv3.i.i.i270.i to i32
  %add.ptr.i.i.i.i275.i = getelementptr i8, ptr %resp5.i.i.i273.i, i32 %conv.i.i.i.i274.i
  %846 = ptrtoint ptr %add.ptr.i.i.i.i275.i to i32
  call void @__asan_store2_noabort(i32 %846)
  store i16 12, ptr %add.ptr.i.i.i.i275.i, align 2
  %length2.i12.i.i.i276.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i275.i, i32 0, i32 1
  %847 = ptrtoint ptr %length2.i12.i.i.i276.i to i32
  call void @__asan_store2_noabort(i32 %847)
  store i16 8, ptr %length2.i12.i.i.i276.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %call9.i.i) #8
  br label %for.inc

sw.bb28.i:                                        ; preds = %if.then15.i
  %848 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load i32, ptr %msg_enable, align 8
  %and.i278.i = and i32 %849, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278.i)
  %tobool.not.i279.i = icmp eq i32 %and.i278.i, 0
  br i1 %tobool.not.i279.i, label %sw.bb28.i.bnx2x_vf_mbx_close_vf.exit.i_crit_edge, label %do.end.i286.i, !prof !412

sw.bb28.i.bnx2x_vf_mbx_close_vf.exit.i_crit_edge: ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_close_vf.exit.i

do.end.i286.i:                                    ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #10
  %850 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %dev, align 4
  %tobool4.not.i281.i = icmp eq ptr %851, null
  %spec.select.i282.i = select i1 %tobool4.not.i281.i, ptr @.str.3, ptr %851
  %852 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %abs_vfid, align 1
  %conv.i284.i = zext i8 %853 to i32
  %call.i285.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.225, i32 noundef 1961, ptr noundef nonnull %spec.select.i282.i, i32 noundef %conv.i284.i) #11
  br label %bnx2x_vf_mbx_close_vf.exit.i

bnx2x_vf_mbx_close_vf.exit.i:                     ; preds = %do.end.i286.i, %sw.bb28.i.bnx2x_vf_mbx_close_vf.exit.i_crit_edge
  %call8.i.i = call i32 @bnx2x_vf_close(ptr noundef %bp, ptr noundef %cond) #8
  %854 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %vfdb1, align 8
  %index.i.i.i288.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %856 = ptrtoint ptr %index.i.i.i288.i to i32
  call void @__asan_load1_noabort(i32 %856)
  %857 = load i8, ptr %index.i.i.i288.i, align 8
  %idxprom.i.i.i289.i = zext i8 %857 to i32
  %arrayidx.i.i.i290.i = getelementptr %struct.bnx2x_vfdb, ptr %855, i32 0, i32 5, i32 %idxprom.i.i.i289.i
  %first_tlv.i.i.i291.i = getelementptr %struct.bnx2x_vfdb, ptr %855, i32 0, i32 5, i32 %idxprom.i.i.i289.i, i32 4
  %858 = ptrtoint ptr %first_tlv.i.i.i291.i to i32
  call void @__asan_load2_noabort(i32 %858)
  %859 = load i16, ptr %first_tlv.i.i.i291.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %859)
  %cmp.i.i.i292.i = icmp eq i16 %859, 1
  %conv3.i.i.i293.i = select i1 %cmp.i.i.i292.i, i16 120, i16 8
  %860 = ptrtoint ptr %arrayidx.i.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %arrayidx.i.i.i290.i, align 4
  %resp.i.i.i294.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %861, i32 0, i32 1
  %862 = ptrtoint ptr %resp.i.i.i294.i to i32
  call void @__asan_store2_noabort(i32 %862)
  store i16 %859, ptr %resp.i.i.i294.i, align 2
  %length2.i.i.i.i295.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %861, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %863 = ptrtoint ptr %length2.i.i.i.i295.i to i32
  call void @__asan_store2_noabort(i32 %863)
  store i16 %conv3.i.i.i293.i, ptr %length2.i.i.i.i295.i, align 2
  %864 = load ptr, ptr %arrayidx.i.i.i290.i, align 4
  %resp5.i.i.i296.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %864, i32 0, i32 1
  %conv.i.i.i.i297.i = zext i16 %conv3.i.i.i293.i to i32
  %add.ptr.i.i.i.i298.i = getelementptr i8, ptr %resp5.i.i.i296.i, i32 %conv.i.i.i.i297.i
  %865 = ptrtoint ptr %add.ptr.i.i.i.i298.i to i32
  call void @__asan_store2_noabort(i32 %865)
  store i16 12, ptr %add.ptr.i.i.i.i298.i, align 2
  %length2.i12.i.i.i299.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i298.i, i32 0, i32 1
  %866 = ptrtoint ptr %length2.i12.i.i.i299.i to i32
  call void @__asan_store2_noabort(i32 %866)
  store i16 8, ptr %length2.i12.i.i.i299.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %call8.i.i) #8
  br label %for.inc

sw.bb29.i:                                        ; preds = %if.then15.i
  %867 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %msg_enable, align 8
  %and.i301.i = and i32 %868, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301.i)
  %tobool.not.i302.i = icmp eq i32 %and.i301.i, 0
  br i1 %tobool.not.i302.i, label %sw.bb29.i.bnx2x_vf_mbx_release_vf.exit.i_crit_edge, label %do.end.i309.i, !prof !412

sw.bb29.i.bnx2x_vf_mbx_release_vf.exit.i_crit_edge: ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_release_vf.exit.i

do.end.i309.i:                                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %869 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %dev, align 4
  %tobool4.not.i304.i = icmp eq ptr %870, null
  %spec.select.i305.i = select i1 %tobool4.not.i304.i, ptr @.str.3, ptr %870
  %871 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %871)
  %872 = load i8, ptr %abs_vfid, align 1
  %conv.i307.i = zext i8 %872 to i32
  %call.i308.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.227, i32 noundef 1972, ptr noundef nonnull %spec.select.i305.i, i32 noundef %conv.i307.i) #11
  br label %bnx2x_vf_mbx_release_vf.exit.i

bnx2x_vf_mbx_release_vf.exit.i:                   ; preds = %do.end.i309.i, %sw.bb29.i.bnx2x_vf_mbx_release_vf.exit.i_crit_edge
  %call8.i310.i = call i32 @bnx2x_vf_free(ptr noundef %bp, ptr noundef %cond) #8
  %873 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %vfdb1, align 8
  %index.i.i.i312.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %875 = ptrtoint ptr %index.i.i.i312.i to i32
  call void @__asan_load1_noabort(i32 %875)
  %876 = load i8, ptr %index.i.i.i312.i, align 8
  %idxprom.i.i.i313.i = zext i8 %876 to i32
  %arrayidx.i.i.i314.i = getelementptr %struct.bnx2x_vfdb, ptr %874, i32 0, i32 5, i32 %idxprom.i.i.i313.i
  %first_tlv.i.i.i315.i = getelementptr %struct.bnx2x_vfdb, ptr %874, i32 0, i32 5, i32 %idxprom.i.i.i313.i, i32 4
  %877 = ptrtoint ptr %first_tlv.i.i.i315.i to i32
  call void @__asan_load2_noabort(i32 %877)
  %878 = load i16, ptr %first_tlv.i.i.i315.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %878)
  %cmp.i.i.i316.i = icmp eq i16 %878, 1
  %conv3.i.i.i317.i = select i1 %cmp.i.i.i316.i, i16 120, i16 8
  %879 = ptrtoint ptr %arrayidx.i.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %arrayidx.i.i.i314.i, align 4
  %resp.i.i.i318.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %880, i32 0, i32 1
  %881 = ptrtoint ptr %resp.i.i.i318.i to i32
  call void @__asan_store2_noabort(i32 %881)
  store i16 %878, ptr %resp.i.i.i318.i, align 2
  %length2.i.i.i.i319.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %880, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %882 = ptrtoint ptr %length2.i.i.i.i319.i to i32
  call void @__asan_store2_noabort(i32 %882)
  store i16 %conv3.i.i.i317.i, ptr %length2.i.i.i.i319.i, align 2
  %883 = load ptr, ptr %arrayidx.i.i.i314.i, align 4
  %resp5.i.i.i320.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %883, i32 0, i32 1
  %conv.i.i.i.i321.i = zext i16 %conv3.i.i.i317.i to i32
  %add.ptr.i.i.i.i322.i = getelementptr i8, ptr %resp5.i.i.i320.i, i32 %conv.i.i.i.i321.i
  %884 = ptrtoint ptr %add.ptr.i.i.i.i322.i to i32
  call void @__asan_store2_noabort(i32 %884)
  store i16 12, ptr %add.ptr.i.i.i.i322.i, align 2
  %length2.i12.i.i.i323.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i322.i, i32 0, i32 1
  %885 = ptrtoint ptr %length2.i12.i.i.i323.i to i32
  call void @__asan_store2_noabort(i32 %885)
  store i16 8, ptr %length2.i12.i.i.i323.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %call8.i310.i) #8
  br label %for.inc

sw.bb30.i:                                        ; preds = %if.then15.i
  call void @llvm.lifetime.start.p0(i64 188, ptr nonnull %rss.i.i) #8
  %886 = call ptr @memset(ptr %rss.i.i, i32 255, i32 188)
  %887 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %arrayidx, align 4
  %ind_table_size.i.i = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %888, i32 0, i32 3
  %889 = ptrtoint ptr %ind_table_size.i.i to i32
  call void @__asan_load1_noabort(i32 %889)
  %890 = load i8, ptr %ind_table_size.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %890)
  %cmp.not.i324.i = icmp eq i8 %890, -128
  br i1 %cmp.not.i324.i, label %lor.lhs.false.i.i, label %sw.bb30.i.do.end.i330.i_crit_edge

sw.bb30.i.do.end.i330.i_crit_edge:                ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i330.i

lor.lhs.false.i.i:                                ; preds = %sw.bb30.i
  %rss_key_size.i.i = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %888, i32 0, i32 4
  %891 = ptrtoint ptr %rss_key_size.i.i to i32
  call void @__asan_load1_noabort(i32 %891)
  %892 = load i8, ptr %rss_key_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %892)
  %cmp3.not.i.i = icmp eq i8 %892, 10
  br i1 %cmp3.not.i.i, label %if.end.i332.i, label %lor.lhs.false.i.i.do.end.i330.i_crit_edge

lor.lhs.false.i.i.do.end.i330.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i330.i

do.end.i330.i:                                    ; preds = %lor.lhs.false.i.i.do.end.i330.i_crit_edge, %sw.bb30.i.do.end.i330.i_crit_edge
  %893 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %dev, align 4
  %tobool.not.i326.i = icmp eq ptr %894, null
  %spec.select.i327.i = select i1 %tobool.not.i326.i, ptr @.str.3, ptr %894
  %index.i328.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %895 = ptrtoint ptr %index.i328.i to i32
  call void @__asan_load1_noabort(i32 %895)
  %896 = load i8, ptr %index.i328.i, align 8
  %conv7.i.i = zext i8 %896 to i32
  %call.i329.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.229, i32 noundef 1988, ptr noundef nonnull %spec.select.i327.i, i32 noundef %conv7.i.i) #11
  br label %bnx2x_vf_mbx_update_rss.exit.i

if.end.i332.i:                                    ; preds = %lor.lhs.false.i.i
  %897 = call ptr @memset(ptr %19, i32 0, i32 48)
  %ind_table11.i.i = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %888, i32 0, i32 6
  %898 = call ptr @memcpy(ptr %ind_table.i.i, ptr %ind_table11.i.i, i32 128)
  %rss_key14.i.i = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %888, i32 0, i32 7
  %899 = call ptr @memcpy(ptr %rss_key.i.i, ptr %rss_key14.i.i, i32 40)
  %rss_conf_obj.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 24
  %900 = ptrtoint ptr %rss.i.i to i32
  call void @__asan_store4_noabort(i32 %900)
  store ptr %rss_conf_obj.i.i, ptr %rss.i.i, align 4
  %rss_result_mask.i.i = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %888, i32 0, i32 2
  %901 = ptrtoint ptr %rss_result_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %901)
  %902 = load i8, ptr %rss_result_mask.i.i, align 4
  %903 = ptrtoint ptr %rss_result_mask16.i.i to i32
  call void @__asan_store1_noabort(i32 %903)
  store i8 %902, ptr %rss_result_mask16.i.i, align 4
  %904 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %904)
  store i32 0, ptr %rss_flags.i.i, align 4
  %905 = ptrtoint ptr %ramrod_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %905)
  store i32 0, ptr %ramrod_flags.i.i, align 4
  %rss_flags17.i.i = getelementptr inbounds %struct.vfpf_rss_tlv, ptr %888, i32 0, i32 1
  %906 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %rss_flags17.i.i, align 4
  %and.i331.i = and i32 %907, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i331.i)
  %tobool18.not.i.i = icmp eq i32 %and.i331.i, 0
  br i1 %tobool18.not.i.i, label %if.end.i332.i.if.end21.i333.i_crit_edge, label %if.then19.i.i

if.end.i332.i.if.end21.i333.i_crit_edge:          ; preds = %if.end.i332.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i333.i

if.then19.i.i:                                    ; preds = %if.end.i332.i
  call void @__sanitizer_cov_trace_pc() #10
  %908 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %908)
  store i32 1, ptr %rss_flags.i.i, align 4
  br label %if.end21.i333.i

if.end21.i333.i:                                  ; preds = %if.then19.i.i, %if.end.i332.i.if.end21.i333.i_crit_edge
  %909 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load i32, ptr %rss_flags17.i.i, align 4
  %and23.i.i = and i32 %910, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end21.i333.i.if.end27.i.i_crit_edge, label %if.then25.i.i

if.end21.i333.i.if.end27.i.i_crit_edge:           ; preds = %if.end21.i333.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

if.then25.i.i:                                    ; preds = %if.end21.i333.i
  call void @__sanitizer_cov_trace_pc() #10
  %911 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %rss_flags.i.i, align 4
  %or.i132.i.i = or i32 %912, 2
  store i32 %or.i132.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then25.i.i, %if.end21.i333.i.if.end27.i.i_crit_edge
  %913 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load i32, ptr %rss_flags17.i.i, align 4
  %and29.i.i = and i32 %914, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end27.i.i.if.end33.i.i_crit_edge, label %if.then31.i.i

if.end27.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i

if.then31.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %915 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %rss_flags.i.i, align 4
  %or.i133.i.i = or i32 %916, 4
  store i32 %or.i133.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then31.i.i, %if.end27.i.i.if.end33.i.i_crit_edge
  %917 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %rss_flags17.i.i, align 4
  %and35.i.i = and i32 %918, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end33.i.i.if.end39.i.i_crit_edge, label %if.then37.i.i

if.end33.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i.i

if.then37.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %919 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load i32, ptr %rss_flags.i.i, align 4
  %or.i134.i.i = or i32 %920, 8
  store i32 %or.i134.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then37.i.i, %if.end33.i.i.if.end39.i.i_crit_edge
  %921 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load i32, ptr %rss_flags17.i.i, align 4
  %and41.i.i = and i32 %922, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end45.i.i_crit_edge, label %if.then43.i.i

if.end39.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %923 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %rss_flags.i.i, align 4
  %or.i135.i.i = or i32 %924, 16
  store i32 %or.i135.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end45.i.i_crit_edge
  %925 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %rss_flags17.i.i, align 4
  %and47.i.i = and i32 %926, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end45.i.i.if.end51.i.i_crit_edge, label %if.then49.i.i

if.end45.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i.i

if.then49.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %927 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load i32, ptr %rss_flags.i.i, align 4
  %or.i136.i.i = or i32 %928, 32
  store i32 %or.i136.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then49.i.i, %if.end45.i.i.if.end51.i.i_crit_edge
  %929 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load i32, ptr %rss_flags17.i.i, align 4
  %and53.i.i = and i32 %930, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i334.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i334.i, label %if.end51.i.i.if.end57.i.i_crit_edge, label %if.then55.i335.i

if.end51.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i.i

if.then55.i335.i:                                 ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %931 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load i32, ptr %rss_flags.i.i, align 4
  %or.i137.i.i = or i32 %932, 64
  store i32 %or.i137.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then55.i335.i, %if.end51.i.i.if.end57.i.i_crit_edge
  %933 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %rss_flags17.i.i, align 4
  %and59.i.i = and i32 %934, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end57.i.i.if.end63.i.i_crit_edge, label %if.then61.i.i

if.end57.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i.i

if.then61.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %935 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load i32, ptr %rss_flags.i.i, align 4
  %or.i138.i.i = or i32 %936, 128
  store i32 %or.i138.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then61.i.i, %if.end57.i.i.if.end63.i.i_crit_edge
  %937 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load i32, ptr %rss_flags17.i.i, align 4
  %and65.i.i = and i32 %938, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool66.not.i.i = icmp eq i32 %and65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end63.i.i.if.end69.i.i_crit_edge, label %if.then67.i.i

if.end63.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i.i

if.then67.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %939 = ptrtoint ptr %rss_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %rss_flags.i.i, align 4
  %or.i139.i.i = or i32 %940, 256
  store i32 %or.i139.i.i, ptr %rss_flags.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then67.i.i, %if.end63.i.i.if.end69.i.i_crit_edge
  %941 = ptrtoint ptr %rss_flags17.i.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %rss_flags17.i.i, align 4
  %943 = and i32 %942, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %943)
  %.not.i.i = icmp eq i32 %943, 32
  %944 = and i32 %942, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %944)
  %.not140.i.i = icmp eq i32 %944, 256
  %or.cond.i.i = or i1 %.not.i.i, %.not140.i.i
  br i1 %or.cond.i.i, label %do.end88.i.i, label %if.end102.i.i

do.end88.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %945 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %dev, align 4
  %tobool91.not.i.i = icmp eq ptr %946, null
  %spec.select131.i.i = select i1 %tobool91.not.i.i, ptr @.str.3, ptr %946
  %call99.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.229, i32 noundef 2029, ptr noundef nonnull %spec.select131.i.i) #11
  br label %bnx2x_vf_mbx_update_rss.exit.i

if.end102.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call103.i.i = call i32 @bnx2x_vf_rss_update(ptr noundef %bp, ptr noundef %cond, ptr noundef nonnull %rss.i.i) #8
  br label %bnx2x_vf_mbx_update_rss.exit.i

bnx2x_vf_mbx_update_rss.exit.i:                   ; preds = %if.end102.i.i, %do.end88.i.i, %do.end.i330.i
  %rc.0.i336.i = phi i32 [ -22, %do.end.i330.i ], [ %call103.i.i, %if.end102.i.i ], [ -22, %do.end88.i.i ]
  %947 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %vfdb1, align 8
  %index.i.i.i338.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %949 = ptrtoint ptr %index.i.i.i338.i to i32
  call void @__asan_load1_noabort(i32 %949)
  %950 = load i8, ptr %index.i.i.i338.i, align 8
  %idxprom.i.i.i339.i = zext i8 %950 to i32
  %arrayidx.i.i.i340.i = getelementptr %struct.bnx2x_vfdb, ptr %948, i32 0, i32 5, i32 %idxprom.i.i.i339.i
  %first_tlv.i.i.i341.i = getelementptr %struct.bnx2x_vfdb, ptr %948, i32 0, i32 5, i32 %idxprom.i.i.i339.i, i32 4
  %951 = ptrtoint ptr %first_tlv.i.i.i341.i to i32
  call void @__asan_load2_noabort(i32 %951)
  %952 = load i16, ptr %first_tlv.i.i.i341.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %952)
  %cmp.i.i.i342.i = icmp eq i16 %952, 1
  %conv3.i.i.i343.i = select i1 %cmp.i.i.i342.i, i16 120, i16 8
  %953 = ptrtoint ptr %arrayidx.i.i.i340.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %arrayidx.i.i.i340.i, align 4
  %resp.i.i.i344.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %954, i32 0, i32 1
  %955 = ptrtoint ptr %resp.i.i.i344.i to i32
  call void @__asan_store2_noabort(i32 %955)
  store i16 %952, ptr %resp.i.i.i344.i, align 2
  %length2.i.i.i.i345.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %954, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %956 = ptrtoint ptr %length2.i.i.i.i345.i to i32
  call void @__asan_store2_noabort(i32 %956)
  store i16 %conv3.i.i.i343.i, ptr %length2.i.i.i.i345.i, align 2
  %957 = load ptr, ptr %arrayidx.i.i.i340.i, align 4
  %resp5.i.i.i346.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %957, i32 0, i32 1
  %conv.i.i.i.i347.i = zext i16 %conv3.i.i.i343.i to i32
  %add.ptr.i.i.i.i348.i = getelementptr i8, ptr %resp5.i.i.i346.i, i32 %conv.i.i.i.i347.i
  %958 = ptrtoint ptr %add.ptr.i.i.i.i348.i to i32
  call void @__asan_store2_noabort(i32 %958)
  store i16 12, ptr %add.ptr.i.i.i.i348.i, align 2
  %length2.i12.i.i.i349.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i348.i, i32 0, i32 1
  %959 = ptrtoint ptr %length2.i12.i.i.i349.i to i32
  call void @__asan_store2_noabort(i32 %959)
  store i16 8, ptr %length2.i12.i.i.i349.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %rc.0.i336.i) #8
  call void @llvm.lifetime.end.p0(i64 188, ptr nonnull %rss.i.i) #8
  br label %for.inc

sw.bb31.i:                                        ; preds = %if.then15.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vf_op_params.i.i) #8
  %960 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %arrayidx, align 4
  %962 = call ptr @memset(ptr %vf_op_params.i.i, i32 0, i32 20)
  %max_sges_for_packet.i.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 4
  %963 = ptrtoint ptr %max_sges_for_packet.i.i.i to i32
  call void @__asan_load1_noabort(i32 %963)
  %964 = load i8, ptr %max_sges_for_packet.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %964)
  %cmp.i.i350.i = icmp ugt i8 %964, 3
  br i1 %cmp.i.i350.i, label %if.end.i.i358.i, label %if.end.i.i358.i.thread

if.end.i.i358.i:                                  ; preds = %sw.bb31.i
  %965 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %dev, align 4
  %tobool.not.i.i352.i = icmp eq ptr %966, null
  %spec.select.i.i353.i = select i1 %tobool.not.i.i352.i, ptr @.str.3, ptr %966
  %conv6.i.i354.i = zext i8 %964 to i32
  %call.i.i355.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, i32 noundef 2049, ptr noundef nonnull %spec.select.i.i353.i, i32 noundef %conv6.i.i354.i, i32 noundef 3) #11
  %max_tpa_queues.i.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 3
  %967 = ptrtoint ptr %max_tpa_queues.i.i.i to i32
  call void @__asan_load1_noabort(i32 %967)
  %968 = load i8, ptr %max_tpa_queues.i.i.i, align 2
  %conv10.i.i.i = zext i8 %968 to i32
  %969 = ptrtoint ptr %common.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %common.i.i357.i, align 8
  %shr.mask.i.i.i = and i32 %970, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 374210560, i32 %shr.mask.i.i.i)
  %cmp11.i.i.i = icmp eq i32 %shr.mask.i.i.i, 374210560
  %cond13.i.i.i = select i1 %cmp11.i.i.i, i32 32, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %cond13.i.i.i, i32 %conv10.i.i.i)
  %cmp14.i.i.i = icmp ult i32 %cond13.i.i.i, %conv10.i.i.i
  br i1 %cmp14.i.i.i, label %if.end.i.i358.i.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge, label %if.end.i.i358.i.bnx2x_vf_mbx_update_tpa.exit.i_crit_edge

if.end.i.i358.i.bnx2x_vf_mbx_update_tpa.exit.i_crit_edge: ; preds = %if.end.i.i358.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_vf_mbx_update_tpa.exit.i

if.end.i.i358.i.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i358.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_validate_tpa_params.exit.thread.i.i

if.end.i.i358.i.thread:                           ; preds = %sw.bb31.i
  %max_tpa_queues.i.i.i125 = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 3
  %971 = ptrtoint ptr %max_tpa_queues.i.i.i125 to i32
  call void @__asan_load1_noabort(i32 %971)
  %972 = load i8, ptr %max_tpa_queues.i.i.i125, align 2
  %conv10.i.i.i126 = zext i8 %972 to i32
  %973 = ptrtoint ptr %common.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load i32, ptr %common.i.i357.i, align 8
  %shr.mask.i.i.i127 = and i32 %974, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 374210560, i32 %shr.mask.i.i.i127)
  %cmp11.i.i.i128 = icmp eq i32 %shr.mask.i.i.i127, 374210560
  %cond13.i.i.i129 = select i1 %cmp11.i.i.i128, i32 32, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %cond13.i.i.i129, i32 %conv10.i.i.i126)
  %cmp14.i.i.i130 = icmp ult i32 %cond13.i.i.i129, %conv10.i.i.i126
  br i1 %cmp14.i.i.i130, label %if.end.i.i358.i.thread.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge, label %if.end.i359.i

if.end.i.i358.i.thread.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i358.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnx2x_validate_tpa_params.exit.thread.i.i

bnx2x_validate_tpa_params.exit.thread.i.i:        ; preds = %if.end.i.i358.i.thread.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge, %if.end.i.i358.i.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge
  %cond13.i.i.i132 = phi i32 [ %cond13.i.i.i129, %if.end.i.i358.i.thread.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge ], [ %cond13.i.i.i, %if.end.i.i358.i.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge ]
  %conv10.i.i.i131 = phi i32 [ %conv10.i.i.i126, %if.end.i.i358.i.thread.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge ], [ %conv10.i.i.i, %if.end.i.i358.i.bnx2x_validate_tpa_params.exit.thread.i.i_crit_edge ]
  %975 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %dev, align 4
  %tobool23.not.i.i.i = icmp eq ptr %976, null
  %spec.select53.i.i.i = select i1 %tobool23.not.i.i.i, ptr @.str.3, ptr %976
  %call40.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i32 noundef 2056, ptr noundef nonnull %spec.select53.i.i.i, i32 noundef %conv10.i.i.i131, i32 noundef %cond13.i.i.i132) #11
  br label %bnx2x_vf_mbx_update_tpa.exit.i

if.end.i359.i:                                    ; preds = %if.end.i.i358.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  %complete_on_both_clients.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 5
  %977 = ptrtoint ptr %complete_on_both_clients.i.i to i32
  call void @__asan_load1_noabort(i32 %977)
  %978 = load i8, ptr %complete_on_both_clients.i.i, align 4
  %979 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %979)
  store i8 %978, ptr %12, align 4
  %dont_verify_thr.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 6
  %980 = ptrtoint ptr %dont_verify_thr.i.i to i32
  call void @__asan_load1_noabort(i32 %980)
  %981 = load i8, ptr %dont_verify_thr.i.i, align 1
  %982 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %982)
  store i8 %981, ptr %13, align 1
  %max_agg_size.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 9
  %983 = ptrtoint ptr %max_agg_size.i.i to i32
  call void @__asan_load2_noabort(i32 %983)
  %984 = load i16, ptr %max_agg_size.i.i, align 2
  %985 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %985)
  store i16 %984, ptr %16, align 2
  %986 = ptrtoint ptr %max_sges_for_packet.i.i.i to i32
  call void @__asan_load1_noabort(i32 %986)
  %987 = load i8, ptr %max_sges_for_packet.i.i.i, align 1
  %988 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %988)
  store i8 %987, ptr %11, align 1
  %989 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %989)
  store i8 %972, ptr %10, align 2
  %sge_buff_size.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 8
  %990 = ptrtoint ptr %sge_buff_size.i.i to i32
  call void @__asan_load2_noabort(i32 %990)
  %991 = load i16, ptr %sge_buff_size.i.i, align 8
  %992 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %992)
  store i16 %991, ptr %15, align 4
  %sge_pause_thr_high.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 11
  %993 = ptrtoint ptr %sge_pause_thr_high.i.i to i32
  call void @__asan_load2_noabort(i32 %993)
  %994 = load i16, ptr %sge_pause_thr_high.i.i, align 2
  %995 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %995)
  store i16 %994, ptr %18, align 2
  %sge_pause_thr_low.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 10
  %996 = ptrtoint ptr %sge_pause_thr_low.i.i to i32
  call void @__asan_load2_noabort(i32 %996)
  %997 = load i16, ptr %sge_pause_thr_low.i.i, align 4
  %998 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %998)
  store i16 %997, ptr %17, align 4
  %tpa_mode.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 7
  %999 = ptrtoint ptr %tpa_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %999)
  %1000 = load i8, ptr %tpa_mode.i.i, align 2
  %1001 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %1001)
  store i8 %1000, ptr %14, align 2
  %update_ipv4.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 1
  %1002 = ptrtoint ptr %update_ipv4.i.i to i32
  call void @__asan_load1_noabort(i32 %1002)
  %1003 = load i8, ptr %update_ipv4.i.i, align 8
  %1004 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %1004)
  store i8 %1003, ptr %8, align 4
  %update_ipv6.i.i = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %961, i32 0, i32 1, i32 2
  %1005 = ptrtoint ptr %update_ipv6.i.i to i32
  call void @__asan_load1_noabort(i32 %1005)
  %1006 = load i8, ptr %update_ipv6.i.i, align 1
  %1007 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %1007)
  store i8 %1006, ptr %9, align 1
  %call19.i.i = call i32 @bnx2x_vf_tpa_update(ptr noundef %bp, ptr noundef %cond, ptr noundef %961, ptr noundef nonnull %vf_op_params.i.i) #8
  br label %bnx2x_vf_mbx_update_tpa.exit.i

bnx2x_vf_mbx_update_tpa.exit.i:                   ; preds = %if.end.i359.i, %bnx2x_validate_tpa_params.exit.thread.i.i, %if.end.i.i358.i.bnx2x_vf_mbx_update_tpa.exit.i_crit_edge
  %rc.0.i360.i = phi i32 [ %call19.i.i, %if.end.i359.i ], [ 0, %bnx2x_validate_tpa_params.exit.thread.i.i ], [ 0, %if.end.i.i358.i.bnx2x_vf_mbx_update_tpa.exit.i_crit_edge ]
  %1008 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %vfdb1, align 8
  %index.i.i.i362.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %1010 = ptrtoint ptr %index.i.i.i362.i to i32
  call void @__asan_load1_noabort(i32 %1010)
  %1011 = load i8, ptr %index.i.i.i362.i, align 8
  %idxprom.i.i.i363.i = zext i8 %1011 to i32
  %arrayidx.i.i.i364.i = getelementptr %struct.bnx2x_vfdb, ptr %1009, i32 0, i32 5, i32 %idxprom.i.i.i363.i
  %first_tlv.i.i.i365.i = getelementptr %struct.bnx2x_vfdb, ptr %1009, i32 0, i32 5, i32 %idxprom.i.i.i363.i, i32 4
  %1012 = ptrtoint ptr %first_tlv.i.i.i365.i to i32
  call void @__asan_load2_noabort(i32 %1012)
  %1013 = load i16, ptr %first_tlv.i.i.i365.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1013)
  %cmp.i.i.i366.i = icmp eq i16 %1013, 1
  %conv3.i.i.i367.i = select i1 %cmp.i.i.i366.i, i16 120, i16 8
  %1014 = ptrtoint ptr %arrayidx.i.i.i364.i to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %arrayidx.i.i.i364.i, align 4
  %resp.i.i.i368.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1015, i32 0, i32 1
  %1016 = ptrtoint ptr %resp.i.i.i368.i to i32
  call void @__asan_store2_noabort(i32 %1016)
  store i16 %1013, ptr %resp.i.i.i368.i, align 2
  %length2.i.i.i.i369.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1015, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %1017 = ptrtoint ptr %length2.i.i.i.i369.i to i32
  call void @__asan_store2_noabort(i32 %1017)
  store i16 %conv3.i.i.i367.i, ptr %length2.i.i.i.i369.i, align 2
  %1018 = load ptr, ptr %arrayidx.i.i.i364.i, align 4
  %resp5.i.i.i370.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1018, i32 0, i32 1
  %conv.i.i.i.i371.i = zext i16 %conv3.i.i.i367.i to i32
  %add.ptr.i.i.i.i372.i = getelementptr i8, ptr %resp5.i.i.i370.i, i32 %conv.i.i.i.i371.i
  %1019 = ptrtoint ptr %add.ptr.i.i.i.i372.i to i32
  call void @__asan_store2_noabort(i32 %1019)
  store i16 12, ptr %add.ptr.i.i.i.i372.i, align 2
  %length2.i12.i.i.i373.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i.i372.i, i32 0, i32 1
  %1020 = ptrtoint ptr %length2.i12.i.i.i373.i to i32
  call void @__asan_store2_noabort(i32 %1020)
  store i16 8, ptr %length2.i12.i.i.i373.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef %rc.0.i360.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vf_op_params.i.i) #8
  br label %for.inc

do.end35.i:                                       ; preds = %if.end13.i
  %1021 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %dev, align 4
  %tobool38.not.i = icmp eq ptr %1022, null
  %spec.select153.i = select i1 %tobool38.not.i, ptr @.str.3, ptr %1022
  %conv49.i = zext i16 %66 to i32
  %length.i = getelementptr %struct.bnx2x_vfdb, ptr %20, i32 0, i32 5, i32 %conv119, i32 4, i32 0, i32 1
  %1023 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %1023)
  %1024 = load i16, ptr %length.i, align 2
  %conv52.i = zext i16 %1024 to i32
  %conv54.i = zext i8 %48 to i32
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.147, i32 noundef 2168, ptr noundef nonnull %spec.select153.i, i32 noundef %conv49.i, i32 noundef %conv52.i, i32 noundef %conv54.i) #11
  br label %do.body60.i

do.body60.i:                                      ; preds = %for.inc.i.do.body60.i_crit_edge, %do.end35.i
  %i.0397.i = phi i32 [ 0, %do.end35.i ], [ %inc.i, %for.inc.i.do.body60.i_crit_edge ]
  %1025 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load i32, ptr %msg_enable, align 8
  %and62.i = and i32 %1026, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %do.body60.i.for.inc.i_crit_edge, label %do.end73.i, !prof !412

do.body60.i.for.inc.i_crit_edge:                  ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end73.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #10
  %1027 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr [1024 x i8], ptr %1028, i32 0, i32 %i.0397.i
  %1029 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1029)
  %1030 = load i8, ptr %arrayidx.i, align 1
  %conv75.i = zext i8 %1030 to i32
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %conv75.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end73.i, %do.body60.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0397.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.if.end80.i_crit_edge, label %for.inc.i.do.body60.i_crit_edge

for.inc.i.do.body60.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body60.i

for.inc.i.if.end80.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %for.inc.i.if.end80.i_crit_edge, %if.then15.i.if.end80.i_crit_edge
  %1031 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %1031)
  %1032 = load i8, ptr %state.i, align 1
  %.off.i = add i8 %1032, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then89.i, label %if.else90.i

if.then89.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  %1033 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %vfdb1, align 8
  %index.i.i375.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond, i32 0, i32 13
  %1035 = ptrtoint ptr %index.i.i375.i to i32
  call void @__asan_load1_noabort(i32 %1035)
  %1036 = load i8, ptr %index.i.i375.i, align 8
  %idxprom.i.i376.i = zext i8 %1036 to i32
  %arrayidx.i.i377.i = getelementptr %struct.bnx2x_vfdb, ptr %1034, i32 0, i32 5, i32 %idxprom.i.i376.i
  %first_tlv.i.i.i = getelementptr %struct.bnx2x_vfdb, ptr %1034, i32 0, i32 5, i32 %idxprom.i.i376.i, i32 4
  %1037 = ptrtoint ptr %first_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1037)
  %1038 = load i16, ptr %first_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1038)
  %cmp.i.i378.i = icmp eq i16 %1038, 1
  %conv3.i.i379.i = select i1 %cmp.i.i378.i, i16 120, i16 8
  %1039 = ptrtoint ptr %arrayidx.i.i377.i to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %arrayidx.i.i377.i, align 4
  %resp.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1040, i32 0, i32 1
  %1041 = ptrtoint ptr %resp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1041)
  store i16 %1038, ptr %resp.i.i.i, align 2
  %length2.i.i.i380.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1040, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %1042 = ptrtoint ptr %length2.i.i.i380.i to i32
  call void @__asan_store2_noabort(i32 %1042)
  store i16 %conv3.i.i379.i, ptr %length2.i.i.i380.i, align 2
  %1043 = load ptr, ptr %arrayidx.i.i377.i, align 4
  %resp5.i.i.i = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %1043, i32 0, i32 1
  %conv.i.i.i381.i = zext i16 %conv3.i.i379.i to i32
  %add.ptr.i.i.i382.i = getelementptr i8, ptr %resp5.i.i.i, i32 %conv.i.i.i381.i
  %1044 = ptrtoint ptr %add.ptr.i.i.i382.i to i32
  call void @__asan_store2_noabort(i32 %1044)
  store i16 12, ptr %add.ptr.i.i.i382.i, align 2
  %length2.i12.i.i.i = getelementptr inbounds %struct.channel_tlv, ptr %add.ptr.i.i.i382.i, i32 0, i32 1
  %1045 = ptrtoint ptr %length2.i12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1045)
  store i16 8, ptr %length2.i12.i.i.i, align 2
  call fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %cond, i32 noundef 3) #8
  br label %for.inc

if.else90.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  %1046 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %1046)
  %1047 = load i8, ptr %abs_vfid, align 1
  %1048 = ptrtoint ptr %iro_arr.i383.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %iro_arr.i383.i, align 4
  %arrayidx.i384.i = getelementptr %struct.iro, ptr %1049, i32 159
  %1050 = ptrtoint ptr %arrayidx.i384.i to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load i32, ptr %arrayidx.i384.i, align 4
  %conv.i385.i = zext i8 %1047 to i32
  %m1.i386.i = getelementptr %struct.iro, ptr %1049, i32 159, i32 1
  %1052 = ptrtoint ptr %m1.i386.i to i32
  call void @__asan_load2_noabort(i32 %1052)
  %1053 = load i16, ptr %m1.i386.i, align 4
  %conv3.i387.i = zext i16 %1053 to i32
  %mul.i388.i = mul nuw nsw i32 %conv3.i387.i, %conv.i385.i
  %add.i389.i = add i32 %1051, 4259840
  %add4.i390.i = add i32 %add.i389.i, %mul.i388.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  call void @arm_heavy_mb() #8
  %1054 = ptrtoint ptr %regview.i391.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %regview.i391.i, align 8
  %add.ptr.i392.i = getelementptr i8, ptr %1055, i32 %add4.i390.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i392.i, i8 0) #8, !srcloc !419
  %1056 = ptrtoint ptr %first_tlv62 to i32
  call void @__asan_load2_noabort(i32 %1056)
  %1057 = load i16, ptr %first_tlv62, align 4
  %conv96.i = zext i16 %1057 to i32
  call void @bnx2x_unlock_vf_pf_channel(ptr noundef %bp, ptr noundef %cond, i32 noundef %conv96.i) #8
  br label %for.inc

cleanup:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %1058 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %dev, align 4
  %tobool47.not = icmp eq ptr %1059, null
  %spec.select110 = select i1 %tobool47.not, ptr @.str.3, ptr %1059
  %1060 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %1060)
  %1061 = load i8, ptr %abs_vfid, align 1
  %conv56 = zext i8 %1061 to i32
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef 2257, ptr noundef nonnull %spec.select110, i32 noundef %conv56) #11
  %call60 = call i32 @bnx2x_vf_release(ptr noundef %bp, ptr noundef %cond) #8
  br label %cleanup65

for.inc:                                          ; preds = %if.else90.i, %if.then89.i, %bnx2x_vf_mbx_update_tpa.exit.i, %bnx2x_vf_mbx_update_rss.exit.i, %bnx2x_vf_mbx_release_vf.exit.i, %bnx2x_vf_mbx_close_vf.exit.i, %bnx2x_vf_mbx_teardown_q.exit.i, %bnx2x_vf_mbx_set_q_filters.exit.i, %bnx2x_vf_mbx_setup_q.exit.i, %bnx2x_vf_mbx_init_vf.exit.i, %bnx2x_vf_mbx_acquire.exit.i, %do.end10.i, %cond.end.for.inc_crit_edge
  %inc = add i8 %vf_idx.0118, 1
  %conv = zext i8 %inc to i32
  %1062 = ptrtoint ptr %vfdb1 to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %vfdb1, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1063, i32 0, i32 3, i32 7
  %1064 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %1064)
  %1065 = load i16, ptr %nr_virtfn, align 2
  %1066 = zext i8 %inc to i16
  %cmp = icmp ugt i16 %1065, %1066
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup65_crit_edge

for.inc.cleanup65_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup65:                                        ; preds = %for.inc.cleanup65_crit_edge, %cleanup, %if.end.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_copy32_vf_dmae(ptr noundef %bp, i8 noundef zeroext %from_vf, i32 noundef %pf_addr, i8 noundef zeroext %vfid, i32 noundef %vf_addr_hi, i32 noundef %vf_addr_lo, i32 noundef %len32) unnamed_addr #1 align 64 {
entry:
  %dmae = alloca %struct.dmae_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dmae) #8
  %0 = call ptr @memset(ptr %dmae, i32 255, i32 56)
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %common, align 8
  %shr = lshr i32 %2, 16
  %shr.off = add nsw i32 %shr, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off)
  %switch = icmp ult i32 %shr.off, 3
  br i1 %switch, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef 1081, ptr noundef nonnull %spec.select) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmae_ready = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 139
  %5 = ptrtoint ptr %dmae_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dmae_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %do.end19, label %if.end33

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev21, align 4
  %tobool22.not = icmp eq ptr %8, null
  %spec.select82 = select i1 %tobool22.not, ptr @.str.3, ptr %8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142, i32 noundef 1086, ptr noundef nonnull %spec.select82) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end
  call void @bnx2x_prep_dmae_with_comp(ptr noundef %bp, ptr noundef nonnull %dmae, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %from_vf)
  %tobool34.not = icmp eq i8 %from_vf, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %9 = or i8 %vfid, 64
  %conv37 = zext i8 %9 to i16
  %10 = ptrtoint ptr %dmae to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dmae, align 4
  %or38 = or i32 %11, 524288
  store i32 %or38, ptr %dmae, align 4
  br label %if.end62

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %conv44 = zext i8 %vfid to i16
  %shl45 = shl nuw i16 %conv44, 8
  %or46 = or i16 %shl45, 16384
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then35
  %conv37.sink = phi i16 [ %or46, %if.else ], [ %conv37, %if.then35 ]
  %vf_addr_lo.sink = phi i32 [ %pf_addr, %if.else ], [ %vf_addr_lo, %if.then35 ]
  %vf_addr_hi.sink = phi i32 [ 0, %if.else ], [ %vf_addr_hi, %if.then35 ]
  %pf_addr.sink = phi i32 [ %vf_addr_lo, %if.else ], [ %pf_addr, %if.then35 ]
  %.sink = phi i32 [ %vf_addr_hi, %if.else ], [ 0, %if.then35 ]
  %12 = getelementptr inbounds %struct.dmae_command, ptr %dmae, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv37.sink, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dmae_command, ptr %dmae, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %vf_addr_lo.sink, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dmae_command, ptr %dmae, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %vf_addr_hi.sink, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dmae_command, ptr %dmae, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %pf_addr.sink, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dmae_command, ptr %dmae, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %conv63 = trunc i32 %len32 to i16
  %len = getelementptr inbounds %struct.dmae_command, ptr %dmae, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv63, ptr %len, align 2
  %slowpath = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 104
  %23 = ptrtoint ptr %slowpath to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slowpath, align 4
  %wb_comp = getelementptr inbounds %struct.bnx2x_slowpath, ptr %24, i32 0, i32 14
  %call64 = call i32 @bnx2x_issue_dmae_with_comp(ptr noundef %bp, ptr noundef nonnull %dmae, ptr noundef %wb_comp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end19, %do.end
  %retval.0 = phi i32 [ -3, %do.end ], [ %call64, %if.end62 ], [ -3, %do.end19 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dmae) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_release(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_bulletin_finalize(ptr noundef %bulletin, i1 noundef zeroext %support_long) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %support_long, i16 48, i16 32
  %length = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %bulletin, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %length, align 2
  %call = tail call i32 @bnx2x_crc_vf_bulletin(ptr noundef %bulletin) #8
  %1 = ptrtoint ptr %bulletin to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %bulletin, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_crc_vf_bulletin(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_post_vf_bulletin(ptr noundef %bp, i32 noundef %vf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %vf, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  %.off = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bulletin_map = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %vf, i32 8
  %6 = ptrtoint ptr %bulletin_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bulletin_map, align 8
  %mapping = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapping, align 4
  %mul = mul i32 %vf, 48
  %add = add i32 %9, %mul
  %bulletin_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %bulletin_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bulletin_dma, align 8
  %add.ptr = getelementptr %struct.pf_vf_bulletin_content, ptr %11, i32 %vf
  %version = getelementptr %struct.pf_vf_bulletin_content, ptr %11, i32 %vf, i32 1
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %version, align 4
  %inc = add i16 %13, 1
  store i16 %inc, ptr %version, align 4
  %14 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfdb, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %arrayidx17 = getelementptr %struct.bnx2x_virtf, ptr %17, i32 %vf
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx17, align 8
  %20 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  %conv.i = select i1 %tobool.not, i16 32, i16 48
  %length.i = getelementptr %struct.pf_vf_bulletin_content, ptr %11, i32 %vf, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %length.i, align 2
  %call.i = tail call i32 @bnx2x_crc_vf_bulletin(ptr noundef %add.ptr) #8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i, ptr %add.ptr, align 8
  %23 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vfdb, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %abs_vfid = getelementptr %struct.bnx2x_virtf, ptr %26, i32 %vf, i32 14
  %27 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %abs_vfid, align 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length.i, align 2
  %31 = lshr i16 %30, 2
  %div = zext i16 %31 to i32
  %call = tail call fastcc i32 @bnx2x_copy32_vf_dmae(ptr noundef %bp, i8 noundef zeroext 0, i32 noundef %add, i8 noundef zeroext %28, i32 noundef 0, i32 noundef %7, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_prep_dmae_with_comp(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_issue_dmae_with_comp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_lock_vf_pf_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_unlock_vf_pf_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_acquire(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_fill_fw_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @bnx2x_vf_max_queue_cnt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_vf_mbx_resp_send_msg(ptr noundef %bp, ptr noundef %vf, i32 noundef %vf_rc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %index = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 13
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %resp1 = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %5, i32 0, i32 1
  tail call fastcc void @bnx2x_dp_tlv_list(ptr noundef %bp, ptr noundef %resp1)
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !412

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %9
  %vf_addr_hi = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 3
  %10 = ptrtoint ptr %vf_addr_hi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vf_addr_hi, align 4
  %vf_addr_lo = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %vf_addr_lo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vf_addr_lo, align 4
  %resp_msg_offset = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 4, i32 1
  %14 = ptrtoint ptr %resp_msg_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp_msg_offset, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, i32 noundef 1150, ptr noundef nonnull %spec.select, i32 noundef %11, i32 noundef %13, i32 noundef %15) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %vf_rc)
  %switch.selectcmp.i = icmp eq i32 %vf_rc, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf_rc)
  %switch.selectcmp2.i = icmp eq i32 %vf_rc, 0
  %16 = select i1 %switch.selectcmp.i, i8 4, i8 2
  %conv = select i1 %switch.selectcmp2.i, i8 1, i8 %16
  %status = getelementptr inbounds %struct.bnx2x_vf_mbx_msg, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %status, align 2
  %vf_addr_hi10 = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 3
  %18 = ptrtoint ptr %vf_addr_hi10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vf_addr_hi10, align 4
  %conv11 = zext i32 %19 to i64
  %shl = shl nuw i64 %conv11, 32
  %vf_addr_lo12 = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 2
  %20 = ptrtoint ptr %vf_addr_lo12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vf_addr_lo12, align 4
  %conv13 = zext i32 %21 to i64
  %add = or i64 %shl, %conv13
  %resp_msg_offset15 = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 4, i32 1
  %22 = ptrtoint ptr %resp_msg_offset15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp_msg_offset15, align 4
  %conv16 = zext i32 %23 to i64
  %add17 = add i64 %add, %conv16
  %msg_mapping = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 1
  %24 = ptrtoint ptr %msg_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_mapping, align 4
  %add19 = add i64 %add17, 8
  %add20 = add i32 %25, 1032
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %26 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %abs_vfid, align 1
  %shr = lshr i64 %add19, 32
  %conv21 = trunc i64 %shr to i32
  %conv23 = trunc i64 %add19 to i32
  %call24 = tail call fastcc i32 @bnx2x_copy32_vf_dmae(ptr noundef %bp, i8 noundef zeroext 0, i32 noundef %add20, i8 noundef zeroext %27, i32 noundef %conv21, i32 noundef %conv23, i32 noundef 254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end46, label %do.end30

do.end30:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev32, align 4
  %tobool33.not = icmp eq ptr %29, null
  %spec.select125 = select i1 %tobool33.not, ptr @.str.3, ptr %29
  %30 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %abs_vfid, align 1
  %conv42 = zext i8 %31 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.186, i32 noundef 1171, ptr noundef nonnull %spec.select125, i32 noundef %conv42) #11
  br label %mbx_error

if.end46:                                         ; preds = %do.end8
  %add18 = add i32 %25, 1024
  %first_tlv14 = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 5, i32 %idxprom, i32 4
  %32 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %abs_vfid, align 1
  %iro_arr.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 21
  %34 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx.i = getelementptr %struct.iro, ptr %35, i32 159
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %33 to i32
  %m1.i = getelementptr %struct.iro, ptr %35, i32 159, i32 1
  %38 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %m1.i, align 4
  %conv3.i = zext i16 %39 to i32
  %mul.i = mul nuw nsw i32 %conv3.i, %conv.i
  %add.i = add i32 %37, 4259840
  %add4.i = add i32 %add.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  tail call void @arm_heavy_mb() #8
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %40 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %41, i32 %add4.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !419
  %42 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %abs_vfid, align 1
  %shr51 = lshr i64 %add17, 32
  %conv52 = trunc i64 %shr51 to i32
  %conv54 = trunc i64 %add17 to i32
  %call55 = tail call fastcc i32 @bnx2x_copy32_vf_dmae(ptr noundef %bp, i8 noundef zeroext 0, i32 noundef %add18, i8 noundef zeroext %43, i32 noundef %conv52, i32 noundef %conv54, i32 noundef 2)
  %44 = ptrtoint ptr %first_tlv14 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %first_tlv14, align 4
  %conv57 = zext i16 %45 to i32
  tail call void @bnx2x_unlock_vf_pf_channel(ptr noundef %bp, ptr noundef %vf, i32 noundef %conv57) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool58.not = icmp eq i32 %call55, 0
  br i1 %tobool58.not, label %if.end46.cleanup_crit_edge, label %do.end63

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end63:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %dev65 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %46 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev65, align 4
  %tobool66.not = icmp eq ptr %47, null
  %spec.select126 = select i1 %tobool66.not, ptr @.str.3, ptr %47
  %48 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %abs_vfid, align 1
  %conv75 = zext i8 %49 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.186, i32 noundef 1193, ptr noundef nonnull %spec.select126, i32 noundef %conv75) #11
  br label %mbx_error

mbx_error:                                        ; preds = %do.end63, %do.end30
  %call80 = tail call i32 @bnx2x_vf_release(ptr noundef %bp, ptr noundef %vf) #8
  br label %cleanup

cleanup:                                          ; preds = %mbx_error, %if.end46.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_iov_link_update_vf(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vfop_qctor_dump_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vfop_qctor_dump_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vfop_qctor_prep(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_queue_setup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_mac_obj(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_vlan_obj(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_vlan_mac_obj(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_mcast_obj(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_rss_config_obj(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_mac_vlan_config_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_rxmode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_mcast(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_queue_teardown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_close(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_rss_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_vf_tpa_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !343, !345, !346, !347, !349, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !374, !376, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !389, !391, !392, !393, !395, !396, !397, !398, !400, !401}
!llvm.module.flags = !{!402, !403, !404, !405, !406, !407, !408, !409}
!llvm.ident = !{!410}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 274, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2x_vfpf_acquire._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2x_vfpf_acquire._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 294, i32 4}
!9 = !{ptr @bnx2x_vfpf_acquire._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @bnx2x_vfpf_acquire._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 299, i32 4}
!13 = !{ptr @bnx2x_vfpf_acquire._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @bnx2x_vfpf_acquire._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 330, i32 5}
!17 = !{ptr @bnx2x_vfpf_acquire._entry.10, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @bnx2x_vfpf_acquire._entry_ptr.12, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 332, i32 5}
!21 = !{ptr @bnx2x_vfpf_acquire._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @bnx2x_vfpf_acquire._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 355, i32 3}
!25 = !{ptr @bnx2x_vfpf_acquire._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bnx2x_vfpf_acquire._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 427, i32 3}
!29 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bnx2x_vfpf_release._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @bnx2x_vfpf_release._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 430, i32 3}
!34 = !{ptr @bnx2x_vfpf_release._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bnx2x_vfpf_release._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 474, i32 3}
!38 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bnx2x_vfpf_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bnx2x_vfpf_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 480, i32 2}
!43 = !{ptr @bnx2x_vfpf_init._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bnx2x_vfpf_init._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 523, i32 3}
!47 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @bnx2x_vfpf_close_vf._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @bnx2x_vfpf_close_vf._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 526, i32 3}
!52 = !{ptr @bnx2x_vfpf_close_vf._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bnx2x_vfpf_close_vf._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 669, i32 3}
!56 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bnx2x_vfpf_setup_q._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @bnx2x_vfpf_setup_q._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 673, i32 3}
!61 = !{ptr @bnx2x_vfpf_setup_q._entry.36, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bnx2x_vfpf_setup_q._entry_ptr.38, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 759, i32 3}
!65 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bnx2x_vfpf_config_mac._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @bnx2x_vfpf_config_mac._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 765, i32 3}
!70 = !{ptr @bnx2x_vfpf_config_mac._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bnx2x_vfpf_config_mac._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 787, i32 3}
!74 = !{ptr @bnx2x_vfpf_config_mac._entry.44, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bnx2x_vfpf_config_mac._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 838, i32 2}
!78 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @bnx2x_vfpf_config_rss._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @bnx2x_vfpf_config_rss._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @bnx2x_vfpf_config_rss._entry.49, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 846, i32 3}
!83 = !{ptr @bnx2x_vfpf_config_rss._entry_ptr.50, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 855, i32 3}
!86 = !{ptr @bnx2x_vfpf_config_rss._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bnx2x_vfpf_config_rss._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 874, i32 3}
!90 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bnx2x_vfpf_set_mcast._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @bnx2x_vfpf_set_mcast._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 883, i32 2}
!95 = !{ptr @bnx2x_vfpf_set_mcast._entry.56, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @bnx2x_vfpf_set_mcast._entry_ptr.58, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 887, i32 3}
!99 = !{ptr @bnx2x_vfpf_set_mcast._entry.59, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @bnx2x_vfpf_set_mcast._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 895, i32 3}
!103 = !{ptr @bnx2x_vfpf_set_mcast._entry.62, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @bnx2x_vfpf_set_mcast._entry_ptr.64, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 913, i32 3}
!107 = !{ptr @bnx2x_vfpf_set_mcast._entry.65, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @bnx2x_vfpf_set_mcast._entry_ptr.67, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 918, i32 3}
!111 = !{ptr @bnx2x_vfpf_set_mcast._entry.68, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @bnx2x_vfpf_set_mcast._entry_ptr.70, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.71, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 936, i32 3}
!115 = !{ptr @.str.72, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @bnx2x_vfpf_update_vlan._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @bnx2x_vfpf_update_vlan._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 957, i32 3}
!120 = !{ptr @bnx2x_vfpf_update_vlan._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @bnx2x_vfpf_update_vlan._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @bnx2x_vfpf_update_vlan._entry.76, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 974, i32 3}
!124 = !{ptr @bnx2x_vfpf_update_vlan._entry_ptr.77, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.79, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 979, i32 3}
!127 = !{ptr @bnx2x_vfpf_update_vlan._entry.78, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bnx2x_vfpf_update_vlan._entry_ptr.80, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.81, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.82, !126, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1000, i32 2}
!133 = !{ptr @.str.84, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @bnx2x_vfpf_storm_rx_mode._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @bnx2x_vfpf_storm_rx_mode._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @bnx2x_vfpf_storm_rx_mode._entry.85, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1031, i32 3}
!138 = !{ptr @bnx2x_vfpf_storm_rx_mode._entry_ptr.86, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.88, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1034, i32 3}
!141 = !{ptr @bnx2x_vfpf_storm_rx_mode._entry.87, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @bnx2x_vfpf_storm_rx_mode._entry_ptr.89, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.90, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2194, i32 2}
!145 = !{ptr @.str.91, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @bnx2x_vf_mbx_schedule._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @bnx2x_vf_mbx_schedule._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.93, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2202, i32 3}
!150 = !{ptr @bnx2x_vf_mbx_schedule._entry.92, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @bnx2x_vf_mbx_schedule._entry_ptr.94, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.95, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2245, i32 3}
!154 = !{ptr @.str.96, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @bnx2x_vf_mbx._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @bnx2x_vf_mbx._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.98, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2256, i32 4}
!159 = !{ptr @bnx2x_vf_mbx._entry.97, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @bnx2x_vf_mbx._entry_ptr.99, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.100, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 45, i32 2}
!163 = !{ptr @.str.101, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @bnx2x_vfpf_prep._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @bnx2x_vfpf_prep._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.102, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 207, i32 3}
!168 = !{ptr @.str.103, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @bnx2x_get_vf_id._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @bnx2x_get_vf_id._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.105, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 212, i32 3}
!173 = !{ptr @bnx2x_get_vf_id._entry.104, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @bnx2x_get_vf_id._entry_ptr.106, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.108, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 216, i32 2}
!177 = !{ptr @bnx2x_get_vf_id._entry.107, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @bnx2x_get_vf_id._entry_ptr.109, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.110, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 100, i32 3}
!181 = !{ptr @.str.111, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @bnx2x_dp_tlv_list._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @bnx2x_dp_tlv_list._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.112, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 113, i32 4}
!186 = !{ptr @bnx2x_dp_tlv_list._entry.113, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 119, i32 2}
!188 = !{ptr @bnx2x_dp_tlv_list._entry_ptr.114, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.115, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 148, i32 3}
!191 = !{ptr @.str.116, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @bnx2x_send_msg2pf._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @bnx2x_send_msg2pf._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 158, i32 3}
!196 = !{ptr @bnx2x_send_msg2pf._entry.117, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @bnx2x_send_msg2pf._entry_ptr.119, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.121, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 183, i32 3}
!200 = !{ptr @bnx2x_send_msg2pf._entry.120, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @bnx2x_send_msg2pf._entry_ptr.122, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.124, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 187, i32 3}
!204 = !{ptr @bnx2x_send_msg2pf._entry.123, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @bnx2x_send_msg2pf._entry_ptr.125, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.127, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 190, i32 2}
!208 = !{ptr @bnx2x_send_msg2pf._entry.126, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @bnx2x_send_msg2pf._entry_ptr.128, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.129, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 79, i32 4}
!212 = !{ptr @.str.130, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @bnx2x_search_tlv_list._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @bnx2x_search_tlv_list._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.132, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 87, i32 2}
!217 = !{ptr @bnx2x_search_tlv_list._entry.131, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @bnx2x_search_tlv_list._entry_ptr.133, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.134, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 62, i32 2}
!221 = !{ptr @.str.135, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @bnx2x_vfpf_finalize._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @bnx2x_vfpf_finalize._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.136, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 705, i32 3}
!226 = !{ptr @.str.137, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @bnx2x_vfpf_teardown_queue._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @bnx2x_vfpf_teardown_queue._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.139, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 712, i32 3}
!231 = !{ptr @bnx2x_vfpf_teardown_queue._entry.138, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @bnx2x_vfpf_teardown_queue._entry_ptr.140, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.141, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1081, i32 3}
!235 = !{ptr @.str.142, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @bnx2x_copy32_vf_dmae._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @bnx2x_copy32_vf_dmae._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.144, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1086, i32 3}
!240 = !{ptr @bnx2x_copy32_vf_dmae._entry.143, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @bnx2x_copy32_vf_dmae._entry_ptr.145, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.146, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2114, i32 3}
!244 = !{ptr @.str.147, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @bnx2x_vf_mbx_request._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @bnx2x_vf_mbx_request._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.149, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2166, i32 3}
!249 = !{ptr @bnx2x_vf_mbx_request._entry.148, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @bnx2x_vf_mbx_request._entry_ptr.150, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.152, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2170, i32 4}
!253 = !{ptr @bnx2x_vf_mbx_request._entry.151, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @bnx2x_vf_mbx_request._entry_ptr.153, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.154, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1403, i32 2}
!257 = !{ptr @.str.155, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @bnx2x_vf_mbx_acquire._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @bnx2x_vf_mbx_acquire._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.157, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1417, i32 3}
!262 = !{ptr @bnx2x_vf_mbx_acquire._entry.156, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @bnx2x_vf_mbx_acquire._entry_ptr.158, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.160, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1432, i32 3}
!266 = !{ptr @bnx2x_vf_mbx_acquire._entry.159, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @bnx2x_vf_mbx_acquire._entry_ptr.161, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.163, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1446, i32 3}
!270 = !{ptr @bnx2x_vf_mbx_acquire._entry.162, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @bnx2x_vf_mbx_acquire._entry_ptr.164, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.166, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1454, i32 3}
!274 = !{ptr @bnx2x_vf_mbx_acquire._entry.165, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @bnx2x_vf_mbx_acquire._entry_ptr.167, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.168, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1311, i32 2}
!278 = !{ptr @.str.169, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.171, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1326, i32 2}
!283 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry.170, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.172, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.174, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1328, i32 3}
!287 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry.173, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.175, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.177, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1329, i32 2}
!291 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry.176, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.178, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.180, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1331, i32 3}
!295 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry.179, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.181, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.183, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1334, i32 2}
!299 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry.182, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @bnx2x_vf_mbx_acquire_resp._entry_ptr.184, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.185, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1149, i32 2}
!303 = !{ptr @.str.186, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @bnx2x_vf_mbx_resp_send_msg._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @bnx2x_vf_mbx_resp_send_msg._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.188, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1170, i32 3}
!308 = !{ptr @bnx2x_vf_mbx_resp_send_msg._entry.187, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @bnx2x_vf_mbx_resp_send_msg._entry_ptr.189, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.191, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1192, i32 3}
!312 = !{ptr @bnx2x_vf_mbx_resp_send_msg._entry.190, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @bnx2x_vf_mbx_resp_send_msg._entry_ptr.192, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.193, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1526, i32 3}
!316 = !{ptr @.str.194, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @bnx2x_vf_mbx_setup_q._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @bnx2x_vf_mbx_setup_q._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.195, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1931, i32 2}
!321 = !{ptr @.str.196, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @bnx2x_vf_mbx_set_q_filters._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @bnx2x_vf_mbx_set_q_filters._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.197, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1861, i32 5}
!326 = !{ptr @.str.198, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @bnx2x_filters_validate_mac._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @bnx2x_filters_validate_mac._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.200, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1874, i32 4}
!331 = !{ptr @bnx2x_filters_validate_mac._entry.199, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @bnx2x_filters_validate_mac._entry_ptr.201, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.202, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1899, i32 4}
!335 = !{ptr @.str.203, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @bnx2x_filters_validate_vlan._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @bnx2x_filters_validate_vlan._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.204, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1719, i32 3}
!340 = !{ptr @.str.205, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @bnx2x_vf_mbx_dp_q_filters._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @bnx2x_vf_mbx_dp_q_filters._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.207, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1723, i32 4}
!345 = !{ptr @bnx2x_vf_mbx_dp_q_filters._entry.206, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @bnx2x_vf_mbx_dp_q_filters._entry_ptr.208, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.209, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1700, i32 2}
!349 = !{ptr @.str.210, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.212, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1702, i32 3}
!354 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry.211, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr.213, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.215, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1704, i32 3}
!358 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry.214, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr.216, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.218, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1705, i32 2}
!362 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry.217, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @bnx2x_vf_mbx_dp_q_filter._entry_ptr.219, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.220, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1831, i32 3}
!366 = !{ptr @.str.221, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @bnx2x_vf_mbx_qfilters._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @bnx2x_vf_mbx_qfilters._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.222, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1949, i32 2}
!371 = !{ptr @.str.223, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @bnx2x_vf_mbx_teardown_q._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @bnx2x_vf_mbx_teardown_q._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.224, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1961, i32 2}
!376 = !{ptr @.str.225, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @bnx2x_vf_mbx_close_vf._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @bnx2x_vf_mbx_close_vf._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.226, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1972, i32 2}
!381 = !{ptr @.str.227, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @bnx2x_vf_mbx_release_vf._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @bnx2x_vf_mbx_release_vf._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.228, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 1987, i32 3}
!386 = !{ptr @.str.229, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @bnx2x_vf_mbx_update_rss._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @bnx2x_vf_mbx_update_rss._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.231, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2029, i32 3}
!391 = !{ptr @bnx2x_vf_mbx_update_rss._entry.230, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @bnx2x_vf_mbx_update_rss._entry_ptr.232, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.233, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2047, i32 3}
!395 = !{ptr @.str.234, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @bnx2x_validate_tpa_params._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @bnx2x_validate_tpa_params._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.236, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_vfpf.c", i32 2054, i32 3}
!400 = !{ptr @bnx2x_validate_tpa_params._entry.235, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @bnx2x_validate_tpa_params._entry_ptr.237, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{i32 1, !"wchar_size", i32 2}
!403 = !{i32 1, !"min_enum_size", i32 4}
!404 = !{i32 8, !"branch-target-enforcement", i32 0}
!405 = !{i32 8, !"sign-return-address", i32 0}
!406 = !{i32 8, !"sign-return-address-all", i32 0}
!407 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!408 = !{i32 7, !"uwtable", i32 1}
!409 = !{i32 7, !"frame-pointer", i32 2}
!410 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!411 = !{!"auto-init"}
!412 = !{!"branch_weights", i32 2000, i32 1}
!413 = !{i64 5124182}
!414 = !{i64 2157718843}
!415 = !{i64 2157711392}
!416 = !{i64 5123764}
!417 = !{i64 2157712040}
!418 = !{i64 2157712497}
!419 = !{i64 5123567}
!420 = !{i8 0, i8 2}
!421 = !{i64 2157853449}
!422 = !{i64 2157853937}
