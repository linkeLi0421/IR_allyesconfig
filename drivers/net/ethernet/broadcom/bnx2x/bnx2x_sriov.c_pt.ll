; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.bnx2x_vfdb = type { ptr, ptr, [32 x %struct.hw_dma], %struct.bnx2x_sriov, %struct.hw_dma, [64 x %struct.bnx2x_vf_mbx], %struct.hw_dma, %struct.hw_dma, [2 x i32], i16, i16, %struct.mutex, i64, %struct.mutex }
%struct.bnx2x_sriov = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i8 }
%struct.bnx2x_vf_mbx = type { ptr, i32, i32, i32, %struct.vfpf_first_tlv }
%struct.vfpf_first_tlv = type { %struct.channel_tlv, i32 }
%struct.hw_dma = type { ptr, i32, i32 }
%struct.bnx2x_virtf = type { i16, i8, i8, i8, i8, i8, i32, i16, i32, %struct.vf_pf_resc_request, i8, i8, ptr, i8, i8, i8, i32, i32, i32, i32, [6 x %struct.bnx2x_vf_bar], i32, i32, %struct.bnx2x_mcast_obj, %struct.bnx2x_rss_config_obj, %struct.mutex, i32, i8, %struct.bnx2x_credit_pool_obj, %struct.bnx2x_credit_pool_obj }
%struct.vf_pf_resc_request = type { i8, i8, i8, i8, i8, i8 }
%struct.bnx2x_vf_bar = type { i64, i32 }
%struct.anon.119 = type { i32, i16, i8, i8 }
%struct.bnx2x_queue_setup_params = type { %struct.bnx2x_general_setup_params, %struct.bnx2x_txq_setup_params, %struct.bnx2x_rxq_setup_params, %struct.rxq_pause_params, i32 }
%struct.bnx2x_general_setup_params = type { i8, i8, i16, i8, i8 }
%struct.bnx2x_txq_setup_params = type { i32, i8, i8, i8, i16, i8, i16 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.rxq_pause_params = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.bnx2x_queue_init_params = type { %struct.anon.119, %struct.anon.120, [3 x ptr], i8 }
%struct.anon.120 = type { i32, i16, i8, i8 }
%struct.bnx2x_queue_state_params = type { ptr, i32, i32, %union.anon.118 }
%union.anon.118 = type { %struct.bnx2x_queue_setup_params }
%struct.bnx2x_vf_queue_construct_params = type { %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_setup_params }
%struct.bnx2x_vf_queue = type { ptr, %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj, i32, %struct.bnx2x_queue_sp_obj, i32, i16, i16, i8, i8 }
%struct.bnx2x_queue_sp_obj = type { [3 x i32], i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2x_vf_mac_vlan_filters = type { i32, [0 x %struct.bnx2x_vf_mac_vlan_filter] }
%struct.bnx2x_vf_mac_vlan_filter = type { i32, i8, i8, ptr, i16 }
%struct.bnx2x_vlan_mac_ramrod_params = type { ptr, i32, %struct.bnx2x_vlan_mac_data }
%struct.bnx2x_vlan_mac_data = type { i32, i32, ptr, %union.bnx2x_classification_ramrod_data }
%union.bnx2x_classification_ramrod_data = type { %struct.bnx2x_vlan_mac_ramrod_data }
%struct.bnx2x_vlan_mac_ramrod_data = type { [6 x i8], i8, i16 }
%struct.bnx2x_mcast_ramrod_params = type { ptr, i32, %struct.list_head, i32 }
%struct.bnx2x_mcast_list_elem = type { %struct.list_head, ptr }
%struct.bnx2x_rx_mode_ramrod_params = type { ptr, ptr, i32, i8, i32, i8, i32, i32, ptr, i32, i32, i32 }
%struct.eth_context = type { %struct.ustorm_eth_st_context, %struct.tstorm_eth_st_context, %struct.xstorm_eth_ag_context, %struct.tstorm_eth_ag_context, %struct.cstorm_eth_ag_context, %struct.ustorm_eth_ag_context, %struct.timers_block_context, %struct.xstorm_eth_st_context, %struct.cstorm_eth_st_context }
%struct.ustorm_eth_st_context = type { [52 x i32] }
%struct.tstorm_eth_st_context = type { [28 x i32] }
%struct.xstorm_eth_ag_context = type { i32, i8, i8, i16, [30 x i32] }
%struct.tstorm_eth_ag_context = type { [14 x i32] }
%struct.cstorm_eth_ag_context = type { [10 x i32] }
%struct.ustorm_eth_ag_context = type { i32, i8, i8, i16, [6 x i32] }
%struct.timers_block_context = type { i32, i32, i32, i32 }
%struct.xstorm_eth_st_context = type { [60 x i32] }
%struct.cstorm_eth_st_context = type { [4 x i32] }
%struct.iro = type { i32, i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%union.cdu_context = type { %struct.eth_context, [176 x i8] }
%struct.bnx2x_fastpath = type { ptr, %struct.napi_struct, %union.host_hc_status_block, ptr, ptr, i32, i32, i32, i32, i32, i8, [3 x ptr], ptr, ptr, ptr, i32, ptr, i32, ptr, i32, [16 x i64], i32, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, ptr, ptr, [24 x i8], %struct.bnx2x_alloc_pool }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bnx2x_alloc_pool = type { ptr, i32 }
%struct.bnx2x_ilt = type { i32, ptr, [4 x %struct.ilt_client_info] }
%struct.ilt_client_info = type { i32, i16, i16, i16, i16 }
%struct.ilt_line = type { i32, ptr, i32 }
%struct.event_ring_msg = type { i8, i8, i16, %union.event_data }
%union.event_data = type { %struct.vf_pf_event_data }
%struct.vf_pf_event_data = type { i8, i8, i16, i32, i32 }
%struct.bnx2x_fw_stats_req = type { %struct.stats_query_header, [19 x %struct.stats_query_entry] }
%struct.stats_query_header = type { i8, i8, i16, i32, %struct.regpair }
%struct.regpair = type { i32, i32 }
%struct.stats_query_entry = type { i8, i8, i16, i32, %struct.regpair }
%struct.bnx2x_func_init_params = type { i8, i32, i16, i16, i16 }
%struct.set_vf_state_cookie = type { ptr, i8 }
%struct.bnx2x_config_rss_params = type { ptr, i32, i32, i8, [128 x i8], [10 x i32], i16 }
%struct.vfpf_tpa_tlv = type { %struct.vfpf_first_tlv, %struct.vf_pf_tpa_client_info }
%struct.vf_pf_tpa_client_info = type { [16 x i64], i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16 }
%struct.bnx2x_sp_objs = type { %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_queue_sp_obj, %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_queue_update_params = type { i32, i16, i16, i16, i8 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@bnx2x_vfop_qctor_dump_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\015[%s:%d(%s)]VF[%d] Q_SETUP: txq[%d]-- vfsb=%d, sb-index=%d, hc-rate=%d, flags=0x%lx, traffic-type=%d\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_vfop_qctor_dump_tx\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_vfop_qctor_dump_tx._entry_ptr = internal global ptr @bnx2x_vfop_qctor_dump_tx._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@bnx2x_vfop_qctor_dump_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [183 x i8], [41 x i8] } { [183 x i8] c"\015[%s:%d(%s)]VF[%d] Q_SETUP: rxq[%d]-- vfsb=%d, sb-index=%d, hc-rate=%d, mtu=%d, buf-size=%d\0Asge-size=%d, max_sge_pkt=%d, tpa-agg-size=%d, flags=0x%lx, drop-flags=0x%x, cache-log=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_vfop_qctor_dump_rx\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_vfop_qctor_dump_rx._entry_ptr = internal global ptr @bnx2x_vfop_qctor_dump_rx._entry, section ".printk_index", align 4
@bnx2x_vf_mac_vlan_config_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015[%s:%d(%s)]vf[%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnx2x_vf_mac_vlan_config_list\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_vf_mac_vlan_config_list._entry_ptr = internal global ptr @bnx2x_vf_mac_vlan_config_list._entry, section ".printk_index", align 4
@bnx2x_vf_mac_vlan_config_list._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[%s:%d(%s)]Managed only %d/%d filters - rolling back\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_mac_vlan_config_list._entry_ptr.10 = internal global ptr @bnx2x_vf_mac_vlan_config_list._entry.8, section ".printk_index", align 4
@bnx2x_vf_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015[%s:%d(%s)]vf[%d:%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_vf_queue_setup\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_setup._entry_ptr = internal global ptr @bnx2x_vf_queue_setup._entry, section ".printk_index", align 4
@bnx2x_vf_queue_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[%s:%d(%s)]QSETUP[%d:%d] error: rc %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_setup._entry_ptr.15 = internal global ptr @bnx2x_vf_queue_setup._entry.13, section ".printk_index", align 4
@bnx2x_vf_mcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.16, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2x_vf_mcast\00", [17 x i8] zeroinitializer }, align 32
@bnx2x_vf_mcast._entry_ptr = internal global ptr @bnx2x_vf_mcast._entry, section ".printk_index", align 4
@bnx2x_vf_mcast._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[%s:%d(%s)]Cannot Configure multicasts due to lack of memory\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_vf_mcast._entry_ptr.19 = internal global ptr @bnx2x_vf_mcast._entry.17, section ".printk_index", align 4
@bnx2x_vf_mcast._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Failed to set multicasts\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2x_vf_mcast._entry_ptr.22 = internal global ptr @bnx2x_vf_mcast._entry.20, section ".printk_index", align 4
@bnx2x_vf_mcast._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]Failed to remove multicasts\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_vf_mcast._entry_ptr.25 = internal global ptr @bnx2x_vf_mcast._entry.23, section ".printk_index", align 4
@bnx2x_vf_rxmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.26, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2x_vf_rxmode\00", [16 x i8] zeroinitializer }, align 32
@bnx2x_vf_rxmode._entry_ptr = internal global ptr @bnx2x_vf_rxmode._entry, section ".printk_index", align 4
@bnx2x_vf_queue_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.27, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_vf_queue_teardown\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_teardown._entry_ptr = internal global ptr @bnx2x_vf_queue_teardown._entry, section ".printk_index", align 4
@bnx2x_vf_queue_teardown._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]vf[%d:%d] error: rc %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_teardown._entry_ptr.30 = internal global ptr @bnx2x_vf_queue_teardown._entry.28, section ".printk_index", align 4
@bnx2x_vf_enable_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]enabling internal access for vf %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_vf_enable_access\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_vf_enable_access._entry_ptr = internal global ptr @bnx2x_vf_enable_access._entry, section ".printk_index", align 4
@bnx2x_vf_flr_clnup_epilog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]PCIE Transactions still pending\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_vf_flr_clnup_epilog\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr_clnup_epilog._entry_ptr = internal global ptr @bnx2x_vf_flr_clnup_epilog._entry, section ".printk_index", align 4
@bnx2x_vf_handle_flr_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]DRV_STATUS_VF_DISABLED received for vfs 0x%x 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_vf_handle_flr_event\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_vf_handle_flr_event._entry_ptr = internal global ptr @bnx2x_vf_handle_flr_event._entry, section ".printk_index", align 4
@bnx2x_vf_handle_flr_event._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Initiating Final cleanup for VF %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_handle_flr_event._entry_ptr.39 = internal global ptr @bnx2x_vf_handle_flr_event._entry.37, section ".printk_index", align 4
@bnx2x_iov_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013[%s:%d(%s)]PF cids %d are overspilling into vf space (starts at %d). Abort SRIOV\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_iov_init_one\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr = internal global ptr @bnx2x_iov_init_one._entry, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[%s:%d(%s)]Forced MSI/INTx mode is incompatible with SRIOV\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.44 = internal global ptr @bnx2x_iov_init_one._entry.42, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013[%s:%d(%s)]ARI not supported (check pci bridge ARI forwarding), SRIOV can not be enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.47 = internal global ptr @bnx2x_iov_init_one._entry.45, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[%s:%d(%s)]IGU not normal mode,  SRIOV can not be enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.50 = internal global ptr @bnx2x_iov_init_one._entry.48, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[%s:%d(%s)]failed to allocate vf database\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.53 = internal global ptr @bnx2x_iov_init_one._entry.51, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]num_vfs_param was %d, nr_virtfn was %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.56 = internal global ptr @bnx2x_iov_init_one._entry.54, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.41, ptr @.str.2, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]failed to allocate vf array\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.59 = internal global ptr @bnx2x_iov_init_one._entry.57, section ".printk_index", align 4
@bnx2x_iov_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&bnx2x_vf(bp, i, op_mutex)\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.41, ptr @.str.2, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]No entries in IGU CAM for vfs\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.63 = internal global ptr @bnx2x_iov_init_one._entry.61, section ".printk_index", align 4
@bnx2x_iov_init_one._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.41, ptr @.str.2, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[%s:%d(%s)]failed to allocate vf queue array\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.66 = internal global ptr @bnx2x_iov_init_one._entry.64, section ".printk_index", align 4
@bnx2x_iov_init_one.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&bp->vfdb->event_mutex\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&bp->vfdb->bulletin_mutex\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.41, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]Failed err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_iov_init_one._entry_ptr.73 = internal global ptr @bnx2x_iov_init_one._entry.71, section ".printk_index", align 4
@bnx2x_iov_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]disabling internal access for vf %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bnx2x_iov_remove_one\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_iov_remove_one._entry_ptr = internal global ptr @bnx2x_iov_remove_one._entry, section ".printk_index", align 4
@bnx2x_iov_alloc_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015[%s:%d(%s)]BNX2X_PCI_ALLOC: Physical %Lx Virtual %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_iov_alloc_mem\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_iov_alloc_mem._entry_ptr = internal global ptr @bnx2x_iov_alloc_mem._entry, section ".printk_index", align 4
@bnx2x_iov_alloc_mem._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_iov_alloc_mem._entry_ptr.79 = internal global ptr @bnx2x_iov_alloc_mem._entry.78, section ".printk_index", align 4
@bnx2x_iov_alloc_mem._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_iov_alloc_mem._entry_ptr.81 = internal global ptr @bnx2x_iov_alloc_mem._entry.80, section ".printk_index", align 4
@bnx2x_iov_alloc_mem._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_iov_alloc_mem._entry_ptr.83 = internal global ptr @bnx2x_iov_alloc_mem._entry.82, section ".printk_index", align 4
@bnx2x_iov_link_update_vf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]vf %d mode %u speed %d flags %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_iov_link_update_vf\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_iov_link_update_vf._entry_ptr = internal global ptr @bnx2x_iov_link_update_vf._entry, section ".printk_index", align 4
@bnx2x_iov_link_update_vf._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]failed to update VF[%d] bulletin\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_iov_link_update_vf._entry_ptr.88 = internal global ptr @bnx2x_iov_link_update_vf._entry.86, section ".printk_index", align 4
@bnx2x_iov_nic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]vfdb was not allocated\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_iov_nic_init\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_iov_nic_init._entry_ptr = internal global ptr @bnx2x_iov_nic_init._entry, section ".printk_index", align 4
@bnx2x_iov_nic_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]num of vfs: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_iov_nic_init._entry_ptr.93 = internal global ptr @bnx2x_iov_nic_init._entry.91, section ".printk_index", align 4
@bnx2x_iov_nic_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]VF[%d] Max IGU SBs: %d, base vf cid 0x%x, base cid 0x%x, base cxt %p\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_iov_nic_init._entry_ptr.96 = internal global ptr @bnx2x_iov_nic_init._entry.94, section ".printk_index", align 4
@bnx2x_iov_nic_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.2, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\015[%s:%d(%s)]VF info[%d]: bus 0x%x, devfn 0x%x, bar0 [0x%x, %d], bar1 [0x%x, %d], bar2 [0x%x, %d]\0A\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_iov_nic_init._entry_ptr.99 = internal global ptr @bnx2x_iov_nic_init._entry.97, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]checking cfc-del comp cid=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_iov_eq_sp_event\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr = internal global ptr @bnx2x_iov_eq_sp_event._entry, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]checking filtering comp cid=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.104 = internal global ptr @bnx2x_iov_eq_sp_event._entry.102, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Got VF FLR notification abs_vfid=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.107 = internal global ptr @bnx2x_iov_eq_sp_event._entry.105, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.2, i32 1767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013[%s:%d(%s)]Got VF MALICIOUS notification abs_vfid=%d err_id=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.110 = internal global ptr @bnx2x_iov_eq_sp_event._entry.108, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]cid is outside vf range: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.113 = internal global ptr @bnx2x_iov_eq_sp_event._entry.111, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.101, ptr @.str.2, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[%s:%d(%s)]EQ completion for unknown VF, cid %d, abs_vfid %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.116 = internal global ptr @bnx2x_iov_eq_sp_event._entry.114, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.101, ptr @.str.2, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]got VF [%d:%d] cfc delete ramrod\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.119 = internal global ptr @bnx2x_iov_eq_sp_event._entry.117, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.101, ptr @.str.2, i32 1805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]got VF [%d:%d] set mac/vlan ramrod\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.122 = internal global ptr @bnx2x_iov_eq_sp_event._entry.120, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.101, ptr @.str.2, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015[%s:%d(%s)]got VF [%d:%d] set mcast ramrod\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.125 = internal global ptr @bnx2x_iov_eq_sp_event._entry.123, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.101, ptr @.str.2, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]got VF [%d:%d] set rx-mode ramrod\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.128 = internal global ptr @bnx2x_iov_eq_sp_event._entry.126, section ".printk_index", align 4
@bnx2x_iov_eq_sp_event._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.101, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]got VF [%d:%d] RSS update ramrod\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_iov_eq_sp_event._entry_ptr.131 = internal global ptr @bnx2x_iov_eq_sp_event._entry.129, section ".printk_index", align 4
@bnx2x_iov_set_queue_sp_obj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]No vf matching cid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_iov_set_queue_sp_obj\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_iov_set_queue_sp_obj._entry_ptr = internal global ptr @bnx2x_iov_set_queue_sp_obj._entry, section ".printk_index", align 4
@bnx2x_iov_adjust_stats_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [175 x i8], [49 x i8] } { [175 x i8] c"\015[%s:%d(%s)]BNX2X_NUM_ETH_QUEUES %d, is_fcoe %d, first_queue_query_index %d => determined the last non virtual statistics query index is %d. Will add queries on top of that\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_iov_adjust_stats_req\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_iov_adjust_stats_req._entry_ptr = internal global ptr @bnx2x_iov_adjust_stats_req._entry, section ".printk_index", align 4
@bnx2x_iov_adjust_stats_req._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 1900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]vf %d not enabled so no stats for it\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_iov_adjust_stats_req._entry_ptr.138 = internal global ptr @bnx2x_iov_adjust_stats_req._entry.136, section ".printk_index", align 4
@bnx2x_iov_adjust_stats_req._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]vf %d malicious so no stats for it\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_iov_adjust_stats_req._entry_ptr.141 = internal global ptr @bnx2x_iov_adjust_stats_req._entry.139, section ".printk_index", align 4
@bnx2x_iov_adjust_stats_req._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 1912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]add addresses for vf %d\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_iov_adjust_stats_req._entry_ptr.144 = internal global ptr @bnx2x_iov_adjust_stats_req._entry.142, section ".printk_index", align 4
@bnx2x_iov_adjust_stats_req._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.2, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]added address %x %x for vf %d queue %d client %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2x_iov_adjust_stats_req._entry_ptr.147 = internal global ptr @bnx2x_iov_adjust_stats_req._entry.145, section ".printk_index", align 4
@bnx2x_vf_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 2021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]VF[%d] Trying to re-acquire resources (VF was not released or FLR'd)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_vf_acquire\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr = internal global ptr @bnx2x_vf_acquire._entry, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 2025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013[%s:%d(%s)]VF[%d] When re-acquiring resources, requested numbers must be <= then previously acquired numbers\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.152 = internal global ptr @bnx2x_vf_acquire._entry.150, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.2, i32 2034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[%s:%d(%s)]VF[%d] Can not acquire a VF with state %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.155 = internal global ptr @bnx2x_vf_acquire._entry.153, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.149, ptr @.str.2, i32 2044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\015[%s:%d(%s)]cannot fulfill vf resource request. Placing maximal available values in response\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.158 = internal global ptr @bnx2x_vf_acquire._entry.156, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.149, ptr @.str.2, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\015[%s:%d(%s)]Fulfilling vf request: sb count %d, tx_count %d, rx_count %d, mac_rules_count %d, vlan_rules_count %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.161 = internal global ptr @bnx2x_vf_acquire._entry.159, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.149, ptr @.str.2, i32 2062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]vf->vfqs was not allocated\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.164 = internal global ptr @bnx2x_vf_acquire._entry.162, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.149, ptr @.str.2, i32 2070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]q number %d was not allocated\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.167 = internal global ptr @bnx2x_vf_acquire._entry.165, section ".printk_index", align 4
@bnx2x_vf_acquire._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.149, ptr @.str.2, i32 2079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]VFQ[%d:%d]: index %d, cid 0x%x, cxt %p\0A\00", [43 x i8] zeroinitializer }, align 32
@bnx2x_vf_acquire._entry_ptr.170 = internal global ptr @bnx2x_vf_acquire._entry.168, section ".printk_index", align 4
@bnx2x_vf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 2103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]VF[%d] is not in VF_ACQUIRED, but %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bnx2x_vf_init\00", [18 x i8] zeroinitializer }, align 32
@bnx2x_vf_init._entry_ptr = internal global ptr @bnx2x_vf_init._entry, section ".printk_index", align 4
@bnx2x_vf_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.173, ptr @.str.2, i32 2155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2x_vf_close\00", [17 x i8] zeroinitializer }, align 32
@bnx2x_vf_close._entry_ptr = internal global ptr @bnx2x_vf_close._entry, section ".printk_index", align 4
@bnx2x_vf_close._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.2, i32 2165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]disabling igu\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_vf_close._entry_ptr.176 = internal global ptr @bnx2x_vf_close._entry.174, section ".printk_index", align 4
@bnx2x_vf_close._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.2, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]clearing qtbl\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_vf_close._entry_ptr.179 = internal global ptr @bnx2x_vf_close._entry.177, section ".printk_index", align 4
@bnx2x_vf_close._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.2, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]set state to acquired\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2x_vf_close._entry_ptr.182 = internal global ptr @bnx2x_vf_close._entry.180, section ".printk_index", align 4
@bnx2x_vf_close._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.173, ptr @.str.2, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[%s:%d(%s)]vf[%d] CLOSE error: rc %d\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_vf_close._entry_ptr.185 = internal global ptr @bnx2x_vf_close._entry.183, section ".printk_index", align 4
@bnx2x_vf_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 2207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]VF[%d] STATE: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bnx2x_vf_free\00", [18 x i8] zeroinitializer }, align 32
@bnx2x_vf_free._entry_ptr = internal global ptr @bnx2x_vf_free._entry, section ".printk_index", align 4
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Free\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Acquired\00", [23 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Reset\00", [26 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@bnx2x_vf_free._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.187, ptr @.str.2, i32 2216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]about to free resources\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_vf_free._entry_ptr.195 = internal global ptr @bnx2x_vf_free._entry.193, section ".printk_index", align 4
@bnx2x_vf_free._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.187, ptr @.str.2, i32 2227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]VF[%d] RELEASE error: rc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_vf_free._entry_ptr.198 = internal global ptr @bnx2x_vf_free._entry.196, section ".printk_index", align 4
@bnx2x_vf_rss_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.199, ptr @.str.2, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_vf_rss_update\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_rss_update._entry_ptr = internal global ptr @bnx2x_vf_rss_update._entry, section ".printk_index", align 4
@bnx2x_vf_tpa_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.200, ptr @.str.2, i32 2247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_vf_tpa_update\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_tpa_update._entry_ptr = internal global ptr @bnx2x_vf_tpa_update._entry, section ".printk_index", align 4
@bnx2x_vf_tpa_update._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.200, ptr @.str.2, i32 2261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]sge_addr[%d:%d] %08x:%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_vf_tpa_update._entry_ptr.203 = internal global ptr @bnx2x_vf_tpa_update._entry.201, section ".printk_index", align 4
@bnx2x_vf_tpa_update._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.200, ptr @.str.2, i32 2266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[%s:%d(%s)]Failed to configure sge_addr %08x:%08x for [%d:%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2x_vf_tpa_update._entry_ptr.206 = internal global ptr @bnx2x_vf_tpa_update._entry.204, section ".printk_index", align 4
@bnx2x_vf_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]PF releasing vf %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_vf_release\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_release._entry_ptr = internal global ptr @bnx2x_vf_release._entry, section ".printk_index", align 4
@.str.209 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"VF[%d] Failed to allocate resources for release op- rc=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_lock_vf_pf_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.2, i32 2299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[%s:%d(%s)]attempting to lock with unsupported tlv. Aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_lock_vf_pf_channel\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_lock_vf_pf_channel._entry_ptr = internal global ptr @bnx2x_lock_vf_pf_channel._entry, section ".printk_index", align 4
@bnx2x_lock_vf_pf_channel._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.2, i32 2311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]VF[%d]: vf pf channel locked by %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_lock_vf_pf_channel._entry_ptr.214 = internal global ptr @bnx2x_lock_vf_pf_channel._entry.212, section ".printk_index", align 4
@bnx2x_unlock_vf_pf_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.2, i32 2320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013[%s:%d(%s)]VF was %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bnx2x_unlock_vf_pf_channel\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_unlock_vf_pf_channel._entry_ptr = internal global ptr @bnx2x_unlock_vf_pf_channel._entry, section ".printk_index", align 4
@.str.217 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lock mismatch: expected %d found %d\00", [60 x i8] zeroinitializer }, align 32
@bnx2x_unlock_vf_pf_channel._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.216, ptr @.str.2, i32 2342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]VF[%d]: vf pf channel unlocked by %d\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_unlock_vf_pf_channel._entry_ptr.220 = internal global ptr @bnx2x_unlock_vf_pf_channel._entry.218, section ".printk_index", align 4
@bnx2x_sriov_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.2, i32 2410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013[%s:%d(%s)]failed to configure SR-IOV since vfdb was not allocated. Check dmesg for errors in probe stage\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_sriov_configure\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_sriov_configure._entry_ptr = internal global ptr @bnx2x_sriov_configure._entry, section ".printk_index", align 4
@bnx2x_sriov_configure._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.222, ptr @.str.2, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]bnx2x_sriov_configure called with %d, BNX2X_NR_VIRTFN(bp) was %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_sriov_configure._entry_ptr.225 = internal global ptr @bnx2x_sriov_configure._entry.223, section ".printk_index", align 4
@bnx2x_sriov_configure._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.222, ptr @.str.2, i32 2419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013[%s:%d(%s)]VF num configuration via sysfs not supported while PF is down\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2x_sriov_configure._entry_ptr.228 = internal global ptr @bnx2x_sriov_configure._entry.226, section ".printk_index", align 4
@bnx2x_sriov_configure._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.222, ptr @.str.2, i32 2426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013[%s:%d(%s)]truncating requested number of VFs (%d) down to maximum allowed (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_sriov_configure._entry_ptr.231 = internal global ptr @bnx2x_sriov_configure._entry.229, section ".printk_index", align 4
@bnx2x_enable_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]assigning sb %d to vf %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_enable_sriov\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_enable_sriov._entry_ptr = internal global ptr @bnx2x_enable_sriov._entry, section ".printk_index", align 4
@bnx2x_enable_sriov._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.2, i32 2487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]vf_sbs_pool %d, num_vf_queues %d\0A\00", [49 x i8] zeroinitializer }, align 32
@bnx2x_enable_sriov._entry_ptr.236 = internal global ptr @bnx2x_enable_sriov._entry.234, section ".printk_index", align 4
@bnx2x_enable_sriov._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.2, i32 2508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]set msix vec num in VF %d cfg space to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_enable_sriov._entry_ptr.239 = internal global ptr @bnx2x_enable_sriov._entry.237, section ".printk_index", align 4
@bnx2x_enable_sriov._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.233, ptr @.str.2, i32 2515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]about to call enable sriov\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2x_enable_sriov._entry_ptr.242 = internal global ptr @bnx2x_enable_sriov._entry.240, section ".printk_index", align 4
@bnx2x_enable_sriov._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.233, ptr @.str.2, i32 2524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]pci_enable_sriov failed with %d\0A\00", [50 x i8] zeroinitializer }, align 32
@bnx2x_enable_sriov._entry_ptr.245 = internal global ptr @bnx2x_enable_sriov._entry.243, section ".printk_index", align 4
@bnx2x_enable_sriov._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.233, ptr @.str.2, i32 2527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]sriov enabled (%d vfs)\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_enable_sriov._entry_ptr.248 = internal global ptr @bnx2x_enable_sriov._entry.246, section ".printk_index", align 4
@bnx2x_pf_set_vfs_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.2, i32 2536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]configuring vlan for VFs from sp-task\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_pf_set_vfs_vlan\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_pf_set_vfs_vlan._entry_ptr = internal global ptr @bnx2x_pf_set_vfs_vlan._entry, section ".printk_index", align 4
@bnx2x_disable_sriov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.2, i32 2549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\015[%s:%d(%s)]Unloading driver while VFs are assigned - VFs will not be deallocated\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_disable_sriov\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_disable_sriov._entry_ptr = internal global ptr @bnx2x_disable_sriov._entry, section ".printk_index", align 4
@bnx2x_get_vf_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.2, i32 2619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]VF partially initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_get_vf_config\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_config._entry_ptr = internal global ptr @bnx2x_get_vf_config._entry, section ".printk_index", align 4
@bnx2x_set_vf_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.2, i32 2687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013[%s:%d(%s)]mac address invalid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_set_vf_mac\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_mac._entry_ptr = internal global ptr @bnx2x_set_vf_mac._entry, section ".printk_index", align 4
@bnx2x_set_vf_mac._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.256, ptr @.str.2, i32 2711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_mac._entry_ptr.258 = internal global ptr @bnx2x_set_vf_mac._entry.257, section ".printk_index", align 4
@bnx2x_set_vf_mac._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.256, ptr @.str.2, i32 2734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013[%s:%d(%s)]failed to delete eth macs\0A\00", [56 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_mac._entry_ptr.261 = internal global ptr @bnx2x_set_vf_mac._entry.259, section ".printk_index", align 4
@bnx2x_set_vf_mac._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.256, ptr @.str.2, i32 2742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]failed to delete uc_list macs\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_mac._entry_ptr.264 = internal global ptr @bnx2x_set_vf_mac._entry.262, section ".printk_index", align 4
@bnx2x_set_vf_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.266, ptr @.str.2, i32 2814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]illegal vlan value %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bnx2x_set_vf_vlan\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan._entry_ptr = internal global ptr @bnx2x_set_vf_vlan._entry, section ".printk_index", align 4
@bnx2x_set_vf_vlan._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.266, ptr @.str.2, i32 2822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]configuring VF %d with VLAN %d qos %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan._entry_ptr.269 = internal global ptr @bnx2x_set_vf_vlan._entry.267, section ".printk_index", align 4
@bnx2x_set_vf_vlan._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.266, ptr @.str.2, i32 2846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan._entry_ptr.271 = internal global ptr @bnx2x_set_vf_vlan._entry.270, section ".printk_index", align 4
@bnx2x_set_vf_vlan._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.266, ptr @.str.2, i32 2868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]failed to delete vlans\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan._entry_ptr.274 = internal global ptr @bnx2x_set_vf_vlan._entry.272, section ".printk_index", align 4
@bnx2x_set_vf_vlan._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.266, ptr @.str.2, i32 2931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[%s:%d(%s)]Failed to configure default VLAN queue %d\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan._entry_ptr.277 = internal global ptr @bnx2x_set_vf_vlan._entry.275, section ".printk_index", align 4
@bnx2x_set_vf_vlan._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.266, ptr @.str.2, i32 2941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]updated VF[%d] vlan configuration (vlan = %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan._entry_ptr.280 = internal global ptr @bnx2x_set_vf_vlan._entry.278, section ".printk_index", align 4
@bnx2x_set_vf_spoofchk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.2, i32 2963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]%s spoofchk for VF %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_set_vf_spoofchk\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_spoofchk._entry_ptr = internal global ptr @bnx2x_set_vf_spoofchk._entry, section ".printk_index", align 4
@.str.283 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_spoofchk._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.282, ptr @.str.2, i32 3004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[%s:%d(%s)]Failed to %s spoofchk on VF %d - vfq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_spoofchk._entry_ptr.287 = internal global ptr @bnx2x_set_vf_spoofchk._entry.285, section ".printk_index", align 4
@.str.288 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_spoofchk._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.282, ptr @.str.2, i32 3012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]%s spoofchk for VF[%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_spoofchk._entry_ptr.292 = internal global ptr @bnx2x_set_vf_spoofchk._entry.290, section ".printk_index", align 4
@.str.293 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@bnx2x_sample_bulletin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.295, ptr @.str.2, i32 3052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[%s:%d(%s)]bad crc on bulletin board. Contained %x computed %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_sample_bulletin\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_sample_bulletin._entry_ptr = internal global ptr @bnx2x_sample_bulletin._entry, section ".printk_index", align 4
@bnx2x_sample_bulletin._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.295, ptr @.str.2, i32 3057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013[%s:%d(%s)]pf to vf bulletin board crc was wrong %d consecutive times. Aborting\0A\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_sample_bulletin._entry_ptr.298 = internal global ptr @bnx2x_sample_bulletin._entry.296, section ".printk_index", align 4
@bnx2x_sample_bulletin._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.295, ptr @.str.2, i32 3075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]link update speed %d flags %x\0A\00", [52 x i8] zeroinitializer }, align 32
@bnx2x_sample_bulletin._entry_ptr.301 = internal global ptr @bnx2x_sample_bulletin._entry.299, section ".printk_index", align 4
@bnx2x_vf_pci_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.302 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&bp->vf2pf_mutex\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_pci_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.303, ptr @.str.2, i32 3135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vf_pci_alloc\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vf_pci_alloc._entry_ptr = internal global ptr @bnx2x_vf_pci_alloc._entry, section ".printk_index", align 4
@bnx2x_vf_pci_alloc._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.303, ptr @.str.2, i32 3141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_pci_alloc._entry_ptr.305 = internal global ptr @bnx2x_vf_pci_alloc._entry.304, section ".printk_index", align 4
@bnx2x_schedule_iov_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.307, ptr @.str.2, i32 3195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Scheduling iov task [Flag: %d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_schedule_iov_task\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_schedule_iov_task._entry_ptr = internal global ptr @bnx2x_schedule_iov_task._entry, section ".printk_index", align 4
@bnx2x_iov_wq = external dso_local local_unnamed_addr global ptr, align 4
@bnx2x_validate_vf_sp_objs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.309, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[%s:%d(%s)]Slowpath objects not yet initialized!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_validate_vf_sp_objs\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_validate_vf_sp_objs._entry_ptr = internal global ptr @bnx2x_validate_vf_sp_objs._entry, section ".printk_index", align 4
@bnx2x_validate_vf_sp_objs._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]Slowpath objects not yet initialized!\0A\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_validate_vf_sp_objs._entry_ptr.312 = internal global ptr @bnx2x_validate_vf_sp_objs._entry.310, section ".printk_index", align 4
@bnx2x_vf_mac_vlan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.314, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]vf[%d] - %s a %s filter\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_vf_mac_vlan_config\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_vf_mac_vlan_config._entry_ptr = internal global ptr @bnx2x_vf_mac_vlan_config._entry, section ".printk_index", align 4
@.str.315 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adding\00", [25 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Deleting\00", [23 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VLAN-MAC\00", [23 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VLAN\00", [27 x i8] zeroinitializer }, align 32
@bnx2x_vf_mac_vlan_config._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.314, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013[%s:%d(%s)]Failed to %s %s\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_vf_mac_vlan_config._entry_ptr.322 = internal global ptr @bnx2x_vf_mac_vlan_config._entry.320, section ".printk_index", align 4
@.str.323 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delete\00", [25 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.325, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vf_queue_create\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_create._entry_ptr = internal global ptr @bnx2x_vf_queue_create._entry, section ".printk_index", align 4
@bnx2x_vf_queue_create._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.325, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015[%s:%d(%s)]queue was already up. Aborting gracefully\0A\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_create._entry_ptr.328 = internal global ptr @bnx2x_vf_queue_create._entry.326, section ".printk_index", align 4
@bnx2x_vf_igu_ack_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.330, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]write 0x%08x to IGU(via GRC) addr 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bnx2x_vf_igu_ack_sb\00", [44 x i8] zeroinitializer }, align 32
@bnx2x_vf_igu_ack_sb._entry_ptr = internal global ptr @bnx2x_vf_igu_ack_sb._entry, section ".printk_index", align 4
@bnx2x_vf_igu_ack_sb._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.330, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_igu_ack_sb._entry_ptr.332 = internal global ptr @bnx2x_vf_igu_ack_sb._entry.331, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnx2x_vf_vlan_mac_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.334, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]vf[%d] - deleting all %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnx2x_vf_vlan_mac_clear\00", [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_vlan_mac_clear._entry_ptr = internal global ptr @bnx2x_vf_vlan_mac_clear._entry, section ".printk_index", align 4
@.str.335 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VLAN-MACs\00", [22 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MACs\00", [27 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VLANs\00", [26 x i8] zeroinitializer }, align 32
@bnx2x_vf_vlan_mac_clear._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.334, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Failed to delete all %s\0A\00", [58 x i8] zeroinitializer }, align 32
@bnx2x_vf_vlan_mac_clear._entry_ptr.340 = internal global ptr @bnx2x_vf_vlan_mac_clear._entry.338, section ".printk_index", align 4
@bnx2x_vf_queue_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.341, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bnx2x_vf_queue_destroy\00", [41 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_destroy._entry_ptr = internal global ptr @bnx2x_vf_queue_destroy._entry, section ".printk_index", align 4
@bnx2x_vf_queue_destroy._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.341, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]queue was already stopped. Aborting gracefully\0A\00", [35 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_destroy._entry_ptr.344 = internal global ptr @bnx2x_vf_queue_destroy._entry.342, section ".printk_index", align 4
@bnx2x_vf_queue_destroy._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.341, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[%s:%d(%s)]Failed to run Queue command %d\0A\00", [51 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_destroy._entry_ptr.347 = internal global ptr @bnx2x_vf_queue_destroy._entry.345, section ".printk_index", align 4
@bnx2x_vf_flr_clnup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.349, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]next vf to cleanup: %d. Num of vfs: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vf_flr_clnup\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr_clnup._entry_ptr = internal global ptr @bnx2x_vf_flr_clnup._entry, section ".printk_index", align 4
@bnx2x_vf_flr_clnup._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.349, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]DRV_STATUS_VF_DISABLED ACK for vfs 0x%x 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr_clnup._entry_ptr.352 = internal global ptr @bnx2x_vf_flr_clnup._entry.350, section ".printk_index", align 4
@bnx2x_vf_flr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.353, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bnx2x_vf_flr\00", [19 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr._entry_ptr = internal global ptr @bnx2x_vf_flr._entry, section ".printk_index", align 4
@bnx2x_vf_flr._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.355, ptr @.str.353, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[%s:%d(%s)]vf[%d:%d] failed flr: rc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr._entry_ptr.356 = internal global ptr @bnx2x_vf_flr._entry.354, section ".printk_index", align 4
@bnx2x_vf_queue_flr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.357, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vf_queue_flr\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_flr._entry_ptr = internal global ptr @bnx2x_vf_queue_flr._entry, section ".printk_index", align 4
@bnx2x_vf_queue_flr._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.357, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bnx2x_vf_queue_flr._entry_ptr.359 = internal global ptr @bnx2x_vf_queue_flr._entry.358, section ".printk_index", align 4
@.str.360 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DQ VF usage counter timed out\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr_clnup_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.361, ptr @.str.362, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[%s:%d(%s)]VF[%d] Final cleanup timed-out\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2x_vf_flr_clnup_hw\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_flr_clnup_hw._entry_ptr = internal global ptr @bnx2x_vf_flr_clnup_hw._entry, section ".printk_index", align 4
@bnx2x_sriov_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.364, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"\015[%s:%d(%s)]IOV info[%d]: first vf %d, nres %d, cap 0x%x, ctrl 0x%x, total %d, initial %d, num vfs %d, offset %d, stride %d, page size 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_sriov_info\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_sriov_info._entry_ptr = internal global ptr @bnx2x_sriov_info._entry, section ".printk_index", align 4
@bnx2x_sriov_pci_cfg_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.366, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[%s:%d(%s)]failed to find SRIOV capability in device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_sriov_pci_cfg_info\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_sriov_pci_cfg_info._entry_ptr = internal global ptr @bnx2x_sriov_pci_cfg_info._entry, section ".printk_index", align 4
@bnx2x_sriov_pci_cfg_info._entry.367 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.368, ptr @.str.366, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]sriov ext pos %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bnx2x_sriov_pci_cfg_info._entry_ptr.369 = internal global ptr @bnx2x_sriov_pci_cfg_info._entry.367, section ".printk_index", align 4
@bnx2x_get_vf_igu_cam_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.371, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]%s[%d], igu_sb_id=%d, msix=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_get_vf_igu_cam_info\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_igu_cam_info._entry_ptr = internal global ptr @bnx2x_get_vf_igu_cam_info._entry, section ".printk_index", align 4
@.str.372 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PF\00", [29 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VF\00", [29 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_igu_cam_info._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.371, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]vf_sbs_pool is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2x_get_vf_igu_cam_info._entry_ptr.376 = internal global ptr @bnx2x_get_vf_igu_cam_info._entry.374, section ".printk_index", align 4
@bnx2x_vf_handle_classification_eqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.378, ptr @.str.2, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Unsupported classification command: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bnx2x_vf_handle_classification_eqe\00", [61 x i8] zeroinitializer }, align 32
@bnx2x_vf_handle_classification_eqe._entry_ptr = internal global ptr @bnx2x_vf_handle_classification_eqe._entry, section ".printk_index", align 4
@bnx2x_vf_handle_classification_eqe._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.378, ptr @.str.2, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013[%s:%d(%s)]Failed to schedule new commands: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@bnx2x_vf_handle_classification_eqe._entry_ptr.381 = internal global ptr @bnx2x_vf_handle_classification_eqe._entry.379, section ".printk_index", align 4
@bnx2x_vf_handle_classification_eqe._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.378, ptr @.str.2, i32 1694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Scheduled next pending commands...\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_handle_classification_eqe._entry_ptr.384 = internal global ptr @bnx2x_vf_handle_classification_eqe._entry.382, section ".printk_index", align 4
@bnx2x_vf_handle_mcast_eqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.385, ptr @.str.386, ptr @.str.2, i32 1712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[%s:%d(%s)]Failed to send pending mcast commands: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_vf_handle_mcast_eqe\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_vf_handle_mcast_eqe._entry_ptr = internal global ptr @bnx2x_vf_handle_mcast_eqe._entry, section ".printk_index", align 4
@bnx2x_vfq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.388, ptr @.str.2, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]initialized vf %d's queue object. func id set to %d. cid set to 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2x_vfq_init\00", [17 x i8] zeroinitializer }, align 32
@bnx2x_vfq_init._entry_ptr = internal global ptr @bnx2x_vfq_init._entry, section ".printk_index", align 4
@bnx2x_vf_igu_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @.str.390, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]value in IGU_REG_VF_CONFIGURATION of vf %d after write is 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2x_vf_igu_reset\00", [45 x i8] zeroinitializer }, align 32
@bnx2x_vf_igu_reset._entry_ptr = internal global ptr @bnx2x_vf_igu_reset._entry, section ".printk_index", align 4
@bnx2x_set_pf_tx_switching._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.391, ptr @.str.392, ptr @.str.2, i32 2395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]Failed to configure Tx switching\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bnx2x_set_pf_tx_switching\00", [38 x i8] zeroinitializer }, align 32
@bnx2x_set_pf_tx_switching._entry_ptr = internal global ptr @bnx2x_set_pf_tx_switching._entry, section ".printk_index", align 4
@bnx2x_set_pf_tx_switching._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.392, ptr @.str.2, i32 2401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[%s:%d(%s)]%s Tx Switching\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2x_set_pf_tx_switching._entry_ptr.395 = internal global ptr @bnx2x_set_pf_tx_switching._entry.393, section ".printk_index", align 4
@bnx2x_vf_op_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.397, ptr @.str.2, i32 2562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[%s:%d(%s)]PF is down - can't utilize iov-related functionality\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bnx2x_vf_op_prep\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_op_prep._entry_ptr = internal global ptr @bnx2x_vf_op_prep._entry, section ".printk_index", align 4
@bnx2x_vf_op_prep._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.397, ptr @.str.2, i32 2567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013[%s:%d(%s)]sriov is disabled - can't utilize iov-related functionality\0A\00", [54 x i8] zeroinitializer }, align 32
@bnx2x_vf_op_prep._entry_ptr.400 = internal global ptr @bnx2x_vf_op_prep._entry.398, section ".printk_index", align 4
@bnx2x_vf_op_prep._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.397, ptr @.str.2, i32 2573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\013[%s:%d(%s)]VF is uninitialized - can't utilize iov-related functionality. vfidx was %d BNX2X_NR_VIRTFN was %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bnx2x_vf_op_prep._entry_ptr.403 = internal global ptr @bnx2x_vf_op_prep._entry.401, section ".printk_index", align 4
@bnx2x_vf_op_prep._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.405, ptr @.str.397, ptr @.str.2, i32 2582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[%s:%d(%s)]Unable to get VF structure for vfidx %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bnx2x_vf_op_prep._entry_ptr.406 = internal global ptr @bnx2x_vf_op_prep._entry.404, section ".printk_index", align 4
@bnx2x_vf_op_prep._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.408, ptr @.str.397, ptr @.str.2, i32 2588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013[%s:%d(%s)]vfqs struct is null. Was this invoked before dynamically enabling SR-IOV? vfidx was %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bnx2x_vf_op_prep._entry_ptr.409 = internal global ptr @bnx2x_vf_op_prep._entry.407, section ".printk_index", align 4
@bnx2x_vf_op_prep._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.397, ptr @.str.2, i32 2594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[%s:%d(%s)]Bulletin Board struct is null for vfidx %d\0A\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_vf_op_prep._entry_ptr.412 = internal global ptr @bnx2x_vf_op_prep._entry.410, section ".printk_index", align 4
@bnx2x_set_vf_vlan_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.414, ptr @.str.2, i32 2795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]failed to configure vlan\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2x_set_vf_vlan_filter\00", [39 x i8] zeroinitializer }, align 32
@bnx2x_set_vf_vlan_filter._entry_ptr = internal global ptr @bnx2x_set_vf_vlan_filter._entry, section ".printk_index", align 4
@switch.table.bnx2x_vf_enable_access = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 38008, i32 38012, i32 38016, i32 38004], [16 x i8] zeroinitializer }, align 32
@switch.table.bnx2x_vf_free = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.415 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.416 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.417 = internal global [9 x i64] [i64 7, i64 8, i64 3, i64 8, i64 9, i64 11, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.418 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 11, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.419 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.420 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.421 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 131, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 149, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 440, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 455, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 478, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 489, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 544, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 557, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 574, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 579, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 617, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 629, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 666, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 780, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 814, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 960, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 979, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1192, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1200, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1206, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1212, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1219, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1242, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1250, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1260, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1268, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1279, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1285, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1287, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1294, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1315, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1368, i32 16 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1380, i32 29 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1388, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1397, i32 33 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1492, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1499, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1542, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1546, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1562, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1614, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1749, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1756, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1760, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1765, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1775, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1789, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1796, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1804, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1809, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1814, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1819, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1862, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1885, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1898, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1905, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1911, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1933, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2020, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2024, i32 4 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2033, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2043, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2054, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2062, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2070, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2078, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2102, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2155, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2165, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2169, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2186, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2190, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2202, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2216, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2227, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2234, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2247, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2259, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2264, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2282, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2287, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2299, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2310, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2320, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2330, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2341, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2410, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2414, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2419, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2425, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2475, i32 4 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2486, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2507, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2515, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2524, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2527, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2536, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2548, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2619, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2687, i32 3 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2711, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2734, i32 4 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2742, i32 4 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2814, i32 3 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2821, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2846, i32 3 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2868, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2930, i32 4 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2939, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2962, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3003, i32 4 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3010, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3051, i32 3 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3056, i32 3 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3074, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3131, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3134, i32 19 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3140, i32 23 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 3195, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 117, i32 4 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 119, i32 4 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 386, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 420, i32 3 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 241, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 250, i32 3 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 100, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 105, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 340, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 369, i32 3 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 283, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 292, i32 3 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 301, i32 4 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 914, i32 3 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 937, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 873, i32 2 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 899, i32 2 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 498, i32 2 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 533, i32 2 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 856, i32 6 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 863, i32 3 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1155, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1118, i32 3 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1123, i32 2 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1091, i32 3 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1097, i32 2 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1688, i32 3 }
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1692, i32 3 }
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1694, i32 3 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1711, i32 4 }
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 1430, i32 2 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 736, i32 2 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2395, i32 5 }
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2401, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2562, i32 3 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2567, i32 3 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2572, i32 3 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2582, i32 3 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2587, i32 3 }
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2593, i32 3 }
@___asan_gen_.1553 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1559 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1560 = private constant [53 x i8] c"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c\00", align 1
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1560, i32 2795, i32 3 }
@___asan_gen_.1562 = private unnamed_addr constant [36 x i8] c"switch.table.bnx2x_vf_enable_access\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant [27 x i8] c"switch.table.bnx2x_vf_free\00", align 1
@llvm.compiler.used = appending global [535 x ptr] [ptr @bnx2x_disable_sriov._entry, ptr @bnx2x_disable_sriov._entry_ptr, ptr @bnx2x_enable_sriov._entry, ptr @bnx2x_enable_sriov._entry.234, ptr @bnx2x_enable_sriov._entry.237, ptr @bnx2x_enable_sriov._entry.240, ptr @bnx2x_enable_sriov._entry.243, ptr @bnx2x_enable_sriov._entry.246, ptr @bnx2x_enable_sriov._entry_ptr, ptr @bnx2x_enable_sriov._entry_ptr.236, ptr @bnx2x_enable_sriov._entry_ptr.239, ptr @bnx2x_enable_sriov._entry_ptr.242, ptr @bnx2x_enable_sriov._entry_ptr.245, ptr @bnx2x_enable_sriov._entry_ptr.248, ptr @bnx2x_get_vf_config._entry, ptr @bnx2x_get_vf_config._entry_ptr, ptr @bnx2x_get_vf_igu_cam_info._entry, ptr @bnx2x_get_vf_igu_cam_info._entry.374, ptr @bnx2x_get_vf_igu_cam_info._entry_ptr, ptr @bnx2x_get_vf_igu_cam_info._entry_ptr.376, ptr @bnx2x_iov_adjust_stats_req._entry, ptr @bnx2x_iov_adjust_stats_req._entry.136, ptr @bnx2x_iov_adjust_stats_req._entry.139, ptr @bnx2x_iov_adjust_stats_req._entry.142, ptr @bnx2x_iov_adjust_stats_req._entry.145, ptr @bnx2x_iov_adjust_stats_req._entry_ptr, ptr @bnx2x_iov_adjust_stats_req._entry_ptr.138, ptr @bnx2x_iov_adjust_stats_req._entry_ptr.141, ptr @bnx2x_iov_adjust_stats_req._entry_ptr.144, ptr @bnx2x_iov_adjust_stats_req._entry_ptr.147, ptr @bnx2x_iov_alloc_mem._entry, ptr @bnx2x_iov_alloc_mem._entry.78, ptr @bnx2x_iov_alloc_mem._entry.80, ptr @bnx2x_iov_alloc_mem._entry.82, ptr @bnx2x_iov_alloc_mem._entry_ptr, ptr @bnx2x_iov_alloc_mem._entry_ptr.79, ptr @bnx2x_iov_alloc_mem._entry_ptr.81, ptr @bnx2x_iov_alloc_mem._entry_ptr.83, ptr @bnx2x_iov_eq_sp_event._entry, ptr @bnx2x_iov_eq_sp_event._entry.102, ptr @bnx2x_iov_eq_sp_event._entry.105, ptr @bnx2x_iov_eq_sp_event._entry.108, ptr @bnx2x_iov_eq_sp_event._entry.111, ptr @bnx2x_iov_eq_sp_event._entry.114, ptr @bnx2x_iov_eq_sp_event._entry.117, ptr @bnx2x_iov_eq_sp_event._entry.120, ptr @bnx2x_iov_eq_sp_event._entry.123, ptr @bnx2x_iov_eq_sp_event._entry.126, ptr @bnx2x_iov_eq_sp_event._entry.129, ptr @bnx2x_iov_eq_sp_event._entry_ptr, ptr @bnx2x_iov_eq_sp_event._entry_ptr.104, ptr @bnx2x_iov_eq_sp_event._entry_ptr.107, ptr @bnx2x_iov_eq_sp_event._entry_ptr.110, ptr @bnx2x_iov_eq_sp_event._entry_ptr.113, ptr @bnx2x_iov_eq_sp_event._entry_ptr.116, ptr @bnx2x_iov_eq_sp_event._entry_ptr.119, ptr @bnx2x_iov_eq_sp_event._entry_ptr.122, ptr @bnx2x_iov_eq_sp_event._entry_ptr.125, ptr @bnx2x_iov_eq_sp_event._entry_ptr.128, ptr @bnx2x_iov_eq_sp_event._entry_ptr.131, ptr @bnx2x_iov_init_one._entry, ptr @bnx2x_iov_init_one._entry.42, ptr @bnx2x_iov_init_one._entry.45, ptr @bnx2x_iov_init_one._entry.48, ptr @bnx2x_iov_init_one._entry.51, ptr @bnx2x_iov_init_one._entry.54, ptr @bnx2x_iov_init_one._entry.57, ptr @bnx2x_iov_init_one._entry.61, ptr @bnx2x_iov_init_one._entry.64, ptr @bnx2x_iov_init_one._entry.71, ptr @bnx2x_iov_init_one._entry_ptr, ptr @bnx2x_iov_init_one._entry_ptr.44, ptr @bnx2x_iov_init_one._entry_ptr.47, ptr @bnx2x_iov_init_one._entry_ptr.50, ptr @bnx2x_iov_init_one._entry_ptr.53, ptr @bnx2x_iov_init_one._entry_ptr.56, ptr @bnx2x_iov_init_one._entry_ptr.59, ptr @bnx2x_iov_init_one._entry_ptr.63, ptr @bnx2x_iov_init_one._entry_ptr.66, ptr @bnx2x_iov_init_one._entry_ptr.73, ptr @bnx2x_iov_link_update_vf._entry, ptr @bnx2x_iov_link_update_vf._entry.86, ptr @bnx2x_iov_link_update_vf._entry_ptr, ptr @bnx2x_iov_link_update_vf._entry_ptr.88, ptr @bnx2x_iov_nic_init._entry, ptr @bnx2x_iov_nic_init._entry.91, ptr @bnx2x_iov_nic_init._entry.94, ptr @bnx2x_iov_nic_init._entry.97, ptr @bnx2x_iov_nic_init._entry_ptr, ptr @bnx2x_iov_nic_init._entry_ptr.93, ptr @bnx2x_iov_nic_init._entry_ptr.96, ptr @bnx2x_iov_nic_init._entry_ptr.99, ptr @bnx2x_iov_remove_one._entry, ptr @bnx2x_iov_remove_one._entry_ptr, ptr @bnx2x_iov_set_queue_sp_obj._entry, ptr @bnx2x_iov_set_queue_sp_obj._entry_ptr, ptr @bnx2x_lock_vf_pf_channel._entry, ptr @bnx2x_lock_vf_pf_channel._entry.212, ptr @bnx2x_lock_vf_pf_channel._entry_ptr, ptr @bnx2x_lock_vf_pf_channel._entry_ptr.214, ptr @bnx2x_pf_set_vfs_vlan._entry, ptr @bnx2x_pf_set_vfs_vlan._entry_ptr, ptr @bnx2x_sample_bulletin._entry, ptr @bnx2x_sample_bulletin._entry.296, ptr @bnx2x_sample_bulletin._entry.299, ptr @bnx2x_sample_bulletin._entry_ptr, ptr @bnx2x_sample_bulletin._entry_ptr.298, ptr @bnx2x_sample_bulletin._entry_ptr.301, ptr @bnx2x_schedule_iov_task._entry, ptr @bnx2x_schedule_iov_task._entry_ptr, ptr @bnx2x_set_pf_tx_switching._entry, ptr @bnx2x_set_pf_tx_switching._entry.393, ptr @bnx2x_set_pf_tx_switching._entry_ptr, ptr @bnx2x_set_pf_tx_switching._entry_ptr.395, ptr @bnx2x_set_vf_mac._entry, ptr @bnx2x_set_vf_mac._entry.257, ptr @bnx2x_set_vf_mac._entry.259, ptr @bnx2x_set_vf_mac._entry.262, ptr @bnx2x_set_vf_mac._entry_ptr, ptr @bnx2x_set_vf_mac._entry_ptr.258, ptr @bnx2x_set_vf_mac._entry_ptr.261, ptr @bnx2x_set_vf_mac._entry_ptr.264, ptr @bnx2x_set_vf_spoofchk._entry, ptr @bnx2x_set_vf_spoofchk._entry.285, ptr @bnx2x_set_vf_spoofchk._entry.290, ptr @bnx2x_set_vf_spoofchk._entry_ptr, ptr @bnx2x_set_vf_spoofchk._entry_ptr.287, ptr @bnx2x_set_vf_spoofchk._entry_ptr.292, ptr @bnx2x_set_vf_vlan._entry, ptr @bnx2x_set_vf_vlan._entry.267, ptr @bnx2x_set_vf_vlan._entry.270, ptr @bnx2x_set_vf_vlan._entry.272, ptr @bnx2x_set_vf_vlan._entry.275, ptr @bnx2x_set_vf_vlan._entry.278, ptr @bnx2x_set_vf_vlan._entry_ptr, ptr @bnx2x_set_vf_vlan._entry_ptr.269, ptr @bnx2x_set_vf_vlan._entry_ptr.271, ptr @bnx2x_set_vf_vlan._entry_ptr.274, ptr @bnx2x_set_vf_vlan._entry_ptr.277, ptr @bnx2x_set_vf_vlan._entry_ptr.280, ptr @bnx2x_set_vf_vlan_filter._entry, ptr @bnx2x_set_vf_vlan_filter._entry_ptr, ptr @bnx2x_sriov_configure._entry, ptr @bnx2x_sriov_configure._entry.223, ptr @bnx2x_sriov_configure._entry.226, ptr @bnx2x_sriov_configure._entry.229, ptr @bnx2x_sriov_configure._entry_ptr, ptr @bnx2x_sriov_configure._entry_ptr.225, ptr @bnx2x_sriov_configure._entry_ptr.228, ptr @bnx2x_sriov_configure._entry_ptr.231, ptr @bnx2x_sriov_info._entry, ptr @bnx2x_sriov_info._entry_ptr, ptr @bnx2x_sriov_pci_cfg_info._entry, ptr @bnx2x_sriov_pci_cfg_info._entry.367, ptr @bnx2x_sriov_pci_cfg_info._entry_ptr, ptr @bnx2x_sriov_pci_cfg_info._entry_ptr.369, ptr @bnx2x_unlock_vf_pf_channel._entry, ptr @bnx2x_unlock_vf_pf_channel._entry.218, ptr @bnx2x_unlock_vf_pf_channel._entry_ptr, ptr @bnx2x_unlock_vf_pf_channel._entry_ptr.220, ptr @bnx2x_validate_vf_sp_objs._entry, ptr @bnx2x_validate_vf_sp_objs._entry.310, ptr @bnx2x_validate_vf_sp_objs._entry_ptr, ptr @bnx2x_validate_vf_sp_objs._entry_ptr.312, ptr @bnx2x_vf_acquire._entry, ptr @bnx2x_vf_acquire._entry.150, ptr @bnx2x_vf_acquire._entry.153, ptr @bnx2x_vf_acquire._entry.156, ptr @bnx2x_vf_acquire._entry.159, ptr @bnx2x_vf_acquire._entry.162, ptr @bnx2x_vf_acquire._entry.165, ptr @bnx2x_vf_acquire._entry.168, ptr @bnx2x_vf_acquire._entry_ptr, ptr @bnx2x_vf_acquire._entry_ptr.152, ptr @bnx2x_vf_acquire._entry_ptr.155, ptr @bnx2x_vf_acquire._entry_ptr.158, ptr @bnx2x_vf_acquire._entry_ptr.161, ptr @bnx2x_vf_acquire._entry_ptr.164, ptr @bnx2x_vf_acquire._entry_ptr.167, ptr @bnx2x_vf_acquire._entry_ptr.170, ptr @bnx2x_vf_close._entry, ptr @bnx2x_vf_close._entry.174, ptr @bnx2x_vf_close._entry.177, ptr @bnx2x_vf_close._entry.180, ptr @bnx2x_vf_close._entry.183, ptr @bnx2x_vf_close._entry_ptr, ptr @bnx2x_vf_close._entry_ptr.176, ptr @bnx2x_vf_close._entry_ptr.179, ptr @bnx2x_vf_close._entry_ptr.182, ptr @bnx2x_vf_close._entry_ptr.185, ptr @bnx2x_vf_enable_access._entry, ptr @bnx2x_vf_enable_access._entry_ptr, ptr @bnx2x_vf_flr._entry, ptr @bnx2x_vf_flr._entry.354, ptr @bnx2x_vf_flr._entry_ptr, ptr @bnx2x_vf_flr._entry_ptr.356, ptr @bnx2x_vf_flr_clnup._entry, ptr @bnx2x_vf_flr_clnup._entry.350, ptr @bnx2x_vf_flr_clnup._entry_ptr, ptr @bnx2x_vf_flr_clnup._entry_ptr.352, ptr @bnx2x_vf_flr_clnup_epilog._entry, ptr @bnx2x_vf_flr_clnup_epilog._entry_ptr, ptr @bnx2x_vf_flr_clnup_hw._entry, ptr @bnx2x_vf_flr_clnup_hw._entry_ptr, ptr @bnx2x_vf_free._entry, ptr @bnx2x_vf_free._entry.193, ptr @bnx2x_vf_free._entry.196, ptr @bnx2x_vf_free._entry_ptr, ptr @bnx2x_vf_free._entry_ptr.195, ptr @bnx2x_vf_free._entry_ptr.198, ptr @bnx2x_vf_handle_classification_eqe._entry, ptr @bnx2x_vf_handle_classification_eqe._entry.379, ptr @bnx2x_vf_handle_classification_eqe._entry.382, ptr @bnx2x_vf_handle_classification_eqe._entry_ptr, ptr @bnx2x_vf_handle_classification_eqe._entry_ptr.381, ptr @bnx2x_vf_handle_classification_eqe._entry_ptr.384, ptr @bnx2x_vf_handle_flr_event._entry, ptr @bnx2x_vf_handle_flr_event._entry.37, ptr @bnx2x_vf_handle_flr_event._entry_ptr, ptr @bnx2x_vf_handle_flr_event._entry_ptr.39, ptr @bnx2x_vf_handle_mcast_eqe._entry, ptr @bnx2x_vf_handle_mcast_eqe._entry_ptr, ptr @bnx2x_vf_igu_ack_sb._entry, ptr @bnx2x_vf_igu_ack_sb._entry.331, ptr @bnx2x_vf_igu_ack_sb._entry_ptr, ptr @bnx2x_vf_igu_ack_sb._entry_ptr.332, ptr @bnx2x_vf_igu_reset._entry, ptr @bnx2x_vf_igu_reset._entry_ptr, ptr @bnx2x_vf_init._entry, ptr @bnx2x_vf_init._entry_ptr, ptr @bnx2x_vf_mac_vlan_config._entry, ptr @bnx2x_vf_mac_vlan_config._entry.320, ptr @bnx2x_vf_mac_vlan_config._entry_ptr, ptr @bnx2x_vf_mac_vlan_config._entry_ptr.322, ptr @bnx2x_vf_mac_vlan_config_list._entry, ptr @bnx2x_vf_mac_vlan_config_list._entry.8, ptr @bnx2x_vf_mac_vlan_config_list._entry_ptr, ptr @bnx2x_vf_mac_vlan_config_list._entry_ptr.10, ptr @bnx2x_vf_mcast._entry, ptr @bnx2x_vf_mcast._entry.17, ptr @bnx2x_vf_mcast._entry.20, ptr @bnx2x_vf_mcast._entry.23, ptr @bnx2x_vf_mcast._entry_ptr, ptr @bnx2x_vf_mcast._entry_ptr.19, ptr @bnx2x_vf_mcast._entry_ptr.22, ptr @bnx2x_vf_mcast._entry_ptr.25, ptr @bnx2x_vf_op_prep._entry, ptr @bnx2x_vf_op_prep._entry.398, ptr @bnx2x_vf_op_prep._entry.401, ptr @bnx2x_vf_op_prep._entry.404, ptr @bnx2x_vf_op_prep._entry.407, ptr @bnx2x_vf_op_prep._entry.410, ptr @bnx2x_vf_op_prep._entry_ptr, ptr @bnx2x_vf_op_prep._entry_ptr.400, ptr @bnx2x_vf_op_prep._entry_ptr.403, ptr @bnx2x_vf_op_prep._entry_ptr.406, ptr @bnx2x_vf_op_prep._entry_ptr.409, ptr @bnx2x_vf_op_prep._entry_ptr.412, ptr @bnx2x_vf_pci_alloc._entry, ptr @bnx2x_vf_pci_alloc._entry.304, ptr @bnx2x_vf_pci_alloc._entry_ptr, ptr @bnx2x_vf_pci_alloc._entry_ptr.305, ptr @bnx2x_vf_queue_create._entry, ptr @bnx2x_vf_queue_create._entry.326, ptr @bnx2x_vf_queue_create._entry_ptr, ptr @bnx2x_vf_queue_create._entry_ptr.328, ptr @bnx2x_vf_queue_destroy._entry, ptr @bnx2x_vf_queue_destroy._entry.342, ptr @bnx2x_vf_queue_destroy._entry.345, ptr @bnx2x_vf_queue_destroy._entry_ptr, ptr @bnx2x_vf_queue_destroy._entry_ptr.344, ptr @bnx2x_vf_queue_destroy._entry_ptr.347, ptr @bnx2x_vf_queue_flr._entry, ptr @bnx2x_vf_queue_flr._entry.358, ptr @bnx2x_vf_queue_flr._entry_ptr, ptr @bnx2x_vf_queue_flr._entry_ptr.359, ptr @bnx2x_vf_queue_setup._entry, ptr @bnx2x_vf_queue_setup._entry.13, ptr @bnx2x_vf_queue_setup._entry_ptr, ptr @bnx2x_vf_queue_setup._entry_ptr.15, ptr @bnx2x_vf_queue_teardown._entry, ptr @bnx2x_vf_queue_teardown._entry.28, ptr @bnx2x_vf_queue_teardown._entry_ptr, ptr @bnx2x_vf_queue_teardown._entry_ptr.30, ptr @bnx2x_vf_release._entry, ptr @bnx2x_vf_release._entry_ptr, ptr @bnx2x_vf_rss_update._entry, ptr @bnx2x_vf_rss_update._entry_ptr, ptr @bnx2x_vf_rxmode._entry, ptr @bnx2x_vf_rxmode._entry_ptr, ptr @bnx2x_vf_tpa_update._entry, ptr @bnx2x_vf_tpa_update._entry.201, ptr @bnx2x_vf_tpa_update._entry.204, ptr @bnx2x_vf_tpa_update._entry_ptr, ptr @bnx2x_vf_tpa_update._entry_ptr.203, ptr @bnx2x_vf_tpa_update._entry_ptr.206, ptr @bnx2x_vf_vlan_mac_clear._entry, ptr @bnx2x_vf_vlan_mac_clear._entry.338, ptr @bnx2x_vf_vlan_mac_clear._entry_ptr, ptr @bnx2x_vf_vlan_mac_clear._entry_ptr.340, ptr @bnx2x_vfop_qctor_dump_rx._entry, ptr @bnx2x_vfop_qctor_dump_rx._entry_ptr, ptr @bnx2x_vfop_qctor_dump_tx._entry, ptr @bnx2x_vfop_qctor_dump_tx._entry_ptr, ptr @bnx2x_vfq_init._entry, ptr @bnx2x_vfq_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @bnx2x_iov_init_one.__key, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @bnx2x_iov_init_one.__key.67, ptr @.str.68, ptr @bnx2x_iov_init_one.__key.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.194, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.202, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.260, ptr @.str.263, ptr @.str.265, ptr @.str.266, ptr @.str.268, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.286, ptr @.str.288, ptr @.str.289, ptr @.str.291, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.297, ptr @.str.300, ptr @bnx2x_vf_pci_alloc.__key, ptr @.str.302, ptr @.str.303, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.311, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.321, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.327, ptr @.str.329, ptr @.str.330, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.339, ptr @.str.341, ptr @.str.343, ptr @.str.346, ptr @.str.348, ptr @.str.349, ptr @.str.351, ptr @.str.353, ptr @.str.355, ptr @.str.357, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.368, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.375, ptr @.str.377, ptr @.str.378, ptr @.str.380, ptr @.str.383, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.394, ptr @.str.396, ptr @.str.397, ptr @.str.399, ptr @.str.402, ptr @.str.405, ptr @.str.408, ptr @.str.411, ptr @.str.413, ptr @.str.414, ptr @switch.table.bnx2x_vf_enable_access, ptr @switch.table.bnx2x_vf_free], section "llvm.metadata"
@0 = internal global [382 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfop_qctor_dump_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfop_qctor_dump_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 183, i32 224, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mac_vlan_config_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mac_vlan_config_list._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mcast._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mcast._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mcast._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_rxmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_teardown._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_enable_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_flr_clnup_epilog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_handle_flr_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_handle_flr_event._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_init_one._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_alloc_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_alloc_mem._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_alloc_mem._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_alloc_mem._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_link_update_vf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_link_update_vf._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_nic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_nic_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_nic_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_nic_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_eq_sp_event._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_set_queue_sp_obj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_adjust_stats_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 175, i32 224, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_adjust_stats_req._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_adjust_stats_req._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_adjust_stats_req._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_iov_adjust_stats_req._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_acquire._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_close._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_close._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_close._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_close._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_free._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_free._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_rss_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_tpa_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_tpa_update._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_tpa_update._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_lock_vf_pf_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_lock_vf_pf_channel._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_unlock_vf_pf_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_unlock_vf_pf_channel._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_configure._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_configure._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_configure._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_enable_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_enable_sriov._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_enable_sriov._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_enable_sriov._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_enable_sriov._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_enable_sriov._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_pf_set_vfs_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_disable_sriov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_get_vf_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_mac._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_mac._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_mac._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_spoofchk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_spoofchk._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_spoofchk._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sample_bulletin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sample_bulletin._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sample_bulletin._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_pci_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_pci_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_pci_alloc._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_schedule_iov_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_validate_vf_sp_objs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_validate_vf_sp_objs._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mac_vlan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_mac_vlan_config._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_create._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_igu_ack_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_igu_ack_sb._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_vlan_mac_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_vlan_mac_clear._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_destroy._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_destroy._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_flr_clnup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_flr_clnup._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_flr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_flr._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_flr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_queue_flr._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_flr_clnup_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_pci_cfg_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_sriov_pci_cfg_info._entry.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_get_vf_igu_cam_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_get_vf_igu_cam_info._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_handle_classification_eqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_handle_classification_eqe._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_handle_classification_eqe._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_handle_mcast_eqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vfq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_igu_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_pf_tx_switching._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_pf_tx_switching._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_op_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_op_prep._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_op_prep._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_op_prep._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_op_prep._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_vf_op_prep._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2x_set_vf_vlan_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnx2x_vf_enable_access to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnx2x_vf_free to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_idx_by_abs_fid(ptr nocapture noundef readonly %bp, i16 noundef zeroext %abs_vfid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp12.not = icmp eq i16 %3, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %abs_vfid3 = getelementptr %struct.bnx2x_virtf, ptr %5, i32 %idx.013, i32 14
  %6 = ptrtoint ptr %abs_vfid3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %abs_vfid3, align 1
  %8 = zext i8 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %abs_vfid)
  %cmp6 = icmp eq i16 %8, %abs_vfid
  br i1 %cmp6, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.013, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %idx.013, %for.body.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  ret i32 %idx.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vfop_qctor_dump_tx(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %init_params, ptr nocapture noundef readonly %setup_params, i16 noundef zeroext %q_idx, i16 noundef zeroext %sb_idx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end, !prof !702

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %conv6 = zext i16 %q_idx to i32
  %conv7 = zext i16 %sb_idx to i32
  %sb_cq_index = getelementptr inbounds %struct.anon.119, ptr %init_params, i32 0, i32 3
  %6 = ptrtoint ptr %sb_cq_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_cq_index, align 1
  %conv8 = zext i8 %7 to i32
  %hc_rate = getelementptr inbounds %struct.anon.119, ptr %init_params, i32 0, i32 1
  %8 = ptrtoint ptr %hc_rate to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hc_rate, align 4
  %conv10 = zext i16 %9 to i32
  %flags = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %traffic_type = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %traffic_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %traffic_type, align 4
  %conv11 = zext i16 %13 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 139, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %11, i32 noundef %conv11) #17
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vfop_qctor_dump_rx(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %init_params, ptr nocapture noundef readonly %setup_params, i16 noundef zeroext %q_idx, i16 noundef zeroext %sb_idx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end20_crit_edge, label %do.end, !prof !702

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %conv7 = zext i16 %q_idx to i32
  %conv8 = zext i16 %sb_idx to i32
  %sb_cq_index = getelementptr inbounds %struct.bnx2x_queue_init_params, ptr %init_params, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %sb_cq_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_cq_index, align 1
  %conv9 = zext i8 %7 to i32
  %hc_rate = getelementptr inbounds %struct.bnx2x_queue_init_params, ptr %init_params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %hc_rate to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hc_rate, align 4
  %conv11 = zext i16 %9 to i32
  %mtu = getelementptr inbounds %struct.bnx2x_general_setup_params, ptr %setup_params, i32 0, i32 2
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mtu, align 2
  %conv12 = zext i16 %11 to i32
  %buf_sz = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buf_sz, align 2
  %conv13 = zext i16 %13 to i32
  %sge_buf_sz = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %sge_buf_sz to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sge_buf_sz, align 4
  %conv14 = zext i16 %15 to i32
  %max_sges_pkt = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 2, i32 10
  %16 = ptrtoint ptr %max_sges_pkt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_sges_pkt, align 2
  %conv15 = zext i8 %17 to i32
  %tpa_agg_sz = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %tpa_agg_sz to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tpa_agg_sz, align 2
  %conv16 = zext i16 %19 to i32
  %flags = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %drop_flags = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %drop_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %drop_flags, align 4
  %conv17 = zext i16 %23 to i32
  %cache_line_log = getelementptr inbounds %struct.bnx2x_queue_setup_params, ptr %setup_params, i32 0, i32 2, i32 14
  %24 = ptrtoint ptr %cache_line_log to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cache_line_log, align 2
  %conv18 = zext i8 %25 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 163, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %21, i32 noundef %conv17, i32 noundef %conv18) #17
  br label %do.end20

do.end20:                                         ; preds = %do.end, %entry.do.end20_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bnx2x_vfop_qctor_prep(ptr nocapture noundef readnone %bp, ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %q, ptr noundef %p, i32 noundef %q_type) local_unnamed_addr #4 align 64 {
entry:
  %q_type.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q_type.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %q_type, ptr %q_type.addr, align 4
  %params = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %p, i32 0, i32 3
  %prep_qsetup = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1
  %rx = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %p, i32 0, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %rx, align 4
  %3 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or.i = or i32 %2, 1024
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i, ptr %rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %params, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or.i96 = or i32 %6, 1024
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i96, ptr %params, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %sb_idx = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %q, i32 0, i32 8
  %9 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sb_idx, align 2
  %igu_base_id.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  %11 = ptrtoint ptr %igu_base_id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %igu_base_id.i, align 1
  %conv1.i = trunc i16 %10 to i8
  %add.i = add i8 %12, %conv1.i
  %fw_sb_id = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %p, i32 0, i32 3, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %fw_sb_id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add.i, ptr %fw_sb_id, align 2
  %14 = load i16, ptr %sb_idx, align 2
  %15 = load i8, ptr %igu_base_id.i, align 1
  %conv1.i108 = trunc i16 %14 to i8
  %add.i109 = add i8 %15, %conv1.i108
  %fw_sb_id15 = getelementptr inbounds %struct.anon.119, ptr %params, i32 0, i32 2
  %16 = ptrtoint ptr %fw_sb_id15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add.i109, ptr %fw_sb_id15, align 2
  %17 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q, align 4
  %cxts = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %p, i32 0, i32 3, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %cxts to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %cxts, align 4
  %sp_cl_id = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 15
  %20 = ptrtoint ptr %sp_cl_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sp_cl_id, align 2
  %spcl_id = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %spcl_id to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %spcl_id, align 1
  %23 = ptrtoint ptr %vf to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vf, align 8
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %leading_rss.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 22
  %26 = ptrtoint ptr %leading_rss.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %leading_rss.i, align 4
  %conv1.i110 = trunc i32 %27 to i8
  br label %vfq_stat_id.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %igu_base_id.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %igu_base_id.i, align 1
  %index.i.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %q, i32 0, i32 7
  %30 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %index.i.i, align 4
  %conv1.i.i = trunc i16 %31 to i8
  %add.i.i = add i8 %29, %conv1.i.i
  br label %vfq_stat_id.exit

vfq_stat_id.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %conv1.i110, %if.then.i ], [ %add.i.i, %if.else.i ]
  %32 = ptrtoint ptr %prep_qsetup to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %retval.0.i, ptr %prep_qsetup, align 4
  %fp_hsi = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 27
  %33 = ptrtoint ptr %fp_hsi to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fp_hsi, align 4
  %fp_hsi19 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %fp_hsi19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %fp_hsi19, align 1
  %flags20 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags20, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not = icmp eq i32 %38, 0
  br i1 %tobool22.not, label %vfq_stat_id.exit.if.end25_crit_edge, label %if.then23

vfq_stat_id.exit.if.end25_crit_edge:              ; preds = %vfq_stat_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %vfq_stat_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  %or.i99 = or i32 %37, 16
  %39 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i99, ptr %flags20, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %vfq_stat_id.exit.if.end25_crit_edge
  %40 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags20, align 4
  %or.i101 = or i32 %41, 196608
  store i32 %or.i101, ptr %flags20, align 4
  %spoofchk = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 5
  %42 = ptrtoint ptr %spoofchk to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %spoofchk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool28.not = icmp eq i8 %43, 0
  %or.i102 = or i32 %41, 458752
  %and.i = and i32 %or.i101, -262145
  %storemerge = select i1 %tobool28.not, i32 %and.i, i32 %or.i102
  %44 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge, ptr %flags20, align 4
  %45 = ptrtoint ptr %q_type.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %q_type.addr.0.q_type.addr.0. = load volatile i32, ptr %q_type.addr, align 4
  %and1.i103 = and i32 %q_type.addr.0.q_type.addr.0., 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i103)
  %tobool34.not = icmp eq i32 %and1.i103, 0
  br i1 %tobool34.not, label %if.end25.if.end46_crit_edge, label %if.then35

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then35:                                        ; preds = %if.end25
  %46 = ptrtoint ptr %igu_base_id.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %igu_base_id.i, align 1
  %index.i.i112 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %q, i32 0, i32 7
  %48 = ptrtoint ptr %index.i.i112 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %index.i.i112, align 4
  %conv1.i.i113 = trunc i16 %49 to i8
  %add.i.i114 = add i8 %47, %conv1.i.i113
  %cl_qzone_id = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 2, i32 7
  %50 = ptrtoint ptr %cl_qzone_id to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %add.i.i114, ptr %cl_qzone_id, align 1
  %51 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sb_idx, align 2
  %53 = load i8, ptr %igu_base_id.i, align 1
  %conv1.i116 = trunc i16 %52 to i8
  %add.i117 = add i8 %53, %conv1.i116
  %fw_sb_id39 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 2, i32 6
  %54 = ptrtoint ptr %fw_sb_id39 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %add.i117, ptr %fw_sb_id39, align 4
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %55 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %abs_vfid, align 1
  %add = add i8 %56, 8
  %rss_engine_id = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 2, i32 12
  %57 = ptrtoint ptr %rss_engine_id to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %add, ptr %rss_engine_id, align 4
  %58 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags20, align 4
  %and1.i104 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i104)
  %tobool43.not = icmp eq i32 %and1.i104, 0
  br i1 %tobool43.not, label %if.then35.if.end46_crit_edge, label %if.then44

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then44:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %max_tpa_queues = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 2, i32 11
  %60 = ptrtoint ptr %max_tpa_queues to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %max_tpa_queues, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then35.if.end46_crit_edge, %if.end25.if.end46_crit_edge
  %61 = ptrtoint ptr %q_type.addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %q_type.addr.0.q_type.addr.0.121 = load volatile i32, ptr %q_type.addr, align 4
  %62 = and i32 %q_type.addr.0.q_type.addr.0.121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool48.not = icmp eq i32 %62, 0
  br i1 %tobool48.not, label %if.end46.if.end55_crit_edge, label %if.then49

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %leading_rss = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 22
  %63 = ptrtoint ptr %leading_rss to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %leading_rss, align 4
  %conv50 = trunc i32 %64 to i8
  %tss_leading_cl_id = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 1, i32 5
  %65 = ptrtoint ptr %tss_leading_cl_id to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv50, ptr %tss_leading_cl_id, align 2
  %66 = ptrtoint ptr %sb_idx to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sb_idx, align 2
  %68 = ptrtoint ptr %igu_base_id.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %igu_base_id.i, align 1
  %conv1.i119 = trunc i16 %67 to i8
  %add.i120 = add i8 %69, %conv1.i119
  %fw_sb_id54 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %p, i32 0, i32 1, i32 1, i32 1
  %70 = ptrtoint ptr %fw_sb_id54 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %add.i120, ptr %fw_sb_id54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end46.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_mac_vlan_config_list(ptr noundef %bp, ptr nocapture noundef readonly %vf, ptr noundef %filters, i32 noundef %qid, i1 noundef zeroext %drv_only) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 440, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %vfqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %6 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfqs.i, align 4
  %sp_initialized.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sp_initialized.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %bnx2x_validate_vf_sp_objs.exit.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end7
  %10 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp94 = icmp sgt i32 %11, 0
  br i1 %cmp94, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

bnx2x_validate_vf_sp_objs.exit.thread:            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.309, i32 noundef 117, ptr noundef nonnull %spec.select.i) #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %filters, i32 0, i32 1, i32 %i.095
  %call14 = tail call fastcc i32 @bnx2x_vf_mac_vlan_config(ptr noundef %bp, ptr noundef %vf, i32 noundef %qid, ptr noundef %arrayidx, i1 noundef zeroext %drv_only)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.095, 1
  %14 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %filters, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.095, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %rc.1 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %call14, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %16 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %filters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %17)
  %cmp19.not = icmp eq i32 %i.0.lcssa, %17
  br i1 %cmp19.not, label %for.end.if.end60_crit_edge, label %do.end25

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end25:                                         ; preds = %for.end
  %dev27 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 4
  %tobool28.not = icmp eq ptr %19, null
  %spec.select93 = select i1 %tobool28.not, ptr @.str.3, ptr %19
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 456, ptr noundef nonnull %spec.select93, i32 noundef %i.0.lcssa, i32 noundef %17) #17
  %dec99 = add i32 %i.0.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec99)
  %cmp40100 = icmp sgt i32 %dec99, -1
  br i1 %cmp40100, label %do.end25.while.body_crit_edge, label %do.end25.if.end60_crit_edge

do.end25.if.end60_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end25.while.body_crit_edge:                    ; preds = %do.end25
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %do.end25.while.body_crit_edge
  %dec101 = phi i32 [ %dec, %while.cond.backedge.while.body_crit_edge ], [ %dec99, %do.end25.while.body_crit_edge ]
  %applied = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %filters, i32 0, i32 1, i32 %dec101, i32 2
  %20 = ptrtoint ptr %applied to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %applied, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  br i1 %tobool44.not, label %while.body.while.cond.backedge_crit_edge, label %if.end46

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end46:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx43 = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %filters, i32 0, i32 1, i32 %dec101
  %add = getelementptr %struct.bnx2x_vf_mac_vlan_filters, ptr %filters, i32 0, i32 1, i32 %dec101, i32 1
  %22 = ptrtoint ptr %add to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add, align 4, !range !703
  %24 = xor i8 %23, 1
  store i8 %24, ptr %add, align 4
  %call59 = tail call fastcc i32 @bnx2x_vf_mac_vlan_config(ptr noundef %bp, ptr noundef %vf, i32 noundef %qid, ptr noundef %arrayidx43, i1 noundef zeroext %drv_only)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end46, %while.body.while.cond.backedge_crit_edge
  %dec = add nsw i32 %dec101, -1
  %cmp40 = icmp sgt i32 %dec101, 0
  br i1 %cmp40, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.if.end60_crit_edge

while.cond.backedge.if.end60_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end60:                                         ; preds = %while.cond.backedge.if.end60_crit_edge, %do.end25.if.end60_crit_edge, %for.end.if.end60_crit_edge
  tail call void @kfree(ptr noundef %filters) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %bnx2x_validate_vf_sp_objs.exit.thread
  %retval.0 = phi i32 [ %rc.1, %if.end60 ], [ -22, %bnx2x_validate_vf_sp_objs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_vf_mac_vlan_config(ptr noundef %bp, ptr nocapture noundef readonly %vf, i32 noundef %qid, ptr nocapture noundef %filter, i1 noundef zeroext %drv_only) unnamed_addr #2 align 64 {
entry:
  %ramrod = alloca %struct.bnx2x_vlan_mac_ramrod_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ramrod) #14
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end, !prof !702

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %add = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 1
  %6 = ptrtoint ptr %add to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add, align 4, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %cond8 = select i1 %tobool6.not, ptr @.str.316, ptr @.str.315
  %8 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp13 = icmp eq i32 %9, 1
  %cond15 = select i1 %cmp13, ptr @.str.318, ptr @.str.319
  %cond17 = select i1 %cmp, ptr @.str.317, ptr %cond15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313, ptr noundef nonnull @.str.314, i32 noundef 389, ptr noundef nonnull %spec.select, i32 noundef %conv, ptr noundef nonnull %cond8, ptr noundef nonnull %cond17) #17
  br label %do.end19

do.end19:                                         ; preds = %do.end, %entry.do.end19_crit_edge
  %10 = call ptr @memset(ptr %ramrod, i32 0, i32 32)
  %11 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %filter, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.else40 [
    i32 3, label %if.then23
    i32 2, label %if.then32
  ]

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %14 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfqs, align 4
  %vlan_mac_obj = getelementptr %struct.bnx2x_vf_queue, ptr %15, i32 %qid, i32 3
  %16 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vlan_mac_obj, ptr %ramrod, align 4
  %vid = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 4
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid, align 4
  %u = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %u, align 4
  %mac27 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 3
  %20 = ptrtoint ptr %mac27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac27, align 4
  %22 = call ptr @memcpy(ptr %u, ptr %21, i32 6)
  %vlan_mac_flags = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 1
  call void @_set_bit(i32 noundef 1, ptr noundef %vlan_mac_flags) #14
  br label %if.end51

if.then32:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  %vfqs33 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %23 = ptrtoint ptr %vfqs33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vfqs33, align 4
  %vlan_obj = getelementptr %struct.bnx2x_vf_queue, ptr %24, i32 %qid, i32 2
  %25 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vlan_obj, ptr %ramrod, align 4
  %vid36 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 4
  %26 = ptrtoint ptr %vid36 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vid36, align 4
  %u38 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %u38 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %u38, align 4
  br label %if.end51

if.else40:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_mac_flags42 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 1
  call void @_set_bit(i32 noundef 1, ptr noundef %vlan_mac_flags42) #14
  %vfqs43 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %29 = ptrtoint ptr %vfqs43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vfqs43, align 4
  %mac_obj = getelementptr %struct.bnx2x_vf_queue, ptr %30, i32 %qid, i32 1
  %31 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mac_obj, ptr %ramrod, align 4
  %u47 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 3
  %mac49 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 3
  %32 = ptrtoint ptr %mac49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac49, align 4
  %34 = call ptr @memcpy(ptr %u47, ptr %33, i32 6)
  br label %if.end51

if.end51:                                         ; preds = %if.else40, %if.then32, %if.then23
  %add52 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 1
  %35 = ptrtoint ptr %add52 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add52, align 4, !range !703
  %37 = xor i8 %36, 1
  %38 = zext i8 %37 to i32
  %user_req56 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2
  %39 = ptrtoint ptr %user_req56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %user_req56, align 4
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 1
  call void @_set_bit(i32 noundef 5, ptr noundef %ramrod_flags) #14
  %. = select i1 %drv_only, i32 3, i32 2
  call void @_set_bit(i32 noundef %., ptr noundef %ramrod_flags) #14
  %call63 = call i32 @bnx2x_config_vlan_mac(ptr noundef %bp, ptr noundef nonnull %ramrod) #14
  %40 = zext i32 %call63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.415)
  switch i32 %call63, label %do.end73 [
    i32 -17, label %if.end51.cleanup_crit_edge
    i32 0, label %if.end102
  ]

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end73:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %dev75 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %41 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev75, align 4
  %tobool76.not = icmp eq ptr %42, null
  %spec.select133 = select i1 %tobool76.not, ptr @.str.3, ptr %42
  %43 = ptrtoint ptr %add52 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add52, align 4, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool85.not = icmp eq i8 %44, 0
  %cond87 = select i1 %tobool85.not, ptr @.str.324, ptr @.str.323
  %45 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp89 = icmp eq i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp94 = icmp eq i32 %46, 1
  %cond96 = select i1 %cmp94, ptr @.str.318, ptr @.str.319
  %cond98 = select i1 %cmp89, ptr @.str.317, ptr %cond96
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.314, i32 noundef 425, ptr noundef nonnull %spec.select133, ptr noundef nonnull %cond87, ptr noundef nonnull %cond98) #17
  br label %cleanup

if.end102:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %applied = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filter, ptr %filter, i32 0, i32 2
  %47 = ptrtoint ptr %applied to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %applied, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end73, %if.end51.cleanup_crit_edge
  %retval.0 = phi i32 [ %call63, %do.end73 ], [ 0, %if.end102 ], [ 0, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ramrod) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_queue_setup(ptr noundef %bp, ptr nocapture noundef readonly %vf, i32 noundef %qid, ptr noundef %qctor) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 478, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %qid) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end7.do.end7.i_crit_edge, label %do.end.i, !prof !702

do.end7.do.end7.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

do.end.i:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %9
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %10 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %abs_vfid.i, align 1
  %conv.i = zext i8 %11 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.325, i32 noundef 241, ptr noundef nonnull %spec.select.i, i32 noundef %conv.i, i32 noundef %qid) #17
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.end7.do.end7.i_crit_edge
  %vfqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %12 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vfqs.i, align 4
  %sp_obj.i = getelementptr %struct.bnx2x_vf_queue, ptr %13, i32 %qid, i32 5
  %14 = ptrtoint ptr %qctor to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sp_obj.i, ptr %qctor, align 4
  %ramrod_flags.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %ramrod_flags.i) #14
  %15 = ptrtoint ptr %qctor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qctor, align 4
  %call9.i = tail call i32 @bnx2x_get_q_logical_state(ptr noundef %bp, ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp eq i32 %call9.i, 0
  br i1 %cmp.i, label %do.body12.i, label %if.end40.i

do.body12.i:                                      ; preds = %do.end7.i
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and14.i = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body12.i.if.end11_crit_edge, label %do.end25.i, !prof !702

do.body12.i.if.end11_crit_edge:                   ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.end25.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev27.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %19 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev27.i, align 4
  %tobool28.not.i = icmp eq ptr %20, null
  %spec.select79.i = select i1 %tobool28.not.i, ptr @.str.3, ptr %20
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.327, ptr noundef nonnull @.str.325, i32 noundef 250, ptr noundef nonnull %spec.select79.i) #17
  br label %if.end11

if.end40.i:                                       ; preds = %do.end7.i
  %cmd.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor, i32 0, i32 1
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cmd.i, align 4
  %call41.i = tail call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef %qctor) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.do.end15_crit_edge

if.end40.i.do.end15_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

if.end44.i:                                       ; preds = %if.end40.i
  %params.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qctor, i32 0, i32 3
  %prep_qsetup.i = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, ptr %qctor, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %params.i, ptr %prep_qsetup.i, i32 80)
  %23 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %cmd.i, align 4
  %call46.i = tail call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef %qctor) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end44.i.do.end15_crit_edge

if.end44.i.do.end15_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

if.end49.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vfqs.i, align 4
  %sb_idx.i = getelementptr %struct.bnx2x_vf_queue, ptr %25, i32 %qid, i32 8
  %26 = ptrtoint ptr %sb_idx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sb_idx.i, align 2
  %igu_base_id.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  %28 = ptrtoint ptr %igu_base_id.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %igu_base_id.i.i, align 1
  %conv1.i.i = trunc i16 %27 to i8
  %add.i.i = add i8 %29, %conv1.i.i
  tail call fastcc void @bnx2x_vf_igu_ack_sb(ptr noundef %bp, ptr noundef %vf, i8 noundef zeroext %add.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %if.end11

if.end11:                                         ; preds = %if.end49.i, %do.end25.i, %do.body12.i.if.end11_crit_edge
  tail call void @bnx2x_schedule_sp_rtnl(ptr noundef %bp, i32 noundef 8, i32 noundef 8388608) #14
  br label %cleanup

do.end15:                                         ; preds = %if.end44.i.do.end15_crit_edge, %if.end40.i.do.end15_crit_edge
  %rc.0.i = phi i32 [ %call41.i, %if.end40.i.do.end15_crit_edge ], [ %call46.i, %if.end44.i.do.end15_crit_edge ]
  %dev17 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %30 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev17, align 4
  %tobool18.not = icmp eq ptr %31, null
  %spec.select44 = select i1 %tobool18.not, ptr @.str.3, ptr %31
  %abs_vfid26 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %32 = ptrtoint ptr %abs_vfid26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %abs_vfid26, align 1
  %conv27 = zext i8 %33 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 489, ptr noundef nonnull %spec.select44, i32 noundef %conv27, i32 noundef %qid, i32 noundef %rc.0.i) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end11
  %retval.0 = phi i32 [ %rc.0.i, %do.end15 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_schedule_sp_rtnl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_mcast(ptr noundef %bp, ptr noundef %vf, ptr noundef %mcasts, i32 noundef %mc_num, i1 noundef zeroext %drv_only) local_unnamed_addr #2 align 64 {
entry:
  %mcast = alloca %struct.bnx2x_mcast_ramrod_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mcast) #14
  %0 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, ptr %mcast, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, ptr %mcast, i32 0, i32 2
  %2 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, ptr %mcast, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, ptr %mcast, i32 0, i32 3
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %7
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %8 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef 544, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %10 = getelementptr inbounds i8, ptr %mcast, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  %mcast_obj = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 23
  %12 = ptrtoint ptr %mcast to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mcast_obj, ptr %mcast, align 4
  %. = select i1 %drv_only, i32 3, i32 2
  call void @_set_bit(i32 noundef %., ptr noundef %0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mc_num)
  %tobool13.not = icmp eq i32 %mc_num, 0
  br i1 %tobool13.not, label %if.else65, label %if.then14

if.then14:                                        ; preds = %do.end7
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mc_num, i32 12) #14
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.then14.do.end21_crit_edge, label %if.end7.i.i, !prof !704

if.then14.do.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.end7.i.i:                                      ; preds = %if.then14
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #18
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.do.end21_crit_edge, label %for.body.preheader

if.end7.i.i.do.end21_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

do.end21:                                         ; preds = %if.end7.i.i.do.end21_crit_edge, %if.then14.do.end21_crit_edge
  %dev23 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23, align 4
  %tobool24.not = icmp eq ptr %17, null
  %spec.select118 = select i1 %tobool24.not, ptr @.str.3, ptr %17
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 557, ptr noundef nonnull %spec.select118) #17
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7.i.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %1, ptr %1, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %2, align 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.preheader
  %i.0132 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [6 x i8], ptr %mcasts, i32 %i.0132
  %arrayidx41 = getelementptr %struct.bnx2x_mcast_list_elem, ptr %call8.i.i, i32 %i.0132
  %mac = getelementptr %struct.bnx2x_mcast_list_elem, ptr %call8.i.i, i32 %i.0132, i32 1
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %mac, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx41, ptr noundef %22, ptr noundef %1) #14
  br i1 %call.i.i, label %if.end.i.i122, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i122:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx41, ptr %2, align 4
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %arrayidx41, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx41, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx41, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i122, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %mc_num
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mc_num, ptr %3, align 4
  %call44 = call i32 @bnx2x_config_mcast(ptr noundef %bp, ptr noundef nonnull %mcast, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.end.if.end87_crit_edge, label %do.end50

for.end.if.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev52 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev52, align 4
  %tobool53.not = icmp eq ptr %29, null
  %spec.select119 = select i1 %tobool53.not, ptr @.str.3, ptr %29
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef 574, ptr noundef nonnull %spec.select119) #17
  br label %if.end87

if.else65:                                        ; preds = %do.end7
  %call66 = call i32 @bnx2x_config_mcast(ptr noundef %bp, ptr noundef nonnull %mcast, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else65.if.end87_crit_edge, label %do.end72

if.else65.if.end87_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

do.end72:                                         ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #16
  %dev74 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %30 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev74, align 4
  %tobool75.not = icmp eq ptr %31, null
  %spec.select120 = select i1 %tobool75.not, ptr @.str.3, ptr %31
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef 579, ptr noundef nonnull %spec.select120) #17
  br label %if.end87

if.end87:                                         ; preds = %do.end72, %if.else65.if.end87_crit_edge, %do.end50, %for.end.if.end87_crit_edge
  %mc.0130 = phi ptr [ %call8.i.i, %do.end50 ], [ %call8.i.i, %for.end.if.end87_crit_edge ], [ null, %do.end72 ], [ null, %if.else65.if.end87_crit_edge ]
  %rc.0 = phi i32 [ %call44, %do.end50 ], [ 0, %for.end.if.end87_crit_edge ], [ %call66, %do.end72 ], [ 0, %if.else65.if.end87_crit_edge ]
  call void @kfree(ptr noundef %mc.0130) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end21
  %retval.0 = phi i32 [ %rc.0, %if.end87 ], [ -12, %do.end21 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mcast) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_config_mcast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_rxmode(ptr noundef %bp, ptr noundef %vf, i32 noundef %qid, i32 noundef %accept_flags) local_unnamed_addr #2 align 64 {
entry:
  %ramrod = alloca %struct.bnx2x_rx_mode_ramrod_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ramrod) #14
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.26, i32 noundef 617, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %vfqs.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %6 = ptrtoint ptr %vfqs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfqs.i.i, align 4
  %idxprom.i.i = and i32 %qid, 255
  %8 = getelementptr inbounds i8, ptr %ramrod, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 28)
  %cid.i = getelementptr %struct.bnx2x_vf_queue, ptr %7, i32 %idxprom.i.i, i32 6
  %10 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cid.i, align 4
  %cid1.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 4
  %12 = ptrtoint ptr %cid1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cid1.i, align 4
  %igu_base_id.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  %13 = ptrtoint ptr %igu_base_id.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %igu_base_id.i.i, align 1
  %index.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %7, i32 %idxprom.i.i, i32 7
  %15 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %index.i.i, align 4
  %conv1.i.i = trunc i16 %16 to i8
  %add.i.i = add i8 %14, %conv1.i.i
  %cl_id.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 3
  %17 = ptrtoint ptr %cl_id.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add.i.i, ptr %cl_id.i, align 4
  %rx_mode_obj.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 180
  %18 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_mode_obj.i, ptr %ramrod, align 4
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %19 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %abs_vfid.i, align 1
  %add.i = add i8 %20, 8
  %func_id.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 5
  %21 = ptrtoint ptr %func_id.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %add.i, ptr %func_id.i, align 4
  %rx_accept_flags.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 10
  %22 = ptrtoint ptr %rx_accept_flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %accept_flags, ptr %rx_accept_flags.i, align 4
  %tx_accept_flags.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 11
  %23 = ptrtoint ptr %tx_accept_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %accept_flags, ptr %tx_accept_flags.i, align 4
  %filter_state.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 21
  %pstate.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 1
  %24 = ptrtoint ptr %pstate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %filter_state.i, ptr %pstate.i, align 4
  %state.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 2
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %state.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %filter_state.i) #14
  %ramrod_flags.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %ramrod_flags.i) #14
  call void @_set_bit(i32 noundef 0, ptr noundef %ramrod_flags.i) #14
  %vfdb.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %26 = ptrtoint ptr %vfdb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vfdb.i, align 8
  %sp_dma.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %sp_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sp_dma.i, align 4
  %index.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 13
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index.i, align 8
  %conv7.i = zext i8 %31 to i32
  %mul.i = mul nuw nsw i32 %conv7.i, 1624
  %add.ptr.i = getelementptr i8, ptr %29, i32 %mul.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 792
  %rdata.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 8
  %32 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr8.i, ptr %rdata.i, align 4
  %mapping.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %27, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mapping.i, align 4
  %add14.i = add i32 %34, 792
  %add15.i = add i32 %add14.i, %mul.i
  %rdata_mapping.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %ramrod, i32 0, i32 9
  %35 = ptrtoint ptr %rdata_mapping.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add15.i, ptr %rdata_mapping.i, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %ramrod_flags.i) #14
  %36 = ptrtoint ptr %rx_accept_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_accept_flags.i, align 4
  %38 = ptrtoint ptr %vfqs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vfqs.i.i, align 4
  %accept_flags11 = getelementptr %struct.bnx2x_vf_queue, ptr %39, i32 %idxprom.i.i, i32 4
  %40 = ptrtoint ptr %accept_flags11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %accept_flags11, align 4
  %call12 = call i32 @bnx2x_config_rx_mode(ptr noundef %bp, ptr noundef nonnull %ramrod) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ramrod) #14
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_config_rx_mode(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_queue_teardown(ptr noundef %bp, ptr noundef %vf, i32 noundef %qid) local_unnamed_addr #2 align 64 {
entry:
  %q_params.i = alloca %struct.bnx2x_queue_state_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.27, i32 noundef 629, ptr noundef nonnull %spec.select, i32 noundef %conv, i32 noundef %qid) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid)
  %cmp = icmp eq i32 %qid, 0
  br i1 %cmp, label %if.then9, label %do.end7.if.end33_crit_edge

do.end7.if.end33_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then9:                                         ; preds = %do.end7
  %call10 = tail call i32 @bnx2x_vf_rxmode(ptr noundef %bp, ptr noundef %vf, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.do.end41_crit_edge

if.then9.do.end41_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

if.end13:                                         ; preds = %if.then9
  %vfqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %6 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfqs.i, align 4
  %sp_initialized.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sp_initialized.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %bnx2x_validate_vf_sp_objs.exit, label %if.then15

bnx2x_validate_vf_sp_objs.exit:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.309, i32 noundef 117, ptr noundef nonnull %spec.select.i) #17
  br label %if.end33

if.then15:                                        ; preds = %if.end13
  %call16 = tail call fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr noundef %vf, i1 noundef zeroext false, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.do.end41_crit_edge

if.then15.do.end41_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

if.end19:                                         ; preds = %if.then15
  %call20 = tail call fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr noundef %vf, i1 noundef zeroext false, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.do.end41_crit_edge

if.end19.do.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

if.end23:                                         ; preds = %if.end19
  %call24 = tail call fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr noundef %vf, i1 noundef zeroext false, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.do.end41_crit_edge

if.end23.do.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @bnx2x_vf_mcast(ptr noundef %bp, ptr noundef %vf, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end33_crit_edge, label %if.end27.do.end41_crit_edge

if.end27.do.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end33:                                         ; preds = %if.end27.if.end33_crit_edge, %bnx2x_validate_vf_sp_objs.exit, %do.end7.if.end33_crit_edge
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %q_params.i) #14
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i93 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i93, label %if.end33.do.end7.i_crit_edge, label %do.end.i, !prof !702

if.end33.do.end7.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i94 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %14 = ptrtoint ptr %dev.i94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i94, align 4
  %tobool4.not.i95 = icmp eq ptr %15, null
  %spec.select.i96 = select i1 %tobool4.not.i95, ptr @.str.3, ptr %15
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %16 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %abs_vfid.i, align 1
  %conv.i = zext i8 %17 to i32
  %call.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.341, i32 noundef 283, ptr noundef nonnull %spec.select.i96, i32 noundef %conv.i) #17
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %if.end33.do.end7.i_crit_edge
  %18 = getelementptr inbounds i8, ptr %q_params.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 88)
  %vfqs.i98 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %20 = ptrtoint ptr %vfqs.i98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfqs.i98, align 4
  %sp_obj.i = getelementptr %struct.bnx2x_vf_queue, ptr %21, i32 %qid, i32 5
  %22 = ptrtoint ptr %q_params.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sp_obj.i, ptr %q_params.i, align 4
  %ramrod_flags.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params.i, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %ramrod_flags.i) #14
  %23 = ptrtoint ptr %q_params.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %q_params.i, align 4
  %call9.i = call i32 @bnx2x_get_q_logical_state(ptr noundef %bp, ptr noundef %24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp.i = icmp eq i32 %call9.i, 1
  br i1 %cmp.i, label %do.body12.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end7.i
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %18, align 4
  %call44.i = call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef nonnull %q_params.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %for.cond.i, label %for.cond.preheader.i.bnx2x_vf_queue_destroy.exit_crit_edge

for.cond.preheader.i.bnx2x_vf_queue_destroy.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_queue_destroy.exit

do.body12.i:                                      ; preds = %do.end7.i
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 8
  %and14.i = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body12.i.out.i_crit_edge, label %do.end25.i, !prof !702

do.body12.i.out.i_crit_edge:                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

do.end25.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev27.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev27.i, align 4
  %tobool28.not.i = icmp eq ptr %29, null
  %spec.select103.i = select i1 %tobool28.not.i, ptr @.str.3, ptr %29
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.341, i32 noundef 292, ptr noundef nonnull %spec.select103.i) #17
  br label %out.i

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %18, align 4
  %call44.1.i = call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef nonnull %q_params.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.1.i)
  %tobool45.not.1.i = icmp eq i32 %call44.1.i, 0
  br i1 %tobool45.not.1.i, label %for.cond.1.i, label %for.cond.i.bnx2x_vf_queue_destroy.exit_crit_edge

for.cond.i.bnx2x_vf_queue_destroy.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_queue_destroy.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %18, align 4
  %call44.2.i = call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef nonnull %q_params.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.2.i)
  %tobool45.not.2.i = icmp eq i32 %call44.2.i, 0
  br i1 %tobool45.not.2.i, label %for.cond.1.i.out.i_crit_edge, label %for.cond.1.i.bnx2x_vf_queue_destroy.exit_crit_edge

for.cond.1.i.bnx2x_vf_queue_destroy.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_queue_destroy.exit

for.cond.1.i.out.i_crit_edge:                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

out.i:                                            ; preds = %for.cond.1.i.out.i_crit_edge, %do.end25.i, %do.body12.i.out.i_crit_edge
  %32 = ptrtoint ptr %vfqs.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vfqs.i98, align 4
  %arrayidx67.i = getelementptr %struct.bnx2x_vf_queue, ptr %33, i32 %qid
  %34 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx67.i, align 4
  %tobool68.not.i = icmp eq ptr %35, null
  br i1 %tobool68.not.i, label %out.i.bnx2x_vf_queue_destroy.exit.thread_crit_edge, label %if.then69.i

out.i.bnx2x_vf_queue_destroy.exit.thread_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_queue_destroy.exit.thread

if.then69.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  %cdu_usage.i = getelementptr inbounds %struct.eth_context, ptr %35, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %cdu_usage.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %cdu_usage.i, align 4
  %37 = ptrtoint ptr %vfqs.i98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vfqs.i98, align 4
  %arrayidx74.i = getelementptr %struct.bnx2x_vf_queue, ptr %38, i32 %qid
  %39 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx74.i, align 4
  %cdu_reserved.i = getelementptr inbounds %struct.eth_context, ptr %40, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %cdu_reserved.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %cdu_reserved.i, align 4
  br label %bnx2x_vf_queue_destroy.exit.thread

bnx2x_vf_queue_destroy.exit.thread:               ; preds = %if.then69.i, %out.i.bnx2x_vf_queue_destroy.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params.i) #14
  br label %cleanup

bnx2x_vf_queue_destroy.exit:                      ; preds = %for.cond.1.i.bnx2x_vf_queue_destroy.exit_crit_edge, %for.cond.i.bnx2x_vf_queue_destroy.exit_crit_edge, %for.cond.preheader.i.bnx2x_vf_queue_destroy.exit_crit_edge
  %.lcssa.i = phi i32 [ 7, %for.cond.preheader.i.bnx2x_vf_queue_destroy.exit_crit_edge ], [ 9, %for.cond.i.bnx2x_vf_queue_destroy.exit_crit_edge ], [ 8, %for.cond.1.i.bnx2x_vf_queue_destroy.exit_crit_edge ]
  %call44.lcssa.i = phi i32 [ %call44.i, %for.cond.preheader.i.bnx2x_vf_queue_destroy.exit_crit_edge ], [ %call44.1.i, %for.cond.i.bnx2x_vf_queue_destroy.exit_crit_edge ], [ %call44.2.i, %for.cond.1.i.bnx2x_vf_queue_destroy.exit_crit_edge ]
  %dev52.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %42 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev52.i, align 4
  %tobool53.not.i = icmp eq ptr %43, null
  %spec.select104.i = select i1 %tobool53.not.i, ptr @.str.3, ptr %43
  %call62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.341, i32 noundef 301, ptr noundef nonnull %spec.select104.i, i32 noundef %.lcssa.i) #17
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params.i) #14
  br label %do.end41

do.end41:                                         ; preds = %bnx2x_vf_queue_destroy.exit, %if.end27.do.end41_crit_edge, %if.end23.do.end41_crit_edge, %if.end19.do.end41_crit_edge, %if.then15.do.end41_crit_edge, %if.then9.do.end41_crit_edge
  %rc.0 = phi i32 [ %call10, %if.then9.do.end41_crit_edge ], [ %call16, %if.then15.do.end41_crit_edge ], [ %call20, %if.end19.do.end41_crit_edge ], [ %call24, %if.end23.do.end41_crit_edge ], [ %call28, %if.end27.do.end41_crit_edge ], [ %call44.lcssa.i, %bnx2x_vf_queue_destroy.exit ]
  %dev43 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %44 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev43, align 4
  %tobool44.not = icmp eq ptr %45, null
  %spec.select92 = select i1 %tobool44.not, ptr @.str.3, ptr %45
  %abs_vfid52 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %46 = ptrtoint ptr %abs_vfid52 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %abs_vfid52, align 1
  %conv53 = zext i8 %47 to i32
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef 667, ptr noundef nonnull %spec.select92, i32 noundef %conv53, i32 noundef %qid, i32 noundef %rc.0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %bnx2x_vf_queue_destroy.exit.thread
  %retval.0 = phi i32 [ %rc.0, %do.end41 ], [ 0, %bnx2x_vf_queue_destroy.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr nocapture noundef readonly %vf, i1 noundef zeroext %drv_only, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %ramrod = alloca %struct.bnx2x_vlan_mac_ramrod_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ramrod) #14
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.end, !prof !702

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp = icmp eq i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp9 = icmp eq i32 %type, 1
  %cond11 = select i1 %cmp9, ptr @.str.336, ptr @.str.337
  %cond13 = select i1 %cmp, ptr @.str.335, ptr %cond11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.334, i32 noundef 342, ptr noundef nonnull %spec.select, i32 noundef %conv, ptr noundef nonnull %cond13) #17
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  %6 = call ptr @memset(ptr %ramrod, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp16 = icmp eq i32 %type, 3
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_mac_flags = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 1
  call void @_set_bit(i32 noundef 1, ptr noundef %vlan_mac_flags) #14
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %7 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfqs, align 4
  %vlan_mac_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vlan_mac_obj, ptr %ramrod, align 4
  br label %if.end33

if.else:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp20 = icmp eq i32 %type, 1
  br i1 %cmp20, label %if.then22, label %if.else28

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_mac_flags24 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 1
  call void @_set_bit(i32 noundef 1, ptr noundef %vlan_mac_flags24) #14
  %vfqs25 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %10 = ptrtoint ptr %vfqs25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfqs25, align 4
  %mac_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mac_obj, ptr %ramrod, align 4
  br label %if.end33

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %vfqs29 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %13 = ptrtoint ptr %vfqs29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vfqs29, align 4
  %vlan_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ramrod to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vlan_obj, ptr %ramrod, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else28, %if.then22, %if.then18
  %user_req34 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2
  %16 = ptrtoint ptr %user_req34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %user_req34, align 4
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 1
  call void @_set_bit(i32 noundef 5, ptr noundef %ramrod_flags) #14
  %. = select i1 %drv_only, i32 3, i32 2
  call void @_set_bit(i32 noundef %., ptr noundef %ramrod_flags) #14
  %17 = ptrtoint ptr %ramrod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ramrod, align 4
  %delete_all = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %delete_all to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %delete_all, align 4
  %vlan_mac_flags44 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod, i32 0, i32 2, i32 1
  %call46 = call i32 %20(ptr noundef %bp, ptr noundef %18, ptr noundef %vlan_mac_flags44, ptr noundef %ramrod_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end33.cleanup_crit_edge, label %do.end52

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end52:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %dev54 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %21 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev54, align 4
  %tobool55.not = icmp eq ptr %22, null
  %spec.select1 = select i1 %tobool55.not, ptr @.str.3, ptr %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp67 = icmp eq i32 %type, 1
  %cond69 = select i1 %cmp67, ptr @.str.336, ptr @.str.337
  %cond71 = select i1 %cmp16, ptr @.str.335, ptr %cond69
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.334, i32 noundef 371, ptr noundef nonnull %spec.select1, ptr noundef nonnull %cond71) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end33.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ramrod) #14
  ret i32 %call46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_enable_access(ptr noundef %bp, i8 noundef zeroext %abs_vfid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %abs_vfid to i32
  %0 = zext i8 %abs_vfid to i16
  %conv1 = add nuw nsw i16 %0, 8
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %1 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pfid, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !705
  tail call void @arm_heavy_mb() #14
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %3 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regview.i, align 8
  %iro_arr.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 21
  %5 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx.i = getelementptr %struct.iro, ptr %6, i32 48
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %conv1.i = zext i16 %conv1 to i32
  %m1.i = getelementptr %struct.iro, ptr %6, i32 48, i32 1
  %9 = ptrtoint ptr %m1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %m1.i, align 4
  %conv4.i = zext i16 %10 to i32
  %mul.i = mul nuw nsw i32 %conv4.i, %conv1.i
  %add.i = add i32 %8, 4325376
  %add5.i = add i32 %add.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add5.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %2) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !707
  tail call void @arm_heavy_mb() #14
  %11 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regview.i, align 8
  %13 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx11.i = getelementptr %struct.iro, ptr %14, i32 154
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11.i, align 4
  %m116.i = getelementptr %struct.iro, ptr %14, i32 154, i32 1
  %17 = ptrtoint ptr %m116.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %m116.i, align 4
  %conv17.i = zext i16 %18 to i32
  %mul18.i = mul nuw nsw i32 %conv17.i, %conv1.i
  %add19.i = add i32 %16, 4259840
  %add20.i = add i32 %add19.i, %mul18.i
  %add.ptr21.i = getelementptr i8, ptr %12, i32 %add20.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 %2) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !708
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regview.i, align 8
  %21 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx27.i = getelementptr %struct.iro, ptr %22, i32 108
  %23 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx27.i, align 4
  %m132.i = getelementptr %struct.iro, ptr %22, i32 108, i32 1
  %25 = ptrtoint ptr %m132.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %m132.i, align 4
  %conv33.i = zext i16 %26 to i32
  %mul34.i = mul nuw nsw i32 %conv33.i, %conv1.i
  %add35.i = add i32 %24, 4390912
  %add36.i = add i32 %add35.i, %mul34.i
  %add.ptr37.i = getelementptr i8, ptr %20, i32 %add36.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37.i, i8 %2) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !709
  tail call void @arm_heavy_mb() #14
  %27 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regview.i, align 8
  %29 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx43.i = getelementptr %struct.iro, ptr %30, i32 183
  %31 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx43.i, align 4
  %m148.i = getelementptr %struct.iro, ptr %30, i32 183, i32 1
  %33 = ptrtoint ptr %m148.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %m148.i, align 4
  %conv49.i = zext i16 %34 to i32
  %mul50.i = mul nuw nsw i32 %conv49.i, %conv1.i
  %add51.i = add i32 %32, 4194304
  %add52.i = add i32 %add51.i, %mul50.i
  %add.ptr53.i = getelementptr i8, ptr %28, i32 %add52.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53.i, i8 %2) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !710
  tail call void @arm_heavy_mb() #14
  %35 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regview.i, align 8
  %37 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx.i57 = getelementptr %struct.iro, ptr %38, i32 47
  %39 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i57, align 4
  %m1.i58 = getelementptr %struct.iro, ptr %38, i32 47, i32 1
  %41 = ptrtoint ptr %m1.i58 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %m1.i58, align 4
  %conv3.i = zext i16 %42 to i32
  %mul.i59 = mul nuw nsw i32 %conv3.i, %conv1.i
  %add.i60 = add i32 %40, 4325376
  %add4.i = add i32 %add.i60, %mul.i59
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 %add4.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i61, i8 1) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !711
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regview.i, align 8
  %45 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx9.i = getelementptr %struct.iro, ptr %46, i32 153
  %47 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx9.i, align 4
  %m114.i = getelementptr %struct.iro, ptr %46, i32 153, i32 1
  %49 = ptrtoint ptr %m114.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %m114.i, align 4
  %conv15.i = zext i16 %50 to i32
  %mul16.i = mul nuw nsw i32 %conv15.i, %conv1.i
  %add17.i = add i32 %48, 4259840
  %add18.i = add i32 %add17.i, %mul16.i
  %add.ptr19.i = getelementptr i8, ptr %44, i32 %add18.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 1) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !712
  tail call void @arm_heavy_mb() #14
  %51 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regview.i, align 8
  %53 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx24.i = getelementptr %struct.iro, ptr %54, i32 107
  %55 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx24.i, align 4
  %m129.i = getelementptr %struct.iro, ptr %54, i32 107, i32 1
  %57 = ptrtoint ptr %m129.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %m129.i, align 4
  %conv30.i = zext i16 %58 to i32
  %mul31.i = mul nuw nsw i32 %conv30.i, %conv1.i
  %add32.i = add i32 %56, 4390912
  %add33.i = add i32 %add32.i, %mul31.i
  %add.ptr34.i = getelementptr i8, ptr %52, i32 %add33.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i, i8 1) #14, !srcloc !706
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !713
  tail call void @arm_heavy_mb() #14
  %59 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regview.i, align 8
  %61 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx39.i = getelementptr %struct.iro, ptr %62, i32 182
  %63 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx39.i, align 4
  %m144.i = getelementptr %struct.iro, ptr %62, i32 182, i32 1
  %65 = ptrtoint ptr %m144.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %m144.i, align 4
  %conv45.i = zext i16 %66 to i32
  %mul46.i = mul nuw nsw i32 %conv45.i, %conv1.i
  %add47.i = add i32 %64, 4194304
  %add48.i = add i32 %add47.i, %mul46.i
  %add.ptr49.i = getelementptr i8, ptr %60, i32 %add48.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49.i, i8 1) #14, !srcloc !706
  %fw_cap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 216
  %67 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_cap, align 8
  %and = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !714
  tail call void @arm_heavy_mb() #14
  %69 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regview.i, align 8
  %71 = ptrtoint ptr %iro_arr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iro_arr.i, align 4
  %arrayidx = getelementptr %struct.iro, ptr %72, i32 386
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %m1 = getelementptr %struct.iro, ptr %72, i32 386, i32 1
  %75 = ptrtoint ptr %m1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %m1, align 4
  %conv6 = zext i16 %76 to i32
  %mul = mul nuw nsw i32 %conv6, %conv1.i
  %add7 = add i32 %74, 4325376
  %add8 = add i32 %add7, %mul
  %add.ptr = getelementptr i8, ptr %70, i32 %add8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #14, !srcloc !706
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !715
  tail call void @arm_heavy_mb() #14
  %77 = shl nuw i32 %conv, 24
  %78 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regview.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %79, i32 1573760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %77) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !717
  tail call void @arm_heavy_mb() #14
  %80 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regview.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %81, i32 3146624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %77) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !718
  tail call void @arm_heavy_mb() #14
  %82 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regview.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %83, i32 2098048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %77) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !719
  tail call void @arm_heavy_mb() #14
  %84 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regview.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %85, i32 2622336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %77) #14, !srcloc !716
  %common.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %86 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %common.i, align 8
  %shr.i = lshr i32 %87, 16
  %shr.off.i = add nsw i32 %shr.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off.i)
  %switch.i = icmp ult i32 %shr.off.i, 3
  br i1 %switch.i, label %if.end.cond.end.i_crit_edge, label %cond.false.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pf_num.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %88 = ptrtoint ptr %pf_num.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pf_num.i, align 2
  %90 = shl i8 %89, 1
  %91 = and i8 %90, 2
  %phi.bo.i = zext i8 %91 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.false.i ], [ 0, %if.end.cond.end.i_crit_edge ]
  %add.i65 = add nuw nsw i32 %cond.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i65)
  %92 = icmp ult i32 %add.i65, 128
  br i1 %92, label %switch.lookup, label %cond.end.i.bnx2x_vf_pglue_clear_err.exit_crit_edge

cond.end.i.bnx2x_vf_pglue_clear_err.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_pglue_clear_err.exit

switch.lookup:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %93 = lshr i32 %add.i65, 5
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.bnx2x_vf_enable_access, i32 0, i32 %93
  %94 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %94)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bnx2x_vf_pglue_clear_err.exit

bnx2x_vf_pglue_clear_err.exit:                    ; preds = %switch.lookup, %cond.end.i.bnx2x_vf_pglue_clear_err.exit_crit_edge
  %was_err_reg.0.i = phi i32 [ 0, %cond.end.i.bnx2x_vf_pglue_clear_err.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !720
  tail call void @arm_heavy_mb() #14
  %and16.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %and16.i
  %95 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #14
  %96 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regview.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %97, i32 %was_err_reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %95) #14, !srcloc !716
  %pf_num = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %98 = ptrtoint ptr %pf_num to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %pf_num, align 2
  %100 = or i8 %99, 8
  %or = zext i8 %100 to i16
  %shl = shl nuw nsw i16 %0, 4
  %or12 = or i16 %shl, %or
  %call = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %or12) #14
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %101 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %msg_enable, align 8
  %and15 = and i32 %102, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %bnx2x_vf_pglue_clear_err.exit.do.end29_crit_edge, label %do.end22, !prof !702

bnx2x_vf_pglue_clear_err.exit.do.end29_crit_edge: ; preds = %bnx2x_vf_pglue_clear_err.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

do.end22:                                         ; preds = %bnx2x_vf_pglue_clear_err.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %tobool23.not = icmp eq ptr %104, null
  %spec.select = select i1 %tobool23.not, ptr @.str.3, ptr %104
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 780, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end29

do.end29:                                         ; preds = %do.end22, %bnx2x_vf_pglue_clear_err.exit.do.end29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !721
  tail call void @arm_heavy_mb() #14
  %105 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regview.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %106, i32 37944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 16777216) #14, !srcloc !716
  %107 = ptrtoint ptr %pf_num to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pf_num, align 2
  %conv31 = zext i8 %108 to i16
  %call32 = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv31) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_pretend_func(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_flr_clnup_epilog(ptr nocapture noundef readonly %bp, i8 noundef zeroext %abs_vfid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb.i.i.i, align 8
  %nr_virtfn.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %nr_virtfn.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_virtfn.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp12.not.i.i.i = icmp eq i16 %3, 0
  br i1 %cmp12.not.i.i.i, label %entry.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

entry.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %idx.013.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %abs_vfid3.i.i.i = getelementptr %struct.bnx2x_virtf, ptr %5, i32 %idx.013.i.i.i, i32 14
  %6 = ptrtoint ptr %abs_vfid3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %abs_vfid3.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %abs_vfid)
  %cmp6.i.i.i = icmp eq i8 %7, %abs_vfid
  br i1 %cmp6.i.i.i, label %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %idx.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

bnx2x_vf_idx_by_abs_fid.exit.i.i:                 ; preds = %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, %entry.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ 0, %entry.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ], [ %conv.i.i.i, %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ], [ %idx.013.i.i.i, %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ]
  %conv1.i.i = and i32 %idx.0.lcssa.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv.i.i.i)
  %cmp.i.i = icmp uge i32 %conv1.i.i, %conv.i.i.i
  %tobool.not.i.i = icmp eq ptr %1, null
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %bnx2x_vf_idx_by_abs_fid.exit.i.i.if.end_crit_edge, label %land.lhs.true.i.i

bnx2x_vf_idx_by_abs_fid.exit.i.i.if.end_crit_edge: ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.i:                                ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %tobool6.not.i.i = icmp eq ptr %9, null
  %arrayidx.i.i = getelementptr %struct.bnx2x_virtf, ptr %9, i32 %conv1.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = select i1 %tobool6.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %if.end.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.i
  %domain.i = getelementptr %struct.bnx2x_virtf, ptr %9, i32 %conv1.i.i, i32 17
  %10 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain.i, align 8
  %bus.i = getelementptr %struct.bnx2x_virtf, ptr %9, i32 %conv1.i.i, i32 18
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus.i, align 4
  %devfn.i = getelementptr %struct.bnx2x_virtf, ptr %9, i32 %conv1.i.i, i32 19
  %14 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devfn.i, align 8
  %call1.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %11, i32 noundef %13, i32 noundef %15) #14
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %bnx2x_vf_is_pcie_pending.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

bnx2x_vf_is_pcie_pending.exit:                    ; preds = %if.end.i
  %call4.i = tail call zeroext i8 @bnx2x_is_pcie_pending(ptr noundef nonnull %call1.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool.not = icmp eq i8 %call4.i, 0
  br i1 %tobool.not, label %bnx2x_vf_is_pcie_pending.exit.if.end_crit_edge, label %do.end

bnx2x_vf_is_pcie_pending.exit.if.end_crit_edge:   ; preds = %bnx2x_vf_is_pcie_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %bnx2x_vf_is_pcie_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool2.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 814, ptr noundef nonnull %spec.select) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %bnx2x_vf_is_pcie_pending.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %bnx2x_vf_idx_by_abs_fid.exit.i.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_handle_flr_event(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  %qstate.i.i.i = alloca %struct.bnx2x_queue_state_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %shmem2_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regview, align 8
  %2 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shmem2_base, align 4
  %add = add i32 %3, 60
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !722
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !723
  %6 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfdb, align 8
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %7, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regview, align 8
  %11 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shmem2_base, align 4
  %add.1 = add i32 %12, 64
  %add.ptr.1 = getelementptr i8, ptr %10, i32 %add.1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #14, !srcloc !722
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !723
  %15 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vfdb, align 8
  %arrayidx.1 = getelementptr %struct.bnx2x_vfdb, ptr %16, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx.1, align 4
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.end, !prof !702

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %21, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %21
  %22 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vfdb, align 8
  %flrd_vfs9 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %flrd_vfs9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flrd_vfs9, align 8
  %arrayidx13 = getelementptr %struct.bnx2x_vfdb, ptr %23, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 962, ptr noundef nonnull %spec.select, i32 noundef %25, i32 noundef %27) #17
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  %28 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vfdb, align 8
  %nr_virtfn125 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %29, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %nr_virtfn125 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nr_virtfn125, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp19127.not = icmp eq i16 %31, 0
  br i1 %cmp19127.not, label %do.end16.do.body36.i_crit_edge, label %for.body21.lr.ph

do.end16.do.body36.i_crit_edge:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36.i

for.body21.lr.ph:                                 ; preds = %do.end16
  %dev68 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body21

for.body21:                                       ; preds = %if.end83.for.body21_crit_edge, %for.body21.lr.ph
  %32 = phi ptr [ %29, %for.body21.lr.ph ], [ %45, %if.end83.for.body21_crit_edge ]
  %i.1128 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc85, %if.end83.for.body21_crit_edge ]
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %for.body21.cond.end31_crit_edge, label %land.lhs.true

for.body21.cond.end31_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end31

land.lhs.true:                                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %tobool25.not = icmp eq ptr %34, null
  %arrayidx29 = getelementptr %struct.bnx2x_virtf, ptr %34, i32 %i.1128
  %spec.select118 = select i1 %tobool25.not, ptr null, ptr %arrayidx29
  br label %cond.end31

cond.end31:                                       ; preds = %land.lhs.true, %for.body21.cond.end31_crit_edge
  %cond32 = phi ptr [ null, %for.body21.cond.end31_crit_edge ], [ %spec.select118, %land.lhs.true ]
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond32, i32 0, i32 14
  %35 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %abs_vfid, align 1
  %conv33 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp34 = icmp ult i8 %36, 32
  %arrayidx45 = getelementptr %struct.bnx2x_vfdb, ptr %32, i32 0, i32 8, i32 1
  %sub = add nsw i32 %conv33, -32
  %flrd_vfs38 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %32, i32 0, i32 8
  %sub.sink = select i1 %cmp34, i32 %conv33, i32 %sub
  %.sink.in = select i1 %cmp34, ptr %flrd_vfs38, ptr %arrayidx45
  %37 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %.sink = load i32, ptr %.sink.in, align 4
  %shl48 = shl nuw i32 1, %sub.sink
  %and49 = and i32 %.sink, %shl48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool51.not = icmp eq i32 %and49, 0
  br i1 %tobool51.not, label %cond.end31.if.end83_crit_edge, label %if.then52

cond.end31.if.end83_crit_edge:                    ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then52:                                        ; preds = %cond.end31
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond32, i32 0, i32 2
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %state, align 1
  %flr_clnup_stage = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond32, i32 0, i32 3
  %39 = ptrtoint ptr %flr_clnup_stage to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %flr_clnup_stage, align 4
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 8
  %and55 = and i32 %41, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then52.if.end83_crit_edge, label %do.end66, !prof !702

if.then52.if.end83_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

do.end66:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev68, align 4
  %tobool69.not = icmp eq ptr %43, null
  %spec.select119 = select i1 %tobool69.not, ptr @.str.3, ptr %43
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef 981, ptr noundef nonnull %spec.select119, i32 noundef %conv33) #17
  br label %if.end83

if.end83:                                         ; preds = %do.end66, %if.then52.if.end83_crit_edge, %cond.end31.if.end83_crit_edge
  %inc85 = add nuw nsw i32 %i.1128, 1
  %44 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %45, i32 0, i32 3, i32 7
  %46 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %47 to i32
  %cmp19 = icmp ult i32 %inc85, %conv
  br i1 %cmp19, label %if.end83.for.body21_crit_edge, label %for.end86

if.end83.for.body21_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21

for.end86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp224.not.i = icmp eq i16 %47, 0
  br i1 %cmp224.not.i, label %for.end86.do.body36.i_crit_edge, label %for.body.lr.ph.i

for.end86.do.body36.i_crit_edge:                  ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36.i

for.body.lr.ph.i:                                 ; preds = %for.end86
  %conv.le = zext i16 %47 to i32
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %48 = getelementptr inbounds i8, ptr %qstate.i.i.i, i32 8
  %cmd.i.i.i = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qstate.i.i.i, i32 0, i32 1
  %pf_num.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv227.i = phi i32 [ %conv.le, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i.for.body.i_crit_edge ]
  %49 = phi ptr [ %45, %for.body.lr.ph.i ], [ %140, %for.inc.i.for.body.i_crit_edge ]
  %i.0225.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %state.i = getelementptr %struct.bnx2x_virtf, ptr %51, i32 %i.0225.i, i32 2
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %cmp4.not.i = icmp eq i8 %53, 3
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %flr_clnup_stage.i = getelementptr %struct.bnx2x_virtf, ptr %51, i32 %i.0225.i, i32 3
  %54 = ptrtoint ptr %flr_clnup_stage.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flr_clnup_stage.i, align 4, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %do.body.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.body.i:                                        ; preds = %lor.lhs.false.i
  %56 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %57, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body.i.do.end22.i_crit_edge, label %do.end.i, !prof !702

do.body.i.do.end22.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  %tobool14.not.i = icmp eq ptr %59, null
  %spec.select.i = select i1 %tobool14.not.i, ptr @.str.3, ptr %59
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.349, i32 noundef 915, ptr noundef nonnull %spec.select.i, i32 noundef %i.0225.i, i32 noundef %conv227.i) #17
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %do.body.i.do.end22.i_crit_edge
  %60 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vfdb, align 8
  %tobool24.not.i = icmp eq ptr %61, null
  br i1 %tobool24.not.i, label %do.end22.i.cond.end33.i_crit_edge, label %land.lhs.true.i

do.end22.i.cond.end33.i_crit_edge:                ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end33.i

land.lhs.true.i:                                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %tobool27.not.i = icmp eq ptr %63, null
  %arrayidx31.i = getelementptr %struct.bnx2x_virtf, ptr %63, i32 %i.0225.i
  %spec.select210.i = select i1 %tobool27.not.i, ptr null, ptr %arrayidx31.i
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %land.lhs.true.i, %do.end22.i.cond.end33.i_crit_edge
  %cond34.i = phi ptr [ null, %do.end22.i.cond.end33.i_crit_edge ], [ %spec.select210.i, %land.lhs.true.i ]
  %call.i.i = call zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext 13) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %cond.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str.3, ptr %65
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, i32 noundef 2299, ptr noundef nonnull %spec.select.i.i) #17
  br label %bnx2x_lock_vf_pf_channel.exit.i

if.end.i.i:                                       ; preds = %cond.end33.i
  %op_mutex.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 25
  call void @mutex_lock_nested(ptr noundef %op_mutex.i.i, i32 noundef 0) #14
  %op_current.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 26
  %66 = ptrtoint ptr %op_current.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 13, ptr %op_current.i.i, align 8
  %67 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable, align 8
  %and.i.i = and i32 %68, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.bnx2x_lock_vf_pf_channel.exit.i_crit_edge, label %do.end11.i.i, !prof !702

if.end.i.i.bnx2x_lock_vf_pf_channel.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_lock_vf_pf_channel.exit.i

do.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %tobool14.not.i.i = icmp eq ptr %70, null
  %spec.select35.i.i = select i1 %tobool14.not.i.i, ptr @.str.3, ptr %70
  %abs_vfid.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 14
  %71 = ptrtoint ptr %abs_vfid.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %abs_vfid.i.i, align 1
  %conv22.i.i = zext i8 %72 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.211, i32 noundef 2311, ptr noundef nonnull %spec.select35.i.i, i32 noundef %conv22.i.i, i32 noundef 13) #17
  br label %bnx2x_lock_vf_pf_channel.exit.i

bnx2x_lock_vf_pf_channel.exit.i:                  ; preds = %do.end11.i.i, %if.end.i.i.bnx2x_lock_vf_pf_channel.exit.i_crit_edge, %do.end.i.i
  %73 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable, align 8
  %and.i214.i = and i32 %74, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214.i)
  %tobool.not.i215.i = icmp eq i32 %and.i214.i, 0
  br i1 %tobool.not.i215.i, label %bnx2x_lock_vf_pf_channel.exit.i.do.end7.i.i_crit_edge, label %do.end.i220.i, !prof !702

bnx2x_lock_vf_pf_channel.exit.i.do.end7.i.i_crit_edge: ; preds = %bnx2x_lock_vf_pf_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i.i

do.end.i220.i:                                    ; preds = %bnx2x_lock_vf_pf_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i.i = icmp eq ptr %76, null
  %spec.select.i217.i = select i1 %tobool4.not.i.i, ptr @.str.3, ptr %76
  %abs_vfid.i218.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 14
  %77 = ptrtoint ptr %abs_vfid.i218.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %abs_vfid.i218.i, align 1
  %conv.i.i = zext i8 %78 to i32
  %call.i219.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.353, i32 noundef 873, ptr noundef nonnull %spec.select.i217.i, i32 noundef %conv.i.i) #17
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i220.i, %bnx2x_lock_vf_pf_channel.exit.i.do.end7.i.i_crit_edge
  %alloc_resc.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 9
  %79 = ptrtoint ptr %alloc_resc.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %alloc_resc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp71.not.i.i = icmp eq i8 %80, 0
  br i1 %cmp71.not.i.i, label %do.end7.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end7.i.i.for.end.i.i_crit_edge:                ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end7.i.i
  %abs_vfid.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 14
  %vfqs.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.072.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %81 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable, align 8
  %and.i.i.i = and i32 %82, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.do.end7.i.i.i_crit_edge, label %do.end.i.i.i, !prof !702

for.body.i.i.do.end7.i.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %84, null
  %spec.select.i.i.i = select i1 %tobool4.not.i.i.i, ptr @.str.3, ptr %84
  %85 = ptrtoint ptr %abs_vfid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %abs_vfid.i.i.i, align 1
  %conv.i.i.i = zext i8 %86 to i32
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.357, i32 noundef 498, ptr noundef nonnull %spec.select.i.i.i, i32 noundef %conv.i.i.i, i32 noundef %i.072.i.i) #17
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %do.end.i.i.i, %for.body.i.i.do.end7.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.072.i.i)
  %cmp.i.i.i = icmp eq i32 %i.072.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %do.end7.i.i.i.if.end24.i.i.i_crit_edge

do.end7.i.i.i.if.end24.i.i.i_crit_edge:           ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end7.i.i.i
  %87 = ptrtoint ptr %vfqs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vfqs.i.i.i.i, align 4
  %sp_initialized.i.i.i.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %sp_initialized.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %sp_initialized.i.i.i.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i.i.i = icmp eq i8 %90, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then11.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %91 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable, align 8
  %and.i.i.i.i = and i32 %92, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %if.then.i.i.i.i.if.end24.i.i.i_crit_edge, label %do.end13.i.i.i.i, !prof !702

if.then.i.i.i.i.if.end24.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i.i.i

do.end13.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  %tobool16.not.i.i.i.i = icmp eq ptr %94, null
  %spec.select33.i.i.i.i = select i1 %tobool16.not.i.i.i.i, ptr @.str.3, ptr %94
  %call24.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.309, i32 noundef 119, ptr noundef nonnull %spec.select33.i.i.i.i) #17
  br label %if.end24.i.i.i

if.then11.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %call12.i.i.i = call fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr noundef %cond34.i, i1 noundef zeroext true, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end15.i.i.i, label %if.then11.i.i.i.do.end19.i.i_crit_edge

if.then11.i.i.i.do.end19.i.i_crit_edge:           ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

if.end15.i.i.i:                                   ; preds = %if.then11.i.i.i
  %call16.i.i.i = call fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr noundef %cond34.i, i1 noundef zeroext true, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end19.i.i.i, label %if.end15.i.i.i.do.end19.i.i_crit_edge

if.end15.i.i.i.do.end19.i.i_crit_edge:            ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

if.end19.i.i.i:                                   ; preds = %if.end15.i.i.i
  %call20.i.i.i = call fastcc i32 @bnx2x_vf_vlan_mac_clear(ptr noundef %bp, ptr noundef %cond34.i, i1 noundef zeroext true, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.end19.i.i.i.if.end24.i.i.i_crit_edge, label %if.end19.i.i.i.do.end19.i.i_crit_edge

if.end19.i.i.i.do.end19.i.i_crit_edge:            ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

if.end19.i.i.i.if.end24.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.end19.i.i.i.if.end24.i.i.i_crit_edge, %do.end13.i.i.i.i, %if.then.i.i.i.i.if.end24.i.i.i_crit_edge, %do.end7.i.i.i.if.end24.i.i.i_crit_edge
  %95 = ptrtoint ptr %vfqs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vfqs.i.i.i.i, align 4
  %state.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %96, i32 %i.072.i.i, i32 5, i32 6
  %97 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp25.not.i.i.i = icmp eq i32 %98, 0
  br i1 %cmp25.not.i.i.i, label %if.end24.i.i.i.for.inc.i.i_crit_edge, label %if.then27.i.i.i

if.end24.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then27.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %qstate.i.i.i) #14
  %99 = call ptr @memset(ptr %48, i32 0, i32 84)
  %sp_obj30.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %96, i32 %i.072.i.i, i32 5
  %100 = ptrtoint ptr %qstate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %sp_obj30.i.i.i, ptr %qstate.i.i.i, align 4
  %101 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 6, ptr %state.i.i.i, align 4
  %102 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 9, ptr %cmd.i.i.i, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %48) #14
  %call33.i.i.i = call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef nonnull %qstate.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i)
  %tobool34.not.not.i.i.i = icmp eq i32 %call33.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %qstate.i.i.i) #14
  br i1 %tobool34.not.not.i.i.i, label %if.then27.i.i.i.for.inc.i.i_crit_edge, label %if.then27.i.i.i.do.end19.i.i_crit_edge

if.then27.i.i.i.do.end19.i.i_crit_edge:           ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

if.then27.i.i.i.for.inc.i.i_crit_edge:            ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then27.i.i.i.for.inc.i.i_crit_edge, %if.end24.i.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.072.i.i, 1
  %103 = ptrtoint ptr %alloc_resc.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %alloc_resc.i.i, align 4
  %conv8.i.i = zext i8 %104 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv8.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end7.i.i.for.end.i.i_crit_edge
  %call14.i.i = call i32 @bnx2x_vf_mcast(ptr noundef %bp, ptr noundef %cond34.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #14
  %call.i59.i.i = call i32 @bnx2x_flr_clnup_poll_count(ptr noundef %bp) #14
  %105 = ptrtoint ptr %pf_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %pf_num.i.i.i, align 2
  %107 = or i8 %106, 8
  %or.i.i.i = zext i8 %107 to i16
  %abs_vfid.i60.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 14
  %108 = ptrtoint ptr %abs_vfid.i60.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %abs_vfid.i60.i.i, align 1
  %conv2.i.i.i = zext i8 %109 to i16
  %shl.i.i.i = shl nuw nsw i16 %conv2.i.i.i, 4
  %or3.i.i.i = or i16 %shl.i.i.i, %or.i.i.i
  %call5.i.i.i = call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %or3.i.i.i) #14
  %call6.i.i.i = call i32 @bnx2x_flr_clnup_poll_hw_counter(ptr noundef %bp, i32 noundef 1508128, ptr noundef nonnull @.str.360, i32 noundef %call.i59.i.i) #14
  %110 = ptrtoint ptr %pf_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pf_num.i.i.i, align 2
  %conv8.i.i.i = zext i8 %111 to i16
  %call9.i.i.i = call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv8.i.i.i) #14
  %112 = ptrtoint ptr %abs_vfid.i60.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %abs_vfid.i60.i.i, align 1
  %add.i.i.i = add i8 %113, 8
  %call13.i.i.i = call i32 @bnx2x_send_final_clnup(ptr noundef %bp, i8 noundef zeroext %add.i.i.i, i32 noundef %call.i59.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool.not.i61.i.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool.not.i61.i.i, label %for.end.i.i.bnx2x_vf_flr_clnup_hw.exit.i.i_crit_edge, label %do.end.i64.i.i

for.end.i.i.bnx2x_vf_flr_clnup_hw.exit.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_flr_clnup_hw.exit.i.i

do.end.i64.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  %tobool15.not.i.i.i = icmp eq ptr %115, null
  %spec.select.i63.i.i = select i1 %tobool15.not.i.i.i, ptr @.str.3, ptr %115
  %116 = ptrtoint ptr %abs_vfid.i60.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %abs_vfid.i60.i.i, align 1
  %conv18.i.i.i = zext i8 %117 to i32
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.362, i32 noundef 863, ptr noundef nonnull %spec.select.i63.i.i, i32 noundef %conv18.i.i.i) #17
  br label %bnx2x_vf_flr_clnup_hw.exit.i.i

bnx2x_vf_flr_clnup_hw.exit.i.i:                   ; preds = %do.end.i64.i.i, %for.end.i.i.bnx2x_vf_flr_clnup_hw.exit.i.i_crit_edge
  call void @bnx2x_tx_hw_flushed(ptr noundef %bp, i32 noundef %call.i59.i.i) #14
  %118 = ptrtoint ptr %alloc_resc.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %alloc_resc.i.i, align 1
  %num_txqs.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 9, i32 1
  %119 = ptrtoint ptr %num_txqs.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %num_txqs.i.i.i.i, align 1
  %num_mac_filters.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 9, i32 3
  %120 = ptrtoint ptr %num_mac_filters.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %num_mac_filters.i.i.i.i, align 1
  %num_vlan_filters.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 9, i32 4
  %121 = ptrtoint ptr %num_vlan_filters.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 2, ptr %num_vlan_filters.i.i.i.i, align 1
  %num_mc_filters.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 9, i32 5
  %122 = ptrtoint ptr %num_mc_filters.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %num_mc_filters.i.i.i.i, align 1
  %sb_count.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 10
  %123 = ptrtoint ptr %sb_count.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sb_count.i.i.i.i, align 2
  %num_sbs.i.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 9, i32 2
  %125 = ptrtoint ptr %num_sbs.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %num_sbs.i.i.i.i, align 1
  %state.i65.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 2
  %126 = ptrtoint ptr %state.i65.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %state.i65.i.i, align 1
  %malicious.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 4
  %127 = ptrtoint ptr %malicious.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %malicious.i.i, align 1
  %128 = ptrtoint ptr %abs_vfid.i60.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %abs_vfid.i60.i.i, align 1
  call void @bnx2x_vf_enable_mbx(ptr noundef %bp, i8 noundef zeroext %129) #14
  br label %bnx2x_vf_flr.exit.i

do.end19.i.i:                                     ; preds = %if.then27.i.i.i.do.end19.i.i_crit_edge, %if.end19.i.i.i.do.end19.i.i_crit_edge, %if.end15.i.i.i.do.end19.i.i_crit_edge, %if.then11.i.i.i.do.end19.i.i_crit_edge
  %rc.0.i.i.i = phi i32 [ %call33.i.i.i, %if.then27.i.i.i.do.end19.i.i_crit_edge ], [ %call20.i.i.i, %if.end19.i.i.i.do.end19.i.i_crit_edge ], [ %call16.i.i.i, %if.end15.i.i.i.do.end19.i.i_crit_edge ], [ %call12.i.i.i, %if.then11.i.i.i.do.end19.i.i_crit_edge ]
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  %tobool44.not.i.i.i = icmp eq ptr %131, null
  %spec.select87.i.i.i = select i1 %tobool44.not.i.i.i, ptr @.str.3, ptr %131
  %132 = ptrtoint ptr %abs_vfid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %abs_vfid.i.i.i, align 1
  %conv53.i.i.i = zext i8 %133 to i32
  %call54.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.357, i32 noundef 533, ptr noundef nonnull %spec.select87.i.i.i, i32 noundef %conv53.i.i.i, i32 noundef %i.072.i.i, i32 noundef %rc.0.i.i.i) #17
  %134 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i, align 4
  %tobool22.not.i.i = icmp eq ptr %135, null
  %spec.select58.i.i = select i1 %tobool22.not.i.i, ptr @.str.3, ptr %135
  %136 = ptrtoint ptr %abs_vfid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %abs_vfid.i.i.i, align 1
  %conv31.i.i = zext i8 %137 to i32
  %call32.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.353, i32 noundef 900, ptr noundef nonnull %spec.select58.i.i, i32 noundef %conv31.i.i, i32 noundef %i.072.i.i, i32 noundef %rc.0.i.i.i) #17
  br label %bnx2x_vf_flr.exit.i

bnx2x_vf_flr.exit.i:                              ; preds = %do.end19.i.i, %bnx2x_vf_flr_clnup_hw.exit.i.i
  %flr_clnup_stage35.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond34.i, i32 0, i32 3
  %138 = ptrtoint ptr %flr_clnup_stage35.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %flr_clnup_stage35.i, align 4
  call void @bnx2x_unlock_vf_pf_channel(ptr noundef %bp, ptr noundef %cond34.i, i32 noundef 13) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %bnx2x_vf_flr.exit.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0225.i, 1
  %139 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vfdb, align 8
  %nr_virtfn.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %140, i32 0, i32 3, i32 7
  %141 = ptrtoint ptr %nr_virtfn.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %nr_virtfn.i, align 2
  %conv.i = zext i16 %142 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body36.i_crit_edge

for.inc.i.do.body36.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.body36.i:                                      ; preds = %for.inc.i.do.body36.i_crit_edge, %for.end86.do.body36.i_crit_edge, %do.end16.do.body36.i_crit_edge
  %.lcssa.i = phi ptr [ %45, %for.end86.do.body36.i_crit_edge ], [ %29, %do.end16.do.body36.i_crit_edge ], [ %140, %for.inc.i.do.body36.i_crit_edge ]
  %143 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %msg_enable, align 8
  %and38.i = and i32 %144, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body36.i.do.end68.i_crit_edge, label %do.end49.i, !prof !702

do.body36.i.do.end68.i_crit_edge:                 ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68.i

do.end49.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev51.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %145 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev51.i, align 4
  %tobool52.not.i = icmp eq ptr %146, null
  %spec.select211.i = select i1 %tobool52.not.i, ptr @.str.3, ptr %146
  %flrd_vfs.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %.lcssa.i, i32 0, i32 8
  %147 = ptrtoint ptr %flrd_vfs.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flrd_vfs.i, align 8
  %arrayidx64.i = getelementptr %struct.bnx2x_vfdb, ptr %.lcssa.i, i32 0, i32 8, i32 1
  %149 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx64.i, align 4
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.349, i32 noundef 938, ptr noundef nonnull %spec.select211.i, i32 noundef %148, i32 noundef %150) #17
  br label %do.end68.i

do.end68.i:                                       ; preds = %do.end49.i, %do.body36.i.do.end68.i_crit_edge
  %common.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %pfid.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %chip_port_mode.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !724
  call void @arm_heavy_mb() #14
  %151 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vfdb, align 8
  %arrayidx78.i = getelementptr %struct.bnx2x_vfdb, ptr %152, i32 0, i32 8, i32 0
  %153 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx78.i, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154) #14
  %156 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regview, align 8
  %158 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %shmem2_base, align 4
  %160 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %pfid.i, align 1
  %conv79.i = zext i8 %161 to i32
  %and80.i = and i32 %conv79.i, 1
  %162 = lshr i32 %conv79.i, 1
  %163 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %common.i, align 8
  %shr84.i = lshr i32 %164, 16
  %shr84.off.i = add nsw i32 %shr84.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr84.off.i)
  %switch.i = icmp ult i32 %shr84.off.i, 3
  br i1 %switch.i, label %do.end68.i.lor.end.thread.i_crit_edge, label %lor.end.i

do.end68.i.lor.end.thread.i_crit_edge:            ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end.thread.i

lor.end.i:                                        ; preds = %do.end68.i
  %165 = ptrtoint ptr %chip_port_mode.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %chip_port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %cmp101.i = icmp eq i8 %166, 0
  br i1 %cmp101.i, label %lor.end.i.lor.end.thread.i_crit_edge, label %lor.end.i.for.cond69.i_crit_edge

lor.end.i.for.cond69.i_crit_edge:                 ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond69.i

lor.end.i.lor.end.thread.i_crit_edge:             ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end.thread.i

lor.end.thread.i:                                 ; preds = %lor.end.i.lor.end.thread.i_crit_edge, %do.end68.i.lor.end.thread.i_crit_edge
  br label %for.cond69.i

for.cond69.i:                                     ; preds = %lor.end.thread.i, %lor.end.i.for.cond69.i_crit_edge
  %167 = phi i32 [ 2, %lor.end.thread.i ], [ 1, %lor.end.i.for.cond69.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %167, %162
  %add.i = add nuw nsw i32 %mul.i, %and80.i
  %168 = shl nuw nsw i32 %add.i, 3
  %169 = add i32 %159, 68
  %add104.i = add i32 %169, %168
  %add.ptr.i = getelementptr i8, ptr %157, i32 %add104.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %155) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !724
  call void @arm_heavy_mb() #14
  %170 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vfdb, align 8
  %arrayidx78.1.i = getelementptr %struct.bnx2x_vfdb, ptr %171, i32 0, i32 8, i32 1
  %172 = ptrtoint ptr %arrayidx78.1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx78.1.i, align 4
  %174 = call i32 @llvm.bswap.i32(i32 %173) #14
  %175 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regview, align 8
  %177 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %shmem2_base, align 4
  %179 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %pfid.i, align 1
  %conv79.1.i = zext i8 %180 to i32
  %and80.1.i = and i32 %conv79.1.i, 1
  %181 = lshr i32 %conv79.1.i, 1
  %182 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %common.i, align 8
  %shr84.1.i = lshr i32 %183, 16
  %shr84.off.1.i = add nsw i32 %shr84.1.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr84.off.1.i)
  %switch.1.i = icmp ult i32 %shr84.off.1.i, 3
  br i1 %switch.1.i, label %for.cond69.i.lor.end.thread.1.i_crit_edge, label %lor.end.1.i

for.cond69.i.lor.end.thread.1.i_crit_edge:        ; preds = %for.cond69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end.thread.1.i

lor.end.1.i:                                      ; preds = %for.cond69.i
  %184 = ptrtoint ptr %chip_port_mode.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %chip_port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %cmp101.1.i = icmp eq i8 %185, 0
  br i1 %cmp101.1.i, label %lor.end.1.i.lor.end.thread.1.i_crit_edge, label %lor.end.1.i.for.cond69.1.i_crit_edge

lor.end.1.i.for.cond69.1.i_crit_edge:             ; preds = %lor.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond69.1.i

lor.end.1.i.lor.end.thread.1.i_crit_edge:         ; preds = %lor.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end.thread.1.i

lor.end.thread.1.i:                               ; preds = %lor.end.1.i.lor.end.thread.1.i_crit_edge, %for.cond69.i.lor.end.thread.1.i_crit_edge
  br label %for.cond69.1.i

for.cond69.1.i:                                   ; preds = %lor.end.thread.1.i, %lor.end.1.i.for.cond69.1.i_crit_edge
  %186 = phi i32 [ 2, %lor.end.thread.1.i ], [ 1, %lor.end.1.i.for.cond69.1.i_crit_edge ]
  %mul.1.i = mul nuw nsw i32 %186, %181
  %add.1.i = add nuw nsw i32 %mul.1.i, %and80.1.i
  %187 = shl nuw nsw i32 %add.1.i, 3
  %188 = add i32 %178, 72
  %add104.1.i = add i32 %188, %187
  %add.ptr.1.i = getelementptr i8, ptr %176, i32 %add104.1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %174) #14, !srcloc !716
  %call108.i = call i32 @bnx2x_fw_command(ptr noundef %bp, i32 noundef -1073741824, i32 noundef 0) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !725
  call void @arm_heavy_mb() #14
  %189 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regview, align 8
  %191 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %shmem2_base, align 4
  %193 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %pfid.i, align 1
  %conv120.i = zext i8 %194 to i32
  %and121.i = and i32 %conv120.i, 1
  %195 = lshr i32 %conv120.i, 1
  %196 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %common.i, align 8
  %shr127.i = lshr i32 %197, 16
  %shr127.off.i = add nsw i32 %shr127.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr127.off.i)
  %switch212.i = icmp ult i32 %shr127.off.i, 3
  br i1 %switch212.i, label %for.cond69.1.i.lor.end148.thread.i_crit_edge, label %lor.end148.i

for.cond69.1.i.lor.end148.thread.i_crit_edge:     ; preds = %for.cond69.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end148.thread.i

lor.end148.i:                                     ; preds = %for.cond69.1.i
  %198 = ptrtoint ptr %chip_port_mode.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %chip_port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %cmp146.i = icmp eq i8 %199, 0
  br i1 %cmp146.i, label %lor.end148.i.lor.end148.thread.i_crit_edge, label %lor.end148.i.for.cond109.i_crit_edge

lor.end148.i.for.cond109.i_crit_edge:             ; preds = %lor.end148.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond109.i

lor.end148.i.lor.end148.thread.i_crit_edge:       ; preds = %lor.end148.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end148.thread.i

lor.end148.thread.i:                              ; preds = %lor.end148.i.lor.end148.thread.i_crit_edge, %for.cond69.1.i.lor.end148.thread.i_crit_edge
  br label %for.cond109.i

for.cond109.i:                                    ; preds = %lor.end148.thread.i, %lor.end148.i.for.cond109.i_crit_edge
  %200 = phi i32 [ 2, %lor.end148.thread.i ], [ 1, %lor.end148.i.for.cond109.i_crit_edge ]
  %mul150.i = mul nuw nsw i32 %200, %195
  %add151.i = add nuw nsw i32 %mul150.i, %and121.i
  %201 = shl nuw nsw i32 %add151.i, 3
  %202 = add i32 %192, 68
  %add152.i = add i32 %202, %201
  %add.ptr153.i = getelementptr i8, ptr %190, i32 %add152.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153.i, i32 0) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !725
  call void @arm_heavy_mb() #14
  %203 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regview, align 8
  %205 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %shmem2_base, align 4
  %207 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %pfid.i, align 1
  %209 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %common.i, align 8
  %shr127.1.i = lshr i32 %210, 16
  %shr127.off.1.i = add nsw i32 %shr127.1.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr127.off.1.i)
  %switch212.1.i = icmp ult i32 %shr127.off.1.i, 3
  br i1 %switch212.1.i, label %for.cond109.i.lor.end148.thread.1.i_crit_edge, label %lor.end148.1.i

for.cond109.i.lor.end148.thread.1.i_crit_edge:    ; preds = %for.cond109.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end148.thread.1.i

lor.end148.1.i:                                   ; preds = %for.cond109.i
  %211 = ptrtoint ptr %chip_port_mode.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %chip_port_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %cmp146.1.i = icmp eq i8 %212, 0
  br i1 %cmp146.1.i, label %lor.end148.1.i.lor.end148.thread.1.i_crit_edge, label %lor.end148.1.i.bnx2x_vf_flr_clnup.exit_crit_edge

lor.end148.1.i.bnx2x_vf_flr_clnup.exit_crit_edge: ; preds = %lor.end148.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_flr_clnup.exit

lor.end148.1.i.lor.end148.thread.1.i_crit_edge:   ; preds = %lor.end148.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end148.thread.1.i

lor.end148.thread.1.i:                            ; preds = %lor.end148.1.i.lor.end148.thread.1.i_crit_edge, %for.cond109.i.lor.end148.thread.1.i_crit_edge
  br label %bnx2x_vf_flr_clnup.exit

bnx2x_vf_flr_clnup.exit:                          ; preds = %lor.end148.thread.1.i, %lor.end148.1.i.bnx2x_vf_flr_clnup.exit_crit_edge
  %213 = phi i32 [ 2, %lor.end148.thread.1.i ], [ 1, %lor.end148.1.i.bnx2x_vf_flr_clnup.exit_crit_edge ]
  %conv120.1.i = zext i8 %208 to i32
  %214 = lshr i32 %conv120.1.i, 1
  %and121.1.i = and i32 %conv120.1.i, 1
  %mul150.1.i = mul nuw nsw i32 %213, %214
  %add151.1.i = add nuw nsw i32 %mul150.1.i, %and121.1.i
  %215 = shl nuw nsw i32 %add151.1.i, 3
  %216 = add i32 %206, 72
  %add152.1.i = add i32 %216, %215
  %add.ptr153.1.i = getelementptr i8, ptr %204, i32 %add152.1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153.1.i, i32 0) #14, !srcloc !716
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_init_dq(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !726
  tail call void @arm_heavy_mb() #14
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %2 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1507752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !727
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regview, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1507820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 100663296) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !728
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 1507744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 262144) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !729
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regview, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 1507748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 67108864) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !730
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regview, align 8
  %add.ptr16 = getelementptr i8, ptr %11, i32 1507828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 50331648) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !731
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regview, align 8
  %add.ptr20 = getelementptr i8, ptr %13, i32 1507864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !732
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regview, align 8
  %add.ptr24 = getelementptr i8, ptr %15, i32 1507928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !733
  tail call void @arm_heavy_mb() #14
  %16 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regview, align 8
  %add.ptr28 = getelementptr i8, ptr %17, i32 1507992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !734
  tail call void @arm_heavy_mb() #14
  %18 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regview, align 8
  %add.ptr32 = getelementptr i8, ptr %19, i32 1508056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -65280) #14, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !735
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regview, align 8
  %add.ptr36 = getelementptr i8, ptr %21, i32 1508160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 1073741824) #14, !srcloc !716
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_init_dmae(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !736
  tail call void @arm_heavy_mb() #14
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %2 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1056892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !716
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_init_one(ptr noundef %bp, i32 noundef %int_mode_param, i32 noundef %num_vfs_param) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vfdb, align 8
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool1.not = icmp eq i16 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %common = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72
  %5 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %common, align 8
  %shr = lshr i32 %6, 16
  %shr.off = add nsw i32 %shr, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off)
  %switch = icmp ult i32 %shr.off, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs_param)
  %tobool15.not = icmp eq i32 %num_vfs_param, 0
  %or.cond = or i1 %tobool15.not, %switch
  br i1 %or.cond, label %if.end3.cleanup_crit_edge, label %if.end17

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end3
  %igu_sb_cnt = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 100
  %7 = ptrtoint ptr %igu_sb_cnt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %igu_sb_cnt, align 2
  %conv = zext i8 %8 to i32
  %cnic_support = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 50
  %9 = ptrtoint ptr %cnic_support to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cnic_support, align 8
  %conv18 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv, %conv18
  %mul = mul nsw i32 %sub, 3
  %num_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 93
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_queues, align 4
  %num_cnic_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 95
  %13 = ptrtoint ptr %num_cnic_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_cnic_queues, align 4
  %sub21 = sub i32 %12, %14
  %max_cos = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 194
  %15 = ptrtoint ptr %max_cos to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_cos, align 8
  %conv22 = zext i8 %16 to i32
  %mul23 = mul i32 %sub21, %conv22
  %add = add i32 %mul23, 7
  %div628 = and i32 %add, -8
  %17 = and i32 %add, 8
  %rem = xor i32 %17, 8
  %add39 = add i32 %rem, %div628
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add39)
  %cmp67 = icmp eq i32 %add39, 8
  %mul69 = select i1 %cmp67, i32 16, i32 0
  %add70 = sub i32 2, %mul23
  %sub77 = add i32 %add70, %add39
  %add78 = add i32 %sub77, %mul69
  %mul79 = mul i32 %add78, %conv18
  %add80 = add i32 %mul79, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add80)
  %cmp81 = icmp ugt i32 %add80, 1023
  br i1 %cmp81, label %do.end, label %if.end168

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %dev86 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %18 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev86, align 4
  %tobool87.not = icmp eq ptr %19, null
  %spec.select = select i1 %tobool87.not, ptr @.str.3, ptr %19
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1193, ptr noundef nonnull %spec.select, i32 noundef %add80, i32 noundef 1024) #17
  br label %cleanup

if.end168:                                        ; preds = %if.end17
  %int_mode_param.off = add i32 %int_mode_param, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %int_mode_param.off)
  %switch639 = icmp ult i32 %int_mode_param.off, 2
  br i1 %switch639, label %do.end178, label %if.end192

do.end178:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #16
  %dev180 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %20 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev180, align 4
  %tobool181.not = icmp eq ptr %21, null
  %spec.select630 = select i1 %tobool181.not, ptr @.str.3, ptr %21
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 1200, ptr noundef nonnull %spec.select630) #17
  br label %cleanup

if.end192:                                        ; preds = %if.end168
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %self.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end192.do.end199_crit_edge, label %pci_ari_enabled.exit

if.end192.do.end199_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end199

pci_ari_enabled.exit:                             ; preds = %if.end192
  %ari_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 49
  %28 = ptrtoint ptr %ari_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 5)
  %bf.load.i = load i40, ptr %ari_enabled.i, align 1
  %29 = and i40 %bf.load.i, 33554432
  %tobool2.i.not = icmp eq i40 %29, 0
  br i1 %tobool2.i.not, label %pci_ari_enabled.exit.do.end199_crit_edge, label %land.lhs.true

pci_ari_enabled.exit.do.end199_crit_edge:         ; preds = %pci_ari_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end199

do.end199:                                        ; preds = %pci_ari_enabled.exit.do.end199_crit_edge, %if.end192.do.end199_crit_edge
  %dev201 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %30 = ptrtoint ptr %dev201 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev201, align 4
  %tobool202.not = icmp eq ptr %31, null
  %spec.select631 = select i1 %tobool202.not, ptr @.str.3, ptr %31
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.41, i32 noundef 1206, ptr noundef nonnull %spec.select631) #17
  br label %cleanup

land.lhs.true:                                    ; preds = %pci_ari_enabled.exit
  %int_block = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 8
  %32 = ptrtoint ptr %int_block to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %int_block, align 8
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool234.not = icmp eq i8 %34, 0
  br i1 %tobool234.not, label %if.end253, label %do.end239

do.end239:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev241 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %35 = ptrtoint ptr %dev241 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev241, align 4
  %tobool242.not = icmp eq ptr %36, null
  %spec.select632 = select i1 %tobool242.not, ptr @.str.3, ptr %36
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, i32 noundef 1212, ptr noundef nonnull %spec.select632) #17
  br label %cleanup

if.end253:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 2208) #19
  %38 = ptrtoint ptr %vfdb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %vfdb, align 8
  %tobool257.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool257.not, label %do.end262, label %if.end276

do.end262:                                        ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #16
  %dev264 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %39 = ptrtoint ptr %dev264 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev264, align 4
  %tobool265.not = icmp eq ptr %40, null
  %spec.select633 = select i1 %tobool265.not, ptr @.str.3, ptr %40
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.41, i32 noundef 1219, ptr noundef nonnull %spec.select633) #17
  br label %do.body457

if.end276:                                        ; preds = %if.end253
  %sriov = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %call.i.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %42, i32 noundef 16) #14
  %conv.i.i = zext i16 %call.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %bnx2x_sriov_info.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end276
  %pos8.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %pos8.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i.i, ptr %pos8.i.i, align 4
  %msg_enable.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %44 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %do.end16.i.i, !prof !702

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end16.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev18.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %46 = ptrtoint ptr %dev18.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %47, null
  %spec.select79.i.i = select i1 %tobool19.not.i.i, ptr @.str.3, ptr %47
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.368, ptr noundef nonnull @.str.366, i32 noundef 1123, ptr noundef nonnull %spec.select79.i.i, i32 noundef %conv.i.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end16.i.i, %if.end.i.i.if.end.i_crit_edge
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  %ctrl.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call31.i.i = tail call i32 @pci_read_config_word(ptr noundef %42, i32 noundef %add.i.i, ptr noundef %ctrl.i.i) #14
  %add32.i.i = add nuw nsw i32 %conv.i.i, 14
  %total.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 5
  %call33.i.i = tail call i32 @pci_read_config_word(ptr noundef %42, i32 noundef %add32.i.i, ptr noundef %total.i.i) #14
  %add34.i.i = add nuw nsw i32 %conv.i.i, 12
  %initial.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 6
  %call35.i.i = tail call i32 @pci_read_config_word(ptr noundef %42, i32 noundef %add34.i.i, ptr noundef %initial.i.i) #14
  %add36.i.i = add nuw nsw i32 %conv.i.i, 20
  %offset.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 8
  %call37.i.i = tail call i32 @pci_read_config_word(ptr noundef %42, i32 noundef %add36.i.i, ptr noundef %offset.i.i) #14
  %add38.i.i = add nuw nsw i32 %conv.i.i, 22
  %stride.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 9
  %call39.i.i = tail call i32 @pci_read_config_word(ptr noundef %42, i32 noundef %add38.i.i, ptr noundef %stride.i.i) #14
  %add40.i.i = add nuw nsw i32 %conv.i.i, 28
  %pgsz.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 10
  %call41.i.i = tail call i32 @pci_read_config_dword(ptr noundef %42, i32 noundef %add40.i.i, ptr noundef %pgsz.i.i) #14
  %add42.i.i = add nuw nsw i32 %conv.i.i, 4
  %cap.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 3
  %call43.i.i = tail call i32 @pci_read_config_dword(ptr noundef %42, i32 noundef %add42.i.i, ptr noundef %cap.i.i) #14
  %add44.i.i = add nuw nsw i32 %conv.i.i, 18
  %link.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 11
  %call45.i.i = tail call i32 @pci_read_config_byte(ptr noundef %42, i32 noundef %add44.i.i, ptr noundef %link.i.i) #14
  %nres.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %nres.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %nres.i, align 8
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %49 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %50, i32 9764
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !737
  %52 = lshr i32 %51, 21
  %mul.i = and i32 %52, 120
  %53 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %common, align 8
  %shr.i = lshr i32 %54, 16
  %shr.off.i = add nsw i32 %shr.i, -5710
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.off.i)
  %switch.i = icmp ult i32 %shr.off.i, 3
  br i1 %switch.i, label %if.end.i.cond.end.i_crit_edge, label %cond.false.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pf_num.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %55 = ptrtoint ptr %pf_num.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pf_num.i, align 2
  %57 = shl i8 %56, 6
  %58 = and i8 %57, 64
  %phi.bo.i = zext i8 %58 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.false.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %sub.i = sub nsw i32 %mul.i, %cond.i
  %59 = ptrtoint ptr %sriov to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub.i, ptr %sriov, align 8
  %60 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_enable.i.i, align 8
  %and14.i = and i32 %61, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %cond.end.i.if.end281_crit_edge, label %do.end.i, !prof !702

cond.end.i.if.end281_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end281

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %tobool21.not.i = icmp eq ptr %63, null
  %spec.select.i = select i1 %tobool21.not.i, ptr @.str.3, ptr %63
  %pfid.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %64 = ptrtoint ptr %pfid.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pfid.i, align 1
  %conv27.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %nres.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nres.i, align 8
  %68 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cap.i.i, align 4
  %70 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ctrl.i.i, align 8
  %conv30.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %total.i.i, align 2
  %conv31.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %initial.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %initial.i.i, align 4
  %conv32.i = zext i16 %75 to i32
  %nr_virtfn.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 7
  %76 = ptrtoint ptr %nr_virtfn.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nr_virtfn.i, align 2
  %conv33.i = zext i16 %77 to i32
  %78 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %offset.i.i, align 8
  %conv34.i = zext i16 %79 to i32
  %80 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %stride.i.i, align 2
  %conv35.i = zext i16 %81 to i32
  %82 = ptrtoint ptr %pgsz.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pgsz.i.i, align 4
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.364, i32 noundef 1159, ptr noundef nonnull %spec.select.i, i32 noundef %conv27.i, i32 noundef %sub.i, i32 noundef %67, i32 noundef %69, i32 noundef %conv30.i, i32 noundef %conv31.i, i32 noundef %conv32.i, i32 noundef %conv33.i, i32 noundef %conv34.i, i32 noundef %conv35.i, i32 noundef %83) #17
  br label %if.end281

bnx2x_sriov_info.exit:                            ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #16
  %dev2.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %84 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %85, null
  %spec.select.i.i = select i1 %tobool3.not.i.i, ptr @.str.3, ptr %85
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.365, ptr noundef nonnull @.str.366, i32 noundef 1118, ptr noundef nonnull %spec.select.i.i) #17
  br label %do.body457

if.end281:                                        ; preds = %do.end.i, %cond.end.i.if.end281_crit_edge
  %86 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %total.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp283 = icmp eq i16 %87, 0
  br i1 %cmp283, label %if.end281.do.body457_crit_edge, label %if.end286

if.end281.do.body457_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body457

if.end286:                                        ; preds = %if.end281
  %conv282 = zext i16 %87 to i32
  %conv291 = and i32 %num_vfs_param, 65535
  %88 = tail call i32 @llvm.umin.i32(i32 %conv291, i32 %conv282)
  %conv300 = trunc i32 %88 to i16
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %call7.i.i, i32 0, i32 3, i32 7
  %89 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv300, ptr %nr_virtfn, align 2
  %90 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable.i.i, align 8
  %and302 = and i32 %91, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302)
  %tobool303.not = icmp eq i32 %and302, 0
  br i1 %tobool303.not, label %if.end286.if.end7.i.i_crit_edge, label %do.end309, !prof !702

if.end286.if.end7.i.i_crit_edge:                  ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

do.end309:                                        ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #16
  %dev311 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %92 = ptrtoint ptr %dev311 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev311, align 4
  %tobool312.not = icmp eq ptr %93, null
  %spec.select634 = select i1 %tobool312.not, ptr @.str.3, ptr %93
  %call322 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.41, i32 noundef 1243, ptr noundef nonnull %spec.select634, i32 noundef %num_vfs_param, i32 noundef %88) #17
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.end309, %if.end286.if.end7.i.i_crit_edge
  %94 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vfdb, align 8
  %nr_virtfn328 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %95, i32 0, i32 3, i32 7
  %96 = ptrtoint ptr %nr_virtfn328 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %nr_virtfn328, align 2
  %conv329 = zext i16 %97 to i32
  %98 = mul nuw nsw i32 %conv329, 736
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %98, i32 noundef 3520) #18
  %99 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vfdb, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call8.i.i, ptr %100, align 8
  %102 = load ptr, ptr %vfdb, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %tobool334.not = icmp eq ptr %104, null
  br i1 %tobool334.not, label %do.end339, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i.i
  %105 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vfdb, align 8
  %nr_virtfn356652 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %106, i32 0, i32 3, i32 7
  %107 = ptrtoint ptr %nr_virtfn356652 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %nr_virtfn356652, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp358654.not = icmp eq i16 %108, 0
  br i1 %cmp358654.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end339:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev341 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %109 = ptrtoint ptr %dev341 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev341, align 4
  %tobool342.not = icmp eq ptr %110, null
  %spec.select635 = select i1 %tobool342.not, ptr @.str.3, ptr %110
  %call350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.41, i32 noundef 1250, ptr noundef nonnull %spec.select635) #17
  br label %do.body457

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %111 = phi ptr [ %138, %for.body.for.body_crit_edge ], [ %106, %for.cond.preheader.for.body_crit_edge ]
  %i.0655 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv360 = trunc i32 %i.0655 to i8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %index = getelementptr %struct.bnx2x_virtf, ptr %113, i32 %i.0655, i32 13
  %114 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv360, ptr %index, align 8
  %115 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sriov, align 8
  %add363 = add i32 %116, %i.0655
  %conv364 = trunc i32 %add363 to i8
  %117 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vfdb, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  %abs_vfid = getelementptr %struct.bnx2x_virtf, ptr %120, i32 %i.0655, i32 14
  %121 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv364, ptr %abs_vfid, align 1
  %122 = load ptr, ptr %vfdb, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %state = getelementptr %struct.bnx2x_virtf, ptr %124, i32 %i.0655, i32 2
  %125 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %state, align 1
  %126 = load ptr, ptr %vfdb, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 8
  %op_mutex = getelementptr %struct.bnx2x_virtf, ptr %128, i32 %i.0655, i32 25
  tail call void @__mutex_init(ptr noundef %op_mutex, ptr noundef nonnull @.str.60, ptr noundef nonnull @bnx2x_iov_init_one.__key) #14
  %129 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %vfdb, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %op_current = getelementptr %struct.bnx2x_virtf, ptr %132, i32 %i.0655, i32 26
  %133 = ptrtoint ptr %op_current to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %op_current, align 8
  %134 = load ptr, ptr %vfdb, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %spoofchk = getelementptr %struct.bnx2x_virtf, ptr %136, i32 %i.0655, i32 5
  %137 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %spoofchk, align 2
  %inc = add nuw nsw i32 %i.0655, 1
  %138 = load ptr, ptr %vfdb, align 8
  %nr_virtfn356 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %138, i32 0, i32 3, i32 7
  %139 = ptrtoint ptr %nr_virtfn356 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %nr_virtfn356, align 2
  %conv357 = zext i16 %140 to i32
  %cmp358 = icmp ult i32 %inc, %conv357
  br i1 %cmp358, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call383 = tail call fastcc i32 @bnx2x_get_vf_igu_cam_info(ptr noundef %bp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %tobool384.not = icmp eq i32 %call383, 0
  br i1 %tobool384.not, label %do.end389, label %if.end403

do.end389:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev391 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %141 = ptrtoint ptr %dev391 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev391, align 4
  %tobool392.not = icmp eq ptr %142, null
  %spec.select636 = select i1 %tobool392.not, ptr @.str.3, ptr %142
  %call400 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.41, i32 noundef 1268, ptr noundef nonnull %spec.select636) #17
  br label %do.body457

if.end403:                                        ; preds = %for.end
  %call1.i.i.i.i645 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 46080, i32 noundef 3520, i32 noundef 4) #18
  %143 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vfdb, align 8
  %vfqs = getelementptr inbounds %struct.bnx2x_vfdb, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %vfqs to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call1.i.i.i.i645, ptr %vfqs, align 4
  %146 = load ptr, ptr %vfdb, align 8
  %vfqs407 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %vfqs407 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %vfqs407, align 4
  %tobool408.not = icmp eq ptr %148, null
  br i1 %tobool408.not, label %do.end413, label %do.body428

do.end413:                                        ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #16
  %dev415 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %149 = ptrtoint ptr %dev415 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev415, align 4
  %tobool416.not = icmp eq ptr %150, null
  %spec.select637 = select i1 %tobool416.not, ptr @.str.3, ptr %150
  %call424 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.41, i32 noundef 1279, ptr noundef nonnull %spec.select637) #17
  br label %do.body457

do.body428:                                       ; preds = %if.end403
  %event_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %146, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %event_mutex, ptr noundef nonnull @.str.68, ptr noundef nonnull @bnx2x_iov_init_one.__key.67) #14
  %151 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %152, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %bulletin_mutex, ptr noundef nonnull @.str.70, ptr noundef nonnull @bnx2x_iov_init_one.__key.69) #14
  %shmem2_base = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 72, i32 3
  %153 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %shmem2_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool437.not = icmp eq i32 %154, 0
  br i1 %tobool437.not, label %do.body428.cleanup_crit_edge, label %land.lhs.true438

do.body428.cleanup_crit_edge:                     ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true438:                                 ; preds = %do.body428
  %155 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regview.i, align 8
  %add.ptr = getelementptr i8, ptr %156, i32 %154
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !722
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !738
  call void @__sanitizer_cov_trace_const_cmp4(i32 492, i32 %158)
  %cmp445 = icmp ugt i32 %158, 492
  br i1 %cmp445, label %do.body448, label %land.lhs.true438.cleanup_crit_edge

land.lhs.true438.cleanup_crit_edge:               ; preds = %land.lhs.true438
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body448:                                       ; preds = %land.lhs.true438
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !739
  tail call void @arm_heavy_mb() #14
  %159 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regview.i, align 8
  %161 = ptrtoint ptr %shmem2_base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %shmem2_base, align 4
  %add454 = add i32 %162, 492
  %add.ptr455 = getelementptr i8, ptr %160, i32 %add454
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr455, i32 16777216) #14, !srcloc !716
  br label %cleanup

do.body457:                                       ; preds = %do.end413, %do.end389, %do.end339, %if.end281.do.body457_crit_edge, %bnx2x_sriov_info.exit, %do.end262
  %err.0 = phi i32 [ -19, %bnx2x_sriov_info.exit ], [ -12, %do.end413 ], [ -22, %do.end389 ], [ -12, %do.end339 ], [ -12, %do.end262 ], [ 0, %if.end281.do.body457_crit_edge ]
  %msg_enable458 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %163 = ptrtoint ptr %msg_enable458 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %msg_enable458, align 8
  %and459 = and i32 %164, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and459)
  %tobool460.not = icmp eq i32 %and459, 0
  br i1 %tobool460.not, label %do.body457.do.end484_crit_edge, label %do.end470, !prof !702

do.body457.do.end484_crit_edge:                   ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end484

do.end470:                                        ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #16
  %dev472 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %165 = ptrtoint ptr %dev472 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev472, align 4
  %tobool473.not = icmp eq ptr %166, null
  %spec.select638 = select i1 %tobool473.not, ptr @.str.3, ptr %166
  %call481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.41, i32 noundef 1294, ptr noundef nonnull %spec.select638, i32 noundef %err.0) #17
  br label %do.end484

do.end484:                                        ; preds = %do.end470, %do.body457.do.end484_crit_edge
  %167 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vfdb, align 8
  %tobool.not.i648 = icmp eq ptr %168, null
  br i1 %tobool.not.i648, label %do.end484.__bnx2x_iov_free_vfdb.exit_crit_edge, label %if.then.i

do.end484.__bnx2x_iov_free_vfdb.exit_crit_edge:   ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bnx2x_iov_free_vfdb.exit

if.then.i:                                        ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #16
  %vfqs.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %vfqs.i, align 4
  tail call void @kfree(ptr noundef %170) #14
  %171 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vfdb, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 8
  tail call void @kfree(ptr noundef %174) #14
  %175 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %vfdb, align 8
  tail call void @kfree(ptr noundef %176) #14
  br label %__bnx2x_iov_free_vfdb.exit

__bnx2x_iov_free_vfdb.exit:                       ; preds = %if.then.i, %do.end484.__bnx2x_iov_free_vfdb.exit_crit_edge
  %177 = ptrtoint ptr %vfdb to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %vfdb, align 8
  br label %cleanup

cleanup:                                          ; preds = %__bnx2x_iov_free_vfdb.exit, %do.body448, %land.lhs.true438.cleanup_crit_edge, %do.body428.cleanup_crit_edge, %do.end239, %do.end199, %do.end178, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end178 ], [ 0, %do.end239 ], [ %err.0, %__bnx2x_iov_free_vfdb.exit ], [ 0, %do.end199 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %do.body448 ], [ 0, %land.lhs.true438.cleanup_crit_edge ], [ 0, %do.body428.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_get_vf_igu_cam_info(ptr nocapture noundef readonly %bp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %vfdb.i.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %sb_id.0108 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %current_pf.0107 = phi i8 [ 0, %entry ], [ %current_pf.2, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regview, align 8
  %mul = shl i32 %sb_id.0108, 2
  %add = add nuw nsw i32 %mul, 1249280
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !722
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !740
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and2 = lshr i32 %3, 7
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = trunc i32 %and2 to i8
  %conv9 = and i8 %5, 7
  br label %do.body

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfid, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %current_pf.0107, i8 %7)
  %cmp12 = icmp eq i8 %current_pf.0107, %7
  br i1 %cmp12, label %if.then14, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then14:                                        ; preds = %if.else
  %conv15 = trunc i32 %sb_id.0108 to i8
  %8 = trunc i32 %and2 to i8
  %conv18 = and i8 %8, 63
  %9 = ptrtoint ptr %vfdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfdb.i.i.i, align 8
  %nr_virtfn.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %10, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %nr_virtfn.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nr_virtfn.i.i.i, align 2
  %conv.i.i.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp12.not.i.i.i = icmp eq i16 %12, 0
  br i1 %cmp12.not.i.i.i, label %if.then14.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then14.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then14
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %idx.013.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %abs_vfid3.i.i.i = getelementptr %struct.bnx2x_virtf, ptr %14, i32 %idx.013.i.i.i, i32 14
  %15 = ptrtoint ptr %abs_vfid3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %abs_vfid3.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %conv18)
  %cmp6.i.i.i = icmp eq i8 %16, %conv18
  br i1 %cmp6.i.i.i, label %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %idx.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

bnx2x_vf_idx_by_abs_fid.exit.i.i:                 ; preds = %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, %if.then14.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ 0, %if.then14.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ], [ %conv.i.i.i, %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ], [ %idx.013.i.i.i, %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ]
  %conv1.i.i = and i32 %idx.0.lcssa.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv.i.i.i)
  %cmp.i.i = icmp uge i32 %conv1.i.i, %conv.i.i.i
  %tobool.not.i.i = icmp eq ptr %10, null
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %bnx2x_vf_idx_by_abs_fid.exit.i.i.bnx2x_vf_set_igu_info.exit_crit_edge, label %land.lhs.true.i.i

bnx2x_vf_idx_by_abs_fid.exit.i.i.bnx2x_vf_set_igu_info.exit_crit_edge: ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_set_igu_info.exit

land.lhs.true.i.i:                                ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 8
  %tobool6.not.i.i = icmp eq ptr %18, null
  %arrayidx.i.i = getelementptr %struct.bnx2x_virtf, ptr %18, i32 %conv1.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = select i1 %tobool6.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.bnx2x_vf_set_igu_info.exit_crit_edge, label %if.then.i

land.lhs.true.i.i.bnx2x_vf_set_igu_info.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_set_igu_info.exit

if.then.i:                                        ; preds = %land.lhs.true.i.i
  %first_vf_igu_entry.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %10, i32 0, i32 10
  %19 = ptrtoint ptr %first_vf_igu_entry.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %first_vf_igu_entry.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool1.not.i = icmp eq i16 %20, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = trunc i32 %sb_id.0108 to i16
  %conv3.i = and i16 %21, 255
  %22 = ptrtoint ptr %first_vf_igu_entry.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv3.i, ptr %first_vf_igu_entry.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %num_sbs.i = getelementptr %struct.bnx2x_virtf, ptr %18, i32 %conv1.i.i, i32 9, i32 2
  %23 = ptrtoint ptr %num_sbs.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_sbs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not.i = icmp eq i8 %24, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %igu_base_id.i = getelementptr %struct.bnx2x_virtf, ptr %18, i32 %conv1.i.i, i32 11
  %25 = ptrtoint ptr %igu_base_id.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv15, ptr %igu_base_id.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %26 = ptrtoint ptr %num_sbs.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_sbs.i, align 2
  %inc.i = add i8 %27, 1
  store i8 %inc.i, ptr %num_sbs.i, align 2
  %sb_count.i = getelementptr %struct.bnx2x_virtf, ptr %18, i32 %conv1.i.i, i32 10
  %28 = ptrtoint ptr %sb_count.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sb_count.i, align 2
  %inc11.i = add i8 %29, 1
  store i8 %inc11.i, ptr %sb_count.i, align 2
  br label %bnx2x_vf_set_igu_info.exit

bnx2x_vf_set_igu_info.exit:                       ; preds = %if.end8.i, %land.lhs.true.i.i.bnx2x_vf_set_igu_info.exit_crit_edge, %bnx2x_vf_idx_by_abs_fid.exit.i.i.bnx2x_vf_set_igu_info.exit_crit_edge
  %30 = ptrtoint ptr %vfdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vfdb.i.i.i, align 8
  %vf_sbs_pool.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %vf_sbs_pool.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vf_sbs_pool.i, align 8
  %inc14.i = add i16 %33, 1
  store i16 %inc14.i, ptr %vf_sbs_pool.i, align 8
  br label %do.body

do.body:                                          ; preds = %bnx2x_vf_set_igu_info.exit, %if.else.do.body_crit_edge, %if.then6
  %current_pf.1 = phi i8 [ %conv9, %if.then6 ], [ %current_pf.0107, %bnx2x_vf_set_igu_info.exit ], [ %current_pf.0107, %if.else.do.body_crit_edge ]
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and21 = and i32 %35, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body.for.inc_crit_edge, label %do.end, !prof !702

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %tobool28.not = icmp eq ptr %37, null
  %spec.select = select i1 %tobool28.not, ptr @.str.3, ptr %37
  %cond33 = select i1 %tobool5.not, ptr @.str.373, ptr @.str.372
  %cond44.v = select i1 %tobool5.not, i32 63, i32 7
  %cond44 = and i32 %cond44.v, %and2
  %and45 = lshr i32 %3, 1
  %shr46 = and i32 %and45, 63
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.371, i32 noundef 1095, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond33, i32 noundef %cond44, i32 noundef %sb_id.0108, i32 noundef %shr46) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %current_pf.2 = phi i8 [ %current_pf.1, %do.end ], [ %current_pf.1, %do.body.for.inc_crit_edge ], [ %current_pf.0107, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %sb_id.0108, 1
  %exitcond.not = icmp eq i32 %inc, 136
  br i1 %exitcond.not, label %do.body51, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body51:                                        ; preds = %for.inc
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 8
  %and53 = and i32 %39, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.do.end79_crit_edge, label %do.end64, !prof !702

do.body51.do.end79_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end79

do.end64:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %tobool67.not = icmp eq ptr %41, null
  %spec.select106 = select i1 %tobool67.not, ptr @.str.3, ptr %41
  %42 = ptrtoint ptr %vfdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vfdb.i.i.i, align 8
  %vf_sbs_pool = getelementptr inbounds %struct.bnx2x_vfdb, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %vf_sbs_pool to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vf_sbs_pool, align 8
  %conv75 = zext i16 %45 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.371, i32 noundef 1097, ptr noundef nonnull %spec.select106, i32 noundef %conv75) #17
  br label %do.end79

do.end79:                                         ; preds = %do.end64, %do.body51.do.end79_crit_edge
  %46 = ptrtoint ptr %vfdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vfdb.i.i.i, align 8
  %vf_sbs_pool81 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %vf_sbs_pool81 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vf_sbs_pool81, align 8
  %conv82 = zext i16 %49 to i32
  ret i32 %conv82
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_remove_one(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %call.i = tail call i32 @pci_vfs_assigned(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  %msg_enable.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.bnx2x_disable_sriov.exit_crit_edge, label %do.end.i, !prof !702

do.body.i.bnx2x_disable_sriov.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_disable_sriov.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.3, ptr %7
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef 2549, ptr noundef nonnull %spec.select.i) #17
  br label %bnx2x_disable_sriov.exit

if.end10.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_sriov(ptr noundef %9) #14
  br label %bnx2x_disable_sriov.exit

bnx2x_disable_sriov.exit:                         ; preds = %if.end10.i, %do.end.i, %do.body.i.bnx2x_disable_sriov.exit_crit_edge
  %10 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfdb, align 8
  %total45 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %11, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %total45 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %total45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp47.not = icmp eq i16 %13, 0
  br i1 %cmp47.not, label %bnx2x_disable_sriov.exit.for.end_crit_edge, label %for.body.lr.ph

bnx2x_disable_sriov.exit.for.end_crit_edge:       ; preds = %bnx2x_disable_sriov.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %bnx2x_disable_sriov.exit
  %pf_num = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end24.for.body_crit_edge, %for.body.lr.ph
  %14 = phi ptr [ %11, %for.body.lr.ph ], [ %33, %do.end24.for.body_crit_edge ]
  %vf_idx.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end24.for.body_crit_edge ]
  %sriov = getelementptr inbounds %struct.bnx2x_vfdb, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %pf_num to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf_num, align 2
  %17 = or i8 %16, 8
  %or = zext i8 %17 to i32
  %18 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sriov, align 8
  %add = add i32 %19, %vf_idx.048
  %conv7 = shl i32 %add, 4
  %or8 = or i32 %conv7, %or
  %conv9 = trunc i32 %or8 to i16
  %call = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv9) #14
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 8
  %and = and i32 %21, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %for.body.do.end24_crit_edge, label %do.end, !prof !702

for.body.do.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %tobool15.not = icmp eq ptr %23, null
  %spec.select = select i1 %tobool15.not, ptr @.str.3, ptr %23
  %24 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vfdb, align 8
  %sriov18 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %sriov18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sriov18, align 8
  %add20 = add i32 %27, %vf_idx.048
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 1316, ptr noundef nonnull %spec.select, i32 noundef %add20) #17
  br label %do.end24

do.end24:                                         ; preds = %do.end, %for.body.do.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !721
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 37944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !716
  %30 = ptrtoint ptr %pf_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pf_num, align 2
  %conv26 = zext i8 %31 to i16
  %call27 = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv26) #14
  %inc = add nuw nsw i32 %vf_idx.048, 1
  %32 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vfdb, align 8
  %total = getelementptr inbounds %struct.bnx2x_vfdb, ptr %33, i32 0, i32 3, i32 5
  %34 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %total, align 2
  %conv = zext i16 %35 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.end24.for.body_crit_edge, label %do.end24.for.end_crit_edge

do.end24.for.end_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end24.for.body_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %do.end24.for.end_crit_edge, %bnx2x_disable_sriov.exit.for.end_crit_edge
  %.lcssa = phi ptr [ %11, %bnx2x_disable_sriov.exit.for.end_crit_edge ], [ %33, %do.end24.for.end_crit_edge ]
  %tobool.not.i44 = icmp eq ptr %.lcssa, null
  br i1 %tobool.not.i44, label %for.end.__bnx2x_iov_free_vfdb.exit_crit_edge, label %if.then.i

for.end.__bnx2x_iov_free_vfdb.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bnx2x_iov_free_vfdb.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %vfqs.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %.lcssa, i32 0, i32 1
  %36 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vfqs.i, align 4
  tail call void @kfree(ptr noundef %37) #14
  %38 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vfdb, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void @kfree(ptr noundef %41) #14
  %42 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vfdb, align 8
  tail call void @kfree(ptr noundef %43) #14
  br label %__bnx2x_iov_free_vfdb.exit

__bnx2x_iov_free_vfdb.exit:                       ; preds = %if.then.i, %for.end.__bnx2x_iov_free_vfdb.exit_crit_edge
  %44 = ptrtoint ptr %vfdb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %vfdb, align 8
  br label %cleanup

cleanup:                                          ; preds = %__bnx2x_iov_free_vfdb.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_disable_sriov(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_vfs_assigned(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.end, !prof !702

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %5
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef 2549, ptr noundef nonnull %spec.select) #17
  br label %return

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_sriov(ptr noundef %7) #14
  br label %return

return:                                           ; preds = %if.end10, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_free_mem(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.cond.preheader
  %i.0116 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %do.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdb, align 8
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %3, i32 0, i32 2, i32 %i.0116
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.do.end_crit_edge, label %if.then3

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %size = getelementptr %struct.bnx2x_vfdb, ptr %3, i32 0, i32 2, i32 %i.0116, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %mapping = getelementptr %struct.bnx2x_vfdb, ptr %3, i32 0, i32 2, i32 %i.0116, i32 1
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mapping, align 4
  br label %do.end

do.end:                                           ; preds = %if.then3, %for.body.do.end_crit_edge
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.body8, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body8:                                         ; preds = %do.end
  %14 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfdb, align 8
  %sp_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %sp_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sp_dma, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %do.body8.do.body33_crit_edge, label %if.then12

do.body8.do.body33_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %size17 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %15, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size17, align 4
  %mapping23 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %15, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %mapping23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mapping23, align 4
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #14
  %24 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vfdb, align 8
  %sp_dma25 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %sp_dma25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %sp_dma25, align 4
  %27 = load ptr, ptr %vfdb, align 8
  %mapping29 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %27, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %mapping29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mapping29, align 4
  br label %do.body33

do.body33:                                        ; preds = %if.then12, %do.body8.do.body33_crit_edge
  %29 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vfdb, align 8
  %mbx_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %mbx_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mbx_dma, align 4
  %tobool36.not = icmp eq ptr %32, null
  br i1 %tobool36.not, label %do.body33.do.body58_crit_edge, label %if.then37

do.body33.do.body58_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

if.then37:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %size42 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %30, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size42, align 4
  %mapping48 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %30, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %mapping48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mapping48, align 4
  tail call void @dma_free_attrs(ptr noundef %dev39, i32 noundef %36, ptr noundef nonnull %32, i32 noundef %38, i32 noundef 0) #14
  %39 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vfdb, align 8
  %mbx_dma50 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %mbx_dma50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %mbx_dma50, align 4
  %42 = load ptr, ptr %vfdb, align 8
  %mapping54 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %42, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %mapping54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %mapping54, align 4
  br label %do.body58

do.body58:                                        ; preds = %if.then37, %do.body33.do.body58_crit_edge
  %44 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vfdb, align 8
  %bulletin_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %bulletin_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bulletin_dma, align 8
  %tobool61.not = icmp eq ptr %47, null
  br i1 %tobool61.not, label %do.body58.cleanup_crit_edge, label %if.then62

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %size67 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %45, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %size67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size67, align 8
  %mapping73 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %45, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %mapping73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mapping73, align 4
  tail call void @dma_free_attrs(ptr noundef %dev64, i32 noundef %51, ptr noundef nonnull %47, i32 noundef %53, i32 noundef 0) #14
  %54 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vfdb, align 8
  %bulletin_dma75 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %bulletin_dma75 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %bulletin_dma75, align 8
  %57 = load ptr, ptr %vfdb, align 8
  %mapping79 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %57, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %mapping79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mapping79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body58.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_alloc_mem(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup225_crit_edge, label %if.end

entry.cleanup225_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup225

if.end:                                           ; preds = %entry
  %sriov = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sriov, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %5 to i32
  %add = add i32 %3, %conv
  %mul4 = shl i32 %add, 14
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev21 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %tot_size.0312 = phi i32 [ %mul4, %if.end ], [ %sub, %for.inc.for.body_crit_edge ]
  %i.0310 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfdb, align 8
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %7, i32 0, i32 2, i32 %i.0310
  %8 = tail call i32 @llvm.umin.i32(i32 %tot_size.0312, i32 32768)
  %size = getelementptr %struct.bnx2x_vfdb, ptr %7, i32 0, i32 2, i32 %i.0310, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.body
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %mapping = getelementptr %struct.bnx2x_vfdb, ptr %7, i32 0, i32 2, i32 %i.0310, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %8, ptr noundef %mapping, i32 noundef 3264, i32 noundef 0) #14
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.then11
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end42.critedge, label %do.end, !prof !702

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev21, align 4
  %tobool22.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool22.not, ptr @.str.3, ptr %15
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mapping, align 4
  %conv29 = zext i32 %17 to i64
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 1368, ptr noundef nonnull %spec.select, i64 noundef %conv29, ptr noundef nonnull %call.i) #17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx, align 4
  %mapping41 = getelementptr %struct.bnx2x_vfdb, ptr %7, i32 0, i32 2, i32 %i.0310, i32 1
  %20 = ptrtoint ptr %mapping41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %mapping41, align 4
  br label %for.inc

if.end42.critedge:                                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup225

for.inc:                                          ; preds = %if.end42.critedge, %if.else, %do.end
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %sub = sub i32 %tot_size.0312, %24
  %inc = add nuw nsw i32 %i.0310, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %25 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vfdb, align 8
  %nr_virtfn46 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %26, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %nr_virtfn46 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nr_virtfn46, align 2
  %conv47 = zext i16 %28 to i32
  %mul48 = mul nuw nsw i32 %conv47, 1624
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %mapping53 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %26, i32 0, i32 7, i32 1
  %call.i303 = tail call ptr @dma_alloc_attrs(ptr noundef %dev51, i32 noundef %mul48, ptr noundef %mapping53, i32 noundef 3264, i32 noundef 0) #14
  %tobool55.not = icmp eq ptr %call.i303, null
  br i1 %tobool55.not, label %for.end.if.end89_crit_edge, label %do.body57

for.end.if.end89_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

do.body57:                                        ; preds = %for.end
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 8
  %and59 = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body57.if.end89_crit_edge, label %do.end70, !prof !702

do.body57.if.end89_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

do.end70:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev21, align 4
  %tobool73.not = icmp eq ptr %34, null
  %spec.select300 = select i1 %tobool73.not, ptr @.str.3, ptr %34
  %35 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vfdb, align 8
  %mapping83 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %36, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %mapping83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mapping83, align 4
  %conv84 = zext i32 %38 to i64
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 1381, ptr noundef nonnull %spec.select300, i64 noundef %conv84, ptr noundef nonnull %call.i303) #17
  br label %if.end89

if.end89:                                         ; preds = %do.end70, %do.body57.if.end89_crit_edge, %for.end.if.end89_crit_edge
  %39 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vfdb, align 8
  %sp_dma92 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %sp_dma92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i303, ptr %sp_dma92, align 4
  %42 = load ptr, ptr %vfdb, align 8
  %sp_dma95 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %sp_dma95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sp_dma95, align 4
  %tobool97.not = icmp eq ptr %44, null
  br i1 %tobool97.not, label %if.end89.cleanup225_crit_edge, label %if.end99

if.end89.cleanup225_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup225

if.end99:                                         ; preds = %if.end89
  %size102 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %42, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %size102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul48, ptr %size102, align 4
  %46 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vfdb, align 8
  %nr_virtfn105 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %47, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %nr_virtfn105 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nr_virtfn105, align 2
  %conv106 = zext i16 %49 to i32
  %mul111 = shl nuw nsw i32 %conv106, 11
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 8
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %mapping116 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %47, i32 0, i32 4, i32 1
  %call.i304 = tail call ptr @dma_alloc_attrs(ptr noundef %dev114, i32 noundef %mul111, ptr noundef %mapping116, i32 noundef 3264, i32 noundef 0) #14
  %tobool118.not = icmp eq ptr %call.i304, null
  br i1 %tobool118.not, label %if.end99.if.end152_crit_edge, label %do.body120

if.end99.if.end152_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

do.body120:                                       ; preds = %if.end99
  %52 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable, align 8
  %and122 = and i32 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body120.if.end152_crit_edge, label %do.end133, !prof !702

do.body120.if.end152_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

do.end133:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev21, align 4
  %tobool136.not = icmp eq ptr %55, null
  %spec.select301 = select i1 %tobool136.not, ptr @.str.3, ptr %55
  %56 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vfdb, align 8
  %mapping146 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %57, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %mapping146 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mapping146, align 4
  %conv147 = zext i32 %59 to i64
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 1389, ptr noundef nonnull %spec.select301, i64 noundef %conv147, ptr noundef nonnull %call.i304) #17
  br label %if.end152

if.end152:                                        ; preds = %do.end133, %do.body120.if.end152_crit_edge, %if.end99.if.end152_crit_edge
  %60 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vfdb, align 8
  %mbx_dma155 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %mbx_dma155 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i304, ptr %mbx_dma155, align 4
  %63 = load ptr, ptr %vfdb, align 8
  %mbx_dma158 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %mbx_dma158 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mbx_dma158, align 4
  %tobool160.not = icmp eq ptr %65, null
  br i1 %tobool160.not, label %if.end152.cleanup225_crit_edge, label %if.end162

if.end152.cleanup225_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup225

if.end162:                                        ; preds = %if.end152
  %size165 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %63, i32 0, i32 4, i32 2
  %66 = ptrtoint ptr %size165 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul111, ptr %size165, align 4
  %67 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vfdb, align 8
  %nr_virtfn168 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %68, i32 0, i32 3, i32 7
  %69 = ptrtoint ptr %nr_virtfn168 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %nr_virtfn168, align 2
  %conv169 = zext i16 %70 to i32
  %mul170 = mul nuw nsw i32 %conv169, 48
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 8
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %mapping175 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %68, i32 0, i32 6, i32 1
  %call.i305 = tail call ptr @dma_alloc_attrs(ptr noundef %dev173, i32 noundef %mul170, ptr noundef %mapping175, i32 noundef 3264, i32 noundef 0) #14
  %tobool177.not = icmp eq ptr %call.i305, null
  br i1 %tobool177.not, label %if.end162.if.end211_crit_edge, label %do.body179

if.end162.if.end211_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211

do.body179:                                       ; preds = %if.end162
  %73 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable, align 8
  %and181 = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %do.body179.if.end211_crit_edge, label %do.end192, !prof !702

do.body179.if.end211_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211

do.end192:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev21, align 4
  %tobool195.not = icmp eq ptr %76, null
  %spec.select302 = select i1 %tobool195.not, ptr @.str.3, ptr %76
  %77 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vfdb, align 8
  %mapping205 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %78, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %mapping205 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mapping205, align 4
  %conv206 = zext i32 %80 to i64
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 1398, ptr noundef nonnull %spec.select302, i64 noundef %conv206, ptr noundef nonnull %call.i305) #17
  br label %if.end211

if.end211:                                        ; preds = %do.end192, %do.body179.if.end211_crit_edge, %if.end162.if.end211_crit_edge
  %81 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vfdb, align 8
  %bulletin_dma214 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %bulletin_dma214 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i305, ptr %bulletin_dma214, align 8
  %84 = load ptr, ptr %vfdb, align 8
  %bulletin_dma217 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %bulletin_dma217 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bulletin_dma217, align 8
  %tobool219.not = icmp eq ptr %86, null
  br i1 %tobool219.not, label %if.end211.cleanup225_crit_edge, label %if.end221

if.end211.cleanup225_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup225

if.end221:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  %size224 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %84, i32 0, i32 6, i32 2
  %87 = ptrtoint ptr %size224 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %mul170, ptr %size224, align 8
  br label %cleanup225

cleanup225:                                       ; preds = %if.end221, %if.end211.cleanup225_crit_edge, %if.end152.cleanup225_crit_edge, %if.end89.cleanup225_crit_edge, %cleanup, %entry.cleanup225_crit_edge
  %retval.0 = phi i32 [ 0, %if.end221 ], [ 0, %entry.cleanup225_crit_edge ], [ -12, %if.end211.cleanup225_crit_edge ], [ -12, %if.end152.cleanup225_crit_edge ], [ -12, %if.end89.cleanup225_crit_edge ], [ -12, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_link_update_vf(ptr noundef %bp, i32 noundef %idx) local_unnamed_addr #2 align 64 {
entry:
  %bulletin = alloca ptr, align 4
  %vf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %last_reported_link = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulletin) #14
  %0 = ptrtoint ptr %bulletin to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bulletin, align 4, !annotation !741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf) #14
  %1 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %vf, align 4, !annotation !741
  %call = call fastcc i32 @bnx2x_vf_op_prep(ptr noundef %bp, i32 noundef %idx, ptr noundef nonnull %vf, ptr noundef nonnull %bulletin, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %bulletin_mutex, i32 noundef 0) #14
  %4 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vf, align 4
  %link_cfg = getelementptr inbounds %struct.bnx2x_virtf, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_cfg, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.416)
  switch i8 %7, label %if.end.out_crit_edge [
    i8 0, label %if.then2
    i8 2, label %land.lhs.true
    i8 1, label %land.lhs.true46
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then2:                                         ; preds = %if.end
  %9 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bulletin, align 4
  %valid_bitmap = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %valid_bitmap, align 8
  %or = or i64 %12, 8
  store i64 %or, ptr %valid_bitmap, align 8
  %13 = ptrtoint ptr %last_reported_link to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %last_reported_link, align 4
  %link_speed = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %link_speed, align 8
  %link_flags = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %10, i32 0, i32 10
  %16 = ptrtoint ptr %link_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %link_flags, align 8
  %link_report_flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 69, i32 1
  %17 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %link_report_flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %if.then2.if.end8_crit_edge, label %if.then5

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %link_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %link_flags, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2.if.end8_crit_edge
  %21 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %link_report_flags, align 4
  %and1.i134 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i134)
  %tobool11.not = icmp eq i32 %and1.i134, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %link_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_flags, align 8
  %or14 = or i32 %24, 2
  store i32 %or14, ptr %link_flags, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end8.if.end15_crit_edge
  %25 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %link_report_flags, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not = icmp eq i32 %27, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %link_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_flags, align 8
  %or21 = or i32 %29, 4
  store i32 %or21, ptr %link_flags, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %30 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %link_report_flags, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool25.not = icmp eq i32 %32, 0
  br i1 %tobool25.not, label %if.end22.do.body_crit_edge, label %if.then26

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %link_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %link_flags, align 8
  %or28 = or i32 %34, 8
  store i32 %or28, ptr %link_flags, align 8
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %35 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bulletin, align 4
  %link_flags34 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %link_flags34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link_flags34, align 8
  %and = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %valid_bitmap37 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %valid_bitmap37 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %valid_bitmap37, align 8
  %or38 = or i64 %40, 8
  store i64 %or38, ptr %valid_bitmap37, align 8
  %or40 = or i32 %38, 1
  %41 = ptrtoint ptr %link_flags34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or40, ptr %link_flags34, align 8
  br label %do.body

land.lhs.true46:                                  ; preds = %if.end
  %42 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bulletin, align 4
  %link_flags47 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %link_flags47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_flags47, align 8
  %and48 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true46.out_crit_edge, label %if.then50

land.lhs.true46.out_crit_edge:                    ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then50:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  %valid_bitmap51 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %valid_bitmap51 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %valid_bitmap51, align 8
  %or52 = or i64 %47, 8
  store i64 %or52, ptr %valid_bitmap51, align 8
  %call.i = tail call i32 @bnx2x_get_link_cfg_idx(ptr noundef %bp) #14
  %arrayidx.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 73, i32 2, i32 %call.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %49, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv54 = select i1 %tobool.not.i, i16 10000, i16 20000
  %link_speed55 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %43, i32 0, i32 8
  %50 = ptrtoint ptr %link_speed55 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv54, ptr %link_speed55, align 8
  %51 = ptrtoint ptr %link_flags47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %link_flags47, align 8
  %and57 = and i32 %52, -2
  store i32 %and57, ptr %link_flags47, align 8
  br label %do.body

do.body:                                          ; preds = %if.then50, %if.then36, %if.then26, %if.end22.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %53 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable, align 8
  %and64 = and i32 %54, 8388612
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body.do.end80_crit_edge, label %do.end, !prof !702

do.body.do.end80_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end80

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %tobool70.not = icmp eq ptr %56, null
  %spec.select = select i1 %tobool70.not, ptr @.str.3, ptr %56
  %57 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %link_cfg, align 2
  %conv73 = zext i8 %58 to i32
  %59 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bulletin, align 4
  %link_speed74 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %link_speed74 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %link_speed74, align 8
  %conv75 = zext i16 %62 to i32
  %link_flags76 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %60, i32 0, i32 10
  %63 = ptrtoint ptr %link_flags76 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %link_flags76, align 8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 1494, ptr noundef nonnull %spec.select, i32 noundef %idx, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %64) #17
  br label %do.end80

do.end80:                                         ; preds = %do.end, %do.body.do.end80_crit_edge
  %call81 = tail call i32 @bnx2x_post_vf_bulletin(ptr noundef %bp, i32 noundef %idx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end80.out_crit_edge, label %do.end87

do.end80.out_crit_edge:                           ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end87:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #16
  %dev89 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %65 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev89, align 4
  %tobool90.not = icmp eq ptr %66, null
  %spec.select133 = select i1 %tobool90.not, ptr @.str.3, ptr %66
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef 1499, ptr noundef nonnull %spec.select133, i32 noundef %idx) #17
  br label %out

out:                                              ; preds = %do.end87, %do.end80.out_crit_edge, %land.lhs.true46.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge
  %rc.0 = phi i32 [ %call81, %do.end87 ], [ 0, %do.end80.out_crit_edge ], [ 0, %land.lhs.true46.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  %67 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex104 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %68, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %bulletin_mutex104) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulletin) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_vf_op_prep(ptr nocapture noundef readonly %bp, i32 noundef %vfidx, ptr nocapture noundef %vf, ptr nocapture noundef %bulletin, i1 noundef zeroext %test_queue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 92
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %1)
  %cmp.not = icmp eq i16 %1, 12288
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i32 noundef 2562, ptr noundef nonnull %spec.select) #17
  br label %return

if.end:                                           ; preds = %entry
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %4 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdb, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end9, label %if.end22

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev11 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  %tobool12.not = icmp eq ptr %7, null
  %spec.select152 = select i1 %tobool12.not, ptr @.str.3, ptr %7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.397, i32 noundef 2567, ptr noundef nonnull %spec.select152) #17
  br label %return

if.end22:                                         ; preds = %if.end
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %5, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_virtfn, align 2
  %conv24 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %vfidx)
  %cmp25.not = icmp sgt i32 %conv24, %vfidx
  br i1 %cmp25.not, label %land.lhs.true, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %dev32 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %10 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev32, align 4
  %tobool33.not = icmp eq ptr %11, null
  %spec.select153 = select i1 %tobool33.not, ptr @.str.3, ptr %11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef nonnull @.str.397, i32 noundef 2573, ptr noundef nonnull %spec.select153, i32 noundef %vfidx, i32 noundef %conv24) #17
  br label %return

land.lhs.true:                                    ; preds = %if.end22
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %tobool51.not = icmp eq ptr %13, null
  %arrayidx = getelementptr %struct.bnx2x_virtf, ptr %13, i32 %vfidx
  %spec.select154 = select i1 %tobool51.not, ptr null, ptr %arrayidx
  %14 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select154, ptr %vf, align 4
  %15 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vfdb, align 8
  %bulletin_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %bulletin_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bulletin_dma, align 8
  %add.ptr = getelementptr %struct.pf_vf_bulletin_content, ptr %18, i32 %vfidx
  %19 = ptrtoint ptr %bulletin to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %bulletin, align 4
  %20 = load ptr, ptr %vf, align 4
  %tobool59.not = icmp eq ptr %20, null
  br i1 %tobool59.not, label %do.end63, label %if.end76

do.end63:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev65 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %21 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev65, align 4
  %tobool66.not = icmp eq ptr %22, null
  %spec.select155 = select i1 %tobool66.not, ptr @.str.3, ptr %22
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.405, ptr noundef nonnull @.str.397, i32 noundef 2582, ptr noundef nonnull %spec.select155, i32 noundef %vfidx) #17
  br label %return

if.end76:                                         ; preds = %land.lhs.true
  br i1 %test_queue, label %land.lhs.true79, label %if.end76.if.end97_crit_edge

if.end76.if.end97_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

land.lhs.true79:                                  ; preds = %if.end76
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %20, i32 0, i32 12
  %23 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vfqs, align 4
  %tobool80.not = icmp eq ptr %24, null
  br i1 %tobool80.not, label %do.end84, label %land.lhs.true79.if.end97_crit_edge

land.lhs.true79.if.end97_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

do.end84:                                         ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  %dev86 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %25 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev86, align 4
  %tobool87.not = icmp eq ptr %26, null
  %spec.select156 = select i1 %tobool87.not, ptr @.str.3, ptr %26
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.408, ptr noundef nonnull @.str.397, i32 noundef 2588, ptr noundef nonnull %spec.select156, i32 noundef %vfidx) #17
  br label %return

if.end97:                                         ; preds = %land.lhs.true79.if.end97_crit_edge, %if.end76.if.end97_crit_edge
  %tobool98.not = icmp eq ptr %add.ptr, null
  br i1 %tobool98.not, label %do.end102, label %if.end97.return_crit_edge

if.end97.return_crit_edge:                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.end102:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  %dev104 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %27 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev104, align 4
  %tobool105.not = icmp eq ptr %28, null
  %spec.select157 = select i1 %tobool105.not, ptr @.str.3, ptr %28
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.411, ptr noundef nonnull @.str.397, i32 noundef 2594, ptr noundef nonnull %spec.select157, i32 noundef %vfidx) #17
  br label %return

return:                                           ; preds = %do.end102, %if.end97.return_crit_edge, %do.end84, %do.end63, %do.end30, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end30 ], [ -22, %do.end102 ], [ -22, %do.end84 ], [ -22, %do.end63 ], [ -22, %do.end9 ], [ 0, %if.end97.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_post_vf_bulletin(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_set_vf_link_state(ptr noundef %dev, i32 noundef %idx, i32 noundef %link_state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %vfdb = getelementptr i8, ptr %dev, i32 7072
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2.not = icmp eq ptr %3, null
  %arrayidx = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx
  %tobool5.not = icmp eq ptr %arrayidx, null
  %or.cond = or i1 %tobool2.not, %tobool5.not
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %link_cfg = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx, i32 1
  %4 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_cfg, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %link_state)
  %cmp = icmp eq i32 %conv, %link_state
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv9 = trunc i32 %link_state to i8
  %6 = ptrtoint ptr %link_cfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %link_cfg, align 2
  %call11 = tail call i32 @bnx2x_iov_link_update_vf(ptr noundef %add.ptr.i, i32 noundef %idx)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end8 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_link_update(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdb, align 8
  %nr_virtfn7 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %nr_virtfn7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_virtfn7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp9.not = icmp eq i16 %5, 0
  br i1 %cmp9.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %vfid.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call = tail call i32 @bnx2x_iov_link_update_vf(ptr noundef %bp, i32 noundef %vfid.010)
  %inc = add nuw nsw i32 %vfid.010, 1
  %6 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %7, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_nic_init(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %do.body11

do.body:                                          ; preds = %entry
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !702

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef 1542, ptr noundef nonnull %spec.select) #17
  br label %cleanup

do.body11:                                        ; preds = %entry
  br i1 %tobool1.not, label %do.body11.do.end39_crit_edge, label %do.end24, !prof !702

do.body11.do.end39_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end39

do.end24:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %dev26 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev26, align 4
  %tobool27.not = icmp eq ptr %7, null
  %spec.select303 = select i1 %tobool27.not, ptr @.str.3, ptr %7
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %9 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef 1546, ptr noundef nonnull %spec.select303, i32 noundef %conv) #17
  br label %do.end39

do.end39:                                         ; preds = %do.end24, %do.body11.do.end39_crit_edge
  tail call void @msleep(i32 noundef 100) #14
  %10 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfdb, align 8
  %nr_virtfn42325 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %11, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %nr_virtfn42325 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nr_virtfn42325, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp327.not = icmp eq i16 %13, 0
  br i1 %cmp327.not, label %do.end39.for.cond135.preheader_crit_edge, label %for.body.lr.ph

do.end39.for.cond135.preheader_crit_edge:         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond135.preheader

for.body.lr.ph:                                   ; preds = %do.end39
  %dev75 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body

for.cond135.preheader:                            ; preds = %do.end90.for.cond135.preheader_crit_edge, %do.end39.for.cond135.preheader_crit_edge
  %.lcssa = phi ptr [ %11, %do.end39.for.cond135.preheader_crit_edge ], [ %67, %do.end90.for.cond135.preheader_crit_edge ]
  %nr_virtfn138329 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %.lcssa, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %nr_virtfn138329 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nr_virtfn138329, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp140331.not = icmp eq i16 %15, 0
  br i1 %cmp140331.not, label %for.cond135.preheader.cleanup_crit_edge, label %for.body142.lr.ph

for.cond135.preheader.cleanup_crit_edge:          ; preds = %for.cond135.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body142.lr.ph:                                ; preds = %for.cond135.preheader
  %pdev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %dev175 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body142

for.body:                                         ; preds = %do.end90.for.body_crit_edge, %for.body.lr.ph
  %16 = phi ptr [ %11, %for.body.lr.ph ], [ %67, %do.end90.for.body_crit_edge ]
  %vfid.0328 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end90.for.body_crit_edge ]
  %tobool46.not = icmp eq ptr %16, null
  br i1 %tobool46.not, label %for.body.cond.end53_crit_edge, label %land.lhs.true

for.body.cond.end53_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end53

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool48.not = icmp eq ptr %18, null
  %arrayidx = getelementptr %struct.bnx2x_virtf, ptr %18, i32 %vfid.0328
  %spec.select304 = select i1 %tobool48.not, ptr null, ptr %arrayidx
  br label %cond.end53

cond.end53:                                       ; preds = %land.lhs.true, %for.body.cond.end53_crit_edge
  %cond54 = phi ptr [ null, %for.body.cond.end53_crit_edge ], [ %spec.select304, %land.lhs.true ]
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 8
  %and62 = and i32 %20, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %cond.end53.do.end90_crit_edge, label %do.end73, !prof !702

cond.end53.do.end90_crit_edge:                    ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end90

do.end73:                                         ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #16
  %sriov56 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %sriov56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sriov56, align 8
  %add = add i32 %22, %vfid.0328
  %mul = shl i32 %add, 4
  %div302 = lshr i32 %mul, 5
  %arrayidx58 = getelementptr %struct.bnx2x_vfdb, ptr %16, i32 0, i32 2, i32 %div302
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx58, align 4
  %and59 = and i32 %mul, 16
  %add.ptr = getelementptr %union.cdu_context, ptr %24, i32 %and59
  %25 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev75, align 4
  %tobool76.not = icmp eq ptr %26, null
  %spec.select305 = select i1 %tobool76.not, ptr @.str.3, ptr %26
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 14
  %27 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %abs_vfid, align 1
  %conv84 = zext i8 %28 to i32
  %num_sbs = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_sbs, align 2
  %conv85 = zext i8 %30 to i32
  %add86 = add i32 %mul, 1024
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.90, i32 noundef 1565, ptr noundef nonnull %spec.select305, i32 noundef %conv84, i32 noundef %conv85, i32 noundef %mul, i32 noundef %add86, ptr noundef %add.ptr) #17
  br label %do.end90

do.end90:                                         ; preds = %do.end73, %cond.end53.do.end90_crit_edge
  %alloc_resc.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9
  %31 = ptrtoint ptr %alloc_resc.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %alloc_resc.i, align 1
  %num_txqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %num_txqs.i, align 1
  %num_mac_filters.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %num_mac_filters.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %num_mac_filters.i, align 1
  %num_vlan_filters.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9, i32 4
  %34 = ptrtoint ptr %num_vlan_filters.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %num_vlan_filters.i, align 1
  %num_mc_filters.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9, i32 5
  %35 = ptrtoint ptr %num_mc_filters.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %num_mc_filters.i, align 1
  %sb_count.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 10
  %36 = ptrtoint ptr %sb_count.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sb_count.i, align 2
  %num_sbs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %num_sbs.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %num_sbs.i, align 1
  %filter_state = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 21
  %39 = ptrtoint ptr %filter_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %filter_state, align 8
  %40 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bp, align 8
  %cl_id = getelementptr inbounds %struct.bnx2x_fastpath, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %cl_id to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cl_id, align 8
  %sp_cl_id = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 15
  %44 = ptrtoint ptr %sp_cl_id to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %sp_cl_id, align 2
  %vf_vlans_pool = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 28
  tail call void @bnx2x_init_credit_pool(ptr noundef %vf_vlans_pool, i32 noundef 0, i32 noundef 2) #14
  %vf_macs_pool = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 29
  %45 = ptrtoint ptr %num_mac_filters.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_mac_filters.i, align 1
  %conv95 = zext i8 %46 to i32
  tail call void @bnx2x_init_credit_pool(ptr noundef %vf_macs_pool, i32 noundef 0, i32 noundef %conv95) #14
  %mcast_obj = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 23
  %47 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vfdb, align 8
  %sp_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %sp_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sp_dma, align 4
  %index = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 13
  %51 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index, align 8
  %conv98 = zext i8 %52 to i32
  %mul99 = mul nuw nsw i32 %conv98, 1624
  %add.ptr100 = getelementptr i8, ptr %50, i32 1056
  %add.ptr101 = getelementptr i8, ptr %add.ptr100, i32 %mul99
  %mapping = getelementptr inbounds %struct.bnx2x_vfdb, ptr %48, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mapping, align 4
  %add107 = add i32 %54, 1056
  %add108 = add i32 %add107, %mul99
  tail call void @bnx2x_init_mcast_obj(ptr noundef %bp, ptr noundef %mcast_obj, i8 noundef zeroext -1, i32 noundef 255, i8 noundef zeroext -1, i8 noundef zeroext -1, ptr noundef %add.ptr101, i32 noundef %add108, i32 noundef 9, ptr noundef %filter_state, i32 noundef 2) #14
  %55 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vfdb, align 8
  %mbx_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %mbx_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbx_dma, align 4
  %mul116 = shl i32 %vfid.0328, 11
  %add.ptr117 = getelementptr i8, ptr %58, i32 %mul116
  %arrayidx119 = getelementptr %struct.bnx2x_vfdb, ptr %56, i32 0, i32 5, i32 %vfid.0328
  %59 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr117, ptr %arrayidx119, align 8
  %60 = load ptr, ptr %vfdb, align 8
  %mapping122 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %60, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %mapping122 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mapping122, align 4
  %add130 = add i32 %62, %mul116
  %msg_mapping = getelementptr %struct.bnx2x_vfdb, ptr %60, i32 0, i32 5, i32 %vfid.0328, i32 1
  %63 = ptrtoint ptr %msg_mapping to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add130, ptr %msg_mapping, align 4
  %abs_vfid134 = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond54, i32 0, i32 14
  %64 = ptrtoint ptr %abs_vfid134 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %abs_vfid134, align 1
  tail call void @bnx2x_vf_enable_mbx(ptr noundef %bp, i8 noundef zeroext %65) #14
  %inc = add nuw nsw i32 %vfid.0328, 1
  %66 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vfdb, align 8
  %nr_virtfn42 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %67, i32 0, i32 3, i32 7
  %68 = ptrtoint ptr %nr_virtfn42 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %nr_virtfn42, align 2
  %conv43 = zext i16 %69 to i32
  %cmp = icmp ult i32 %inc, %conv43
  br i1 %cmp, label %do.end90.for.body_crit_edge, label %do.end90.for.cond135.preheader_crit_edge

do.end90.for.cond135.preheader_crit_edge:         ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond135.preheader

do.end90.for.body_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body142:                                      ; preds = %do.end209.for.body142_crit_edge, %for.body142.lr.ph
  %vfid.1332 = phi i32 [ 0, %for.body142.lr.ph ], [ %inc211, %do.end209.for.body142_crit_edge ]
  %70 = phi ptr [ %.lcssa, %for.body142.lr.ph ], [ %.pr, %do.end209.for.body142_crit_edge ]
  %tobool145.not = icmp eq ptr %70, null
  br i1 %tobool145.not, label %for.body142.cond.end155_crit_edge, label %land.lhs.true146

for.body142.cond.end155_crit_edge:                ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end155

land.lhs.true146:                                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %tobool149.not = icmp eq ptr %72, null
  %arrayidx153 = getelementptr %struct.bnx2x_virtf, ptr %72, i32 %vfid.1332
  %spec.select306 = select i1 %tobool149.not, ptr null, ptr %arrayidx153
  br label %cond.end155

cond.end155:                                      ; preds = %land.lhs.true146, %for.body142.cond.end155_crit_edge
  %cond156 = phi ptr [ null, %for.body142.cond.end155_crit_edge ], [ %spec.select306, %land.lhs.true146 ]
  %73 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %domain_nr.i.i, align 8
  %domain = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 17
  %79 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %domain, align 8
  %80 = load ptr, ptr %pdev.i, align 8
  %81 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vfdb, align 8
  %bus.i309 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %bus.i309 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i309, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %86 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 6
  %87 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %devfn.i, align 4
  %offset.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %82, i32 0, i32 3, i32 8
  %89 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %offset.i, align 4
  %conv1.i = zext i16 %90 to i32
  %add.i = add i32 %88, %conv1.i
  %stride.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %82, i32 0, i32 3, i32 9
  %91 = ptrtoint ptr %stride.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %stride.i, align 2
  %conv2.i = zext i16 %92 to i32
  %mul.i = mul i32 %vfid.1332, %conv2.i
  %add3.i = add i32 %add.i, %mul.i
  %shr.i = lshr i32 %add3.i, 8
  %add4.i = add nuw nsw i32 %shr.i, %conv.i
  %bus = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 18
  %93 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add4.i, ptr %bus, align 4
  %94 = load ptr, ptr %pdev.i, align 8
  %95 = load ptr, ptr %vfdb, align 8
  %devfn.i312 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 6
  %96 = ptrtoint ptr %devfn.i312 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %devfn.i312, align 4
  %offset.i313 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %95, i32 0, i32 3, i32 8
  %98 = ptrtoint ptr %offset.i313 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %offset.i313, align 4
  %conv.i314 = zext i16 %99 to i32
  %add.i315 = add i32 %97, %conv.i314
  %stride.i316 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %95, i32 0, i32 3, i32 9
  %100 = ptrtoint ptr %stride.i316 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %stride.i316, align 2
  %conv1.i317 = zext i16 %101 to i32
  %mul.i318 = mul i32 %vfid.1332, %conv1.i317
  %add2.i = add i32 %add.i315, %mul.i318
  %and.i = and i32 %add2.i, 255
  %devfn = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 19
  %102 = ptrtoint ptr %devfn to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and.i, ptr %devfn, align 8
  %103 = load ptr, ptr %pdev.i, align 8
  %104 = load ptr, ptr %vfdb, align 8
  %total.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %104, i32 0, i32 3, i32 5
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 14
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 7
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 8
  %conv.i321 = zext i32 %106 to i64
  %end.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 7, i32 1
  %107 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp5.i = icmp eq i32 %108, 0
  %sub.i = sub i32 1, %106
  %add15.i = add i32 %sub.i, %108
  %cond.i = select i1 %cmp5.i, i32 0, i32 %add15.i
  %109 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %total.i, align 2
  %conv16.i = zext i16 %110 to i32
  %div.i = udiv i32 %cond.i, %conv16.i
  %111 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %abs_vfid.i, align 1
  %conv17.i = zext i8 %112 to i32
  %mul.i322 = mul i32 %div.i, %conv17.i
  %conv18.i = zext i32 %mul.i322 to i64
  %add19.i = add nuw nsw i64 %conv18.i, %conv.i321
  %arrayidx20.i = getelementptr %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 20, i32 0
  %113 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %add19.i, ptr %arrayidx20.i, align 8
  %size23.i = getelementptr %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 20, i32 0, i32 1
  %114 = ptrtoint ptr %size23.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div.i, ptr %size23.i, align 8
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 9
  %115 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.1.i, align 8
  %conv.1.i = zext i32 %116 to i64
  %end.1.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 9, i32 1
  %117 = ptrtoint ptr %end.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %end.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp5.1.i = icmp eq i32 %118, 0
  %sub.1.i = sub i32 1, %116
  %add15.1.i = add i32 %sub.1.i, %118
  %cond.1.i = select i1 %cmp5.1.i, i32 0, i32 %add15.1.i
  %119 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %total.i, align 2
  %conv16.1.i = zext i16 %120 to i32
  %div.1.i = udiv i32 %cond.1.i, %conv16.1.i
  %mul.1.i = mul i32 %div.1.i, %conv17.i
  %conv18.1.i = zext i32 %mul.1.i to i64
  %add19.1.i = add nuw nsw i64 %conv18.1.i, %conv.1.i
  %arrayidx20.1.i = getelementptr %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 20, i32 1
  %121 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %add19.1.i, ptr %arrayidx20.1.i, align 8
  %size23.1.i = getelementptr %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 20, i32 1, i32 1
  %122 = ptrtoint ptr %size23.1.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %div.1.i, ptr %size23.1.i, align 8
  %arrayidx.2.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 11
  %123 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.2.i, align 8
  %conv.2.i = zext i32 %124 to i64
  %end.2.i = getelementptr %struct.pci_dev, ptr %103, i32 0, i32 47, i32 11, i32 1
  %125 = ptrtoint ptr %end.2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %end.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp5.2.i = icmp eq i32 %126, 0
  %sub.2.i = sub i32 1, %124
  %add15.2.i = add i32 %sub.2.i, %126
  %cond.2.i = select i1 %cmp5.2.i, i32 0, i32 %add15.2.i
  %127 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %total.i, align 2
  %conv16.2.i = zext i16 %128 to i32
  %div.2.i = udiv i32 %cond.2.i, %conv16.2.i
  %mul.2.i = mul i32 %div.2.i, %conv17.i
  %conv18.2.i = zext i32 %mul.2.i to i64
  %add19.2.i = add nuw nsw i64 %conv18.2.i, %conv.2.i
  %arrayidx20.2.i = getelementptr %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 20, i32 2
  %129 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %add19.2.i, ptr %arrayidx20.2.i, align 8
  %size23.2.i = getelementptr %struct.bnx2x_virtf, ptr %cond156, i32 0, i32 20, i32 2, i32 1
  %130 = ptrtoint ptr %size23.2.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %div.2.i, ptr %size23.2.i, align 8
  %131 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msg_enable, align 8
  %and162 = and i32 %132, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %cond.end155.do.end209_crit_edge, label %do.end173, !prof !702

cond.end155.do.end209_crit_edge:                  ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end209

do.end173:                                        ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #16
  %133 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev175, align 4
  %tobool176.not = icmp eq ptr %134, null
  %spec.select307 = select i1 %tobool176.not, ptr @.str.3, ptr %134
  %135 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx20.i, align 8
  %conv189 = trunc i64 %136 to i32
  %conv195 = trunc i64 %add19.1.i to i32
  %conv202 = trunc i64 %add19.2.i to i32
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.90, i32 noundef 1619, ptr noundef nonnull %spec.select307, i32 noundef %conv17.i, i32 noundef %add4.i, i32 noundef %and.i, i32 noundef %conv189, i32 noundef %div.i, i32 noundef %conv195, i32 noundef %div.1.i, i32 noundef %conv202, i32 noundef %div.2.i) #17
  br label %do.end209

do.end209:                                        ; preds = %do.end173, %cond.end155.do.end209_crit_edge
  %inc211 = add nuw nsw i32 %vfid.1332, 1
  %137 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr = load ptr, ptr %vfdb, align 8
  %nr_virtfn138 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %.pr, i32 0, i32 3, i32 7
  %138 = ptrtoint ptr %nr_virtfn138 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %nr_virtfn138, align 2
  %conv139 = zext i16 %139 to i32
  %cmp140 = icmp ult i32 %inc211, %conv139
  br i1 %cmp140, label %do.end209.for.body142_crit_edge, label %do.end209.cleanup_crit_edge

do.end209.cleanup_crit_edge:                      ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end209.for.body142_crit_edge:                  ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body142

cleanup:                                          ; preds = %do.end209.cleanup_crit_edge, %for.cond135.preheader.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_credit_pool(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_mcast_obj(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vf_enable_mbx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_chip_cleanup(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_virtfn17 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %nr_virtfn17 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_virtfn17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp19.not = icmp eq i16 %3, 0
  br i1 %cmp19.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %cond.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = phi ptr [ %.pr, %cond.end.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %for.body.cond.end_crit_edge, label %land.lhs.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %tobool6.not = icmp eq ptr %6, null
  %arrayidx = getelementptr %struct.bnx2x_virtf, ptr %6, i32 %i.020
  %spec.select = select i1 %tobool6.not, ptr null, ptr %arrayidx
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %for.body.cond.end_crit_edge
  %cond = phi ptr [ null, %for.body.cond.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call = tail call i32 @bnx2x_vf_release(ptr noundef %bp, ptr noundef %cond)
  %inc = add nuw nsw i32 %i.020, 1
  %7 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %.pr, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_release(ptr noundef %bp, ptr noundef %vf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208, i32 noundef 2282, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call.i = tail call zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext 11) #14
  br i1 %call.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.3, ptr %7
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, i32 noundef 2299, ptr noundef nonnull %spec.select.i) #17
  br label %bnx2x_lock_vf_pf_channel.exit

if.end.i:                                         ; preds = %do.end7
  %op_mutex.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %op_mutex.i, i32 noundef 0) #14
  %op_current.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 26
  %8 = ptrtoint ptr %op_current.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 11, ptr %op_current.i, align 8
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.bnx2x_lock_vf_pf_channel.exit_crit_edge, label %do.end11.i, !prof !702

if.end.i.bnx2x_lock_vf_pf_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_lock_vf_pf_channel.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev13.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %11 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13.i, align 4
  %tobool14.not.i = icmp eq ptr %12, null
  %spec.select35.i = select i1 %tobool14.not.i, ptr @.str.3, ptr %12
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %13 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %abs_vfid.i, align 1
  %conv22.i = zext i8 %14 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.211, i32 noundef 2311, ptr noundef nonnull %spec.select35.i, i32 noundef %conv22.i, i32 noundef 11) #17
  br label %bnx2x_lock_vf_pf_channel.exit

bnx2x_lock_vf_pf_channel.exit:                    ; preds = %do.end11.i, %if.end.i.bnx2x_lock_vf_pf_channel.exit_crit_edge, %do.end.i
  %call8 = tail call i32 @bnx2x_vf_free(ptr noundef %bp, ptr noundef %vf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %bnx2x_lock_vf_pf_channel.exit.if.end43_crit_edge, label %do.end27

bnx2x_lock_vf_pf_channel.exit.if.end43_crit_edge: ; preds = %bnx2x_lock_vf_pf_channel.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

do.end27:                                         ; preds = %bnx2x_lock_vf_pf_channel.exit
  call void @__sanitizer_cov_trace_pc() #16
  %abs_vfid28 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %15 = ptrtoint ptr %abs_vfid28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %abs_vfid28, align 1
  %conv29 = zext i8 %16 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2289, i32 noundef 9, ptr noundef nonnull @.str.209, i32 noundef %conv29, i32 noundef %call8) #14
  br label %if.end43

if.end43:                                         ; preds = %do.end27, %bnx2x_lock_vf_pf_channel.exit.if.end43_crit_edge
  tail call void @bnx2x_unlock_vf_pf_channel(ptr noundef %bp, ptr noundef %vf, i32 noundef 11)
  ret i32 %call8
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_init_ilt(ptr nocapture noundef readonly %bp, i16 noundef zeroext %line) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %ilt1 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 118
  %2 = ptrtoint ptr %ilt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ilt1, align 4
  %lines = getelementptr inbounds %struct.bnx2x_ilt, ptr %3, i32 0, i32 1
  %conv4 = zext i16 %line to i32
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i16 %line to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.034 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdb, align 8
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %5, i32 0, i32 2, i32 %i.034
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lines, align 4
  %add = add nuw nsw i32 %i.034, %conv4
  %page = getelementptr %struct.ilt_line, ptr %9, i32 %add, i32 1
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %page, align 4
  %mapping = getelementptr %struct.bnx2x_vfdb, ptr %5, i32 0, i32 2, i32 %i.034, i32 1
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapping, align 4
  %13 = load ptr, ptr %lines, align 4
  %arrayidx9 = getelementptr %struct.ilt_line, ptr %13, i32 %add
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %arrayidx9, align 4
  %size = getelementptr %struct.bnx2x_vfdb, ptr %5, i32 0, i32 2, i32 %i.034, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = load ptr, ptr %lines, align 4
  %size14 = getelementptr %struct.ilt_line, ptr %17, i32 %add, i32 2
  %18 = ptrtoint ptr %size14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %size14, align 4
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add16 = add nuw nsw i32 %conv4, 32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %add16, %for.end ], [ %conv, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_iov_eq_sp_event(ptr noundef %bp, ptr noundef %elem) local_unnamed_addr #2 align 64 {
entry:
  %rparam.i = alloca %struct.bnx2x_mcast_ramrod_params, align 4
  %ramrod_flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %elem to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %elem, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.417)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 15, label %if.end.sw.bb16_crit_edge
    i8 17, label %if.end.sw.bb16_crit_edge450
    i8 16, label %if.end.sw.bb16_crit_edge451
    i8 11, label %if.end.sw.bb16_crit_edge452
    i8 8, label %sw.bb49
    i8 9, label %sw.bb80
  ]

if.end.sw.bb16_crit_edge452:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb16_crit_edge451:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb16_crit_edge450:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %data = getelementptr inbounds %struct.event_ring_msg, ptr %elem, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %7 = and i32 %6, -65280
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %sw.bb.sw.epilog_crit_edge, label %do.end, !prof !702

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %12, null
  %spec.select = select i1 %tobool10.not, ptr @.str.3, ptr %12
  %conv12 = and i32 %8, 65535
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 1749, ptr noundef nonnull %spec.select, i32 noundef %conv12) #17
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge450, %if.end.sw.bb16_crit_edge451, %if.end.sw.bb16_crit_edge452
  %data17 = getelementptr inbounds %struct.event_ring_msg, ptr %elem, i32 0, i32 3
  %13 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data17, align 4
  %15 = and i32 %14, -65280
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %msg_enable21 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %17 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable21, align 8
  %and22 = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb16.sw.epilog_crit_edge, label %do.end33, !prof !702

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end33:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %dev35 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %19 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev35, align 4
  %tobool36.not = icmp eq ptr %20, null
  %spec.select417 = select i1 %tobool36.not, ptr @.str.3, ptr %20
  %conv44 = and i32 %16, 65535
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef 1756, ptr noundef nonnull %spec.select417, i32 noundef %conv44) #17
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end
  %data50 = getelementptr inbounds %struct.event_ring_msg, ptr %elem, i32 0, i32 3
  %21 = ptrtoint ptr %data50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data50, align 4
  %conv51 = zext i8 %22 to i32
  %msg_enable53 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %23 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable53, align 8
  %and54 = and i32 %24, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %sw.bb49.get_vf_crit_edge, label %do.end65, !prof !702

sw.bb49.get_vf_crit_edge:                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_vf

do.end65:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #16
  %dev67 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %25 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev67, align 4
  %tobool68.not = icmp eq ptr %26, null
  %spec.select418 = select i1 %tobool68.not, ptr @.str.3, ptr %26
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef 1761, ptr noundef nonnull %spec.select418, i32 noundef %conv51) #17
  br label %get_vf

sw.bb80:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %data81 = getelementptr inbounds %struct.event_ring_msg, ptr %elem, i32 0, i32 3
  %27 = ptrtoint ptr %data81 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data81, align 4
  %conv83 = zext i8 %28 to i32
  %dev89 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %29 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev89, align 4
  %tobool90.not = icmp eq ptr %30, null
  %spec.select419 = select i1 %tobool90.not, ptr @.str.3, ptr %30
  %err_id = getelementptr inbounds %struct.event_ring_msg, ptr %elem, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %err_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %err_id, align 1
  %conv99 = zext i8 %32 to i32
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.101, i32 noundef 1767, ptr noundef nonnull %spec.select419, i32 noundef %conv83, i32 noundef %conv99) #17
  br label %get_vf

sw.epilog:                                        ; preds = %do.end33, %sw.bb16.sw.epilog_crit_edge, %do.end, %sw.bb.sw.epilog_crit_edge
  %cid.0.in = phi i32 [ %16, %do.end33 ], [ %16, %sw.bb16.sw.epilog_crit_edge ], [ %8, %do.end ], [ %8, %sw.bb.sw.epilog_crit_edge ]
  %33 = and i32 %cid.0.in, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %33)
  %.not = icmp eq i32 %33, 1024
  br i1 %.not, label %if.end135, label %do.body106

do.body106:                                       ; preds = %sw.epilog
  %msg_enable107 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %34 = ptrtoint ptr %msg_enable107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable107, align 8
  %and108 = and i32 %35, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body106.cleanup_crit_edge, label %do.end119, !prof !702

do.body106.cleanup_crit_edge:                     ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end119:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #16
  %dev121 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %36 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev121, align 4
  %tobool122.not = icmp eq ptr %37, null
  %spec.select420 = select i1 %tobool122.not, ptr @.str.3, ptr %37
  %conv130 = and i32 %cid.0.in, 65535
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.101, i32 noundef 1775, ptr noundef nonnull %spec.select420, i32 noundef %conv130) #17
  br label %cleanup

if.end135:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %and137 = and i32 %cid.0.in, 15
  %conv136 = lshr i32 %cid.0.in, 4
  %and139 = and i32 %conv136, 63
  %phi.cast = and i32 %cid.0.in, 65535
  br label %get_vf

get_vf:                                           ; preds = %if.end135, %sw.bb80, %do.end65, %sw.bb49.get_vf_crit_edge
  %cid.1 = phi i32 [ 65535, %sw.bb80 ], [ 65535, %do.end65 ], [ 65535, %sw.bb49.get_vf_crit_edge ], [ %phi.cast, %if.end135 ]
  %abs_vfid.0 = phi i32 [ %conv83, %sw.bb80 ], [ %conv51, %do.end65 ], [ %conv51, %sw.bb49.get_vf_crit_edge ], [ %and139, %if.end135 ]
  %qidx.0 = phi i32 [ 0, %sw.bb80 ], [ 0, %do.end65 ], [ 0, %sw.bb49.get_vf_crit_edge ], [ %and137, %if.end135 ]
  %conv140 = trunc i32 %abs_vfid.0 to i16
  %38 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vfdb, align 8
  %nr_virtfn.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %39, i32 0, i32 3, i32 7
  %40 = ptrtoint ptr %nr_virtfn.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nr_virtfn.i.i, align 2
  %conv.i.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp12.not.i.i = icmp eq i16 %41, 0
  br i1 %cmp12.not.i.i, label %get_vf.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge, label %for.body.lr.ph.i.i

get_vf.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge:  ; preds = %get_vf
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i

for.body.lr.ph.i.i:                               ; preds = %get_vf
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %idx.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %abs_vfid3.i.i = getelementptr %struct.bnx2x_virtf, ptr %43, i32 %idx.013.i.i, i32 14
  %44 = ptrtoint ptr %abs_vfid3.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %abs_vfid3.i.i, align 1
  %46 = zext i8 %45 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %conv140)
  %cmp6.i.i = icmp eq i16 %46, %conv140
  br i1 %cmp6.i.i, label %for.body.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %idx.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i

bnx2x_vf_idx_by_abs_fid.exit.i:                   ; preds = %for.inc.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge, %for.body.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge, %get_vf.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge
  %idx.0.lcssa.i.i = phi i32 [ 0, %get_vf.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge ], [ %idx.013.i.i, %for.body.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge ], [ %conv.i.i, %for.inc.i.i.bnx2x_vf_idx_by_abs_fid.exit.i_crit_edge ]
  %conv1.i = and i32 %idx.0.lcssa.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %conv.i.i)
  %cmp.i = icmp uge i32 %conv1.i, %conv.i.i
  %tobool.not.i = icmp eq ptr %39, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %bnx2x_vf_idx_by_abs_fid.exit.i.do.end147_crit_edge, label %land.lhs.true.i

bnx2x_vf_idx_by_abs_fid.exit.i.do.end147_crit_edge: ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147

land.lhs.true.i:                                  ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %39, align 8
  %tobool6.not.i = icmp eq ptr %48, null
  %arrayidx.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i
  %tobool142.not = icmp eq ptr %arrayidx.i, null
  %or.cond = select i1 %tobool6.not.i, i1 true, i1 %tobool142.not
  br i1 %or.cond, label %land.lhs.true.i.do.end147_crit_edge, label %if.end162

land.lhs.true.i.do.end147_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147

do.end147:                                        ; preds = %land.lhs.true.i.do.end147_crit_edge, %bnx2x_vf_idx_by_abs_fid.exit.i.do.end147_crit_edge
  %dev149 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %49 = ptrtoint ptr %dev149 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev149, align 4
  %tobool150.not = icmp eq ptr %50, null
  %spec.select421 = select i1 %tobool150.not, ptr @.str.3, ptr %50
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.101, i32 noundef 1790, ptr noundef nonnull %spec.select421, i32 noundef %cid.1, i32 noundef %abs_vfid.0) #17
  br label %cleanup

if.end162:                                        ; preds = %land.lhs.true.i
  %51 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.418)
  switch i8 %3, label %if.end162.cleanup_crit_edge [
    i8 3, label %do.body165
    i8 15, label %do.body202
    i8 17, label %do.body235
    i8 16, label %do.body266
    i8 11, label %do.body297
    i8 9, label %sw.bb328
  ]

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body165:                                       ; preds = %if.end162
  %msg_enable166 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %52 = ptrtoint ptr %msg_enable166 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable166, align 8
  %and167 = and i32 %53, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body165.do.end194_crit_edge, label %do.end178, !prof !702

do.body165.do.end194_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end194

do.end178:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #16
  %dev180 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %54 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev180, align 4
  %tobool181.not = icmp eq ptr %55, null
  %spec.select422 = select i1 %tobool181.not, ptr @.str.3, ptr %55
  %abs_vfid189 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 14
  %56 = ptrtoint ptr %abs_vfid189 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %abs_vfid189, align 1
  %conv190 = zext i8 %57 to i32
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.101, i32 noundef 1797, ptr noundef nonnull %spec.select422, i32 noundef %conv190, i32 noundef %qidx.0) #17
  br label %do.end194

do.end194:                                        ; preds = %do.end178, %do.body165.do.end194_crit_edge
  %vfqs.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 12
  %58 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vfqs.i, align 4
  %complete_cmd = getelementptr %struct.bnx2x_vf_queue, ptr %59, i32 %qidx.0, i32 5, i32 15
  %60 = ptrtoint ptr %complete_cmd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %complete_cmd, align 4
  %sp_obj199 = getelementptr %struct.bnx2x_vf_queue, ptr %59, i32 %qidx.0, i32 5
  %call200 = tail call i32 %61(ptr noundef %bp, ptr noundef %sp_obj199, i32 noundef 8) #14
  br label %cleanup

do.body202:                                       ; preds = %if.end162
  %msg_enable203 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %62 = ptrtoint ptr %msg_enable203 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msg_enable203, align 8
  %and204 = and i32 %63, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %do.body202.do.end231_crit_edge, label %do.end215, !prof !702

do.body202.do.end231_crit_edge:                   ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end231

do.end215:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #16
  %dev217 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %64 = ptrtoint ptr %dev217 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev217, align 4
  %tobool218.not = icmp eq ptr %65, null
  %spec.select423 = select i1 %tobool218.not, ptr @.str.3, ptr %65
  %abs_vfid226 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 14
  %66 = ptrtoint ptr %abs_vfid226 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %abs_vfid226, align 1
  %conv227 = zext i8 %67 to i32
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.101, i32 noundef 1805, ptr noundef nonnull %spec.select423, i32 noundef %conv227, i32 noundef %qidx.0) #17
  br label %do.end231

do.end231:                                        ; preds = %do.end215, %do.body202.do.end231_crit_edge
  %vfqs.i431 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 12
  %68 = ptrtoint ptr %vfqs.i431 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vfqs.i431, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramrod_flags.i) #14
  %70 = ptrtoint ptr %ramrod_flags.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %ramrod_flags.i, align 4
  %data.i = getelementptr inbounds %struct.event_ring_msg, ptr %elem, i32 0, i32 3
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #14
  call void @_set_bit(i32 noundef 6, ptr noundef nonnull %ramrod_flags.i) #14
  %shr.i = lshr i32 %73, 17
  %74 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.419)
  switch i32 %shr.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #16
  %mac_obj.i = getelementptr %struct.bnx2x_vf_queue, ptr %69, i32 %qidx.0, i32 1
  %complete.i = getelementptr %struct.bnx2x_vf_queue, ptr %69, i32 %qidx.0, i32 1, i32 20
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_obj.i = getelementptr %struct.bnx2x_vf_queue, ptr %69, i32 %qidx.0, i32 2
  %complete4.i = getelementptr %struct.bnx2x_vf_queue, ptr %69, i32 %qidx.0, i32 2, i32 20
  br label %sw.epilog.i

do.end.i:                                         ; preds = %do.end231
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %tobool.not.i434 = icmp eq ptr %76, null
  %spec.select.i435 = select i1 %tobool.not.i434, ptr @.str.3, ptr %76
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377, ptr noundef nonnull @.str.378, i32 noundef 1688, ptr noundef nonnull %spec.select.i435, i32 noundef %73) #17
  br label %bnx2x_vf_handle_classification_eqe.exit

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb.i
  %complete4.sink.i = phi ptr [ %complete4.i, %sw.bb3.i ], [ %complete.i, %sw.bb.i ]
  %vlan_obj.sink.i = phi ptr [ %vlan_obj.i, %sw.bb3.i ], [ %mac_obj.i, %sw.bb.i ]
  %77 = ptrtoint ptr %complete4.sink.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %complete4.sink.i, align 4
  %call6.i = call i32 %78(ptr noundef %bp, ptr noundef %vlan_obj.sink.i, ptr noundef %elem, ptr noundef nonnull %ramrod_flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i436 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i436, label %do.end15.i, label %if.else.i

do.end15.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev17.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %79 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev17.i, align 4
  %tobool18.not.i = icmp eq ptr %80, null
  %spec.select74.i = select i1 %tobool18.not.i, ptr @.str.3, ptr %80
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380, ptr noundef nonnull @.str.378, i32 noundef 1692, ptr noundef nonnull %spec.select74.i, i32 noundef %call6.i) #17
  br label %bnx2x_vf_handle_classification_eqe.exit

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp29.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp29.not.i, label %if.else.i.bnx2x_vf_handle_classification_eqe.exit_crit_edge, label %do.body31.i

if.else.i.bnx2x_vf_handle_classification_eqe.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_handle_classification_eqe.exit

do.body31.i:                                      ; preds = %if.else.i
  %81 = ptrtoint ptr %msg_enable203 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable203, align 8
  %and.i = and i32 %82, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %do.body31.i.bnx2x_vf_handle_classification_eqe.exit_crit_edge, label %do.end38.i, !prof !702

do.body31.i.bnx2x_vf_handle_classification_eqe.exit_crit_edge: ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_handle_classification_eqe.exit

do.end38.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev40.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %83 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev40.i, align 4
  %tobool41.not.i = icmp eq ptr %84, null
  %spec.select75.i = select i1 %tobool41.not.i, ptr @.str.3, ptr %84
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.383, ptr noundef nonnull @.str.378, i32 noundef 1694, ptr noundef nonnull %spec.select75.i) #17
  br label %bnx2x_vf_handle_classification_eqe.exit

bnx2x_vf_handle_classification_eqe.exit:          ; preds = %do.end38.i, %do.body31.i.bnx2x_vf_handle_classification_eqe.exit_crit_edge, %if.else.i.bnx2x_vf_handle_classification_eqe.exit_crit_edge, %do.end15.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramrod_flags.i) #14
  br label %cleanup

do.body235:                                       ; preds = %if.end162
  %msg_enable236 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %85 = ptrtoint ptr %msg_enable236 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable236, align 8
  %and237 = and i32 %86, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %do.body235.do.end264_crit_edge, label %do.end248, !prof !702

do.body235.do.end264_crit_edge:                   ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end264

do.end248:                                        ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #16
  %dev250 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %87 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev250, align 4
  %tobool251.not = icmp eq ptr %88, null
  %spec.select424 = select i1 %tobool251.not, ptr @.str.3, ptr %88
  %abs_vfid259 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 14
  %89 = ptrtoint ptr %abs_vfid259 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %abs_vfid259, align 1
  %conv260 = zext i8 %90 to i32
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.101, i32 noundef 1810, ptr noundef nonnull %spec.select424, i32 noundef %conv260, i32 noundef %qidx.0) #17
  br label %do.end264

do.end264:                                        ; preds = %do.end248, %do.body235.do.end264_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rparam.i) #14
  %91 = getelementptr inbounds i8, ptr %rparam.i, i32 4
  %92 = call ptr @memset(ptr %91, i32 0, i32 16)
  %mcast_obj.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 23
  %93 = ptrtoint ptr %rparam.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %mcast_obj.i, ptr %rparam.i, align 4
  %clear_pending.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 23, i32 0, i32 10
  %94 = ptrtoint ptr %clear_pending.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clear_pending.i, align 4
  tail call void %95(ptr noundef %mcast_obj.i) #14
  %check_pending.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 23, i32 11
  %96 = ptrtoint ptr %check_pending.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %check_pending.i, align 8
  %call.i = tail call zeroext i1 %97(ptr noundef %mcast_obj.i) #14
  br i1 %call.i, label %if.then.i, label %do.end264.bnx2x_vf_handle_mcast_eqe.exit_crit_edge

do.end264.bnx2x_vf_handle_mcast_eqe.exit_crit_edge: ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_handle_mcast_eqe.exit

if.then.i:                                        ; preds = %do.end264
  %call7.i = call i32 @bnx2x_config_mcast(ptr noundef %bp, ptr noundef nonnull %rparam.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i437 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i437, label %do.end.i441, label %if.then.i.bnx2x_vf_handle_mcast_eqe.exit_crit_edge

if.then.i.bnx2x_vf_handle_mcast_eqe.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_handle_mcast_eqe.exit

do.end.i441:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i438 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %98 = ptrtoint ptr %dev.i438 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i438, align 4
  %tobool.not.i439 = icmp eq ptr %99, null
  %spec.select.i440 = select i1 %tobool.not.i439, ptr @.str.3, ptr %99
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.385, ptr noundef nonnull @.str.386, i32 noundef 1712, ptr noundef nonnull %spec.select.i440, i32 noundef %call7.i) #17
  br label %bnx2x_vf_handle_mcast_eqe.exit

bnx2x_vf_handle_mcast_eqe.exit:                   ; preds = %do.end.i441, %if.then.i.bnx2x_vf_handle_mcast_eqe.exit_crit_edge, %do.end264.bnx2x_vf_handle_mcast_eqe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rparam.i) #14
  br label %cleanup

do.body266:                                       ; preds = %if.end162
  %msg_enable267 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %100 = ptrtoint ptr %msg_enable267 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_enable267, align 8
  %and268 = and i32 %101, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %do.body266.do.end295_crit_edge, label %do.end279, !prof !702

do.body266.do.end295_crit_edge:                   ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end295

do.end279:                                        ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #16
  %dev281 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %102 = ptrtoint ptr %dev281 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev281, align 4
  %tobool282.not = icmp eq ptr %103, null
  %spec.select425 = select i1 %tobool282.not, ptr @.str.3, ptr %103
  %abs_vfid290 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 14
  %104 = ptrtoint ptr %abs_vfid290 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %abs_vfid290, align 1
  %conv291 = zext i8 %105 to i32
  %call292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.101, i32 noundef 1815, ptr noundef nonnull %spec.select425, i32 noundef %conv291, i32 noundef %qidx.0) #17
  br label %do.end295

do.end295:                                        ; preds = %do.end279, %do.body266.do.end295_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !742
  %filter_state.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %filter_state.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !743
  br label %cleanup

do.body297:                                       ; preds = %if.end162
  %msg_enable298 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %106 = ptrtoint ptr %msg_enable298 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_enable298, align 8
  %and299 = and i32 %107, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %do.body297.do.end326_crit_edge, label %do.end310, !prof !702

do.body297.do.end326_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end326

do.end310:                                        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #16
  %dev312 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %108 = ptrtoint ptr %dev312 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev312, align 4
  %tobool313.not = icmp eq ptr %109, null
  %spec.select426 = select i1 %tobool313.not, ptr @.str.3, ptr %109
  %abs_vfid321 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 14
  %110 = ptrtoint ptr %abs_vfid321 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %abs_vfid321, align 1
  %conv322 = zext i8 %111 to i32
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.101, i32 noundef 1820, ptr noundef nonnull %spec.select426, i32 noundef %conv322, i32 noundef %qidx.0) #17
  br label %do.end326

do.end326:                                        ; preds = %do.end310, %do.body297.do.end326_crit_edge
  %rss_conf_obj.i = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 24
  %clear_pending.i442 = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 24, i32 0, i32 10
  %112 = ptrtoint ptr %clear_pending.i442 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clear_pending.i442, align 4
  tail call void %113(ptr noundef %rss_conf_obj.i) #14
  br label %cleanup

sw.bb328:                                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  %malicious = getelementptr %struct.bnx2x_virtf, ptr %48, i32 %conv1.i, i32 4
  %114 = ptrtoint ptr %malicious to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %malicious, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb328, %do.end326, %do.end295, %bnx2x_vf_handle_mcast_eqe.exit, %bnx2x_vf_handle_classification_eqe.exit, %do.end194, %if.end162.cleanup_crit_edge, %do.end147, %do.end119, %do.body106.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb328 ], [ 0, %do.end147 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %do.end119 ], [ 1, %do.body106.cleanup_crit_edge ], [ 0, %do.end326 ], [ 0, %if.end162.cleanup_crit_edge ], [ 0, %do.end295 ], [ 0, %bnx2x_vf_handle_mcast_eqe.exit ], [ 0, %bnx2x_vf_handle_classification_eqe.exit ], [ 0, %do.end194 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_set_queue_sp_obj(ptr nocapture noundef readonly %bp, i32 noundef %vf_cid, ptr nocapture noundef writeonly %q_obj) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = trunc i32 %vf_cid to i16
  %3 = lshr i16 %2, 4
  %conv.i = and i16 %3, 63
  %nr_virtfn.i.i.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %nr_virtfn.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_virtfn.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12.not.i.i.i = icmp eq i16 %5, 0
  br i1 %cmp12.not.i.i.i, label %if.end.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %idx.013.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %abs_vfid3.i.i.i = getelementptr %struct.bnx2x_virtf, ptr %7, i32 %idx.013.i.i.i, i32 14
  %8 = ptrtoint ptr %abs_vfid3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %abs_vfid3.i.i.i, align 1
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i, i16 %10)
  %cmp6.i.i.i = icmp eq i16 %conv.i, %10
  br i1 %cmp6.i.i.i, label %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %idx.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_idx_by_abs_fid.exit.i.i

bnx2x_vf_idx_by_abs_fid.exit.i.i:                 ; preds = %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge, %if.end.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ 0, %if.end.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ], [ %conv.i.i.i, %for.inc.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ], [ %idx.013.i.i.i, %for.body.i.i.i.bnx2x_vf_idx_by_abs_fid.exit.i.i_crit_edge ]
  %conv1.i.i = and i32 %idx.0.lcssa.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i.i, i32 %conv.i.i.i)
  %cmp.i.i.not = icmp ult i32 %conv1.i.i, %conv.i.i.i
  br i1 %cmp.i.i.not, label %land.lhs.true.i.i, label %bnx2x_vf_idx_by_abs_fid.exit.i.i.do.end_crit_edge

bnx2x_vf_idx_by_abs_fid.exit.i.i.do.end_crit_edge: ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true.i.i:                                ; preds = %bnx2x_vf_idx_by_abs_fid.exit.i.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %tobool6.not.i.i = icmp eq ptr %12, null
  %arrayidx.i.i = getelementptr %struct.bnx2x_virtf, ptr %12, i32 %conv1.i.i
  %tobool1.not = icmp eq ptr %arrayidx.i.i, null
  %or.cond = select i1 %tobool6.not.i.i, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %land.lhs.true.i.i.do.end_crit_edge, label %if.then2

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then2:                                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %vf_cid, 15
  %vfqs = getelementptr %struct.bnx2x_virtf, ptr %12, i32 %conv1.i.i, i32 12
  %13 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vfqs, align 4
  %sp_obj = getelementptr %struct.bnx2x_vf_queue, ptr %14, i32 %and, i32 5
  %15 = ptrtoint ptr %q_obj to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sp_obj, ptr %q_obj, align 4
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.i.i.do.end_crit_edge, %bnx2x_vf_idx_by_abs_fid.exit.i.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %17
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef 1862, ptr noundef nonnull %spec.select, i32 noundef %vf_cid) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_adjust_stats_req(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup220_crit_edge, label %if.end

entry.cleanup220_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup220

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 3, i32 2
  %num_ethernet_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %4 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ethernet_queues, align 8
  %and.lobit = lshr exact i32 %and, 15
  %6 = xor i32 %and.lobit, 1
  %add = add i32 %6, %5
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and7 = and i32 %8, 8519680
  call void @__sanitizer_cov_trace_const_cmp4(i32 8519680, i32 %and7)
  %cmp = icmp eq i32 %and7, 8519680
  br i1 %cmp, label %do.end, label %if.end.do.end22_crit_edge, !prof !704

if.end.do.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %tobool13.not = icmp eq ptr %10, null
  %spec.select294 = select i1 %tobool13.not, ptr @.str.3, ptr %10
  %add19 = add i32 %add, %spec.select
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 1888, ptr noundef nonnull %spec.select294, i32 noundef %5, i32 noundef %6, i32 noundef %spec.select, i32 noundef %add19) #17
  br label %do.end22

do.end22:                                         ; preds = %do.end, %if.end.do.end22_crit_edge
  %fw_stats_req = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 111
  %11 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vfdb, align 8
  %nr_virtfn316 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %12, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %nr_virtfn316 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_virtfn316, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp26318.not = icmp eq i16 %14, 0
  br i1 %cmp26318.not, label %do.end22.for.end214_crit_edge, label %for.body.lr.ph

do.end22.for.end214_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end214

for.body.lr.ph:                                   ; preds = %do.end22
  %15 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw_stats_req, align 4
  %add23 = add i32 %add, %spec.select
  %arrayidx = getelementptr %struct.bnx2x_fw_stats_req, ptr %16, i32 0, i32 1, i32 %add23
  %dev59 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %cleanup208.for.body_crit_edge, %for.body.lr.ph
  %17 = phi ptr [ %12, %for.body.lr.ph ], [ %76, %cleanup208.for.body_crit_edge ]
  %i.0321 = phi i32 [ 0, %for.body.lr.ph ], [ %inc213, %cleanup208.for.body_crit_edge ]
  %cur_query_entry.0320 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %cur_query_entry.4, %cleanup208.for.body_crit_edge ]
  %stats_count.0319 = phi i8 [ 0, %for.body.lr.ph ], [ %stats_count.4, %cleanup208.for.body_crit_edge ]
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %for.body.cond.end37_crit_edge, label %land.lhs.true

for.body.cond.end37_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end37

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %tobool31.not = icmp eq ptr %19, null
  %arrayidx35 = getelementptr %struct.bnx2x_virtf, ptr %19, i32 %i.0321
  %spec.select295 = select i1 %tobool31.not, ptr null, ptr %arrayidx35
  br label %cond.end37

cond.end37:                                       ; preds = %land.lhs.true, %for.body.cond.end37_crit_edge
  %cond38 = phi ptr [ null, %for.body.cond.end37_crit_edge ], [ %spec.select295, %land.lhs.true ]
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp40.not = icmp eq i8 %21, 2
  br i1 %cmp40.not, label %if.end73, label %do.body43

do.body43:                                        ; preds = %cond.end37
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and45 = and i32 %23, 8519680
  call void @__sanitizer_cov_trace_const_cmp4(i32 8519680, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 8519680
  br i1 %cmp46, label %do.end57, label %do.body43.cleanup208_crit_edge, !prof !704

do.body43.cleanup208_crit_edge:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup208

do.end57:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev59, align 4
  %tobool60.not = icmp eq ptr %25, null
  %spec.select296 = select i1 %tobool60.not, ptr @.str.3, ptr %25
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 14
  %26 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %abs_vfid, align 1
  %conv68 = zext i8 %27 to i32
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef 1900, ptr noundef nonnull %spec.select296, i32 noundef %conv68) #17
  br label %cleanup208

if.end73:                                         ; preds = %cond.end37
  %malicious = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 4
  %28 = ptrtoint ptr %malicious to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %malicious, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool74.not = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 8
  %and110 = and i32 %31, 8519680
  call void @__sanitizer_cov_trace_const_cmp4(i32 8519680, i32 %and110)
  %cmp111 = icmp eq i32 %and110, 8519680
  br i1 %tobool74.not, label %do.body108, label %do.body76

do.body76:                                        ; preds = %if.end73
  br i1 %cmp111, label %do.end90, label %do.body76.cleanup208_crit_edge, !prof !704

do.body76.cleanup208_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup208

do.end90:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev59, align 4
  %tobool93.not = icmp eq ptr %33, null
  %spec.select297 = select i1 %tobool93.not, ptr @.str.3, ptr %33
  %abs_vfid101 = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 14
  %34 = ptrtoint ptr %abs_vfid101 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %abs_vfid101, align 1
  %conv102 = zext i8 %35 to i32
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.135, i32 noundef 1907, ptr noundef nonnull %spec.select297, i32 noundef %conv102) #17
  br label %cleanup208

do.body108:                                       ; preds = %if.end73
  br i1 %cmp111, label %do.end122, label %do.body108.do.end138_crit_edge, !prof !704

do.body108.do.end138_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end138

do.end122:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev59, align 4
  %tobool125.not = icmp eq ptr %37, null
  %spec.select298 = select i1 %tobool125.not, ptr @.str.3, ptr %37
  %abs_vfid133 = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 14
  %38 = ptrtoint ptr %abs_vfid133 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %abs_vfid133, align 1
  %conv134 = zext i8 %39 to i32
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.135, i32 noundef 1912, ptr noundef nonnull %spec.select298, i32 noundef %conv134) #17
  br label %do.end138

do.end138:                                        ; preds = %do.end122, %do.body108.do.end138_crit_edge
  %alloc_resc = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 9
  %40 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %alloc_resc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp141308.not = icmp eq i8 %41, 0
  br i1 %cmp141308.not, label %do.end138.cleanup208_crit_edge, label %for.body143.lr.ph

do.end138.cleanup208_crit_edge:                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup208

for.body143.lr.ph:                                ; preds = %do.end138
  %vfqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 12
  %fw_stat_map = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 6
  %stats_stride = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 7
  %leading_rss.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 22
  %igu_base_id.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 11
  %abs_vfid154 = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond38, i32 0, i32 14
  br label %for.body143

for.body143:                                      ; preds = %for.inc.for.body143_crit_edge, %for.body143.lr.ph
  %cur_query_entry.1312 = phi ptr [ %cur_query_entry.0320, %for.body143.lr.ph ], [ %cur_query_entry.2306, %for.inc.for.body143_crit_edge ]
  %j.0310 = phi i32 [ 0, %for.body143.lr.ph ], [ %inc207, %for.inc.for.body143_crit_edge ]
  %stats_count.1309 = phi i8 [ %stats_count.0319, %for.body143.lr.ph ], [ %stats_count.2305, %for.inc.for.body143_crit_edge ]
  %42 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vfqs.i, align 4
  %44 = ptrtoint ptr %fw_stat_map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw_stat_map, align 8
  %46 = ptrtoint ptr %stats_stride to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %stats_stride, align 4
  %sp_obj = getelementptr %struct.bnx2x_vf_queue, ptr %43, i32 %j.0310, i32 5
  %call148 = tail call i32 @bnx2x_get_q_logical_state(ptr noundef %bp, ptr noundef %sp_obj) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call148)
  %cmp149 = icmp eq i32 %call148, 1
  br i1 %cmp149, label %for.body143.for.inc_crit_edge, label %if.end152

for.body143.for.inc_crit_edge:                    ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end152:                                        ; preds = %for.body143
  %conv146 = zext i16 %47 to i32
  %mul = mul i32 %j.0310, %conv146
  %add147 = add i32 %mul, %45
  %48 = ptrtoint ptr %cur_query_entry.1312 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %cur_query_entry.1312, align 4
  %49 = ptrtoint ptr %cond38 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cond38, align 8
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %leading_rss.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %leading_rss.i, align 4
  %conv1.i = trunc i32 %53 to i8
  br label %vfq_stat_id.exit

if.else.i:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %igu_base_id.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %igu_base_id.i.i, align 1
  %index.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %43, i32 %j.0310, i32 7
  %56 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %index.i.i, align 4
  %conv1.i.i = trunc i16 %57 to i8
  %add.i.i = add i8 %55, %conv1.i.i
  br label %vfq_stat_id.exit

vfq_stat_id.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %conv1.i, %if.then.i ], [ %add.i.i, %if.else.i ]
  %index = getelementptr inbounds %struct.stats_query_entry, ptr %cur_query_entry.1312, i32 0, i32 1
  %58 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %retval.0.i, ptr %index, align 1
  %59 = ptrtoint ptr %abs_vfid154 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %abs_vfid154, align 1
  %conv155 = zext i8 %60 to i16
  %add156 = add nuw nsw i16 %conv155, 8
  %61 = tail call i16 @llvm.bswap.i16(i16 %add156)
  %funcID = getelementptr inbounds %struct.stats_query_entry, ptr %cur_query_entry.1312, i32 0, i32 2
  %62 = ptrtoint ptr %funcID to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %funcID, align 2
  %address = getelementptr inbounds %struct.stats_query_entry, ptr %cur_query_entry.1312, i32 0, i32 4
  %hi = getelementptr inbounds %struct.stats_query_entry, ptr %cur_query_entry.1312, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %hi, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %add147)
  %65 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %address, align 4
  %66 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable, align 8
  %and166 = and i32 %67, 8519680
  call void @__sanitizer_cov_trace_const_cmp4(i32 8519680, i32 %and166)
  %cmp167 = icmp eq i32 %and166, 8519680
  br i1 %cmp167, label %do.end178, label %vfq_stat_id.exit.cleanup_crit_edge, !prof !704

vfq_stat_id.exit.cleanup_crit_edge:               ; preds = %vfq_stat_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end178:                                        ; preds = %vfq_stat_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev59, align 4
  %tobool181.not = icmp eq ptr %69, null
  %spec.select299 = select i1 %tobool181.not, ptr @.str.3, ptr %69
  %conv194 = zext i16 %61 to i32
  %conv196 = zext i8 %retval.0.i to i32
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.135, i32 noundef 1938, ptr noundef nonnull %spec.select299, i32 noundef 0, i32 noundef %64, i32 noundef %conv194, i32 noundef %j.0310, i32 noundef %conv196) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %vfq_stat_id.exit.cleanup_crit_edge
  %incdec.ptr = getelementptr %struct.stats_query_entry, ptr %cur_query_entry.1312, i32 1
  %inc = add i8 %stats_count.1309, 1
  %70 = ptrtoint ptr %cond38 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cond38, align 8
  %72 = and i16 %71, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool203.not.not = icmp eq i16 %72, 0
  br i1 %tobool203.not.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup208_crit_edge

cleanup.cleanup208_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup208

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body143.for.inc_crit_edge
  %cur_query_entry.2306 = phi ptr [ %incdec.ptr, %cleanup.for.inc_crit_edge ], [ %cur_query_entry.1312, %for.body143.for.inc_crit_edge ]
  %stats_count.2305 = phi i8 [ %inc, %cleanup.for.inc_crit_edge ], [ %stats_count.1309, %for.body143.for.inc_crit_edge ]
  %inc207 = add nuw nsw i32 %j.0310, 1
  %73 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %alloc_resc, align 4
  %conv140 = zext i8 %74 to i32
  %cmp141 = icmp ult i32 %inc207, %conv140
  br i1 %cmp141, label %for.inc.for.body143_crit_edge, label %for.inc.cleanup208_crit_edge

for.inc.cleanup208_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup208

for.inc.for.body143_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body143

cleanup208:                                       ; preds = %for.inc.cleanup208_crit_edge, %cleanup.cleanup208_crit_edge, %do.end138.cleanup208_crit_edge, %do.end90, %do.body76.cleanup208_crit_edge, %do.end57, %do.body43.cleanup208_crit_edge
  %stats_count.4 = phi i8 [ %stats_count.0319, %do.end57 ], [ %stats_count.0319, %do.body43.cleanup208_crit_edge ], [ %stats_count.0319, %do.end90 ], [ %stats_count.0319, %do.body76.cleanup208_crit_edge ], [ %stats_count.0319, %do.end138.cleanup208_crit_edge ], [ %inc, %cleanup.cleanup208_crit_edge ], [ %stats_count.2305, %for.inc.cleanup208_crit_edge ]
  %cur_query_entry.4 = phi ptr [ %cur_query_entry.0320, %do.end57 ], [ %cur_query_entry.0320, %do.body43.cleanup208_crit_edge ], [ %cur_query_entry.0320, %do.end90 ], [ %cur_query_entry.0320, %do.body76.cleanup208_crit_edge ], [ %cur_query_entry.0320, %do.end138.cleanup208_crit_edge ], [ %incdec.ptr, %cleanup.cleanup208_crit_edge ], [ %cur_query_entry.2306, %for.inc.cleanup208_crit_edge ]
  %inc213 = add nuw nsw i32 %i.0321, 1
  %75 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %76, i32 0, i32 3, i32 7
  %77 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %nr_virtfn, align 2
  %conv25 = zext i16 %78 to i32
  %cmp26 = icmp ult i32 %inc213, %conv25
  br i1 %cmp26, label %cleanup208.for.body_crit_edge, label %cleanup208.for.end214_crit_edge

cleanup208.for.end214_crit_edge:                  ; preds = %cleanup208
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end214

cleanup208.for.body_crit_edge:                    ; preds = %cleanup208
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end214:                                       ; preds = %cleanup208.for.end214_crit_edge, %do.end22.for.end214_crit_edge
  %stats_count.0.lcssa = phi i8 [ 0, %do.end22.for.end214_crit_edge ], [ %stats_count.4, %cleanup208.for.end214_crit_edge ]
  %fw_stats_num = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 108
  %79 = ptrtoint ptr %fw_stats_num to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fw_stats_num, align 1
  %add217 = add i8 %80, %stats_count.0.lcssa
  %81 = ptrtoint ptr %fw_stats_req to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fw_stats_req, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %add217, ptr %82, align 4
  br label %cleanup220

cleanup220:                                       ; preds = %for.end214, %entry.cleanup220_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_get_q_logical_state(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @bnx2x_vf_max_queue_cnt(ptr nocapture readnone %bp, ptr nocapture noundef readonly %vf) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sbs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_sbs, align 2
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 16)
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_acquire(ptr noundef %bp, ptr noundef %vf, ptr nocapture noundef readonly %resc) local_unnamed_addr #2 align 64 {
entry:
  %q_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %sriov = getelementptr inbounds %struct.bnx2x_vfdb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sriov, align 8
  %index = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 13
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 8
  %conv = zext i8 %5 to i32
  %add = add i32 %3, %conv
  %mul = shl i32 %add, 4
  %div346 = lshr i32 %mul, 5
  %arrayidx = getelementptr %struct.bnx2x_vfdb, ptr %1, i32 0, i32 2, i32 %div346
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %and = and i32 %mul, 16
  %add.ptr = getelementptr %union.cdu_context, ptr %7, i32 %and
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 2
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.420)
  switch i8 %9, label %do.end50 [
    i8 1, label %do.body
    i8 0, label %entry.if.end68_crit_edge
    i8 3, label %entry.if.end68_crit_edge400
  ]

entry.if.end68_crit_edge400:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %do.body.do.end13_crit_edge, label %do.end, !prof !702

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %14, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %14
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %15 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %abs_vfid, align 1
  %conv11 = zext i8 %16 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149, i32 noundef 2021, ptr noundef nonnull %spec.select, i32 noundef %conv11) #17
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %alloc_resc.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9
  %17 = ptrtoint ptr %alloc_resc.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %alloc_resc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %cond.false.i, label %do.end13.cond.end.i_crit_edge

do.end13.cond.end.i_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  %num_sbs.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %num_sbs.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_sbs.i.i, align 2
  %21 = tail call i8 @llvm.umin.i8(i8 %20, i8 16) #14
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %do.end13.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %21, %cond.false.i ], [ %18, %do.end13.cond.end.i_crit_edge ]
  %num_txqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_txqs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not.i = icmp eq i8 %23, 0
  br i1 %tobool5.not.i, label %cond.false7.i, label %cond.end.i.cond.end10.i_crit_edge

cond.end.i.cond.end10.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end10.i

cond.false7.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %num_sbs.i53.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %num_sbs.i53.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_sbs.i53.i, align 2
  %26 = tail call i8 @llvm.umin.i8(i8 %25, i8 16) #14
  br label %cond.end10.i

cond.end10.i:                                     ; preds = %cond.false7.i, %cond.end.i.cond.end10.i_crit_edge
  %cond11.in.i = phi i8 [ %26, %cond.false7.i ], [ %23, %cond.end.i.cond.end10.i_crit_edge ]
  %27 = ptrtoint ptr %resc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %resc, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %cond.in.i)
  %cmp.not.i = icmp ugt i8 %28, %cond.in.i
  br i1 %cmp.not.i, label %cond.end10.i.do.end20_crit_edge, label %land.lhs.true.i

cond.end10.i.do.end20_crit_edge:                  ; preds = %cond.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

land.lhs.true.i:                                  ; preds = %cond.end10.i
  %num_txqs17.i = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 1
  %29 = ptrtoint ptr %num_txqs17.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_txqs17.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %cond11.in.i)
  %cmp20.not.i = icmp ugt i8 %30, %cond11.in.i
  br i1 %cmp20.not.i, label %land.lhs.true.i.do.end20_crit_edge, label %land.lhs.true22.i

land.lhs.true.i.do.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %num_sbs.i = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 2
  %31 = ptrtoint ptr %num_sbs.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_sbs.i, align 1
  %num_sbs25.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %33 = ptrtoint ptr %num_sbs25.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_sbs25.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp27.not.i = icmp ugt i8 %32, %34
  br i1 %cmp27.not.i, label %land.lhs.true22.i.do.end20_crit_edge, label %land.lhs.true29.i

land.lhs.true22.i.do.end20_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

land.lhs.true29.i:                                ; preds = %land.lhs.true22.i
  %num_mac_filters.i = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 3
  %35 = ptrtoint ptr %num_mac_filters.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_mac_filters.i, align 1
  %num_mac_filters32.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %num_mac_filters32.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_mac_filters32.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp34.not.i = icmp ugt i8 %36, %38
  br i1 %cmp34.not.i, label %land.lhs.true29.i.do.end20_crit_edge, label %bnx2x_vf_chk_avail_resc.exit

land.lhs.true29.i.do.end20_crit_edge:             ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

bnx2x_vf_chk_avail_resc.exit:                     ; preds = %land.lhs.true29.i
  %num_vlan_filters.i = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 4
  %39 = ptrtoint ptr %num_vlan_filters.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_vlan_filters.i, align 1
  %num_vlan_filters38.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 4
  %41 = ptrtoint ptr %num_vlan_filters38.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_vlan_filters38.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp40.i.not = icmp ugt i8 %40, %42
  br i1 %cmp40.i.not, label %bnx2x_vf_chk_avail_resc.exit.do.end20_crit_edge, label %bnx2x_vf_chk_avail_resc.exit.cleanup263_crit_edge

bnx2x_vf_chk_avail_resc.exit.cleanup263_crit_edge: ; preds = %bnx2x_vf_chk_avail_resc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup263

bnx2x_vf_chk_avail_resc.exit.do.end20_crit_edge:  ; preds = %bnx2x_vf_chk_avail_resc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

do.end20:                                         ; preds = %bnx2x_vf_chk_avail_resc.exit.do.end20_crit_edge, %land.lhs.true29.i.do.end20_crit_edge, %land.lhs.true22.i.do.end20_crit_edge, %land.lhs.true.i.do.end20_crit_edge, %cond.end10.i.do.end20_crit_edge
  %dev22 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %43 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev22, align 4
  %tobool23.not = icmp eq ptr %44, null
  %spec.select347 = select i1 %tobool23.not, ptr @.str.3, ptr %44
  %abs_vfid31 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %45 = ptrtoint ptr %abs_vfid31 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %abs_vfid31, align 1
  %conv32 = zext i8 %46 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.149, i32 noundef 2025, ptr noundef nonnull %spec.select347, i32 noundef %conv32) #17
  br label %cleanup263

do.end50:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev52 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %47 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev52, align 4
  %tobool53.not = icmp eq ptr %48, null
  %spec.select348 = select i1 %tobool53.not, ptr @.str.3, ptr %48
  %abs_vfid61 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %49 = ptrtoint ptr %abs_vfid61 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %abs_vfid61, align 1
  %conv62 = zext i8 %50 to i32
  %conv64 = zext i8 %9 to i32
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.149, i32 noundef 2034, ptr noundef nonnull %spec.select348, i32 noundef %conv62, i32 noundef %conv64) #17
  br label %cleanup263

if.end68:                                         ; preds = %entry.if.end68_crit_edge, %entry.if.end68_crit_edge400
  %alloc_resc.i354 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9
  %51 = ptrtoint ptr %alloc_resc.i354 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %alloc_resc.i354, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i355 = icmp eq i8 %52, 0
  br i1 %tobool.not.i355, label %cond.false.i357, label %if.end68.cond.end.i361_crit_edge

if.end68.cond.end.i361_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i361

cond.false.i357:                                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %num_sbs.i.i356 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %53 = ptrtoint ptr %num_sbs.i.i356 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_sbs.i.i356, align 2
  %55 = tail call i8 @llvm.umin.i8(i8 %54, i8 16) #14
  br label %cond.end.i361

cond.end.i361:                                    ; preds = %cond.false.i357, %if.end68.cond.end.i361_crit_edge
  %cond.in.i358 = phi i8 [ %55, %cond.false.i357 ], [ %52, %if.end68.cond.end.i361_crit_edge ]
  %num_txqs.i359 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %num_txqs.i359 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_txqs.i359, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool5.not.i360 = icmp eq i8 %57, 0
  br i1 %tobool5.not.i360, label %cond.false7.i363, label %cond.end.i361.cond.end10.i366_crit_edge

cond.end.i361.cond.end10.i366_crit_edge:          ; preds = %cond.end.i361
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end10.i366

cond.false7.i363:                                 ; preds = %cond.end.i361
  call void @__sanitizer_cov_trace_pc() #16
  %num_sbs.i53.i362 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %58 = ptrtoint ptr %num_sbs.i53.i362 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_sbs.i53.i362, align 2
  %60 = tail call i8 @llvm.umin.i8(i8 %59, i8 16) #14
  br label %cond.end10.i366

cond.end10.i366:                                  ; preds = %cond.false7.i363, %cond.end.i361.cond.end10.i366_crit_edge
  %cond11.in.i364 = phi i8 [ %60, %cond.false7.i363 ], [ %57, %cond.end.i361.cond.end10.i366_crit_edge ]
  %61 = ptrtoint ptr %resc to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %resc, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %cond.in.i358)
  %cmp.not.i365 = icmp ugt i8 %62, %cond.in.i358
  br i1 %cmp.not.i365, label %cond.end10.i366.do.body72_crit_edge, label %land.lhs.true.i369

cond.end10.i366.do.body72_crit_edge:              ; preds = %cond.end10.i366
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body72

land.lhs.true.i369:                               ; preds = %cond.end10.i366
  %num_txqs17.i367 = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 1
  %63 = ptrtoint ptr %num_txqs17.i367 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_txqs17.i367, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %cond11.in.i364)
  %cmp20.not.i368 = icmp ugt i8 %64, %cond11.in.i364
  br i1 %cmp20.not.i368, label %land.lhs.true.i369.do.body72_crit_edge, label %land.lhs.true22.i373

land.lhs.true.i369.do.body72_crit_edge:           ; preds = %land.lhs.true.i369
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body72

land.lhs.true22.i373:                             ; preds = %land.lhs.true.i369
  %num_sbs.i370 = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 2
  %65 = ptrtoint ptr %num_sbs.i370 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_sbs.i370, align 1
  %num_sbs25.i371 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %num_sbs25.i371 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_sbs25.i371, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp27.not.i372 = icmp ugt i8 %66, %68
  br i1 %cmp27.not.i372, label %land.lhs.true22.i373.do.body72_crit_edge, label %land.lhs.true29.i377

land.lhs.true22.i373.do.body72_crit_edge:         ; preds = %land.lhs.true22.i373
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body72

land.lhs.true29.i377:                             ; preds = %land.lhs.true22.i373
  %num_mac_filters.i374 = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 3
  %69 = ptrtoint ptr %num_mac_filters.i374 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_mac_filters.i374, align 1
  %num_mac_filters32.i375 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 3
  %71 = ptrtoint ptr %num_mac_filters32.i375 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_mac_filters32.i375, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %72)
  %cmp34.not.i376 = icmp ugt i8 %70, %72
  br i1 %cmp34.not.i376, label %land.lhs.true29.i377.do.body72_crit_edge, label %bnx2x_vf_chk_avail_resc.exit383

land.lhs.true29.i377.do.body72_crit_edge:         ; preds = %land.lhs.true29.i377
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body72

bnx2x_vf_chk_avail_resc.exit383:                  ; preds = %land.lhs.true29.i377
  %num_vlan_filters.i378 = getelementptr inbounds %struct.vf_pf_resc_request, ptr %resc, i32 0, i32 4
  %73 = ptrtoint ptr %num_vlan_filters.i378 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_vlan_filters.i378, align 1
  %num_vlan_filters38.i379 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 4
  %75 = ptrtoint ptr %num_vlan_filters38.i379 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_vlan_filters38.i379, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp40.i380.not = icmp ugt i8 %74, %76
  br i1 %cmp40.i380.not, label %bnx2x_vf_chk_avail_resc.exit383.do.body72_crit_edge, label %if.end100

bnx2x_vf_chk_avail_resc.exit383.do.body72_crit_edge: ; preds = %bnx2x_vf_chk_avail_resc.exit383
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body72

do.body72:                                        ; preds = %bnx2x_vf_chk_avail_resc.exit383.do.body72_crit_edge, %land.lhs.true29.i377.do.body72_crit_edge, %land.lhs.true22.i373.do.body72_crit_edge, %land.lhs.true.i369.do.body72_crit_edge, %cond.end10.i366.do.body72_crit_edge
  %msg_enable73 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %77 = ptrtoint ptr %msg_enable73 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable73, align 8
  %and74 = and i32 %78, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body72.cleanup263_crit_edge, label %do.end85, !prof !702

do.body72.cleanup263_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup263

do.end85:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #16
  %dev87 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %79 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev87, align 4
  %tobool88.not = icmp eq ptr %80, null
  %spec.select349 = select i1 %tobool88.not, ptr @.str.3, ptr %80
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.149, i32 noundef 2044, ptr noundef nonnull %spec.select349) #17
  br label %cleanup263

if.end100:                                        ; preds = %bnx2x_vf_chk_avail_resc.exit383
  %81 = ptrtoint ptr %num_sbs.i370 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_sbs.i370, align 1
  %83 = ptrtoint ptr %num_sbs25.i371 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %num_sbs25.i371, align 2
  %84 = ptrtoint ptr %resc to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %resc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool103.not = icmp eq i8 %85, 0
  %86 = tail call i8 @llvm.umin.i8(i8 %82, i8 16) #14
  %spec.select389 = select i1 %tobool103.not, i8 %86, i8 %85
  %87 = ptrtoint ptr %alloc_resc.i354 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select389, ptr %alloc_resc.i354, align 4
  %88 = ptrtoint ptr %num_txqs17.i367 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %num_txqs17.i367, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool114.not = icmp eq i8 %89, 0
  %cond120.in = select i1 %tobool114.not, i8 %86, i8 %89
  %90 = ptrtoint ptr %num_txqs.i359 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %cond120.in, ptr %num_txqs.i359, align 1
  %msg_enable125 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %91 = ptrtoint ptr %msg_enable125 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable125, align 8
  %and126 = and i32 %92, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end100.do.end164_crit_edge, label %do.end137, !prof !702

if.end100.do.end164_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end164

do.end137:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %dev139 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %93 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev139, align 4
  %tobool140.not = icmp eq ptr %94, null
  %spec.select350 = select i1 %tobool140.not, ptr @.str.3, ptr %94
  %conv150 = zext i8 %82 to i32
  %conv153 = zext i8 %spec.select389 to i32
  %conv156 = zext i8 %cond120.in to i32
  %95 = ptrtoint ptr %num_mac_filters32.i375 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_mac_filters32.i375, align 1
  %conv158 = zext i8 %96 to i32
  %97 = ptrtoint ptr %num_vlan_filters38.i379 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num_vlan_filters38.i379, align 4
  %conv160 = zext i8 %98 to i32
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.149, i32 noundef 2058, ptr noundef nonnull %spec.select350, i32 noundef %conv150, i32 noundef %conv153, i32 noundef %conv156, i32 noundef %conv158, i32 noundef %conv160) #17
  br label %do.end164

do.end164:                                        ; preds = %do.end137, %if.end100.do.end164_crit_edge
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %99 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vfqs, align 4
  %tobool165.not = icmp eq ptr %100, null
  br i1 %tobool165.not, label %do.body167, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end164
  %101 = ptrtoint ptr %alloc_resc.i354 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %alloc_resc.i354, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp199392.not = icmp eq i8 %102, 0
  br i1 %cmp199392.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add226 = add i32 %mul, 1024
  %dev243 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %abs_vfid252 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %igu_base_id.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  br label %for.body

do.body167:                                       ; preds = %do.end164
  %103 = ptrtoint ptr %msg_enable125 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_enable125, align 8
  %and169 = and i32 %104, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body167.cleanup263_crit_edge, label %do.end180, !prof !702

do.body167.cleanup263_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup263

do.end180:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #16
  %dev182 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %105 = ptrtoint ptr %dev182 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev182, align 4
  %tobool183.not = icmp eq ptr %106, null
  %spec.select351 = select i1 %tobool183.not, ptr @.str.3, ptr %106
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.149, i32 noundef 2062, ptr noundef nonnull %spec.select351) #17
  br label %cleanup263

for.body:                                         ; preds = %bnx2x_vfq_init.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0393 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bnx2x_vfq_init.exit.for.body_crit_edge ]
  %107 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vfqs, align 4
  %idxprom.i = and i32 %i.0393, 255
  %arrayidx.i = getelementptr %struct.bnx2x_vf_queue, ptr %108, i32 %idxprom.i
  %tobool203.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool203.not, label %do.end208, label %if.end222

do.end208:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev243, align 4
  %tobool211.not = icmp eq ptr %110, null
  %spec.select352 = select i1 %tobool211.not, ptr @.str.3, ptr %110
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.149, i32 noundef 2070, ptr noundef nonnull %spec.select352, i32 noundef %i.0393) #17
  br label %cleanup263

if.end222:                                        ; preds = %for.body
  %conv223 = trunc i32 %i.0393 to i16
  %index224 = getelementptr %struct.bnx2x_vf_queue, ptr %108, i32 %idxprom.i, i32 7
  %111 = ptrtoint ptr %index224 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv223, ptr %index224, align 4
  %add.ptr225 = getelementptr %union.cdu_context, ptr %add.ptr, i32 %i.0393
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr225, ptr %arrayidx.i, align 4
  %add227 = add i32 %add226, %i.0393
  %cid = getelementptr %struct.bnx2x_vf_queue, ptr %108, i32 %idxprom.i, i32 6
  %113 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add227, ptr %cid, align 4
  %114 = ptrtoint ptr %msg_enable125 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %msg_enable125, align 8
  %and230 = and i32 %115, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end222.do.end261_crit_edge, label %do.end241, !prof !702

if.end222.do.end261_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end261

do.end241:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev243, align 4
  %tobool244.not = icmp eq ptr %117, null
  %spec.select353 = select i1 %tobool244.not, ptr @.str.3, ptr %117
  %118 = ptrtoint ptr %abs_vfid252 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %abs_vfid252, align 1
  %conv253 = zext i8 %119 to i32
  %call258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.149, i32 noundef 2079, ptr noundef nonnull %spec.select353, i32 noundef %conv253, i32 noundef %i.0393, i32 noundef %i.0393, i32 noundef %add227, ptr noundef %add.ptr225) #17
  br label %do.end261

do.end261:                                        ; preds = %do.end241, %if.end222.do.end261_crit_edge
  %120 = ptrtoint ptr %igu_base_id.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %igu_base_id.i.i, align 1
  %122 = ptrtoint ptr %index224 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %index224, align 4
  %conv1.i.i = trunc i16 %123 to i8
  %add.i.i = add i8 %121, %conv1.i.i
  %124 = ptrtoint ptr %abs_vfid252 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %abs_vfid252, align 1
  %add.i = add i8 %125, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q_type.i) #14
  %126 = ptrtoint ptr %q_type.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %q_type.i, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef nonnull %q_type.i) #14
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %q_type.i) #14
  %sp_obj.i = getelementptr %struct.bnx2x_vf_queue, ptr %108, i32 %idxprom.i, i32 5
  %127 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vfdb, align 8
  %sp_dma.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %sp_dma.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sp_dma.i, align 4
  %131 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %index, align 8
  %conv2.i = zext i8 %132 to i32
  %mul.i = mul nuw nsw i32 %conv2.i, 1624
  %add.ptr.i = getelementptr i8, ptr %130, i32 1320
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %mapping.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %128, i32 0, i32 7, i32 1
  %133 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mapping.i, align 4
  %add9.i = add i32 %134, 1320
  %add10.i = add i32 %add9.i, %mul.i
  %135 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %q_type.i, align 4
  call void @bnx2x_init_queue_obj(ptr noundef %bp, ptr noundef %sp_obj.i, i8 noundef zeroext %add.i.i, ptr noundef %cid, i8 noundef zeroext 1, i8 noundef zeroext %add.i, ptr noundef %add.ptr3.i, i32 noundef %add10.i, i32 noundef %136) #14
  %sp_initialized.i = getelementptr %struct.bnx2x_vf_queue, ptr %108, i32 %idxprom.i, i32 10
  %137 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %sp_initialized.i, align 1
  %138 = ptrtoint ptr %msg_enable125 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %msg_enable125, align 8
  %and.i = and i32 %139, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i386 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i386, label %do.end261.bnx2x_vfq_init.exit_crit_edge, label %do.end.i, !prof !702

do.end261.bnx2x_vfq_init.exit_crit_edge:          ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vfq_init.exit

do.end.i:                                         ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #16
  %140 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev243, align 4
  %tobool14.not.i = icmp eq ptr %141, null
  %spec.select.i = select i1 %tobool14.not.i, ptr @.str.3, ptr %141
  %142 = ptrtoint ptr %abs_vfid252 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %abs_vfid252, align 1
  %conv17.i = zext i8 %143 to i32
  %func_id19.i = getelementptr %struct.bnx2x_vf_queue, ptr %108, i32 %idxprom.i, i32 5, i32 2
  %144 = ptrtoint ptr %func_id19.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %func_id19.i, align 1
  %conv20.i = zext i8 %145 to i32
  %146 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cid, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.388, i32 noundef 1432, ptr noundef nonnull %spec.select.i, i32 noundef %conv17.i, i32 noundef %conv20.i, i32 noundef %147) #17
  br label %bnx2x_vfq_init.exit

bnx2x_vfq_init.exit:                              ; preds = %do.end.i, %do.end261.bnx2x_vfq_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q_type.i) #14
  %inc = add nuw nsw i32 %i.0393, 1
  %148 = ptrtoint ptr %alloc_resc.i354 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %alloc_resc.i354, align 4
  %conv198 = zext i8 %149 to i32
  %cmp199 = icmp ult i32 %inc, %conv198
  br i1 %cmp199, label %bnx2x_vfq_init.exit.for.body_crit_edge, label %bnx2x_vfq_init.exit.for.end_crit_edge

bnx2x_vfq_init.exit.for.end_crit_edge:            ; preds = %bnx2x_vfq_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

bnx2x_vfq_init.exit.for.body_crit_edge:           ; preds = %bnx2x_vfq_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %bnx2x_vfq_init.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %150 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %state, align 1
  br label %cleanup263

cleanup263:                                       ; preds = %for.end, %do.end208, %do.end180, %do.body167.cleanup263_crit_edge, %do.end85, %do.body72.cleanup263_crit_edge, %do.end50, %do.end20, %bnx2x_vf_chk_avail_resc.exit.cleanup263_crit_edge
  %retval.2 = phi i32 [ -22, %do.end20 ], [ -22, %do.end50 ], [ 0, %for.end ], [ 0, %bnx2x_vf_chk_avail_resc.exit.cleanup263_crit_edge ], [ -12, %do.end85 ], [ -12, %do.body72.cleanup263_crit_edge ], [ -22, %do.end180 ], [ -22, %do.body167.cleanup263_crit_edge ], [ -22, %do.end208 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_init(ptr noundef %bp, ptr nocapture noundef %vf, ptr nocapture noundef readonly %sb_map) local_unnamed_addr #2 align 64 {
entry:
  %func_init = alloca %struct.bnx2x_func_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %func_init) #14
  %0 = call ptr @memset(ptr %func_init, i32 0, i32 16)
  %num_sbs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_sbs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp101.not = icmp eq i8 %2, 0
  br i1 %cmp101.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %igu_base_id.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sb_map, i32 %i.0102
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %abs_vfid, align 1
  %conv2 = zext i8 %6 to i32
  %7 = ptrtoint ptr %igu_base_id.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %igu_base_id.i, align 1
  %conv1.i = trunc i32 %i.0102 to i8
  %add.i = add i8 %8, %conv1.i
  %conv4 = zext i8 %add.i to i32
  tail call void @bnx2x_init_sb(ptr noundef %bp, i32 noundef %4, i32 noundef %conv2, i8 noundef zeroext 1, i32 noundef %conv4, i32 noundef %conv4) #14
  %inc = add nuw nsw i32 %i.0102, 1
  %9 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_sbs, align 2
  %conv = zext i8 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %alloc_resc.le = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 2
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp9.not = icmp eq i8 %12, 1
  br i1 %cmp9.not, label %if.end24, label %do.body

do.body:                                          ; preds = %for.end
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !702

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %tobool15.not = icmp eq ptr %16, null
  %spec.select = select i1 %tobool15.not, ptr @.str.3, ptr %16
  %abs_vfid17 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %17 = ptrtoint ptr %abs_vfid17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %abs_vfid17, align 1
  %conv18 = zext i8 %18 to i32
  %conv20 = zext i8 %12 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, i32 noundef 2103, ptr noundef nonnull %spec.select, i32 noundef %conv18, i32 noundef %conv20) #17
  br label %cleanup

if.end24:                                         ; preds = %for.end
  tail call void @msleep(i32 noundef 100) #14
  %abs_vfid25 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %19 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %abs_vfid25, align 1
  %call26 = tail call i32 @bnx2x_vf_flr_clnup_epilog(ptr noundef %bp, i8 noundef zeroext %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !744
  tail call void @arm_heavy_mb() #14
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %21 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regview, align 8
  %23 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %abs_vfid25, align 1
  %conv34 = zext i8 %24 to i32
  %mul = shl nuw nsw i32 %conv34, 2
  %add = or i32 %mul, 1247232
  %add.ptr = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !716
  %pfid = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 8
  %25 = ptrtoint ptr %pfid to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pfid, align 1
  %conv35 = zext i8 %26 to i16
  %pf_id = getelementptr inbounds %struct.bnx2x_func_init_params, ptr %func_init, i32 0, i32 4
  %27 = ptrtoint ptr %pf_id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv35, ptr %pf_id, align 4
  %28 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %abs_vfid25, align 1
  %conv37 = zext i8 %29 to i16
  %add38 = add nuw nsw i16 %conv37, 8
  %func_id = getelementptr inbounds %struct.bnx2x_func_init_params, ptr %func_init, i32 0, i32 3
  %30 = ptrtoint ptr %func_id to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add38, ptr %func_id, align 2
  call void @bnx2x_func_init(ptr noundef %bp, ptr noundef nonnull %func_init) #14
  %31 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %abs_vfid25, align 1
  call void @bnx2x_vf_enable_access(ptr noundef %bp, i8 noundef zeroext %32)
  %pf_num.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %33 = ptrtoint ptr %pf_num.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pf_num.i.i, align 2
  %35 = or i8 %34, 8
  %or.i.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %abs_vfid25, align 1
  %conv2.i.i = zext i8 %37 to i16
  %shl.i.i = shl nuw nsw i16 %conv2.i.i, 4
  %or3.i.i = or i16 %shl.i.i, %or.i.i
  %call.i.i = call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %or3.i.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !745
  call void @arm_heavy_mb() #14
  %38 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regview, align 8
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 1245532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !746
  call void @arm_heavy_mb() #14
  %40 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regview, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %41, i32 1245536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 0) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !747
  call void @arm_heavy_mb() #14
  %42 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regview, align 8
  %add.ptr14.i.i = getelementptr i8, ptr %43, i32 1245540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 0) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !748
  call void @arm_heavy_mb() #14
  %44 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regview, align 8
  %add.ptr19.i.i = getelementptr i8, ptr %45, i32 1245544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 0) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !749
  call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regview, align 8
  %add.ptr24.i.i = getelementptr i8, ptr %47, i32 1245496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i.i, i32 0) #14, !srcloc !716
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !750
  call void @arm_heavy_mb() #14
  %48 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regview, align 8
  %add.ptr29.i.i = getelementptr i8, ptr %49, i32 1245500
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 0) #14, !srcloc !716
  %50 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regview, align 8
  %add.ptr31.i.i = getelementptr i8, ptr %51, i32 1245552
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i.i) #14, !srcloc !722
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !751
  %53 = and i32 %52, -251658241
  %54 = or i32 %53, 50331648
  %55 = call i32 @llvm.bswap.i32(i32 %54) #14
  %56 = ptrtoint ptr %pf_num.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pf_num.i.i, align 2
  %58 = lshr i8 %57, 1
  %59 = zext i8 %58 to i32
  %shl37.i.i = shl nuw nsw i32 %59, 2
  %or38.i.i = or i32 %shl37.i.i, %55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !752
  call void @arm_heavy_mb() #14
  %60 = call i32 @llvm.bswap.i32(i32 %or38.i.i) #14
  %61 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regview, align 8
  %add.ptr43.i.i = getelementptr i8, ptr %62, i32 1245552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %60) #14, !srcloc !716
  %msg_enable.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %63 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable.i.i, align 8
  %and45.i.i = and i32 %64, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool.not.i.i, label %if.end24.do.end58.i.i_crit_edge, label %do.end50.i.i, !prof !702

if.end24.do.end58.i.i_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58.i.i

do.end50.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  %tobool52.not.i.i = icmp eq ptr %66, null
  %spec.select.i.i = select i1 %tobool52.not.i.i, ptr @.str.3, ptr %66
  %67 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %abs_vfid25, align 1
  %conv55.i.i = zext i8 %68 to i32
  %call56.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.390, i32 noundef 738, ptr noundef nonnull %spec.select.i.i, i32 noundef %conv55.i.i, i32 noundef %or38.i.i) #17
  br label %do.end58.i.i

do.end58.i.i:                                     ; preds = %do.end50.i.i, %if.end24.do.end58.i.i_crit_edge
  %69 = ptrtoint ptr %pf_num.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pf_num.i.i, align 2
  %conv60.i.i = zext i8 %70 to i16
  %call61.i.i = call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv60.i.i) #14
  %71 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_sbs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp105.not.i.i = icmp eq i8 %72, 0
  br i1 %cmp105.not.i.i, label %do.end58.i.i.bnx2x_vf_enable_traffic.exit_crit_edge, label %for.body.lr.ph.i.i

do.end58.i.i.bnx2x_vf_enable_traffic.exit_crit_edge: ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_enable_traffic.exit

for.body.lr.ph.i.i:                               ; preds = %do.end58.i.i
  %igu_base_id.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0106.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %73 = ptrtoint ptr %igu_base_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %igu_base_id.i.i.i, align 1
  %conv1.i.i.i = trunc i32 %i.0106.i.i to i8
  %add.i.i.i = add i8 %74, %conv1.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !753
  call void @arm_heavy_mb() #14
  %75 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regview, align 8
  %conv70.i.i = zext i8 %add.i.i.i to i32
  %mul.i.i = shl nuw nsw i32 %conv70.i.i, 2
  %add.i.i = or i32 %mul.i.i, 1253376
  %add.ptr71.i.i = getelementptr i8, ptr %76, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i.i, i32 0) #14, !srcloc !716
  %77 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %abs_vfid25, align 1
  call void @bnx2x_igu_clear_sb_gen(ptr noundef %bp, i8 noundef zeroext %78, i8 noundef zeroext %add.i.i.i, i1 noundef zeroext false) #14
  call fastcc void @bnx2x_vf_igu_ack_sb(ptr noundef %bp, ptr noundef %vf, i8 noundef zeroext %add.i.i.i, i8 noundef zeroext 1, i8 noundef zeroext 1) #14
  %inc.i.i = add nuw nsw i32 %i.0106.i.i, 1
  %79 = ptrtoint ptr %num_sbs to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_sbs, align 2
  %conv62.i.i = zext i8 %80 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv62.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.bnx2x_vf_enable_traffic.exit_crit_edge

for.body.i.i.bnx2x_vf_enable_traffic.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_enable_traffic.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

bnx2x_vf_enable_traffic.exit:                     ; preds = %for.body.i.i.bnx2x_vf_enable_traffic.exit_crit_edge, %do.end58.i.i.bnx2x_vf_enable_traffic.exit_crit_edge
  %81 = ptrtoint ptr %pf_num.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pf_num.i.i, align 2
  %83 = or i8 %82, 8
  %or.i = zext i8 %83 to i16
  %84 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %abs_vfid25, align 1
  %conv2.i = zext i8 %85 to i16
  %shl.i = shl nuw nsw i16 %conv2.i, 4
  %or3.i = or i16 %shl.i, %or.i
  %call.i = call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %or3.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !754
  call void @arm_heavy_mb() #14
  %86 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regview, align 8
  %add.ptr.i = getelementptr i8, ptr %87, i32 1311468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !716
  %88 = ptrtoint ptr %pf_num.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pf_num.i.i, align 2
  %conv6.i = zext i8 %89 to i16
  %call7.i = call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv6.i) #14
  %90 = ptrtoint ptr %alloc_resc.le to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %alloc_resc.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp44104.not = icmp eq i8 %91, 0
  br i1 %cmp44104.not, label %bnx2x_vf_enable_traffic.exit.for.end53_crit_edge, label %for.body46.lr.ph

bnx2x_vf_enable_traffic.exit.for.end53_crit_edge: ; preds = %bnx2x_vf_enable_traffic.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end53

for.body46.lr.ph:                                 ; preds = %bnx2x_vf_enable_traffic.exit
  %vfqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %igu_base_id.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %i.1105 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc52, %for.body46.for.body46_crit_edge ]
  %92 = ptrtoint ptr %abs_vfid25 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %abs_vfid25, align 1
  %94 = ptrtoint ptr %vfqs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vfqs.i, align 4
  %96 = ptrtoint ptr %igu_base_id.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %igu_base_id.i.i, align 1
  %index.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %95, i32 %i.1105, i32 7
  %98 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %index.i.i, align 4
  %conv1.i.i = trunc i16 %99 to i8
  %add.i.i96 = add i8 %97, %conv1.i.i
  %100 = or i8 %93, 64
  %or.i97 = zext i8 %100 to i32
  %phi.bo.i = shl nuw i32 %or.i97, 24
  %conv.i = zext i8 %add.i.i96 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i98 = or i32 %mul.i, 1061888
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !755
  call void @arm_heavy_mb() #14
  %101 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regview, align 8
  %add.ptr.i99 = getelementptr i8, ptr %102, i32 %add.i98
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %phi.bo.i) #14, !srcloc !716
  %inc52 = add nuw nsw i32 %i.1105, 1
  %103 = ptrtoint ptr %alloc_resc.le to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %alloc_resc.le, align 4
  %conv43 = zext i8 %104 to i32
  %cmp44 = icmp ult i32 %inc52, %conv43
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.for.end53_crit_edge

for.body46.for.end53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end53

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body46

for.end53:                                        ; preds = %for.body46.for.end53_crit_edge, %bnx2x_vf_enable_traffic.exit.for.end53_crit_edge
  %105 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 2, ptr %state, align 1
  %index = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 13
  %106 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %index, align 8
  %conv55 = zext i8 %107 to i32
  %call56 = call i32 @bnx2x_post_vf_bulletin(ptr noundef %bp, i32 noundef %conv55) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end53, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end53 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %func_init) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_sb(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_func_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_close(ptr noundef %bp, ptr noundef %vf) local_unnamed_addr #2 align 64 {
entry:
  %cookie = alloca %struct.set_vf_state_cookie, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.173, i32 noundef 2155, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %alloc_resc = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9
  %6 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alloc_resc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp162.not = icmp eq i8 %7, 0
  br i1 %cmp162.not, label %do.end7.do.body14_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.do.body14_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0163, 1
  %8 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %alloc_resc, align 4
  %conv8 = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv8
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body14_crit_edge

for.cond.do.body14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end7.for.body_crit_edge
  %i.0163 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.end7.for.body_crit_edge ]
  %call10 = tail call i32 @bnx2x_vf_queue_teardown(ptr noundef %bp, ptr noundef %vf, i32 noundef %i.0163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond, label %for.body.do.end106_crit_edge

for.body.do.end106_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end106

do.body14:                                        ; preds = %for.cond.do.body14_crit_edge, %do.end7.do.body14_crit_edge
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and16 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.end41_crit_edge, label %do.end27, !prof !702

do.body14.do.end41_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

do.end27:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %dev29 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %12 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev29, align 4
  %tobool30.not = icmp eq ptr %13, null
  %spec.select156 = select i1 %tobool30.not, ptr @.str.3, ptr %13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.173, i32 noundef 2165, ptr noundef nonnull %spec.select156) #17
  br label %do.end41

do.end41:                                         ; preds = %do.end27, %do.body14.do.end41_crit_edge
  %pf_num.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %14 = ptrtoint ptr %pf_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf_num.i, align 2
  %16 = or i8 %15, 8
  %or.i = zext i8 %16 to i16
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %17 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %abs_vfid.i, align 1
  %conv2.i = zext i8 %18 to i16
  %shl.i = shl nuw nsw i16 %conv2.i, 4
  %or3.i = or i16 %shl.i, %or.i
  %call.i = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %or3.i) #14
  %regview.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %19 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regview.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 1245552
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !756
  %22 = and i32 %21, -520093697
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !757
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regview.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %24, i32 1245552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %22) #14, !srcloc !716
  %25 = ptrtoint ptr %pf_num.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pf_num.i, align 2
  %conv10.i = zext i8 %26 to i16
  %call11.i = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv10.i) #14
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 8
  %and44 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end41.do.end69_crit_edge, label %do.end55, !prof !702

do.end41.do.end69_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

do.end55:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  %dev57 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %29 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev57, align 4
  %tobool58.not = icmp eq ptr %30, null
  %spec.select157 = select i1 %tobool58.not, ptr @.str.3, ptr %30
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.173, i32 noundef 2169, ptr noundef nonnull %spec.select157) #17
  br label %do.end69

do.end69:                                         ; preds = %do.end55, %do.end41.do.end69_crit_edge
  %31 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %alloc_resc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp10.not.i = icmp eq i8 %32, 0
  br i1 %cmp10.not.i, label %do.end69.bnx2x_vf_clr_qtbl.exit_crit_edge, label %for.body.lr.ph.i

do.end69.bnx2x_vf_clr_qtbl.exit_crit_edge:        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_clr_qtbl.exit

for.body.lr.ph.i:                                 ; preds = %do.end69
  %vfqs.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %igu_base_id.i.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %vfqs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vfqs.i.i, align 4
  %35 = ptrtoint ptr %igu_base_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %igu_base_id.i.i.i, align 1
  %index.i.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %34, i32 %i.011.i, i32 7
  %37 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %index.i.i.i, align 4
  %conv1.i.i.i = trunc i16 %38 to i8
  %add.i.i.i = add i8 %36, %conv1.i.i.i
  %conv.i.i = zext i8 %add.i.i.i to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %add.i.i = or i32 %mul.i.i, 1061888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !755
  tail call void @arm_heavy_mb() #14
  %39 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regview.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #14, !srcloc !716
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %41 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %alloc_resc, align 4
  %conv.i = zext i8 %42 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bnx2x_vf_clr_qtbl.exit_crit_edge

for.body.i.bnx2x_vf_clr_qtbl.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_vf_clr_qtbl.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

bnx2x_vf_clr_qtbl.exit:                           ; preds = %for.body.i.bnx2x_vf_clr_qtbl.exit_crit_edge, %do.end69.bnx2x_vf_clr_qtbl.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cookie) #14
  %43 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -4261412865, ptr %cookie, align 8, !annotation !741
  store ptr %vf, ptr %cookie, align 8
  %call71 = call i32 @bnx2x_stats_safe_exec(ptr noundef %bp, ptr noundef nonnull @bnx2x_set_vf_state, ptr noundef nonnull %cookie) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cookie) #14
  br i1 %tobool72.not, label %do.body75, label %bnx2x_vf_clr_qtbl.exit.do.end106_crit_edge

bnx2x_vf_clr_qtbl.exit.do.end106_crit_edge:       ; preds = %bnx2x_vf_clr_qtbl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end106

do.body75:                                        ; preds = %bnx2x_vf_clr_qtbl.exit
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 8
  %and77 = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body75.cleanup122_crit_edge, label %do.end88, !prof !702

do.body75.cleanup122_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup122

do.end88:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #16
  %dev90 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %46 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev90, align 4
  %tobool91.not = icmp eq ptr %47, null
  %spec.select158 = select i1 %tobool91.not, ptr @.str.3, ptr %47
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.173, i32 noundef 2186, ptr noundef nonnull %spec.select158) #17
  br label %cleanup122

do.end106:                                        ; preds = %bnx2x_vf_clr_qtbl.exit.do.end106_crit_edge, %for.body.do.end106_crit_edge
  %rc.0 = phi i32 [ %call71, %bnx2x_vf_clr_qtbl.exit.do.end106_crit_edge ], [ %call10, %for.body.do.end106_crit_edge ]
  %dev108 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %48 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev108, align 4
  %tobool109.not = icmp eq ptr %49, null
  %spec.select159 = select i1 %tobool109.not, ptr @.str.3, ptr %49
  %abs_vfid117 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %50 = ptrtoint ptr %abs_vfid117 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %abs_vfid117, align 1
  %conv118 = zext i8 %51 to i32
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.173, i32 noundef 2190, ptr noundef nonnull %spec.select159, i32 noundef %conv118, i32 noundef %rc.0) #17
  br label %cleanup122

cleanup122:                                       ; preds = %do.end106, %do.end88, %do.body75.cleanup122_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.end106 ], [ 0, %do.end88 ], [ 0, %do.body75.cleanup122_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_stats_safe_exec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bnx2x_set_vf_state(ptr nocapture noundef readonly %cookie) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.set_vf_state_cookie, ptr %cookie, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cookie, align 4
  %state1 = getelementptr inbounds %struct.bnx2x_virtf, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %state1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_free(ptr noundef %bp, ptr noundef %vf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end34_crit_edge, label %do.end, !prof !702

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %switch.lookup, label %cond.false21

cond.false21:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp24 = icmp eq i8 %7, 3
  %cond26 = select i1 %cmp24, ptr @.str.191, ptr @.str.192
  br label %cond.end31

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = sext i8 %7 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.bnx2x_vf_free, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %switch.lookup, %cond.false21
  %cond32 = phi ptr [ %cond26, %cond.false21 ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 2207, ptr noundef nonnull %spec.select, i32 noundef %conv, ptr noundef nonnull %cond32) #17
  br label %do.end34

do.end34:                                         ; preds = %cond.end31, %entry.do.end34_crit_edge
  %state35 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 2
  %11 = ptrtoint ptr %state35 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state35, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.421)
  switch i8 %12, label %do.end34.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %do.end34.do.body42_crit_edge
  ]

do.end34.do.body42_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %do.end34
  %call37 = tail call i32 @bnx2x_vf_close(ptr noundef %bp, ptr noundef %vf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %sw.bb.do.body42_crit_edge, label %do.end74

sw.bb.do.body42_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42

do.body42:                                        ; preds = %sw.bb.do.body42_crit_edge, %do.end34.do.body42_crit_edge
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 8
  %and44 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.do.end69_crit_edge, label %do.end55, !prof !702

do.body42.do.end69_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

do.end55:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #16
  %dev57 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %16 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev57, align 4
  %tobool58.not = icmp eq ptr %17, null
  %spec.select112 = select i1 %tobool58.not, ptr @.str.3, ptr %17
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.187, i32 noundef 2216, ptr noundef nonnull %spec.select112) #17
  br label %do.end69

do.end69:                                         ; preds = %do.end55, %do.body42.do.end69_crit_edge
  %alloc_resc.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9
  %18 = ptrtoint ptr %alloc_resc.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %alloc_resc.i.i, align 1
  %num_txqs.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %num_txqs.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %num_txqs.i.i, align 1
  %num_mac_filters.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %num_mac_filters.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_mac_filters.i.i, align 1
  %num_vlan_filters.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 4
  %21 = ptrtoint ptr %num_vlan_filters.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %num_vlan_filters.i.i, align 1
  %num_mc_filters.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %num_mc_filters.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %num_mc_filters.i.i, align 1
  %sb_count.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 10
  %23 = ptrtoint ptr %sb_count.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sb_count.i.i, align 2
  %num_sbs.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9, i32 2
  %25 = ptrtoint ptr %num_sbs.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %num_sbs.i.i, align 1
  %26 = ptrtoint ptr %state35 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %state35, align 1
  br label %cleanup

do.end74:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %dev76 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %27 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev76, align 4
  %tobool77.not = icmp eq ptr %28, null
  %spec.select113 = select i1 %tobool77.not, ptr @.str.3, ptr %28
  %abs_vfid85 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %29 = ptrtoint ptr %abs_vfid85 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %abs_vfid85, align 1
  %conv86 = zext i8 %30 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.187, i32 noundef 2227, ptr noundef nonnull %spec.select113, i32 noundef %conv86, i32 noundef %call37) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %do.end69, %do.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %do.end74 ], [ 0, %do.end34.cleanup_crit_edge ], [ 0, %do.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_rss_update(ptr noundef %bp, ptr nocapture noundef readonly %vf, ptr noundef %rss) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !702

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.199, i32 noundef 2234, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_config_rss_params, ptr %rss, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %ramrod_flags) #14
  %call7 = tail call i32 @bnx2x_config_rss(ptr noundef %bp, ptr noundef %rss) #14
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_config_rss(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_tpa_update(ptr noundef %bp, ptr nocapture noundef readonly %vf, ptr nocapture noundef readonly %tlv, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  %qstate = alloca %struct.bnx2x_queue_state_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tpa_client_info = getelementptr inbounds %struct.vfpf_tpa_tlv, ptr %tlv, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %qstate) #14
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !702

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %3
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %4 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.200, i32 noundef 2247, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %6 = call ptr @memset(ptr %qstate, i32 0, i32 92)
  %params10 = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qstate, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %params10, ptr %params, i32 20)
  %cmd = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qstate, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %cmd, align 4
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %qstate, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %ramrod_flags) #14
  %alloc_resc = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 9
  %9 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %alloc_resc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp116.not = icmp eq i8 %10, 0
  br i1 %cmp116.not, label %do.end9.cleanup_crit_edge, label %for.body.lr.ph

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end9
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %dev31 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %abs_vfid40 = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %qid.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vfqs, align 4
  %sp_obj = getelementptr %struct.bnx2x_vf_queue, ptr %12, i32 %qid.0117, i32 5
  %13 = ptrtoint ptr %qstate to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sp_obj, ptr %qstate, align 4
  %arrayidx13 = getelementptr i64, ptr %tpa_client_info, i32 %qid.0117
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx13, align 8
  %conv14 = trunc i64 %15 to i32
  %16 = ptrtoint ptr %params10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv14, ptr %params10, align 4
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and18 = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.do.end50_crit_edge, label %do.end29, !prof !702

for.body.do.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

do.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev31, align 4
  %tobool32.not = icmp eq ptr %20, null
  %spec.select112 = select i1 %tobool32.not, ptr @.str.3, ptr %20
  %21 = ptrtoint ptr %abs_vfid40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %abs_vfid40, align 1
  %conv41 = zext i8 %22 to i32
  %shr = lshr i64 %15, 32
  %conv43 = trunc i64 %shr to i32
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.200, i32 noundef 2261, ptr noundef nonnull %spec.select112, i32 noundef %conv41, i32 noundef %qid.0117, i32 noundef %conv43, i32 noundef %conv14) #17
  br label %do.end50

do.end50:                                         ; preds = %do.end29, %for.body.do.end50_crit_edge
  %call51 = call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef nonnull %qstate) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.inc, label %do.end57

do.end57:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  %tobool60.not = icmp eq ptr %24, null
  %spec.select113 = select i1 %tobool60.not, ptr @.str.3, ptr %24
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx13, align 8
  %shr69 = lshr i64 %26, 32
  %conv70 = trunc i64 %shr69 to i32
  %conv73 = trunc i64 %26 to i32
  %27 = ptrtoint ptr %abs_vfid40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %abs_vfid40, align 1
  %conv75 = zext i8 %28 to i32
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.200, i32 noundef 2266, ptr noundef nonnull %spec.select113, i32 noundef %conv70, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %qid.0117) #17
  br label %cleanup

for.inc:                                          ; preds = %do.end50
  %inc = add nuw nsw i32 %qid.0117, 1
  %29 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %alloc_resc, align 4
  %conv11 = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc, %conv11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end57, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %do.end57 ], [ 0, %do.end9.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %qstate) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_queue_state_change(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_lock_vf_pf_channel(ptr nocapture noundef readonly %bp, ptr noundef %vf, i32 noundef %tlv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %tlv to i16
  %call = tail call zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext %conv) #14
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %1
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, i32 noundef 2299, ptr noundef nonnull %spec.select) #17
  br label %do.end25

if.end:                                           ; preds = %entry
  %op_mutex = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %op_mutex, i32 noundef 0) #14
  %op_current = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 26
  %2 = ptrtoint ptr %op_current to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tlv, ptr %op_current, align 8
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.end25_crit_edge, label %do.end11, !prof !702

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev13 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev13, align 4
  %tobool14.not = icmp eq ptr %6, null
  %spec.select35 = select i1 %tobool14.not, ptr @.str.3, ptr %6
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %7 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %abs_vfid, align 1
  %conv22 = zext i8 %8 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.211, i32 noundef 2311, ptr noundef nonnull %spec.select35, i32 noundef %conv22, i32 noundef %tlv) #17
  br label %do.end25

do.end25:                                         ; preds = %do.end11, %if.end.do.end25_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_unlock_vf_pf_channel(ptr nocapture noundef readonly %bp, ptr noundef %vf, i32 noundef %expected_tlv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vf, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool2.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, i32 noundef 2320, ptr noundef nonnull %spec.select, ptr noundef null) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_current = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 26
  %2 = ptrtoint ptr %op_current to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_current, align 8
  %conv = trunc i32 %expected_tlv to i16
  %call6 = tail call zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext %conv) #14
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %op_current to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_current, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %expected_tlv)
  %cmp.not = icmp eq i32 %5, %expected_tlv
  br i1 %cmp.not, label %if.end8.if.end29_crit_edge, label %do.end22, !prof !702

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end22:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2332, i32 noundef 9, ptr noundef nonnull @.str.217, i32 noundef %expected_tlv, i32 noundef %5) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end22, %if.end8.if.end29_crit_edge
  %6 = ptrtoint ptr %op_current to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %op_current, align 8
  %op_mutex = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %op_mutex) #14
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end29.cleanup_crit_edge, label %do.end49, !prof !702

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end49:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %dev51 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %9 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev51, align 4
  %tobool52.not = icmp eq ptr %10, null
  %spec.select81 = select i1 %tobool52.not, ptr @.str.3, ptr %10
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %11 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %abs_vfid, align 1
  %conv60 = zext i8 %12 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.216, i32 noundef 2342, ptr noundef nonnull %spec.select81, i32 noundef %conv60, i32 noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_sriov_configure(ptr nocapture noundef readonly %dev, i32 noundef %num_vfs_param) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %vfdb = getelementptr i8, ptr %1, i32 7072
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev3 = getelementptr i8, ptr %1, i32 3132
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %tobool4.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, i32 noundef 2410, ptr noundef nonnull %spec.select) #17
  br label %cleanup

do.body9:                                         ; preds = %entry
  %msg_enable = getelementptr i8, ptr %1, i32 3432
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body9.do.end31_crit_edge, label %do.end16, !prof !702

do.body9.do.end31_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31

do.end16:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %dev18 = getelementptr i8, ptr %1, i32 3132
  %8 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev18, align 4
  %tobool19.not = icmp eq ptr %9, null
  %spec.select117 = select i1 %tobool19.not, ptr @.str.3, ptr %9
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %3, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %11 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.222, i32 noundef 2415, ptr noundef nonnull %spec.select117, i32 noundef %num_vfs_param, i32 noundef %conv) #17
  br label %do.end31

do.end31:                                         ; preds = %do.end16, %do.body9.do.end31_crit_edge
  %state = getelementptr i8, ptr %1, i32 4824
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %13)
  %cmp.not = icmp eq i16 %13, 12288
  br i1 %cmp.not, label %if.end52, label %do.end38

do.end38:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #16
  %dev40 = getelementptr i8, ptr %1, i32 3132
  %14 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev40, align 4
  %tobool41.not = icmp eq ptr %15, null
  %spec.select118 = select i1 %tobool41.not, ptr @.str.3, ptr %15
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.222, i32 noundef 2419, ptr noundef nonnull %spec.select118) #17
  br label %cleanup

if.end52:                                         ; preds = %do.end31
  %16 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfdb, align 8
  %nr_virtfn55 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %17, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %nr_virtfn55 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nr_virtfn55, align 2
  %conv56 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv56, i32 %num_vfs_param)
  %cmp57 = icmp slt i32 %conv56, %num_vfs_param
  br i1 %cmp57, label %do.end63, label %if.end52.if.end85_crit_edge

if.end52.if.end85_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

do.end63:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %dev65 = getelementptr i8, ptr %1, i32 3132
  %20 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev65, align 4
  %tobool66.not = icmp eq ptr %21, null
  %spec.select119 = select i1 %tobool66.not, ptr @.str.3, ptr %21
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.222, i32 noundef 2426, ptr noundef nonnull %spec.select119, i32 noundef %num_vfs_param, i32 noundef %conv56) #17
  %22 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vfdb, align 8
  %nr_virtfn83 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %23, i32 0, i32 3, i32 7
  %24 = ptrtoint ptr %nr_virtfn83 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nr_virtfn83, align 2
  %conv84 = zext i16 %25 to i32
  br label %if.end85

if.end85:                                         ; preds = %do.end63, %if.end52.if.end85_crit_edge
  %num_vfs_param.addr.0 = phi i32 [ %conv84, %do.end63 ], [ %num_vfs_param, %if.end52.if.end85_crit_edge ]
  %conv86 = trunc i32 %num_vfs_param.addr.0 to i16
  %requested_nr_virtfn = getelementptr i8, ptr %1, i32 3128
  %26 = ptrtoint ptr %requested_nr_virtfn to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv86, ptr %requested_nr_virtfn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs_param.addr.0)
  %cmp87 = icmp eq i32 %num_vfs_param.addr.0, 0
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end85
  %call90 = tail call fastcc i32 @bnx2x_set_pf_tx_switching(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  %pdev.i = getelementptr i8, ptr %1, i32 3136
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %call.i = tail call i32 @pci_vfs_assigned(ptr noundef %28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.then89
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i, !prof !702

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %1, i32 3132
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.3, ptr %32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef 2549, ptr noundef nonnull %spec.select.i) #17
  br label %cleanup

if.end10.i:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_sriov(ptr noundef %34) #14
  br label %cleanup

if.else:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  %call91 = tail call i32 @bnx2x_enable_sriov(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end10.i, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end38, %do.end
  %retval.0 = phi i32 [ -22, %do.end38 ], [ %call91, %if.else ], [ -22, %do.end ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_set_pf_tx_switching(ptr noundef %bp, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %q_params = alloca %struct.bnx2x_queue_state_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %q_params) #14
  %flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 49
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -262145
  %masksel = select i1 %enable, i32 262144, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %storemerge)
  %cmp = icmp eq i32 %1, %storemerge
  br i1 %cmp, label %entry.cleanup79_crit_edge, label %if.end5

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

if.end5:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 92
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %3)
  %cmp6.not = icmp eq i16 %3, 12288
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end5.cleanup79_crit_edge

if.end5.cleanup79_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

lor.lhs.false:                                    ; preds = %if.end5
  %sp_objs = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 1
  %4 = ptrtoint ptr %sp_objs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sp_objs, align 4
  %6 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bp, align 8
  %index = getelementptr inbounds %struct.bnx2x_fastpath, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 2
  %idxprom = zext i8 %9 to i32
  %q_obj = getelementptr %struct.bnx2x_sp_objs, ptr %5, i32 %idxprom, i32 1
  %call = tail call i32 @bnx2x_get_q_logical_state(ptr noundef %bp, ptr noundef %q_obj) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9.not = icmp eq i32 %call, 0
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false.cleanup79_crit_edge

lor.lhs.false.cleanup79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

if.end12:                                         ; preds = %lor.lhs.false
  %10 = call ptr @memset(ptr %q_params, i32 0, i32 92)
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 2
  %11 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %ramrod_flags, align 4
  %cmd = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 1
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %cmd, align 4
  %params = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 3
  %storemerge113 = select i1 %enable, i32 12288, i32 4096
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge113, ptr %params, align 4
  %num_ethernet_queues = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 94
  %14 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ethernet_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21117.not = icmp eq i32 %15, 0
  br i1 %cmp21117.not, label %if.end12.do.body53_crit_edge, label %for.body.lr.ph

if.end12.do.body53_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

for.body.lr.ph:                                   ; preds = %if.end12
  %cid_index = getelementptr inbounds %struct.bnx2x_queue_update_params, ptr %params, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %for.body.lr.ph
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc51, %for.inc50.for.body_crit_edge ]
  %16 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bp, align 8
  %18 = ptrtoint ptr %sp_objs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sp_objs, align 4
  %index27 = getelementptr %struct.bnx2x_fastpath, ptr %17, i32 %i.0118, i32 23
  %20 = ptrtoint ptr %index27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index27, align 2
  %idxprom28 = zext i8 %21 to i32
  %q_obj30 = getelementptr %struct.bnx2x_sp_objs, ptr %19, i32 %idxprom28, i32 1
  %22 = ptrtoint ptr %q_params to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %q_obj30, ptr %q_params, align 4
  %max_cos = getelementptr %struct.bnx2x_fastpath, ptr %17, i32 %i.0118, i32 10
  %23 = ptrtoint ptr %max_cos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_cos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp34115.not = icmp eq i8 %24, 0
  br i1 %cmp34115.not, label %for.body.for.inc50_crit_edge, label %for.body.for.body36_crit_edge

for.body.for.body36_crit_edge:                    ; preds = %for.body
  br label %for.body36

for.body.for.inc50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc50

for.cond32:                                       ; preds = %for.body36
  %inc = add nuw nsw i32 %tx_idx.0116, 1
  %25 = ptrtoint ptr %max_cos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_cos, align 8
  %conv33 = zext i8 %26 to i32
  %cmp34 = icmp ult i32 %inc, %conv33
  br i1 %cmp34, label %for.cond32.for.body36_crit_edge, label %for.cond32.for.inc50_crit_edge

for.cond32.for.inc50_crit_edge:                   ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc50

for.cond32.for.body36_crit_edge:                  ; preds = %for.cond32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body36

for.body36:                                       ; preds = %for.cond32.for.body36_crit_edge, %for.body.for.body36_crit_edge
  %tx_idx.0116 = phi i32 [ %inc, %for.cond32.for.body36_crit_edge ], [ 0, %for.body.for.body36_crit_edge ]
  %conv37 = trunc i32 %tx_idx.0116 to i8
  %27 = ptrtoint ptr %cid_index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv37, ptr %cid_index, align 2
  %call39 = call i32 @bnx2x_queue_state_change(ptr noundef %bp, ptr noundef nonnull %q_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.cond32, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %tobool43.not = icmp eq ptr %29, null
  %spec.select = select i1 %tobool43.not, ptr @.str.3, ptr %29
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.391, ptr noundef nonnull @.str.392, i32 noundef 2395, ptr noundef nonnull %spec.select) #17
  br label %cleanup79

for.inc50:                                        ; preds = %for.cond32.for.inc50_crit_edge, %for.body.for.inc50_crit_edge
  %inc51 = add nuw i32 %i.0118, 1
  %30 = ptrtoint ptr %num_ethernet_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_ethernet_queues, align 8
  %cmp21 = icmp ult i32 %inc51, %31
  br i1 %cmp21, label %for.inc50.for.body_crit_edge, label %for.inc50.do.body53_crit_edge

for.inc50.do.body53_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body53:                                        ; preds = %for.inc50.do.body53_crit_edge, %if.end12.do.body53_crit_edge
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 8
  %and54 = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.cleanup79_crit_edge, label %do.end61, !prof !702

do.body53.cleanup79_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup79

do.end61:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  %dev63 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %34 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev63, align 4
  %tobool64.not = icmp eq ptr %35, null
  %spec.select109 = select i1 %tobool64.not, ptr @.str.3, ptr %35
  %cond74 = select i1 %enable, ptr @.str.190, ptr @.str.293
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.394, ptr noundef nonnull @.str.392, i32 noundef 2401, ptr noundef nonnull %spec.select109, ptr noundef nonnull %cond74) #17
  br label %cleanup79

cleanup79:                                        ; preds = %do.end61, %do.body53.cleanup79_crit_edge, %cleanup.thread, %lor.lhs.false.cleanup79_crit_edge, %if.end5.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup79_crit_edge ], [ 0, %lor.lhs.false.cleanup79_crit_edge ], [ 0, %if.end5.cleanup79_crit_edge ], [ 0, %do.end61 ], [ 0, %do.body53.cleanup79_crit_edge ], [ %call39, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_enable_sriov(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_nr_virtfn = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 18
  %0 = ptrtoint ptr %requested_nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %requested_nr_virtfn, align 8
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdb, align 8
  %sriov = getelementptr inbounds %struct.bnx2x_vfdb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sriov to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sriov, align 8
  %vf_sbs_pool = getelementptr inbounds %struct.bnx2x_vfdb, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %vf_sbs_pool to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vf_sbs_pool, align 8
  %8 = udiv i16 %7, %1
  %9 = tail call i16 @llvm.umin.i16(i16 %8, i16 16)
  %cond = zext i16 %9 to i32
  br label %for.body

for.body:                                         ; preds = %cond.end34.for.body_crit_edge, %for.body.preheader
  %vf_idx.0392 = phi i32 [ %inc, %cond.end34.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %10 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.cond.end21_crit_edge, label %land.lhs.true

for.body.cond.end21_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end21

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %tobool16.not = icmp eq ptr %13, null
  %arrayidx = getelementptr %struct.bnx2x_virtf, ptr %13, i32 %vf_idx.0392
  %spec.select = select i1 %tobool16.not, ptr null, ptr %arrayidx
  br label %cond.end21

cond.end21:                                       ; preds = %land.lhs.true, %for.body.cond.end21_crit_edge
  %cond22 = phi ptr [ null, %for.body.cond.end21_crit_edge ], [ %spec.select, %land.lhs.true ]
  %sb_count = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond22, i32 0, i32 10
  %14 = ptrtoint ptr %sb_count to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %sb_count, align 2
  %15 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vfdb, align 8
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %cond.end21.cond.end34_crit_edge, label %land.lhs.true25

cond.end21.cond.end34_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end34

land.lhs.true25:                                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool28.not = icmp eq ptr %18, null
  %arrayidx32 = getelementptr %struct.bnx2x_virtf, ptr %18, i32 %vf_idx.0392
  %spec.select383 = select i1 %tobool28.not, ptr null, ptr %arrayidx32
  br label %cond.end34

cond.end34:                                       ; preds = %land.lhs.true25, %cond.end21.cond.end34_crit_edge
  %cond35 = phi ptr [ null, %cond.end21.cond.end34_crit_edge ], [ %spec.select383, %land.lhs.true25 ]
  %num_sbs = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond35, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %num_sbs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %num_sbs, align 2
  %inc = add nuw nsw i32 %vf_idx.0392, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %cond.end34.for.body_crit_edge

cond.end34.for.body_crit_edge:                    ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cond.end34
  %20 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfdb, align 8
  %vf_sbs_pool37 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %vf_sbs_pool37 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %vf_sbs_pool37, align 8
  %add41 = add i32 %5, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add41)
  %cmp42400 = icmp slt i32 %5, %add41
  br i1 %cmp42400, label %for.cond45.preheader.lr.ph, label %for.end.for.end77_crit_edge

for.end.for.end77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end77

for.cond45.preheader.lr.ph:                       ; preds = %for.end
  %23 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vfdb, align 8
  %first_vf_igu_entry = getelementptr inbounds %struct.bnx2x_vfdb, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %first_vf_igu_entry to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %first_vf_igu_entry, align 2
  %conv39 = zext i16 %26 to i32
  %mul = shl nuw nsw i32 %conv39, 2
  %add = add nuw nsw i32 %mul, 1249280
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp47395.not = icmp eq i16 %9, 0
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.inc75.for.cond45.preheader_crit_edge, %for.cond45.preheader.lr.ph
  %vf_idx.1403 = phi i32 [ %5, %for.cond45.preheader.lr.ph ], [ %inc76, %for.inc75.for.cond45.preheader_crit_edge ]
  %sb_idx.0402 = phi i32 [ %conv39, %for.cond45.preheader.lr.ph ], [ %sb_idx.1.lcssa, %for.inc75.for.cond45.preheader_crit_edge ]
  %address.0401 = phi i32 [ %add, %for.cond45.preheader.lr.ph ], [ %address.1.lcssa, %for.inc75.for.cond45.preheader_crit_edge ]
  br i1 %cmp47395.not, label %for.cond45.preheader.for.inc75_crit_edge, label %for.body49.lr.ph

for.cond45.preheader.for.inc75_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc75

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %shl = shl i32 %vf_idx.1403, 7
  br label %for.body49

for.body49:                                       ; preds = %do.body67.for.body49_crit_edge, %for.body49.lr.ph
  %sb_idx.1398 = phi i32 [ %sb_idx.0402, %for.body49.lr.ph ], [ %inc70, %do.body67.for.body49_crit_edge ]
  %vfq_idx.0397 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc73, %do.body67.for.body49_crit_edge ]
  %address.1396 = phi i32 [ %address.0401, %for.body49.lr.ph ], [ %add71, %do.body67.for.body49_crit_edge ]
  %shl50 = shl nuw i32 %vfq_idx.0397, 1
  %or = or i32 %shl, %shl50
  %or51 = or i32 %or, 1
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 8
  %and = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %for.body49.do.body67_crit_edge, label %do.end, !prof !702

for.body49.do.body67_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body67

do.end:                                           ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %tobool58.not = icmp eq ptr %30, null
  %spec.select384 = select i1 %tobool58.not, ptr @.str.3, ptr %30
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.233, i32 noundef 2476, ptr noundef nonnull %spec.select384, i32 noundef %sb_idx.1398, i32 noundef %vf_idx.1403) #17
  br label %do.body67

do.body67:                                        ; preds = %do.end, %for.body49.do.body67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !758
  tail call void @arm_heavy_mb() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %or51)
  %32 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %33, i32 %address.1396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #14, !srcloc !716
  %inc70 = add i32 %sb_idx.1398, 1
  %add71 = add i32 %address.1396, 4
  %inc73 = add nuw nsw i32 %vfq_idx.0397, 1
  %exitcond415.not = icmp eq i32 %inc73, %cond
  br i1 %exitcond415.not, label %do.body67.for.inc75_crit_edge, label %do.body67.for.body49_crit_edge

do.body67.for.body49_crit_edge:                   ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body49

do.body67.for.inc75_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc75

for.inc75:                                        ; preds = %do.body67.for.inc75_crit_edge, %for.cond45.preheader.for.inc75_crit_edge
  %address.1.lcssa = phi i32 [ %address.0401, %for.cond45.preheader.for.inc75_crit_edge ], [ %add71, %do.body67.for.inc75_crit_edge ]
  %sb_idx.1.lcssa = phi i32 [ %sb_idx.0402, %for.cond45.preheader.for.inc75_crit_edge ], [ %inc70, %do.body67.for.inc75_crit_edge ]
  %inc76 = add nsw i32 %vf_idx.1403, 1
  %exitcond416.not = icmp eq i32 %inc76, %add41
  br i1 %exitcond416.not, label %for.inc75.for.end77_crit_edge, label %for.inc75.for.cond45.preheader_crit_edge

for.inc75.for.cond45.preheader_crit_edge:         ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond45.preheader

for.inc75.for.end77_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end77

for.end77:                                        ; preds = %for.inc75.for.end77_crit_edge, %for.end.for.end77_crit_edge
  %call78 = tail call fastcc i32 @bnx2x_get_vf_igu_cam_info(ptr noundef %bp)
  %msg_enable80 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %34 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable80, align 8
  %and81 = and i32 %35, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %for.end77.do.end110_crit_edge, label %do.end92, !prof !702

for.end77.do.end110_crit_edge:                    ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end110

do.end92:                                         ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #16
  %dev94 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %36 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev94, align 4
  %tobool95.not = icmp eq ptr %37, null
  %spec.select385 = select i1 %tobool95.not, ptr @.str.3, ptr %37
  %38 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vfdb, align 8
  %vf_sbs_pool104 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %vf_sbs_pool104 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vf_sbs_pool104, align 8
  %conv105 = zext i16 %41 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.233, i32 noundef 2487, ptr noundef nonnull %spec.select385, i32 noundef %conv105, i32 noundef %cond) #17
  br label %do.end110

do.end110:                                        ; preds = %do.end92, %for.end77.do.end110_crit_edge
  %42 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vfdb, align 8
  %nr_virtfn406 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %43, i32 0, i32 3, i32 7
  %44 = ptrtoint ptr %nr_virtfn406 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nr_virtfn406, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp115408.not = icmp eq i16 %45, 0
  br i1 %cmp115408.not, label %do.end110.for.cond142.preheader_crit_edge, label %do.end110.for.body117_crit_edge

do.end110.for.body117_crit_edge:                  ; preds = %do.end110
  br label %for.body117

do.end110.for.cond142.preheader_crit_edge:        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond142.preheader

for.cond142.preheader:                            ; preds = %cond.end130.for.cond142.preheader_crit_edge, %do.end110.for.cond142.preheader_crit_edge
  br i1 %cmp42400, label %for.body146.lr.ph, label %for.cond142.preheader.for.end193_crit_edge

for.cond142.preheader.for.end193_crit_edge:       ; preds = %for.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end193

for.body146.lr.ph:                                ; preds = %for.cond142.preheader
  %pf_num = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %sub = add nsw i32 %cond, -1
  %46 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %regview159 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %dev176 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body146

for.body117:                                      ; preds = %cond.end130.for.body117_crit_edge, %do.end110.for.body117_crit_edge
  %47 = phi ptr [ %63, %cond.end130.for.body117_crit_edge ], [ %43, %do.end110.for.body117_crit_edge ]
  %vf_idx.2410 = phi i32 [ %inc140, %cond.end130.for.body117_crit_edge ], [ 0, %do.end110.for.body117_crit_edge ]
  %qcount.0409 = phi i32 [ %add138, %cond.end130.for.body117_crit_edge ], [ 0, %do.end110.for.body117_crit_edge ]
  %tobool120.not = icmp eq ptr %47, null
  br i1 %tobool120.not, label %for.body117.cond.end130_crit_edge, label %land.lhs.true121

for.body117.cond.end130_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end130

land.lhs.true121:                                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %tobool124.not = icmp eq ptr %49, null
  %arrayidx128 = getelementptr %struct.bnx2x_virtf, ptr %49, i32 %vf_idx.2410
  %spec.select386 = select i1 %tobool124.not, ptr null, ptr %arrayidx128
  br label %cond.end130

cond.end130:                                      ; preds = %land.lhs.true121, %for.body117.cond.end130_crit_edge
  %cond131 = phi ptr [ null, %for.body117.cond.end130_crit_edge ], [ %spec.select386, %land.lhs.true121 ]
  %vfqs = getelementptr inbounds %struct.bnx2x_vfdb, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vfqs, align 4
  %arrayidx133 = getelementptr %struct.bnx2x_vf_queue, ptr %51, i32 %qcount.0409
  %vfqs134 = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 12
  %52 = ptrtoint ptr %vfqs134 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx133, ptr %vfqs134, align 4
  %num_sbs136 = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 9, i32 2
  %53 = ptrtoint ptr %num_sbs136 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_sbs136, align 2
  %conv137 = zext i8 %54 to i32
  %add138 = add i32 %qcount.0409, %conv137
  %alloc_resc.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 9
  %55 = ptrtoint ptr %alloc_resc.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %alloc_resc.i, align 1
  %num_txqs.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %num_txqs.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %num_txqs.i, align 1
  %num_mac_filters.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 9, i32 3
  %57 = ptrtoint ptr %num_mac_filters.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %num_mac_filters.i, align 1
  %num_vlan_filters.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 9, i32 4
  %58 = ptrtoint ptr %num_vlan_filters.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %num_vlan_filters.i, align 1
  %num_mc_filters.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 9, i32 5
  %59 = ptrtoint ptr %num_mc_filters.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %num_mc_filters.i, align 1
  %sb_count.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %cond131, i32 0, i32 10
  %60 = ptrtoint ptr %sb_count.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sb_count.i, align 2
  store i8 %61, ptr %num_sbs136, align 1
  %inc140 = add nuw nsw i32 %vf_idx.2410, 1
  %62 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %63, i32 0, i32 3, i32 7
  %64 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nr_virtfn, align 2
  %conv114 = zext i16 %65 to i32
  %cmp115 = icmp ult i32 %inc140, %conv114
  br i1 %cmp115, label %cond.end130.for.body117_crit_edge, label %cond.end130.for.cond142.preheader_crit_edge

cond.end130.for.cond142.preheader_crit_edge:      ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond142.preheader

cond.end130.for.body117_crit_edge:                ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body117

for.body146:                                      ; preds = %for.inc191.for.body146_crit_edge, %for.body146.lr.ph
  %vf_idx.3413 = phi i32 [ %5, %for.body146.lr.ph ], [ %inc192, %for.inc191.for.body146_crit_edge ]
  %66 = ptrtoint ptr %pf_num to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pf_num, align 2
  %68 = or i8 %67, 8
  %or148 = zext i8 %68 to i32
  %conv150 = shl i32 %vf_idx.3413, 4
  %or152 = or i32 %conv150, %or148
  %conv153 = trunc i32 %or152 to i16
  %call154 = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv153) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !759
  tail call void @arm_heavy_mb() #14
  %69 = ptrtoint ptr %regview159 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regview159, align 8
  %add.ptr160 = getelementptr i8, ptr %70, i32 9756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %46) #14, !srcloc !716
  %71 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_enable80, align 8
  %and163 = and i32 %72, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %for.body146.for.inc191_crit_edge, label %do.end174, !prof !702

for.body146.for.inc191_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc191

do.end174:                                        ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev176, align 4
  %tobool177.not = icmp eq ptr %74, null
  %spec.select387 = select i1 %tobool177.not, ptr @.str.3, ptr %74
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.233, i32 noundef 2508, ptr noundef nonnull %spec.select387, i32 noundef %vf_idx.3413, i32 noundef %sub) #17
  br label %for.inc191

for.inc191:                                       ; preds = %do.end174, %for.body146.for.inc191_crit_edge
  %inc192 = add i32 %vf_idx.3413, 1
  %exitcond417.not = icmp eq i32 %inc192, %add41
  br i1 %exitcond417.not, label %for.inc191.for.end193_crit_edge, label %for.inc191.for.body146_crit_edge

for.inc191.for.body146_crit_edge:                 ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body146

for.inc191.for.end193_crit_edge:                  ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end193

for.end193:                                       ; preds = %for.inc191.for.end193_crit_edge, %for.cond142.preheader.for.end193_crit_edge
  %pf_num194 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 7
  %75 = ptrtoint ptr %pf_num194 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %pf_num194, align 2
  %conv195 = zext i8 %76 to i16
  %call196 = tail call i32 @bnx2x_pretend_func(ptr noundef %bp, i16 noundef zeroext %conv195) #14
  %77 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable80, align 8
  %and199 = and i32 %78, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %for.end193.do.end224_crit_edge, label %do.end210, !prof !702

for.end193.do.end224_crit_edge:                   ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end224

do.end210:                                        ; preds = %for.end193
  call void @__sanitizer_cov_trace_pc() #16
  %dev212 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %79 = ptrtoint ptr %dev212 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev212, align 4
  %tobool213.not = icmp eq ptr %80, null
  %spec.select388 = select i1 %tobool213.not, ptr @.str.3, ptr %80
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.233, i32 noundef 2515, ptr noundef nonnull %spec.select388) #17
  br label %do.end224

do.end224:                                        ; preds = %do.end210, %for.end193.do.end224_crit_edge
  %pdev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %81 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev.i, align 8
  %call.i = tail call i32 @pci_vfs_assigned(ptr noundef %82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %do.end224
  %83 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable80, align 8
  %and.i = and i32 %84, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.bnx2x_disable_sriov.exit_crit_edge, label %do.end.i, !prof !702

do.body.i.bnx2x_disable_sriov.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_disable_sriov.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %tobool6.not.i = icmp eq ptr %86, null
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.3, ptr %86
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef 2549, ptr noundef nonnull %spec.select.i) #17
  br label %bnx2x_disable_sriov.exit

if.end10.i:                                       ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_sriov(ptr noundef %88) #14
  br label %bnx2x_disable_sriov.exit

bnx2x_disable_sriov.exit:                         ; preds = %if.end10.i, %do.end.i, %do.body.i.bnx2x_disable_sriov.exit_crit_edge
  %call225 = tail call fastcc i32 @bnx2x_set_pf_tx_switching(ptr noundef %bp, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %bnx2x_disable_sriov.exit.cleanup_crit_edge

bnx2x_disable_sriov.exit.cleanup_crit_edge:       ; preds = %bnx2x_disable_sriov.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end228:                                        ; preds = %bnx2x_disable_sriov.exit
  %89 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i, align 8
  %call229 = tail call i32 @pci_enable_sriov(ptr noundef %90, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %do.body250, label %do.end235

do.end235:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #16
  %dev237 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %91 = ptrtoint ptr %dev237 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev237, align 4
  %tobool238.not = icmp eq ptr %92, null
  %spec.select389 = select i1 %tobool238.not, ptr @.str.3, ptr %92
  %call246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.233, i32 noundef 2524, ptr noundef nonnull %spec.select389, i32 noundef %call229) #17
  br label %cleanup

do.body250:                                       ; preds = %if.end228
  %93 = ptrtoint ptr %msg_enable80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msg_enable80, align 8
  %and252 = and i32 %94, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %do.body250.cleanup_crit_edge, label %do.end263, !prof !702

do.body250.cleanup_crit_edge:                     ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end263:                                        ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #16
  %dev265 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %95 = ptrtoint ptr %dev265 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev265, align 4
  %tobool266.not = icmp eq ptr %96, null
  %spec.select390 = select i1 %tobool266.not, ptr @.str.3, ptr %96
  %call274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.233, i32 noundef 2527, ptr noundef nonnull %spec.select390, i32 noundef %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end263, %do.body250.cleanup_crit_edge, %do.end235, %bnx2x_disable_sriov.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call229, %do.end235 ], [ 0, %entry.cleanup_crit_edge ], [ %call225, %bnx2x_disable_sriov.exit.cleanup_crit_edge ], [ %conv, %do.end263 ], [ %conv, %do.body250.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_pf_set_vfs_vlan(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !702

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool4.not, ptr @.str.3, ptr %3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef 2536, ptr noundef nonnull %spec.select) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %4 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfdb, align 8
  %nr_virtfn25 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %5, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %nr_virtfn25 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nr_virtfn25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp27.not = icmp eq i16 %7, 0
  br i1 %cmp27.not, label %do.end7.for.end_crit_edge, label %for.body.lr.ph

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end7
  %dev13 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %5, %for.body.lr.ph ], [ %18, %for.inc.for.body_crit_edge ]
  %vfidx.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bulletin_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %bulletin_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bulletin_dma, align 8
  %valid_bitmap = getelementptr %struct.pf_vf_bulletin_content, ptr %10, i32 %vfidx.028, i32 3
  %11 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %valid_bitmap, align 8
  %and10 = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev13, align 4
  %vlan = getelementptr %struct.pf_vf_bulletin_content, ptr %10, i32 %vfidx.028, i32 6
  %15 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan, align 8
  %call14 = tail call i32 @bnx2x_set_vf_vlan(ptr noundef %14, i32 noundef %vfidx.028, i16 noundef zeroext %16, i8 zeroext undef, i16 noundef zeroext -32512)
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %vfidx.028, 1
  %17 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %18, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end7.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_set_vf_vlan(ptr noundef %dev, i32 noundef %vfidx, i16 noundef zeroext %vlan, i8 zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #2 align 64 {
entry:
  %bulletin = alloca ptr, align 4
  %vlan_mac_flags = alloca i32, align 4
  %ramrod_flags = alloca i32, align 4
  %vf = alloca ptr, align 4
  %q_params = alloca %struct.bnx2x_queue_state_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulletin) #14
  %0 = ptrtoint ptr %bulletin to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bulletin, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlan_mac_flags) #14
  %1 = ptrtoint ptr %vlan_mac_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vlan_mac_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramrod_flags) #14
  %2 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ramrod_flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf) #14
  %3 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %vf, align 4
  %conv = zext i16 %vlan to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp = icmp ugt i16 %vlan, 4095
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev3 = getelementptr i8, ptr %dev, i32 3132
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.266, i32 noundef 2814, ptr noundef nonnull %spec.select, i32 noundef %conv) #17
  br label %cleanup203

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp10.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp10.not, label %do.body14, label %if.end.cleanup203_crit_edge

if.end.cleanup203_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup203

do.body14:                                        ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %dev, i32 3432
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body14.do.end36_crit_edge, label %do.end21, !prof !702

do.body14.do.end36_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %dev23 = getelementptr i8, ptr %dev, i32 3132
  %8 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev23, align 4
  %tobool24.not = icmp eq ptr %9, null
  %spec.select277 = select i1 %tobool24.not, ptr @.str.3, ptr %9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.266, i32 noundef 2822, ptr noundef nonnull %spec.select277, i32 noundef %vfidx, i32 noundef %conv, i32 noundef 0) #17
  br label %do.end36

do.end36:                                         ; preds = %do.end21, %do.body14.do.end36_crit_edge
  %call37 = call fastcc i32 @bnx2x_vf_op_prep(ptr noundef %add.ptr.i, i32 noundef %vfidx, ptr noundef nonnull %vf, ptr noundef nonnull %bulletin, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %do.end36.cleanup203_crit_edge

do.end36.cleanup203_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup203

if.end40:                                         ; preds = %do.end36
  %vfdb = getelementptr i8, ptr %dev, i32 7072
  %10 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %11, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %bulletin_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %cmp42.not = icmp eq i16 %vlan, 0
  %12 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bulletin, align 4
  %valid_bitmap45 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %valid_bitmap45 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %valid_bitmap45, align 8
  %and46 = and i64 %15, -3
  %masksel = select i1 %cmp42.not, i64 0, i64 2
  %and46.sink = or i64 %and46, %masksel
  store i64 %and46.sink, ptr %valid_bitmap45, align 8
  %16 = load ptr, ptr %bulletin, align 4
  %vlan48 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %vlan48 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %vlan, ptr %vlan48, align 8
  %call49 = tail call i32 @bnx2x_post_vf_bulletin(ptr noundef %add.ptr.i, i32 noundef %vfidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end40.if.end69_crit_edge, label %do.end55

if.end40.if.end69_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

do.end55:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %dev57 = getelementptr i8, ptr %dev, i32 3132
  %18 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev57, align 4
  %tobool58.not = icmp eq ptr %19, null
  %spec.select278 = select i1 %tobool58.not, ptr @.str.3, ptr %19
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.266, i32 noundef 2846, ptr noundef nonnull %spec.select278, i32 noundef %vfidx) #17
  br label %if.end69

if.end69:                                         ; preds = %do.end55, %if.end40.if.end69_crit_edge
  %20 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex71 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %21, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %bulletin_mutex71) #14
  %22 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vf, align 4
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp73.not = icmp eq i8 %25, 2
  br i1 %cmp73.not, label %lor.lhs.false, label %if.end69.cleanup203_crit_edge

if.end69.cleanup203_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup203

lor.lhs.false:                                    ; preds = %if.end69
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %23, i32 0, i32 12
  %26 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vfqs, align 4
  %sp_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %27, i32 0, i32 5
  %call75 = tail call i32 @bnx2x_get_q_logical_state(ptr noundef %add.ptr.i, ptr noundef %sp_obj) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %if.end79, label %lor.lhs.false.cleanup203_crit_edge

lor.lhs.false.cleanup203_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup203

if.end79:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vfqs, align 4
  %sp_initialized.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sp_initialized.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %bnx2x_validate_vf_sp_objs.exit, label %if.end82

bnx2x_validate_vf_sp_objs.exit:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %dev, i32 3132
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %33
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.309, i32 noundef 117, ptr noundef nonnull %spec.select.i) #17
  br label %cleanup203

if.end82:                                         ; preds = %if.end79
  tail call void @bnx2x_lock_vf_pf_channel(ptr noundef %add.ptr.i, ptr noundef %23, i32 noundef 15)
  %34 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ramrod_flags, align 4
  %or.i = or i32 %35, 4
  store i32 %or.i, ptr %ramrod_flags, align 4
  %36 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vfqs, align 4
  %vlan_obj85 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %37, i32 0, i32 2
  %delete_all = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %37, i32 0, i32 2, i32 18
  %38 = ptrtoint ptr %delete_all to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %delete_all, align 4
  %call86 = call i32 %39(ptr noundef %add.ptr.i, ptr noundef %vlan_obj85, ptr noundef nonnull %vlan_mac_flags, ptr noundef nonnull %ramrod_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end106, label %do.end92

do.end92:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  %dev94 = getelementptr i8, ptr %dev, i32 3132
  %40 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev94, align 4
  %tobool95.not = icmp eq ptr %41, null
  %spec.select279 = select i1 %tobool95.not, ptr @.str.3, ptr %41
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.266, i32 noundef 2868, ptr noundef nonnull %spec.select279) #17
  br label %out.thread

if.end106:                                        ; preds = %if.end82
  br i1 %cmp42.not, label %lor.lhs.false109, label %if.end106.if.then113_crit_edge

if.end106.if.then113_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113

lor.lhs.false109:                                 ; preds = %if.end106
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %23, align 8
  %44 = and i16 %43, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool112.not = icmp eq i16 %44, 0
  br i1 %tobool112.not, label %lor.lhs.false109.if.then113_crit_edge, label %lor.lhs.false109.if.end117_crit_edge

lor.lhs.false109.if.end117_crit_edge:             ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

lor.lhs.false109.if.then113_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113

if.then113:                                       ; preds = %lor.lhs.false109.if.then113_crit_edge, %if.end106.if.then113_crit_edge
  call fastcc void @bnx2x_set_vf_vlan_acceptance(ptr noundef %add.ptr.i, ptr noundef %23, i1 noundef zeroext %cmp42.not)
  br label %if.end117

if.end117:                                        ; preds = %if.then113, %lor.lhs.false109.if.end117_crit_edge
  %call118 = call fastcc i32 @bnx2x_set_vf_vlan_filter(ptr noundef %add.ptr.i, ptr noundef %23, i16 noundef zeroext %vlan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %for.cond.preheader, label %if.end117.out.thread_crit_edge

if.end117.out.thread_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

for.cond.preheader:                               ; preds = %if.end117
  %alloc_resc = getelementptr inbounds %struct.bnx2x_virtf, ptr %23, i32 0, i32 9
  %45 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %alloc_resc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp123296.not = icmp eq i8 %46, 0
  br i1 %cmp123296.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ramrod_flags134 = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 2
  %cmd = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 1
  %params = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 3
  %def_vlan = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 3, i32 0, i32 0, i32 3
  %silent_removal_value = getelementptr inbounds %struct.bnx2x_queue_update_params, ptr %params, i32 0, i32 2
  %silent_removal_mask = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 3, i32 0, i32 1
  %47 = getelementptr inbounds i8, ptr %q_params, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0297 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %q_params) #14
  %48 = call ptr @memset(ptr %47, i32 0, i32 88)
  %49 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vfqs, align 4
  %sp_obj127 = getelementptr %struct.bnx2x_vf_queue, ptr %50, i32 %i.0297, i32 5
  %51 = ptrtoint ptr %q_params to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sp_obj127, ptr %q_params, align 4
  %call129 = call i32 @bnx2x_get_q_logical_state(ptr noundef %add.ptr.i, ptr noundef %sp_obj127) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130.not = icmp eq i32 %call129, 0
  br i1 %cmp130.not, label %if.end133, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end133:                                        ; preds = %for.body
  %52 = ptrtoint ptr %ramrod_flags134 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ramrod_flags134, align 4
  %or.i282 = or i32 %53, 4
  store i32 %or.i282, ptr %ramrod_flags134, align 4
  %54 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 5, ptr %cmd, align 4
  %55 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %params, align 4
  br i1 %cmp42.not, label %if.then139, label %if.else142

if.then139:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  %or.i284 = and i32 %56, -3841
  %and.i285 = or i32 %or.i284, 1536
  %57 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i285, ptr %params, align 4
  br label %if.end148

if.else142:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  %or.i287 = or i32 %56, 3840
  %58 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i287, ptr %params, align 4
  %59 = ptrtoint ptr %def_vlan to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %vlan, ptr %def_vlan, align 4
  %60 = ptrtoint ptr %silent_removal_value to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %vlan, ptr %silent_removal_value, align 2
  %61 = ptrtoint ptr %silent_removal_mask to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 4095, ptr %silent_removal_mask, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else142, %if.then139
  %call149 = call i32 @bnx2x_queue_state_change(ptr noundef %add.ptr.i, ptr noundef nonnull %q_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end148.for.inc_crit_edge, label %cleanup

if.end148.for.inc_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

cleanup:                                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  %dev157 = getelementptr i8, ptr %dev, i32 3132
  %62 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev157, align 4
  %tobool158.not = icmp eq ptr %63, null
  %spec.select280 = select i1 %tobool158.not, ptr @.str.3, ptr %63
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.266, i32 noundef 2931, ptr noundef nonnull %spec.select280, i32 noundef %i.0297) #17
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params) #14
  br label %out.thread

for.inc:                                          ; preds = %if.end148.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params) #14
  %inc = add nuw nsw i32 %i.0297, 1
  %64 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %alloc_resc, align 4
  %conv122 = zext i8 %65 to i32
  %cmp123 = icmp ult i32 %inc, %conv122
  br i1 %cmp123, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out.thread:                                       ; preds = %cleanup, %if.end117.out.thread_crit_edge, %do.end92
  %rc.2.ph = phi i32 [ %call149, %cleanup ], [ %call118, %if.end117.out.thread_crit_edge ], [ -22, %do.end92 ]
  call void @bnx2x_unlock_vf_pf_channel(ptr noundef %add.ptr.i, ptr noundef %23, i32 noundef 15)
  %66 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable, align 8
  %and175 = and i32 %67, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %out.thread.cleanup203_crit_edge, label %do.end186, !prof !702

out.thread.cleanup203_crit_edge:                  ; preds = %out.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup203

out:                                              ; preds = %for.inc.out_crit_edge, %for.cond.preheader.out_crit_edge
  call void @bnx2x_unlock_vf_pf_channel(ptr noundef %add.ptr.i, ptr noundef %23, i32 noundef 15)
  br label %cleanup203

do.end186:                                        ; preds = %out.thread
  call void @__sanitizer_cov_trace_pc() #16
  %dev188 = getelementptr i8, ptr %dev, i32 3132
  %68 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev188, align 4
  %tobool189.not = icmp eq ptr %69, null
  %spec.select281 = select i1 %tobool189.not, ptr @.str.3, ptr %69
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.266, i32 noundef 2941, ptr noundef nonnull %spec.select281, i32 noundef %vfidx, i32 noundef %conv) #17
  br label %cleanup203

cleanup203:                                       ; preds = %do.end186, %out, %out.thread.cleanup203_crit_edge, %bnx2x_validate_vf_sp_objs.exit, %lor.lhs.false.cleanup203_crit_edge, %if.end69.cleanup203_crit_edge, %do.end36.cleanup203_crit_edge, %if.end.cleanup203_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -93, %if.end.cleanup203_crit_edge ], [ %call37, %do.end36.cleanup203_crit_edge ], [ %call49, %lor.lhs.false.cleanup203_crit_edge ], [ %call49, %if.end69.cleanup203_crit_edge ], [ -22, %bnx2x_validate_vf_sp_objs.exit ], [ %rc.2.ph, %out.thread.cleanup203_crit_edge ], [ %rc.2.ph, %do.end186 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramrod_flags) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan_mac_flags) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulletin) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_get_vf_config(ptr noundef %dev, i32 noundef %vfidx, ptr noundef %ivi) local_unnamed_addr #2 align 64 {
entry:
  %vf = alloca ptr, align 4
  %bulletin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf) #14
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulletin) #14
  %1 = ptrtoint ptr %bulletin to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bulletin, align 4
  %call1 = call fastcc i32 @bnx2x_vf_op_prep(ptr noundef %add.ptr.i, i32 noundef %vfidx, ptr noundef nonnull %vf, ptr noundef nonnull %bulletin, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vf, align 4
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfqs, align 4
  %mac_obj2 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %5, i32 0, i32 1
  %vlan_obj5 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %5, i32 0, i32 2
  %tobool6.not = icmp eq ptr %mac_obj2, null
  %tobool7.not = icmp eq ptr %vlan_obj5, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev10 = getelementptr i8, ptr %dev, i32 3132
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %tobool11.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool11.not, ptr @.str.3, ptr %7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.254, i32 noundef 2619, ptr noundef nonnull %spec.select) #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %vfidx, ptr %ivi, align 4
  %qos = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %9 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qos, align 4
  %max_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %10 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10000, ptr %max_tx_rate, align 4
  %min_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %11 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %min_tx_rate, align 4
  %spoofchk = getelementptr inbounds %struct.bnx2x_virtf, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %spoofchk to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spoofchk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp ne i8 %13, 0
  %cond19 = zext i1 %tobool18.not to i32
  %spoofchk20 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %14 = ptrtoint ptr %spoofchk20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond19, ptr %spoofchk20, align 4
  %link_cfg = getelementptr inbounds %struct.bnx2x_virtf, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %link_cfg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_cfg, align 2
  %conv21 = zext i8 %16 to i32
  %linkstate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 5
  %17 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv21, ptr %linkstate, align 4
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp = icmp eq i8 %19, 2
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end16
  %20 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfqs, align 4
  %sp_initialized.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sp_initialized.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then26

if.then.i:                                        ; preds = %if.then24
  %msg_enable.i = getelementptr i8, ptr %dev, i32 3432
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then.i.cleanup_crit_edge, label %do.end13.i, !prof !702

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end13.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev15.i = getelementptr i8, ptr %dev, i32 3132
  %26 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15.i, align 4
  %tobool16.not.i = icmp eq ptr %27, null
  %spec.select33.i = select i1 %tobool16.not.i, ptr @.str.3, ptr %27
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.309, i32 noundef 119, ptr noundef nonnull %spec.select33.i) #17
  br label %cleanup

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %get_n_elements = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %5, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %get_n_elements to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_n_elements, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %call27 = tail call i32 %29(ptr noundef %add.ptr.i, ptr noundef nonnull %mac_obj2, i32 noundef 1, ptr noundef %mac, i8 noundef zeroext 0, i8 noundef zeroext 6) #14
  %get_n_elements28 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %5, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %get_n_elements28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_n_elements28, align 4
  %vlan = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %call29 = tail call i32 %31(ptr noundef %add.ptr.i, ptr noundef nonnull %vlan_obj5, i32 noundef 1, ptr noundef %vlan, i8 noundef zeroext 0, i8 noundef zeroext 4) #14
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %vfdb = getelementptr i8, ptr %dev, i32 7072
  %32 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %33, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %bulletin_mutex, i32 noundef 0) #14
  %34 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bulletin, align 4
  %valid_bitmap = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %valid_bitmap, align 8
  %and = and i64 %37, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool31.not = icmp eq i64 %and, 0
  %mac37 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  br i1 %tobool31.not, label %if.else36, label %if.then32

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %mac34 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %35, i32 0, i32 4
  %38 = call ptr @memcpy(ptr %mac37, ptr %mac34, i32 6)
  br label %if.end39

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %39 = call ptr @memset(ptr %mac37, i32 0, i32 6)
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then32
  %40 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %valid_bitmap, align 8
  %and41 = and i64 %41, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41)
  %tobool42.not = icmp eq i64 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end48_crit_edge, label %if.then43

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %vlan45 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %35, i32 0, i32 6
  %42 = ptrtoint ptr %vlan45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vlan45, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end39.if.end48_crit_edge
  %.sink = phi i32 [ %43, %if.then43 ], [ 0, %if.end39.if.end48_crit_edge ]
  %44 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %44, align 4
  %46 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex50 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %47, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %bulletin_mutex50) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then26, %do.end13.i, %if.then.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end48 ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %do.end13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulletin) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_set_vf_mac(ptr noundef %dev, i32 noundef %vfidx, ptr nocapture noundef readonly %mac) local_unnamed_addr #2 align 64 {
entry:
  %vf = alloca ptr, align 4
  %bulletin = alloca ptr, align 4
  %ramrod_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vf) #14
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bulletin) #14
  %1 = ptrtoint ptr %bulletin to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bulletin, align 4
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %if.end

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev3 = getelementptr i8, ptr %dev, i32 3132
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  %tobool.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256, i32 noundef 2687, ptr noundef nonnull %spec.select) #17
  br label %cleanup94

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %call8 = call fastcc i32 @bnx2x_vf_op_prep(ptr noundef %add.ptr.i, i32 noundef %vfidx, ptr noundef nonnull %vf, ptr noundef nonnull %bulletin, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup94_crit_edge

if.end.cleanup94_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

if.end11:                                         ; preds = %if.end
  %vfdb = getelementptr i8, ptr %dev, i32 7072
  %9 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex = getelementptr inbounds %struct.bnx2x_vfdb, ptr %10, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %bulletin_mutex, i32 noundef 0) #14
  %11 = ptrtoint ptr %bulletin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bulletin, align 4
  %valid_bitmap = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %valid_bitmap, align 8
  %or = or i64 %14, 1
  store i64 %or, ptr %valid_bitmap, align 8
  %mac12 = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %12, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %mac12, ptr %mac, i32 6)
  %call14 = tail call i32 @bnx2x_post_vf_bulletin(ptr noundef %add.ptr.i, i32 noundef %vfidx) #14
  %16 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfdb, align 8
  %bulletin_mutex16 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %17, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %bulletin_mutex16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool17.not = icmp eq i32 %call14, 0
  br i1 %tobool17.not, label %if.end36, label %do.end22

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %dev24 = getelementptr i8, ptr %dev, i32 3132
  %18 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev24, align 4
  %tobool25.not = icmp eq ptr %19, null
  %spec.select132 = select i1 %tobool25.not, ptr @.str.3, ptr %19
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.256, i32 noundef 2711, ptr noundef nonnull %spec.select132, i32 noundef %vfidx) #17
  br label %cleanup94

if.end36:                                         ; preds = %if.end11
  %20 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vf, align 4
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vfqs, align 4
  %sp_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %23, i32 0, i32 5
  %call37 = tail call i32 @bnx2x_get_q_logical_state(ptr noundef %add.ptr.i, ptr noundef %sp_obj) #14
  %state = getelementptr inbounds %struct.bnx2x_virtf, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp = icmp eq i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp eq i32 %call37, 0
  %or.cond = select i1 %cmp, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then41, label %if.end36.cleanup94_crit_edge

if.end36.cleanup94_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

if.then41:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ramrod_flags) #14
  %26 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ramrod_flags, align 4
  %27 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vfqs, align 4
  %sp_initialized.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sp_initialized.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %cleanup.thread, label %if.end44

cleanup.thread:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %dev, i32 3132
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.309, i32 noundef 117, ptr noundef nonnull %spec.select.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramrod_flags) #14
  br label %cleanup94

if.end44:                                         ; preds = %if.then41
  %call.i135 = tail call zeroext i1 @bnx2x_tlv_supported(i16 noundef zeroext 14) #14
  br i1 %call.i135, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i136 = getelementptr i8, ptr %dev, i32 3132
  %33 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i136, align 4
  %tobool.not.i137 = icmp eq ptr %34, null
  %spec.select.i138 = select i1 %tobool.not.i137, ptr @.str.3, ptr %34
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, i32 noundef 2299, ptr noundef nonnull %spec.select.i138) #17
  br label %bnx2x_lock_vf_pf_channel.exit

if.end.i:                                         ; preds = %if.end44
  %op_mutex.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %21, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %op_mutex.i, i32 noundef 0) #14
  %op_current.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %21, i32 0, i32 26
  %35 = ptrtoint ptr %op_current.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 14, ptr %op_current.i, align 8
  %msg_enable.i = getelementptr i8, ptr %dev, i32 3432
  %36 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %37, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.bnx2x_lock_vf_pf_channel.exit_crit_edge, label %do.end11.i, !prof !702

if.end.i.bnx2x_lock_vf_pf_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bnx2x_lock_vf_pf_channel.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev13.i = getelementptr i8, ptr %dev, i32 3132
  %38 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev13.i, align 4
  %tobool14.not.i = icmp eq ptr %39, null
  %spec.select35.i = select i1 %tobool14.not.i, ptr @.str.3, ptr %39
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %21, i32 0, i32 14
  %40 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %abs_vfid.i, align 1
  %conv22.i = zext i8 %41 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.211, i32 noundef 2311, ptr noundef nonnull %spec.select35.i, i32 noundef %conv22.i, i32 noundef 14) #17
  br label %bnx2x_lock_vf_pf_channel.exit

bnx2x_lock_vf_pf_channel.exit:                    ; preds = %do.end11.i, %if.end.i.bnx2x_lock_vf_pf_channel.exit_crit_edge, %do.end.i
  %42 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vfqs, align 4
  %mac_obj47 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %43, i32 0, i32 1
  %call48 = tail call i32 @bnx2x_del_all_macs(ptr noundef %add.ptr.i, ptr noundef %mac_obj47, i32 noundef 1, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end68, label %do.end54

do.end54:                                         ; preds = %bnx2x_lock_vf_pf_channel.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev56 = getelementptr i8, ptr %dev, i32 3132
  %44 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev56, align 4
  %tobool57.not = icmp eq ptr %45, null
  %spec.select133 = select i1 %tobool57.not, ptr @.str.3, ptr %45
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.256, i32 noundef 2734, ptr noundef nonnull %spec.select133) #17
  br label %cleanup

if.end68:                                         ; preds = %bnx2x_lock_vf_pf_channel.exit
  %call69 = tail call i32 @bnx2x_del_all_macs(ptr noundef %add.ptr.i, ptr noundef %mac_obj47, i32 noundef 0, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end89, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %dev77 = getelementptr i8, ptr %dev, i32 3132
  %46 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev77, align 4
  %tobool78.not = icmp eq ptr %47, null
  %spec.select134 = select i1 %tobool78.not, ptr @.str.3, ptr %47
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.256, i32 noundef 2742, ptr noundef nonnull %spec.select134) #17
  br label %cleanup

if.end89:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ramrod_flags, align 4
  %or.i = or i32 %49, 4
  store i32 %or.i, ptr %ramrod_flags, align 4
  %call91 = call i32 @bnx2x_set_mac_one(ptr noundef %add.ptr.i, ptr noundef %mac12, ptr noundef %mac_obj47, i1 noundef zeroext true, i32 noundef 1, ptr noundef nonnull %ramrod_flags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end75, %do.end54
  %rc.0 = phi i32 [ -22, %do.end54 ], [ -22, %do.end75 ], [ 0, %if.end89 ]
  call void @bnx2x_unlock_vf_pf_channel(ptr noundef %add.ptr.i, ptr noundef %21, i32 noundef 14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ramrod_flags) #14
  br label %cleanup94

cleanup94:                                        ; preds = %cleanup, %cleanup.thread, %if.end36.cleanup94_crit_edge, %do.end22, %if.end.cleanup94_crit_edge, %do.end
  %retval.1 = phi i32 [ %call14, %do.end22 ], [ -22, %do.end ], [ %call8, %if.end.cleanup94_crit_edge ], [ -22, %cleanup.thread ], [ %rc.0, %cleanup ], [ 0, %if.end36.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bulletin) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vf) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_del_all_macs(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_set_mac_one(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_set_vf_vlan_acceptance(ptr noundef %bp, ptr noundef %vf, i1 noundef zeroext %accept) unnamed_addr #2 align 64 {
entry:
  %rx_ramrod = alloca %struct.bnx2x_rx_mode_ramrod_params, align 4
  %accept_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_ramrod) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %accept_flags) #14
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %0 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfqs, align 4
  %accept_flags1 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %accept_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accept_flags1, align 4
  %4 = ptrtoint ptr %accept_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %accept_flags, align 4
  br i1 %accept, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 6, ptr noundef nonnull %accept_flags) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 6, ptr noundef nonnull %accept_flags) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = ptrtoint ptr %accept_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %accept_flags, align 4
  %7 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfqs, align 4
  %9 = getelementptr inbounds i8, ptr %rx_ramrod, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 28)
  %cid.i = getelementptr %struct.bnx2x_vf_queue, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cid.i, align 4
  %cid1.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 4
  %13 = ptrtoint ptr %cid1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cid1.i, align 4
  %igu_base_id.i.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 11
  %14 = ptrtoint ptr %igu_base_id.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %igu_base_id.i.i, align 1
  %index.i.i = getelementptr %struct.bnx2x_vf_queue, ptr %8, i32 0, i32 7
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %index.i.i, align 4
  %conv1.i.i = trunc i16 %17 to i8
  %add.i.i = add i8 %15, %conv1.i.i
  %cl_id.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 3
  %18 = ptrtoint ptr %cl_id.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %add.i.i, ptr %cl_id.i, align 4
  %rx_mode_obj.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 180
  %19 = ptrtoint ptr %rx_ramrod to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_mode_obj.i, ptr %rx_ramrod, align 4
  %abs_vfid.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %20 = ptrtoint ptr %abs_vfid.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %abs_vfid.i, align 1
  %add.i = add i8 %21, 8
  %func_id.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 5
  %22 = ptrtoint ptr %func_id.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %add.i, ptr %func_id.i, align 4
  %rx_accept_flags.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 10
  %23 = ptrtoint ptr %rx_accept_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %6, ptr %rx_accept_flags.i, align 4
  %tx_accept_flags.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 11
  %24 = ptrtoint ptr %tx_accept_flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %6, ptr %tx_accept_flags.i, align 4
  %filter_state.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 21
  %pstate.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 1
  %25 = ptrtoint ptr %pstate.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %filter_state.i, ptr %pstate.i, align 4
  %state.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 2
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %state.i, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %filter_state.i) #14
  %ramrod_flags.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %ramrod_flags.i) #14
  call void @_set_bit(i32 noundef 0, ptr noundef %ramrod_flags.i) #14
  %vfdb.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %27 = ptrtoint ptr %vfdb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vfdb.i, align 8
  %sp_dma.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %sp_dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sp_dma.i, align 4
  %index.i = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 13
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index.i, align 8
  %conv7.i = zext i8 %32 to i32
  %mul.i = mul nuw nsw i32 %conv7.i, 1624
  %add.ptr.i = getelementptr i8, ptr %30, i32 %mul.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 792
  %rdata.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 8
  %33 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr8.i, ptr %rdata.i, align 4
  %mapping.i = getelementptr inbounds %struct.bnx2x_vfdb, ptr %28, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mapping.i, align 4
  %add14.i = add i32 %35, 792
  %add15.i = add i32 %add14.i, %mul.i
  %rdata_mapping.i = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, ptr %rx_ramrod, i32 0, i32 9
  %36 = ptrtoint ptr %rdata_mapping.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add15.i, ptr %rdata_mapping.i, align 4
  %37 = ptrtoint ptr %accept_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %accept_flags, align 4
  %39 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vfqs, align 4
  %accept_flags4 = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %accept_flags4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %accept_flags4, align 4
  %call = call i32 @bnx2x_config_rx_mode(ptr noundef %bp, ptr noundef nonnull %rx_ramrod) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %accept_flags) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_ramrod) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnx2x_set_vf_vlan_filter(ptr noundef %bp, ptr nocapture noundef readonly %vf, i16 noundef zeroext %vlan) unnamed_addr #2 align 64 {
entry:
  %ramrod_param = alloca %struct.bnx2x_vlan_mac_ramrod_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ramrod_param) #14
  %0 = getelementptr inbounds i8, ptr %ramrod_param, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %vfqs = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 12
  %2 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfqs, align 4
  %vlan_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ramrod_param to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vlan_obj, ptr %ramrod_param, align 4
  %ramrod_flags1 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod_param, i32 0, i32 1
  %5 = ptrtoint ptr %ramrod_flags1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %ramrod_flags1, align 4
  %user_req = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod_param, i32 0, i32 2
  %u = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, ptr %ramrod_param, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vlan, ptr %u, align 4
  %7 = ptrtoint ptr %user_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %user_req, align 4
  %call = call i32 @bnx2x_config_vlan_mac(ptr noundef %bp, ptr noundef nonnull %ramrod_param) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool6.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool6.not, ptr @.str.3, ptr %9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.413, ptr noundef nonnull @.str.414, i32 noundef 2795, ptr noundef nonnull %spec.select) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ramrod_param) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_set_vf_spoofchk(ptr noundef %dev, i32 noundef %idx, i1 noundef zeroext %val) local_unnamed_addr #2 align 64 {
entry:
  %q_params = alloca %struct.bnx2x_queue_state_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %vfdb = getelementptr i8, ptr %dev, i32 7072
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup123_crit_edge, label %land.lhs.true

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2.not = icmp eq ptr %3, null
  %arrayidx = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx
  %tobool5.not = icmp eq ptr %arrayidx, null
  %or.cond = or i1 %tobool2.not, %tobool5.not
  br i1 %or.cond, label %land.lhs.true.cleanup123_crit_edge, label %if.end

land.lhs.true.cleanup123_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

if.end:                                           ; preds = %land.lhs.true
  %spoofchk = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx, i32 5
  %4 = ptrtoint ptr %spoofchk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spoofchk, align 2
  %6 = zext i1 %val to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  br i1 %cmp, label %if.end.cleanup123_crit_edge, label %if.end10

if.end.cleanup123_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %spoofchk, align 2
  %msg_enable = getelementptr i8, ptr %dev, i32 3432
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end10.do.end34_crit_edge, label %do.end, !prof !702

if.end10.do.end34_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end34

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %dev21 = getelementptr i8, ptr %dev, i32 3132
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21, align 4
  %tobool22.not = icmp eq ptr %11, null
  %spec.select168 = select i1 %tobool22.not, ptr @.str.3, ptr %11
  %cond30 = select i1 %val, ptr @.str.283, ptr @.str.284
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.282, i32 noundef 2963, ptr noundef nonnull %spec.select168, ptr noundef nonnull %cond30, i32 noundef %idx) #17
  br label %do.end34

do.end34:                                         ; preds = %do.end, %if.end10.do.end34_crit_edge
  %state = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx, i32 2
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp36.not = icmp eq i8 %13, 2
  br i1 %cmp36.not, label %lor.lhs.false, label %do.end34.cleanup123_crit_edge

do.end34.cleanup123_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

lor.lhs.false:                                    ; preds = %do.end34
  %vfqs = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx, i32 12
  %14 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfqs, align 4
  %sp_obj = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %15, i32 0, i32 5
  %call39 = tail call i32 @bnx2x_get_q_logical_state(ptr noundef %add.ptr.i, ptr noundef %sp_obj) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end43, label %lor.lhs.false.cleanup123_crit_edge

lor.lhs.false.cleanup123_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

if.end43:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfqs, align 4
  %sp_initialized.i = getelementptr inbounds %struct.bnx2x_vf_queue, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %sp_initialized.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sp_initialized.i, align 1, !range !703
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %bnx2x_validate_vf_sp_objs.exit.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end43
  %alloc_resc = getelementptr %struct.bnx2x_virtf, ptr %3, i32 %idx, i32 9
  %20 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alloc_resc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp48182.not = icmp eq i8 %21, 0
  br i1 %cmp48182.not, label %for.cond.preheader.do.body91_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body91_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body91

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ramrod_flags = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 2
  %cmd = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 1
  %params = getelementptr inbounds %struct.bnx2x_queue_state_params, ptr %q_params, i32 0, i32 3
  %22 = getelementptr inbounds i8, ptr %q_params, i32 4
  br label %for.body

bnx2x_validate_vf_sp_objs.exit.thread:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %dev, i32 3132
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  %spec.select.i = select i1 %tobool4.not.i, ptr @.str.3, ptr %24
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.309, i32 noundef 117, ptr noundef nonnull %spec.select.i) #17
  br label %cleanup123

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %q_params) #14
  %25 = call ptr @memset(ptr %22, i32 0, i32 88)
  %26 = ptrtoint ptr %vfqs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vfqs, align 4
  %sp_obj52 = getelementptr %struct.bnx2x_vf_queue, ptr %27, i32 %i.0183, i32 5
  %28 = ptrtoint ptr %q_params to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sp_obj52, ptr %q_params, align 4
  %call54 = call i32 @bnx2x_get_q_logical_state(ptr noundef %add.ptr.i, ptr noundef %sp_obj52) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end58, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end58:                                         ; preds = %for.body
  %29 = ptrtoint ptr %ramrod_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ramrod_flags, align 4
  %or.i = or i32 %30, 4
  store i32 %or.i, ptr %ramrod_flags, align 4
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %cmd, align 4
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %params, align 4
  %or.i171 = and i32 %33, -49
  %and.i = or i32 %or.i171, 32
  %or.i172 = or i32 %33, 48
  %storemerge = select i1 %val, i32 %or.i172, i32 %and.i
  store i32 %storemerge, ptr %params, align 4
  %call64 = call i32 @bnx2x_queue_state_change(ptr noundef %add.ptr.i, ptr noundef nonnull %q_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end58.for.inc_crit_edge, label %out.thread

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

out.thread:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %dev72 = getelementptr i8, ptr %dev, i32 3132
  %34 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev72, align 4
  %tobool73.not = icmp eq ptr %35, null
  %spec.select169 = select i1 %tobool73.not, ptr @.str.3, ptr %35
  %cond83 = select i1 %val, ptr @.str.288, ptr @.str.289
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.282, i32 noundef 3004, ptr noundef nonnull %spec.select169, ptr noundef nonnull %cond83, i32 noundef %idx, i32 noundef %i.0183) #17
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params) #14
  br label %cleanup123

for.inc:                                          ; preds = %if.end58.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %q_params) #14
  %inc = add nuw nsw i32 %i.0183, 1
  %36 = ptrtoint ptr %alloc_resc to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %alloc_resc, align 4
  %conv47 = zext i8 %37 to i32
  %cmp48 = icmp ult i32 %inc, %conv47
  br i1 %cmp48, label %for.inc.for.body_crit_edge, label %for.inc.do.body91_crit_edge

for.inc.do.body91_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body91

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body91:                                        ; preds = %for.inc.do.body91_crit_edge, %for.cond.preheader.do.body91_crit_edge
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 8
  %and93 = and i32 %39, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body91.cleanup123_crit_edge, label %do.end104, !prof !702

do.body91.cleanup123_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup123

do.end104:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #16
  %dev106 = getelementptr i8, ptr %dev, i32 3132
  %40 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev106, align 4
  %tobool107.not = icmp eq ptr %41, null
  %spec.select170 = select i1 %tobool107.not, ptr @.str.3, ptr %41
  %cond117 = select i1 %val, ptr @.str.190, ptr @.str.293
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef nonnull @.str.282, i32 noundef 3012, ptr noundef nonnull %spec.select170, ptr noundef nonnull %cond117, i32 noundef %idx) #17
  br label %cleanup123

cleanup123:                                       ; preds = %do.end104, %do.body91.cleanup123_crit_edge, %out.thread, %bnx2x_validate_vf_sp_objs.exit.thread, %lor.lhs.false.cleanup123_crit_edge, %do.end34.cleanup123_crit_edge, %if.end.cleanup123_crit_edge, %land.lhs.true.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup123_crit_edge ], [ 0, %lor.lhs.false.cleanup123_crit_edge ], [ 0, %do.end34.cleanup123_crit_edge ], [ 0, %do.body91.cleanup123_crit_edge ], [ 0, %do.end104 ], [ -22, %bnx2x_validate_vf_sp_objs.exit.thread ], [ %call64, %out.thread ], [ -22, %entry.cleanup123_crit_edge ], [ -22, %land.lhs.true.cleanup123_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bnx2x_crc_vf_bulletin(ptr noundef readonly %bulletin) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bulletin, i32 4
  %length = getelementptr inbounds %struct.pf_vf_bulletin_content, ptr %bulletin, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -4
  %call = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr, i32 noundef %sub) #20
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_sample_bulletin(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shadow_bulletin = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16
  %pf2vf_bulletin = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 14
  %add.ptr.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 1
  %length.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 2
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %0 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf2vf_bulletin, align 4
  %2 = call ptr @memcpy(ptr %shadow_bulletin, ptr %1, i32 512)
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %4 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %sub.i) #20
  %5 = ptrtoint ptr %shadow_bulletin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shadow_bulletin, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call.i)
  %cmp4 = icmp eq i32 %6, %call.i
  br i1 %cmp4, label %entry.if.end31_crit_edge, label %for.inc

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

for.inc:                                          ; preds = %entry
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 3052, ptr noundef nonnull %spec.select, i32 noundef %6, i32 noundef %call.i) #17
  %9 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf2vf_bulletin, align 4
  %11 = call ptr @memcpy(ptr %shadow_bulletin, ptr %10, i32 512)
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length.i, align 2
  %conv.i.1 = zext i16 %13 to i32
  %sub.i.1 = add nsw i32 %conv.i.1, -4
  %call.i.1 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %sub.i.1) #20
  %14 = ptrtoint ptr %shadow_bulletin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shadow_bulletin, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call.i.1)
  %cmp4.1 = icmp eq i32 %15, %call.i.1
  br i1 %cmp4.1, label %for.inc.if.end31_crit_edge, label %for.inc.1

for.inc.if.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

for.inc.1:                                        ; preds = %for.inc
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  %spec.select.1 = select i1 %tobool.not.1, ptr @.str.3, ptr %17
  %call9.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 3052, ptr noundef nonnull %spec.select.1, i32 noundef %15, i32 noundef %call.i.1) #17
  %18 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pf2vf_bulletin, align 4
  %20 = call ptr @memcpy(ptr %shadow_bulletin, ptr %19, i32 512)
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %length.i, align 2
  %conv.i.2 = zext i16 %22 to i32
  %sub.i.2 = add nsw i32 %conv.i.2, -4
  %call.i.2 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %sub.i.2) #20
  %23 = ptrtoint ptr %shadow_bulletin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %shadow_bulletin, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call.i.2)
  %cmp4.2 = icmp eq i32 %24, %call.i.2
  br i1 %cmp4.2, label %for.inc.1.if.end31_crit_edge, label %for.inc.2

for.inc.1.if.end31_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

for.inc.2:                                        ; preds = %for.inc.1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %tobool.not.2 = icmp eq ptr %26, null
  %spec.select.2 = select i1 %tobool.not.2, ptr @.str.3, ptr %26
  %call9.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 3052, ptr noundef nonnull %spec.select.2, i32 noundef %24, i32 noundef %call.i.2) #17
  %27 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pf2vf_bulletin, align 4
  %29 = call ptr @memcpy(ptr %shadow_bulletin, ptr %28, i32 512)
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %length.i, align 2
  %conv.i.3 = zext i16 %31 to i32
  %sub.i.3 = add nsw i32 %conv.i.3, -4
  %call.i.3 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %sub.i.3) #20
  %32 = ptrtoint ptr %shadow_bulletin to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shadow_bulletin, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %call.i.3)
  %cmp4.3 = icmp eq i32 %33, %call.i.3
  br i1 %cmp4.3, label %for.inc.2.if.end31_crit_edge, label %for.inc.3

for.inc.2.if.end31_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

for.inc.3:                                        ; preds = %for.inc.2
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %tobool.not.3 = icmp eq ptr %35, null
  %spec.select.3 = select i1 %tobool.not.3, ptr @.str.3, ptr %35
  %call9.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 3052, ptr noundef nonnull %spec.select.3, i32 noundef %33, i32 noundef %call.i.3) #17
  %36 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pf2vf_bulletin, align 4
  %38 = call ptr @memcpy(ptr %shadow_bulletin, ptr %37, i32 512)
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length.i, align 2
  %conv.i.4 = zext i16 %40 to i32
  %sub.i.4 = add nsw i32 %conv.i.4, -4
  %call.i.4 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %sub.i.4) #20
  %41 = ptrtoint ptr %shadow_bulletin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shadow_bulletin, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %call.i.4)
  %cmp4.4 = icmp eq i32 %42, %call.i.4
  br i1 %cmp4.4, label %for.inc.3.if.end31_crit_edge, label %for.inc.4

for.inc.3.if.end31_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %tobool.not.4 = icmp eq ptr %44, null
  %spec.select.4 = select i1 %tobool.not.4, ptr @.str.3, ptr %44
  %call9.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295, i32 noundef 3052, ptr noundef nonnull %spec.select.4, i32 noundef %42, i32 noundef %call.i.4) #17
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %tobool20.not = icmp eq ptr %46, null
  %spec.select153 = select i1 %tobool20.not, ptr @.str.3, ptr %46
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef nonnull @.str.295, i32 noundef 3057, ptr noundef nonnull %spec.select153, i32 noundef 5) #17
  br label %cleanup110

if.end31:                                         ; preds = %for.inc.3.if.end31_crit_edge, %for.inc.2.if.end31_crit_edge, %for.inc.1.if.end31_crit_edge, %for.inc.if.end31_crit_edge, %entry.if.end31_crit_edge
  %old_bulletin = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 17
  %version = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %version, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp35 = icmp eq i16 %48, %50
  br i1 %cmp35, label %if.end31.cleanup110_crit_edge, label %if.end38

if.end31.cleanup110_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup110

if.end38:                                         ; preds = %if.end31
  %valid_bitmap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 3
  %51 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %valid_bitmap, align 8
  %and = and i64 %52, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool39.not = icmp eq i64 %and, 0
  br i1 %tobool39.not, label %if.end38.if.end49_crit_edge, label %land.lhs.true

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end38
  %mac = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 4
  %mac42 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 17, i32 4
  %53 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mac, align 4
  %55 = ptrtoint ptr %mac42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mac42, align 4
  %xor.i = xor i32 %56, %54
  %add.ptr.i158 = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 4, i32 4
  %57 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i158, align 2
  %add.ptr1.i = getelementptr %struct.bnx2x, ptr %bp, i32 0, i32 17, i32 4, i32 4
  %59 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %60, %58
  %xor3.i = zext i16 %xor37.i to i32
  %or.i159 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i159)
  %cmp.i = icmp eq i32 %or.i159, 0
  br i1 %cmp.i, label %land.lhs.true.if.end49_crit_edge, label %if.then45

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  tail call void @dev_addr_mod(ptr noundef %62, i32 noundef 0, ptr noundef %mac, i32 noundef 6) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %land.lhs.true.if.end49_crit_edge, %if.end38.if.end49_crit_edge
  %63 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %valid_bitmap, align 8
  %and51 = and i64 %64, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and51)
  %tobool52.not = icmp eq i64 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end108_crit_edge, label %do.body54

if.end49.if.end108_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

do.body54:                                        ; preds = %if.end49
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %65 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable, align 8
  %and55 = and i32 %66, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end77_crit_edge, label %do.end62, !prof !702

do.body54.do.end77_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77

do.end62:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %tobool65.not = icmp eq ptr %68, null
  %spec.select154 = select i1 %tobool65.not, ptr @.str.3, ptr %68
  %link_speed = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 8
  %69 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %link_speed, align 8
  %conv73 = zext i16 %70 to i32
  %link_flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 10
  %71 = ptrtoint ptr %link_flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %link_flags, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.295, i32 noundef 3075, ptr noundef nonnull %spec.select154, i32 noundef %conv73, i32 noundef %72) #17
  br label %do.end77

do.end77:                                         ; preds = %do.end62, %do.body54.do.end77_crit_edge
  %link_speed78 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 8
  %73 = ptrtoint ptr %link_speed78 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %link_speed78, align 8
  %vf_link_vars = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 210
  %75 = ptrtoint ptr %vf_link_vars to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %vf_link_vars, align 4
  %link_report_flags = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 210, i32 1
  %link_flags80 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 16, i32 0, i32 10
  %76 = ptrtoint ptr %link_flags80 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %link_flags80, align 8
  %and81 = shl i32 %77, 1
  %78 = and i32 %and81, 2
  %79 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %link_report_flags, align 4
  %and88 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.end77.if.end93_crit_edge, label %if.then90

do.end77.if.end93_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then90:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link_report_flags, align 4
  %or.i155 = or i32 %81, 1
  store i32 %or.i155, ptr %link_report_flags, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %do.end77.if.end93_crit_edge
  %and95 = and i32 %77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end93.if.end100_crit_edge, label %if.then97

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %link_report_flags, align 4
  %or.i156 = or i32 %83, 4
  store i32 %or.i156, ptr %link_report_flags, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end93.if.end100_crit_edge
  %and102 = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end107_crit_edge, label %if.then104

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %link_report_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %link_report_flags, align 4
  %or.i157 = or i32 %85, 8
  store i32 %or.i157, ptr %link_report_flags, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end100.if.end107_crit_edge
  tail call void @__bnx2x_link_report(ptr noundef %bp) #14
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end49.if.end108_crit_edge
  %86 = call ptr @memcpy(ptr %old_bulletin, ptr %shadow_bulletin, i32 48)
  br label %cleanup110

cleanup110:                                       ; preds = %if.end108, %if.end31.cleanup110_crit_edge, %for.inc.4
  %retval.0 = phi i32 [ 2, %for.inc.4 ], [ 1, %if.end108 ], [ 0, %if.end31.cleanup110_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bnx2x_link_report(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_timer_sriov(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bnx2x_sample_bulletin(ptr noundef %bp)
  %valid_bitmap = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %valid_bitmap, align 8
  %and = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnx2x_schedule_sp_rtnl(ptr noundef %bp, i32 noundef 6, i32 noundef 8388608) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bnx2x_vf_doorbells(ptr nocapture noundef readonly %bp) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %0 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 31744
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_vf_pci_dealloc(ptr nocapture noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mbox = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %0 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vf2pf_mbox, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %4 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vf2pf_mbox_mapping, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 2048, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #14
  %6 = ptrtoint ptr %vf2pf_mbox to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vf2pf_mbox, align 4
  %7 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %vf2pf_mbox_mapping, align 8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %pf2vf_bulletin = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 14
  %8 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf2vf_bulletin, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.body4.do.end13_crit_edge, label %if.then6

do.body4.do.end13_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then6:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %pdev7 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %10 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev7, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %pf2vf_bulletin_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 15
  %12 = ptrtoint ptr %pf2vf_bulletin_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pf2vf_bulletin_mapping, align 8
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 512, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #14
  %14 = ptrtoint ptr %pf2vf_bulletin to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pf2vf_bulletin, align 4
  %15 = ptrtoint ptr %pf2vf_bulletin_mapping to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pf2vf_bulletin_mapping, align 8
  br label %do.end13

do.end13:                                         ; preds = %if.then6, %do.body4.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2x_vf_pci_alloc(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_mutex = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %vf2pf_mutex, ptr noundef nonnull @.str.302, ptr noundef nonnull @bnx2x_vf_pci_alloc.__key) #14
  %pdev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %vf2pf_mbox_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 12
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 2048, ptr noundef %vf2pf_mbox_mapping, i32 noundef 3264, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %alloc_mem_err.critedge, label %do.body1

do.body1:                                         ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body1.if.end20_crit_edge, label %do.end7, !prof !702

do.body1.if.end20_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

do.end7:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %dev8 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  %tobool9.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool9.not, ptr @.str.3, ptr %5
  %6 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vf2pf_mbox_mapping, align 8
  %conv = zext i32 %7 to i64
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.303, i32 noundef 3135, ptr noundef nonnull %spec.select, i64 noundef %conv, ptr noundef nonnull %call.i) #17
  br label %if.end20

if.end20:                                         ; preds = %do.end7, %do.body1.if.end20_crit_edge
  %8 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %8, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %pf2vf_bulletin_mapping = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 15
  %call.i95 = tail call ptr @dma_alloc_attrs(ptr noundef %dev23, i32 noundef 512, ptr noundef %pf2vf_bulletin_mapping, i32 noundef 3264, i32 noundef 0) #14
  %tobool25.not = icmp eq ptr %call.i95, null
  br i1 %tobool25.not, label %alloc_mem_err.critedge93, label %do.body27

do.body27:                                        ; preds = %if.end20
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and29 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.if.end62_crit_edge, label %do.end40, !prof !702

do.body27.if.end62_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

do.end40:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %dev42 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %14 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev42, align 4
  %tobool43.not = icmp eq ptr %15, null
  %spec.select90 = select i1 %tobool43.not, ptr @.str.3, ptr %15
  %16 = ptrtoint ptr %pf2vf_bulletin_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pf2vf_bulletin_mapping, align 8
  %conv52 = zext i32 %17 to i64
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.303, i32 noundef 3141, ptr noundef nonnull %spec.select90, i64 noundef %conv52, ptr noundef nonnull %call.i95) #17
  br label %if.end62

if.end62:                                         ; preds = %do.end40, %do.body27.if.end62_crit_edge
  %18 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 14
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i95, ptr %18, align 4
  tail call void @bnx2x_vf_bulletin_finalize(ptr noundef nonnull %call.i95, i1 noundef zeroext true) #14
  br label %return

alloc_mem_err.critedge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vf2pf_mbox.c89 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  br label %alloc_mem_err

alloc_mem_err.critedge93:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %pf2vf_bulletin.c94 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 14
  br label %alloc_mem_err

alloc_mem_err:                                    ; preds = %alloc_mem_err.critedge93, %alloc_mem_err.critedge
  %pf2vf_bulletin.c94.sink = phi ptr [ %pf2vf_bulletin.c94, %alloc_mem_err.critedge93 ], [ %vf2pf_mbox.c89, %alloc_mem_err.critedge ]
  %20 = ptrtoint ptr %pf2vf_bulletin.c94.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pf2vf_bulletin.c94.sink, align 4
  %vf2pf_mbox.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 11
  %21 = ptrtoint ptr %vf2pf_mbox.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vf2pf_mbox.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %alloc_mem_err.do.body4.i_crit_edge, label %if.then.i

alloc_mem_err.do.body4.i_crit_edge:               ; preds = %alloc_mem_err
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

if.then.i:                                        ; preds = %alloc_mem_err
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vf2pf_mbox_mapping, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 2048, ptr noundef nonnull %22, i32 noundef %26, i32 noundef 0) #14
  %27 = ptrtoint ptr %vf2pf_mbox.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %vf2pf_mbox.i, align 4
  %28 = ptrtoint ptr %vf2pf_mbox_mapping to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %vf2pf_mbox_mapping, align 8
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %alloc_mem_err.do.body4.i_crit_edge
  %pf2vf_bulletin.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 14
  %29 = ptrtoint ptr %pf2vf_bulletin.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pf2vf_bulletin.i, align 4
  %tobool5.not.i = icmp eq ptr %30, null
  br i1 %tobool5.not.i, label %do.body4.i.return_crit_edge, label %if.then6.i

do.body4.i.return_crit_edge:                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then6.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %pf2vf_bulletin_mapping.i = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 15
  %33 = ptrtoint ptr %pf2vf_bulletin_mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pf2vf_bulletin_mapping.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 512, ptr noundef nonnull %30, i32 noundef %34, i32 noundef 0) #14
  %35 = ptrtoint ptr %pf2vf_bulletin.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pf2vf_bulletin.i, align 4
  %36 = ptrtoint ptr %pf2vf_bulletin_mapping.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %pf2vf_bulletin_mapping.i, align 8
  br label %return

return:                                           ; preds = %if.then6.i, %do.body4.i.return_crit_edge, %if.end62
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -12, %do.body4.i.return_crit_edge ], [ -12, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vf_bulletin_finalize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_channel_down(ptr noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vfdb = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 171
  %0 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfdb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfdb, align 8
  %nr_virtfn11 = getelementptr inbounds %struct.bnx2x_vfdb, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %nr_virtfn11 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_virtfn11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp13.not = icmp eq i16 %5, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %6 = phi ptr [ %12, %for.body.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %vf_idx.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bulletin_dma = getelementptr inbounds %struct.bnx2x_vfdb, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %bulletin_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bulletin_dma, align 8
  %valid_bitmap = getelementptr %struct.pf_vf_bulletin_content, ptr %8, i32 %vf_idx.014, i32 3
  %9 = ptrtoint ptr %valid_bitmap to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %valid_bitmap, align 8
  %or = or i64 %10, 4
  store i64 %or, ptr %valid_bitmap, align 8
  %call = tail call i32 @bnx2x_post_vf_bulletin(ptr noundef %bp, i32 noundef %vf_idx.014) #14
  %inc = add nuw nsw i32 %vf_idx.014, 1
  %11 = ptrtoint ptr %vfdb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vfdb, align 8
  %nr_virtfn = getelementptr inbounds %struct.bnx2x_vfdb, ptr %12, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %nr_virtfn to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_virtfn, align 2
  %conv = zext i16 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_iov_task(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1252
  %dev = getelementptr i8, ptr %work, i32 -424
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %iov_task_state = getelementptr i8, ptr %work, i32 4492
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %iov_task_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnx2x_vf_handle_flr_event(ptr noundef %add.ptr)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %iov_task_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bnx2x_vf_mbx(ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_vf_mbx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2x_schedule_iov_task(ptr noundef %bp, i32 noundef %flag) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !760
  %iov_task_state = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 186
  tail call void @_set_bit(i32 noundef %flag, ptr noundef %iov_task_state) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !761
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  %and = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end11, !prof !702

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool12.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool12.not, ptr @.str.3, ptr %3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.307, i32 noundef 3195, ptr noundef nonnull %spec.select, i32 noundef %flag) #17
  br label %do.end14

do.end14:                                         ; preds = %do.end11, %entry.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bnx2x_iov_wq to i32))
  %4 = load ptr, ptr @bnx2x_iov_wq, align 4
  %iov_task = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 57
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %iov_task, i32 noundef 0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_config_vlan_mac(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnx2x_vf_igu_ack_sb(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %vf, i8 noundef zeroext %igu_sb_id, i8 noundef zeroext %op, i8 noundef zeroext %update) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %abs_vfid = getelementptr inbounds %struct.bnx2x_virtf, ptr %vf, i32 0, i32 14
  %0 = ptrtoint ptr %abs_vfid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %abs_vfid, align 1
  %conv = zext i8 %1 to i32
  %conv1 = zext i8 %igu_sb_id to i32
  %conv5 = zext i8 %update to i32
  %shl6 = shl nuw i32 %conv5, 24
  %conv8 = zext i8 %op to i32
  %shl9 = shl i32 %conv8, 25
  %or10 = or i32 %shl6, %shl9
  %shl12 = shl nuw nsw i32 %conv, 12
  %add = or i32 %shl12, %conv1
  %or14 = or i32 %add, 1049856
  %msg_enable = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 48
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body23_crit_edge, label %do.end, !prof !702

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool18.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool18.not, ptr @.str.3, ptr %5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.330, i32 noundef 101, ptr noundef nonnull %spec.select, i32 noundef %or10, i32 noundef 1245476) #17
  br label %do.body23

do.body23:                                        ; preds = %do.end, %entry.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !762
  tail call void @arm_heavy_mb() #14
  %6 = lshr exact i32 %or10, 24
  %regview = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 4
  %7 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regview, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 1245476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #14, !srcloc !716
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !763
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and29 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body23.do.body55_crit_edge, label %do.end40, !prof !702

do.body23.do.body55_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

do.end40:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %dev42 = getelementptr inbounds %struct.bnx2x, ptr %bp, i32 0, i32 19
  %11 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev42, align 4
  %tobool43.not = icmp eq ptr %12, null
  %spec.select1 = select i1 %tobool43.not, ptr @.str.3, ptr %12
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.330, i32 noundef 106, ptr noundef nonnull %spec.select1, i32 noundef %or14, i32 noundef 1245484) #17
  br label %do.body55

do.body55:                                        ; preds = %do.end40, %do.body23.do.body55_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !764
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %14 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regview, align 8
  %add.ptr59 = getelementptr i8, ptr %15, i32 1245484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %13) #14, !srcloc !716
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !765
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @bnx2x_is_pcie_pending(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_fw_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_flr_clnup_poll_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_flr_clnup_poll_hw_counter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_send_final_clnup(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_tx_hw_flushed(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2x_get_link_cfg_idx(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_init_queue_obj(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2x_igu_clear_sb_gen(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 382)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 382)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !306, !307, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !340, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !356, !358, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !409, !411, !412, !413, !414, !416, !417, !418, !419, !421, !422, !423, !424, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !440, !442, !443, !444, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !464, !465, !466, !468, !469, !470, !471, !472, !474, !475, !476, !477, !479, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !495, !496, !497, !499, !500, !502, !503, !504, !505, !507, !508, !509, !510, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !524, !526, !527, !528, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541, !542, !543, !545, !546, !548, !549, !550, !551, !552, !553, !554, !556, !557, !558, !560, !561, !562, !564, !565, !566, !568, !569, !570, !572, !573, !574, !575, !577, !578, !579, !581, !582, !583, !585, !586, !587, !589, !590, !591, !593, !594, !596, !598, !599, !600, !601, !603, !604, !605, !606, !608, !609, !610, !611, !613, !614, !615, !617, !618, !619, !620, !621, !622, !624, !625, !626, !628, !629, !630, !631, !633, !634, !635, !637, !638, !639, !641, !642, !643, !644, !646, !647, !648, !649, !651, !652, !653, !654, !656, !657, !658, !659, !661, !662, !663, !665, !666, !667, !668, !670, !671, !672, !674, !675, !676, !678, !679, !680, !682, !683, !684, !686, !687, !688, !690, !691, !692}
!llvm.module.flags = !{!693, !694, !695, !696, !697, !698, !699, !700}
!llvm.ident = !{!701}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 131, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @bnx2x_vfop_qctor_dump_tx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @bnx2x_vfop_qctor_dump_tx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 149, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bnx2x_vfop_qctor_dump_rx._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @bnx2x_vfop_qctor_dump_rx._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 440, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bnx2x_vf_mac_vlan_config_list._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @bnx2x_vf_mac_vlan_config_list._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 455, i32 3}
!19 = !{ptr @bnx2x_vf_mac_vlan_config_list._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bnx2x_vf_mac_vlan_config_list._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 478, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bnx2x_vf_queue_setup._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @bnx2x_vf_queue_setup._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 489, i32 2}
!28 = !{ptr @bnx2x_vf_queue_setup._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bnx2x_vf_queue_setup._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 544, i32 2}
!32 = !{ptr @bnx2x_vf_mcast._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bnx2x_vf_mcast._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 557, i32 4}
!36 = !{ptr @bnx2x_vf_mcast._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bnx2x_vf_mcast._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 574, i32 4}
!40 = !{ptr @bnx2x_vf_mcast._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bnx2x_vf_mcast._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 579, i32 4}
!44 = !{ptr @bnx2x_vf_mcast._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @bnx2x_vf_mcast._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 617, i32 2}
!48 = !{ptr @bnx2x_vf_rxmode._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @bnx2x_vf_rxmode._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 629, i32 2}
!52 = !{ptr @bnx2x_vf_queue_teardown._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bnx2x_vf_queue_teardown._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 666, i32 2}
!56 = !{ptr @bnx2x_vf_queue_teardown._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bnx2x_vf_queue_teardown._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 780, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bnx2x_vf_enable_access._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bnx2x_vf_enable_access._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 814, i32 3}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bnx2x_vf_flr_clnup_epilog._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @bnx2x_vf_flr_clnup_epilog._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 960, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bnx2x_vf_handle_flr_event._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @bnx2x_vf_handle_flr_event._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 979, i32 4}
!75 = !{ptr @bnx2x_vf_handle_flr_event._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bnx2x_vf_handle_flr_event._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1192, i32 3}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bnx2x_iov_init_one._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @bnx2x_iov_init_one._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1200, i32 3}
!84 = !{ptr @bnx2x_iov_init_one._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @bnx2x_iov_init_one._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1206, i32 3}
!88 = !{ptr @bnx2x_iov_init_one._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @bnx2x_iov_init_one._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1212, i32 3}
!92 = !{ptr @bnx2x_iov_init_one._entry.48, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @bnx2x_iov_init_one._entry_ptr.50, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1219, i32 3}
!96 = !{ptr @bnx2x_iov_init_one._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @bnx2x_iov_init_one._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1242, i32 2}
!100 = !{ptr @bnx2x_iov_init_one._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @bnx2x_iov_init_one._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1250, i32 3}
!104 = !{ptr @bnx2x_iov_init_one._entry.57, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @bnx2x_iov_init_one._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @bnx2x_iov_init_one.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1260, i32 3}
!108 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1268, i32 3}
!111 = !{ptr @bnx2x_iov_init_one._entry.61, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @bnx2x_iov_init_one._entry_ptr.63, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1279, i32 3}
!115 = !{ptr @bnx2x_iov_init_one._entry.64, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @bnx2x_iov_init_one._entry_ptr.66, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @bnx2x_iov_init_one.__key.67, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1285, i32 2}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @bnx2x_iov_init_one.__key.69, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1287, i32 2}
!122 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1294, i32 2}
!125 = !{ptr @bnx2x_iov_init_one._entry.71, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @bnx2x_iov_init_one._entry_ptr.73, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1315, i32 3}
!129 = !{ptr @.str.75, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @bnx2x_iov_remove_one._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @bnx2x_iov_remove_one._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1368, i32 16}
!134 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bnx2x_iov_alloc_mem._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bnx2x_iov_alloc_mem._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @bnx2x_iov_alloc_mem._entry.78, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1380, i32 29}
!139 = !{ptr @bnx2x_iov_alloc_mem._entry_ptr.79, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @bnx2x_iov_alloc_mem._entry.80, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1388, i32 28}
!142 = !{ptr @bnx2x_iov_alloc_mem._entry_ptr.81, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @bnx2x_iov_alloc_mem._entry.82, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1397, i32 33}
!145 = !{ptr @bnx2x_iov_alloc_mem._entry_ptr.83, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1492, i32 3}
!148 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @bnx2x_iov_link_update_vf._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @bnx2x_iov_link_update_vf._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1499, i32 4}
!153 = !{ptr @bnx2x_iov_link_update_vf._entry.86, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @bnx2x_iov_link_update_vf._entry_ptr.88, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1542, i32 3}
!157 = !{ptr @.str.90, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @bnx2x_iov_nic_init._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @bnx2x_iov_nic_init._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.92, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1546, i32 2}
!162 = !{ptr @bnx2x_iov_nic_init._entry.91, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @bnx2x_iov_nic_init._entry_ptr.93, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.95, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1562, i32 3}
!166 = !{ptr @bnx2x_iov_nic_init._entry.94, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @bnx2x_iov_nic_init._entry_ptr.96, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.98, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1614, i32 3}
!170 = !{ptr @bnx2x_iov_nic_init._entry.97, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @bnx2x_iov_nic_init._entry_ptr.99, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.100, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1749, i32 3}
!174 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @bnx2x_iov_eq_sp_event._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1756, i32 3}
!179 = !{ptr @bnx2x_iov_eq_sp_event._entry.102, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.104, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1760, i32 3}
!183 = !{ptr @bnx2x_iov_eq_sp_event._entry.105, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.107, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1765, i32 3}
!187 = !{ptr @bnx2x_iov_eq_sp_event._entry.108, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.110, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.112, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1775, i32 3}
!191 = !{ptr @bnx2x_iov_eq_sp_event._entry.111, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.113, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.115, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1789, i32 3}
!195 = !{ptr @bnx2x_iov_eq_sp_event._entry.114, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.116, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.118, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1796, i32 3}
!199 = !{ptr @bnx2x_iov_eq_sp_event._entry.117, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.119, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.121, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1804, i32 3}
!203 = !{ptr @bnx2x_iov_eq_sp_event._entry.120, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.122, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.124, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1809, i32 3}
!207 = !{ptr @bnx2x_iov_eq_sp_event._entry.123, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.125, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.127, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1814, i32 3}
!211 = !{ptr @bnx2x_iov_eq_sp_event._entry.126, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.128, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.130, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1819, i32 3}
!215 = !{ptr @bnx2x_iov_eq_sp_event._entry.129, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @bnx2x_iov_eq_sp_event._entry_ptr.131, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.132, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1862, i32 3}
!219 = !{ptr @.str.133, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @bnx2x_iov_set_queue_sp_obj._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @bnx2x_iov_set_queue_sp_obj._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.134, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1885, i32 2}
!224 = !{ptr @.str.135, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @bnx2x_iov_adjust_stats_req._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @bnx2x_iov_adjust_stats_req._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.137, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1898, i32 4}
!229 = !{ptr @bnx2x_iov_adjust_stats_req._entry.136, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @bnx2x_iov_adjust_stats_req._entry_ptr.138, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.140, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1905, i32 4}
!233 = !{ptr @bnx2x_iov_adjust_stats_req._entry.139, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @bnx2x_iov_adjust_stats_req._entry_ptr.141, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.143, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1911, i32 3}
!237 = !{ptr @bnx2x_iov_adjust_stats_req._entry.142, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @bnx2x_iov_adjust_stats_req._entry_ptr.144, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.146, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1933, i32 4}
!241 = !{ptr @bnx2x_iov_adjust_stats_req._entry.145, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @bnx2x_iov_adjust_stats_req._entry_ptr.147, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.148, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2020, i32 3}
!245 = !{ptr @.str.149, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @bnx2x_vf_acquire._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @bnx2x_vf_acquire._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.151, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2024, i32 4}
!250 = !{ptr @bnx2x_vf_acquire._entry.150, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @bnx2x_vf_acquire._entry_ptr.152, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.154, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2033, i32 3}
!254 = !{ptr @bnx2x_vf_acquire._entry.153, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @bnx2x_vf_acquire._entry_ptr.155, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.157, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2043, i32 3}
!258 = !{ptr @bnx2x_vf_acquire._entry.156, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @bnx2x_vf_acquire._entry_ptr.158, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.160, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2054, i32 2}
!262 = !{ptr @bnx2x_vf_acquire._entry.159, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @bnx2x_vf_acquire._entry_ptr.161, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.163, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2062, i32 3}
!266 = !{ptr @bnx2x_vf_acquire._entry.162, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @bnx2x_vf_acquire._entry_ptr.164, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.166, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2070, i32 4}
!270 = !{ptr @bnx2x_vf_acquire._entry.165, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @bnx2x_vf_acquire._entry_ptr.167, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.169, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2078, i32 3}
!274 = !{ptr @bnx2x_vf_acquire._entry.168, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @bnx2x_vf_acquire._entry_ptr.170, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.171, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2102, i32 3}
!278 = !{ptr @.str.172, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @bnx2x_vf_init._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @bnx2x_vf_init._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.173, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2155, i32 2}
!283 = !{ptr @bnx2x_vf_close._entry, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @bnx2x_vf_close._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.175, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2165, i32 2}
!287 = !{ptr @bnx2x_vf_close._entry.174, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @bnx2x_vf_close._entry_ptr.176, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.178, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2169, i32 2}
!291 = !{ptr @bnx2x_vf_close._entry.177, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @bnx2x_vf_close._entry_ptr.179, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.181, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2186, i32 2}
!295 = !{ptr @bnx2x_vf_close._entry.180, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @bnx2x_vf_close._entry_ptr.182, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.184, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2190, i32 2}
!299 = !{ptr @bnx2x_vf_close._entry.183, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @bnx2x_vf_close._entry_ptr.185, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.186, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2202, i32 2}
!303 = !{ptr @.str.187, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @bnx2x_vf_free._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @bnx2x_vf_free._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.188, !302, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.189, !302, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.190, !302, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.191, !302, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.192, !302, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.194, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2216, i32 3}
!313 = !{ptr @bnx2x_vf_free._entry.193, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @bnx2x_vf_free._entry_ptr.195, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.197, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2227, i32 2}
!317 = !{ptr @bnx2x_vf_free._entry.196, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @bnx2x_vf_free._entry_ptr.198, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.199, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2234, i32 2}
!321 = !{ptr @bnx2x_vf_rss_update._entry, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @bnx2x_vf_rss_update._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.200, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2247, i32 2}
!325 = !{ptr @bnx2x_vf_tpa_update._entry, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @bnx2x_vf_tpa_update._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.202, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2259, i32 3}
!329 = !{ptr @bnx2x_vf_tpa_update._entry.201, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @bnx2x_vf_tpa_update._entry_ptr.203, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.205, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2264, i32 4}
!333 = !{ptr @bnx2x_vf_tpa_update._entry.204, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @bnx2x_vf_tpa_update._entry_ptr.206, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.207, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2282, i32 2}
!337 = !{ptr @.str.208, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @bnx2x_vf_release._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @bnx2x_vf_release._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.209, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2287, i32 3}
!342 = !{ptr @.str.210, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2299, i32 3}
!344 = !{ptr @.str.211, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @bnx2x_lock_vf_pf_channel._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @bnx2x_lock_vf_pf_channel._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.213, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2310, i32 2}
!349 = !{ptr @bnx2x_lock_vf_pf_channel._entry.212, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @bnx2x_lock_vf_pf_channel._entry_ptr.214, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.215, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2320, i32 3}
!353 = !{ptr @.str.216, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @bnx2x_unlock_vf_pf_channel._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @bnx2x_unlock_vf_pf_channel._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.217, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2330, i32 2}
!358 = !{ptr @.str.219, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2341, i32 2}
!360 = !{ptr @bnx2x_unlock_vf_pf_channel._entry.218, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @bnx2x_unlock_vf_pf_channel._entry_ptr.220, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.221, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2410, i32 3}
!364 = !{ptr @.str.222, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @bnx2x_sriov_configure._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @bnx2x_sriov_configure._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.224, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2414, i32 2}
!369 = !{ptr @bnx2x_sriov_configure._entry.223, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @bnx2x_sriov_configure._entry_ptr.225, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.227, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2419, i32 3}
!373 = !{ptr @bnx2x_sriov_configure._entry.226, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @bnx2x_sriov_configure._entry_ptr.228, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.230, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2425, i32 3}
!377 = !{ptr @bnx2x_sriov_configure._entry.229, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @bnx2x_sriov_configure._entry_ptr.231, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.232, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2475, i32 4}
!381 = !{ptr @.str.233, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @bnx2x_enable_sriov._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @bnx2x_enable_sriov._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.235, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2486, i32 2}
!386 = !{ptr @bnx2x_enable_sriov._entry.234, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @bnx2x_enable_sriov._entry_ptr.236, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.238, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2507, i32 3}
!390 = !{ptr @bnx2x_enable_sriov._entry.237, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @bnx2x_enable_sriov._entry_ptr.239, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.241, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2515, i32 2}
!394 = !{ptr @bnx2x_enable_sriov._entry.240, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @bnx2x_enable_sriov._entry_ptr.242, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.244, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2524, i32 3}
!398 = !{ptr @bnx2x_enable_sriov._entry.243, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @bnx2x_enable_sriov._entry_ptr.245, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.247, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2527, i32 2}
!402 = !{ptr @bnx2x_enable_sriov._entry.246, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @bnx2x_enable_sriov._entry_ptr.248, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.249, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2536, i32 2}
!406 = !{ptr @.str.250, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @bnx2x_pf_set_vfs_vlan._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @bnx2x_pf_set_vfs_vlan._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.251, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2548, i32 3}
!411 = !{ptr @.str.252, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @bnx2x_disable_sriov._entry, !410, !"_entry", i1 false, i1 false}
!413 = !{ptr @bnx2x_disable_sriov._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.253, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2619, i32 3}
!416 = !{ptr @.str.254, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @bnx2x_get_vf_config._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @bnx2x_get_vf_config._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.255, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2687, i32 3}
!421 = !{ptr @.str.256, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @bnx2x_set_vf_mac._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @bnx2x_set_vf_mac._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @bnx2x_set_vf_mac._entry.257, !425, !"_entry", i1 false, i1 false}
!425 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2711, i32 3}
!426 = !{ptr @bnx2x_set_vf_mac._entry_ptr.258, !425, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.260, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2734, i32 4}
!429 = !{ptr @bnx2x_set_vf_mac._entry.259, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @bnx2x_set_vf_mac._entry_ptr.261, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.263, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2742, i32 4}
!433 = !{ptr @bnx2x_set_vf_mac._entry.262, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @bnx2x_set_vf_mac._entry_ptr.264, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.265, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2814, i32 3}
!437 = !{ptr @.str.266, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @bnx2x_set_vf_vlan._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @bnx2x_set_vf_vlan._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.268, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2821, i32 2}
!442 = !{ptr @bnx2x_set_vf_vlan._entry.267, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @bnx2x_set_vf_vlan._entry_ptr.269, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @bnx2x_set_vf_vlan._entry.270, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2846, i32 3}
!446 = !{ptr @bnx2x_set_vf_vlan._entry_ptr.271, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.273, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2868, i32 3}
!449 = !{ptr @bnx2x_set_vf_vlan._entry.272, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @bnx2x_set_vf_vlan._entry_ptr.274, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.276, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2930, i32 4}
!453 = !{ptr @bnx2x_set_vf_vlan._entry.275, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @bnx2x_set_vf_vlan._entry_ptr.277, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.279, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2939, i32 3}
!457 = !{ptr @bnx2x_set_vf_vlan._entry.278, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @bnx2x_set_vf_vlan._entry_ptr.280, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.281, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2962, i32 2}
!461 = !{ptr @.str.282, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @bnx2x_set_vf_spoofchk._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @bnx2x_set_vf_spoofchk._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.283, !460, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.284, !460, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.286, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3003, i32 4}
!468 = !{ptr @bnx2x_set_vf_spoofchk._entry.285, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @bnx2x_set_vf_spoofchk._entry_ptr.287, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.288, !467, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.289, !467, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.291, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3010, i32 3}
!474 = !{ptr @bnx2x_set_vf_spoofchk._entry.290, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @bnx2x_set_vf_spoofchk._entry_ptr.292, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.293, !473, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.294, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3051, i32 3}
!479 = !{ptr @.str.295, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @bnx2x_sample_bulletin._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @bnx2x_sample_bulletin._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.297, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3056, i32 3}
!484 = !{ptr @bnx2x_sample_bulletin._entry.296, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @bnx2x_sample_bulletin._entry_ptr.298, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.300, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3074, i32 3}
!488 = !{ptr @bnx2x_sample_bulletin._entry.299, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @bnx2x_sample_bulletin._entry_ptr.301, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @bnx2x_vf_pci_alloc.__key, !491, !"__key", i1 false, i1 false}
!491 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3131, i32 2}
!492 = !{ptr @.str.302, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @.str.303, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3134, i32 19}
!495 = !{ptr @bnx2x_vf_pci_alloc._entry, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @bnx2x_vf_pci_alloc._entry_ptr, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @bnx2x_vf_pci_alloc._entry.304, !498, !"_entry", i1 false, i1 false}
!498 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3140, i32 23}
!499 = !{ptr @bnx2x_vf_pci_alloc._entry_ptr.305, !498, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.306, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 3195, i32 2}
!502 = !{ptr @.str.307, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @bnx2x_schedule_iov_task._entry, !501, !"_entry", i1 false, i1 false}
!504 = !{ptr @bnx2x_schedule_iov_task._entry_ptr, !501, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.308, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 117, i32 4}
!507 = !{ptr @.str.309, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @bnx2x_validate_vf_sp_objs._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @bnx2x_validate_vf_sp_objs._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.311, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 119, i32 4}
!512 = !{ptr @bnx2x_validate_vf_sp_objs._entry.310, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @bnx2x_validate_vf_sp_objs._entry_ptr.312, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.313, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 386, i32 2}
!516 = !{ptr @.str.314, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @bnx2x_vf_mac_vlan_config._entry, !515, !"_entry", i1 false, i1 false}
!518 = !{ptr @bnx2x_vf_mac_vlan_config._entry_ptr, !515, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.315, !515, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.316, !515, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @.str.317, !515, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @.str.318, !515, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @.str.319, !515, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.321, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 420, i32 3}
!526 = !{ptr @bnx2x_vf_mac_vlan_config._entry.320, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @bnx2x_vf_mac_vlan_config._entry_ptr.322, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.323, !525, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @.str.324, !525, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.325, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 241, i32 2}
!532 = !{ptr @bnx2x_vf_queue_create._entry, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @bnx2x_vf_queue_create._entry_ptr, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.327, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 250, i32 3}
!536 = !{ptr @bnx2x_vf_queue_create._entry.326, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @bnx2x_vf_queue_create._entry_ptr.328, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.329, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 100, i32 2}
!540 = !{ptr @.str.330, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @bnx2x_vf_igu_ack_sb._entry, !539, !"_entry", i1 false, i1 false}
!542 = !{ptr @bnx2x_vf_igu_ack_sb._entry_ptr, !539, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @bnx2x_vf_igu_ack_sb._entry.331, !544, !"_entry", i1 false, i1 false}
!544 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 105, i32 2}
!545 = !{ptr @bnx2x_vf_igu_ack_sb._entry_ptr.332, !544, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.333, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 340, i32 2}
!548 = !{ptr @.str.334, !547, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @bnx2x_vf_vlan_mac_clear._entry, !547, !"_entry", i1 false, i1 false}
!550 = !{ptr @bnx2x_vf_vlan_mac_clear._entry_ptr, !547, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.335, !547, !"<string literal>", i1 false, i1 false}
!552 = !{ptr @.str.336, !547, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @.str.337, !547, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @.str.339, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 369, i32 3}
!556 = !{ptr @bnx2x_vf_vlan_mac_clear._entry.338, !555, !"_entry", i1 false, i1 false}
!557 = !{ptr @bnx2x_vf_vlan_mac_clear._entry_ptr.340, !555, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.341, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 283, i32 2}
!560 = !{ptr @bnx2x_vf_queue_destroy._entry, !559, !"_entry", i1 false, i1 false}
!561 = !{ptr @bnx2x_vf_queue_destroy._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.343, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 292, i32 3}
!564 = !{ptr @bnx2x_vf_queue_destroy._entry.342, !563, !"_entry", i1 false, i1 false}
!565 = !{ptr @bnx2x_vf_queue_destroy._entry_ptr.344, !563, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.346, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 301, i32 4}
!568 = !{ptr @bnx2x_vf_queue_destroy._entry.345, !567, !"_entry", i1 false, i1 false}
!569 = !{ptr @bnx2x_vf_queue_destroy._entry_ptr.347, !567, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.348, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 914, i32 3}
!572 = !{ptr @.str.349, !571, !"<string literal>", i1 false, i1 false}
!573 = !{ptr @bnx2x_vf_flr_clnup._entry, !571, !"_entry", i1 false, i1 false}
!574 = !{ptr @bnx2x_vf_flr_clnup._entry_ptr, !571, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.351, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 937, i32 2}
!577 = !{ptr @bnx2x_vf_flr_clnup._entry.350, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @bnx2x_vf_flr_clnup._entry_ptr.352, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.353, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 873, i32 2}
!581 = !{ptr @bnx2x_vf_flr._entry, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @bnx2x_vf_flr._entry_ptr, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.355, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 899, i32 2}
!585 = !{ptr @bnx2x_vf_flr._entry.354, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @bnx2x_vf_flr._entry_ptr.356, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.357, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 498, i32 2}
!589 = !{ptr @bnx2x_vf_queue_flr._entry, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @bnx2x_vf_queue_flr._entry_ptr, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @bnx2x_vf_queue_flr._entry.358, !592, !"_entry", i1 false, i1 false}
!592 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 533, i32 2}
!593 = !{ptr @bnx2x_vf_queue_flr._entry_ptr.359, !592, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @.str.360, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 856, i32 6}
!596 = !{ptr @.str.361, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 863, i32 3}
!598 = !{ptr @.str.362, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @bnx2x_vf_flr_clnup_hw._entry, !597, !"_entry", i1 false, i1 false}
!600 = !{ptr @bnx2x_vf_flr_clnup_hw._entry_ptr, !597, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @.str.363, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1155, i32 2}
!603 = !{ptr @.str.364, !602, !"<string literal>", i1 false, i1 false}
!604 = !{ptr @bnx2x_sriov_info._entry, !602, !"_entry", i1 false, i1 false}
!605 = !{ptr @bnx2x_sriov_info._entry_ptr, !602, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.365, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1118, i32 3}
!608 = !{ptr @.str.366, !607, !"<string literal>", i1 false, i1 false}
!609 = !{ptr @bnx2x_sriov_pci_cfg_info._entry, !607, !"_entry", i1 false, i1 false}
!610 = !{ptr @bnx2x_sriov_pci_cfg_info._entry_ptr, !607, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.368, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1123, i32 2}
!613 = !{ptr @bnx2x_sriov_pci_cfg_info._entry.367, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @bnx2x_sriov_pci_cfg_info._entry_ptr.369, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.370, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1091, i32 3}
!617 = !{ptr @.str.371, !616, !"<string literal>", i1 false, i1 false}
!618 = !{ptr @bnx2x_get_vf_igu_cam_info._entry, !616, !"_entry", i1 false, i1 false}
!619 = !{ptr @bnx2x_get_vf_igu_cam_info._entry_ptr, !616, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.372, !616, !"<string literal>", i1 false, i1 false}
!621 = !{ptr @.str.373, !616, !"<string literal>", i1 false, i1 false}
!622 = !{ptr @.str.375, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1097, i32 2}
!624 = !{ptr @bnx2x_get_vf_igu_cam_info._entry.374, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @bnx2x_get_vf_igu_cam_info._entry_ptr.376, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.377, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1688, i32 3}
!628 = !{ptr @.str.378, !627, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @bnx2x_vf_handle_classification_eqe._entry, !627, !"_entry", i1 false, i1 false}
!630 = !{ptr @bnx2x_vf_handle_classification_eqe._entry_ptr, !627, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.380, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1692, i32 3}
!633 = !{ptr @bnx2x_vf_handle_classification_eqe._entry.379, !632, !"_entry", i1 false, i1 false}
!634 = !{ptr @bnx2x_vf_handle_classification_eqe._entry_ptr.381, !632, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @.str.383, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1694, i32 3}
!637 = !{ptr @bnx2x_vf_handle_classification_eqe._entry.382, !636, !"_entry", i1 false, i1 false}
!638 = !{ptr @bnx2x_vf_handle_classification_eqe._entry_ptr.384, !636, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.385, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1711, i32 4}
!641 = !{ptr @.str.386, !640, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @bnx2x_vf_handle_mcast_eqe._entry, !640, !"_entry", i1 false, i1 false}
!643 = !{ptr @bnx2x_vf_handle_mcast_eqe._entry_ptr, !640, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @.str.387, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 1430, i32 2}
!646 = !{ptr @.str.388, !645, !"<string literal>", i1 false, i1 false}
!647 = !{ptr @bnx2x_vfq_init._entry, !645, !"_entry", i1 false, i1 false}
!648 = !{ptr @bnx2x_vfq_init._entry_ptr, !645, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.389, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 736, i32 2}
!651 = !{ptr @.str.390, !650, !"<string literal>", i1 false, i1 false}
!652 = !{ptr @bnx2x_vf_igu_reset._entry, !650, !"_entry", i1 false, i1 false}
!653 = !{ptr @bnx2x_vf_igu_reset._entry_ptr, !650, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.391, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2395, i32 5}
!656 = !{ptr @.str.392, !655, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @bnx2x_set_pf_tx_switching._entry, !655, !"_entry", i1 false, i1 false}
!658 = !{ptr @bnx2x_set_pf_tx_switching._entry_ptr, !655, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @.str.394, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2401, i32 2}
!661 = !{ptr @bnx2x_set_pf_tx_switching._entry.393, !660, !"_entry", i1 false, i1 false}
!662 = !{ptr @bnx2x_set_pf_tx_switching._entry_ptr.395, !660, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.396, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2562, i32 3}
!665 = !{ptr @.str.397, !664, !"<string literal>", i1 false, i1 false}
!666 = !{ptr @bnx2x_vf_op_prep._entry, !664, !"_entry", i1 false, i1 false}
!667 = !{ptr @bnx2x_vf_op_prep._entry_ptr, !664, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @.str.399, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2567, i32 3}
!670 = !{ptr @bnx2x_vf_op_prep._entry.398, !669, !"_entry", i1 false, i1 false}
!671 = !{ptr @bnx2x_vf_op_prep._entry_ptr.400, !669, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @.str.402, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2572, i32 3}
!674 = !{ptr @bnx2x_vf_op_prep._entry.401, !673, !"_entry", i1 false, i1 false}
!675 = !{ptr @bnx2x_vf_op_prep._entry_ptr.403, !673, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.405, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2582, i32 3}
!678 = !{ptr @bnx2x_vf_op_prep._entry.404, !677, !"_entry", i1 false, i1 false}
!679 = !{ptr @bnx2x_vf_op_prep._entry_ptr.406, !677, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @.str.408, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2587, i32 3}
!682 = !{ptr @bnx2x_vf_op_prep._entry.407, !681, !"_entry", i1 false, i1 false}
!683 = !{ptr @bnx2x_vf_op_prep._entry_ptr.409, !681, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.411, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2593, i32 3}
!686 = !{ptr @bnx2x_vf_op_prep._entry.410, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @bnx2x_vf_op_prep._entry_ptr.412, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.413, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c", i32 2795, i32 3}
!690 = !{ptr @.str.414, !689, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @bnx2x_set_vf_vlan_filter._entry, !689, !"_entry", i1 false, i1 false}
!692 = !{ptr @bnx2x_set_vf_vlan_filter._entry_ptr, !689, !"_entry_ptr", i1 false, i1 false}
!693 = !{i32 1, !"wchar_size", i32 2}
!694 = !{i32 1, !"min_enum_size", i32 4}
!695 = !{i32 8, !"branch-target-enforcement", i32 0}
!696 = !{i32 8, !"sign-return-address", i32 0}
!697 = !{i32 8, !"sign-return-address-all", i32 0}
!698 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!699 = !{i32 7, !"uwtable", i32 1}
!700 = !{i32 7, !"frame-pointer", i32 2}
!701 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!702 = !{!"branch_weights", i32 2000, i32 1}
!703 = !{i8 0, i8 2}
!704 = !{!"branch_weights", i32 1, i32 2000}
!705 = !{i64 2157847863}
!706 = !{i64 5146510}
!707 = !{i64 2157848639}
!708 = !{i64 2157849417}
!709 = !{i64 2157850195}
!710 = !{i64 2157850967}
!711 = !{i64 2157851746}
!712 = !{i64 2157852527}
!713 = !{i64 2157853308}
!714 = !{i64 2157943990}
!715 = !{i64 2157932325}
!716 = !{i64 5146707}
!717 = !{i64 2157932896}
!718 = !{i64 2157933467}
!719 = !{i64 2157934038}
!720 = !{i64 2157935066}
!721 = !{i64 2157931738}
!722 = !{i64 5147125}
!723 = !{i64 2157975145}
!724 = !{i64 2157969026}
!725 = !{i64 2157973122}
!726 = !{i64 2157980797}
!727 = !{i64 2157981845}
!728 = !{i64 2157983008}
!729 = !{i64 2157983597}
!730 = !{i64 2157984133}
!731 = !{i64 2157984669}
!732 = !{i64 2157985205}
!733 = !{i64 2157985741}
!734 = !{i64 2157986289}
!735 = !{i64 2157986845}
!736 = !{i64 2157987389}
!737 = !{i64 2157999972}
!738 = !{i64 2158035466}
!739 = !{i64 2158036487}
!740 = !{i64 2157988766}
!741 = !{!"auto-init"}
!742 = !{i64 2158092167}
!743 = !{i64 2158092502}
!744 = !{i64 2158182158}
!745 = !{i64 2157935764}
!746 = !{i64 2157936300}
!747 = !{i64 2157936836}
!748 = !{i64 2157937372}
!749 = !{i64 2157937908}
!750 = !{i64 2157938444}
!751 = !{i64 2157939280}
!752 = !{i64 2157939663}
!753 = !{i64 2157943014}
!754 = !{i64 2157947040}
!755 = !{i64 2158141814}
!756 = !{i64 2158142838}
!757 = !{i64 2158143212}
!758 = !{i64 2158243791}
!759 = !{i64 2158247279}
!760 = !{i64 2158332838}
!761 = !{i64 2158333123}
!762 = !{i64 2157856907}
!763 = !{i64 2157857267}
!764 = !{i64 2157860168}
!765 = !{i64 2157860464}
